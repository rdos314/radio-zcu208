-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Nov 29 00:18:12 2025
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
    sim_clk : in STD_LOGIC;
    sim_resetn : in STD_LOGIC;
    sim_wr : in STD_LOGIC;
    sim_channel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    raw_clk : in STD_LOGIC;
    raw_ready : out STD_LOGIC;
    raw_data : out STD_LOGIC_VECTOR ( 191 downto 0 );
    doa_clk : in STD_LOGIC;
    doa_ready : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 47 downto 0 )
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
    din : in STD_LOGIC_VECTOR ( 47 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 47 downto 0 );
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
    din : in STD_LOGIC_VECTOR ( 191 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 191 downto 0 );
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
    probe0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
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
    probe23 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component ps_deci_low_0_0_ila_2;
  component ps_deci_low_0_0_ila_7 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 11 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_deci_low_0_0_ila_7;
  component ps_deci_low_0_0_ila_8 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component ps_deci_low_0_0_ila_8;
  signal \deci_low.doa_data[47]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_fifo_wr_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_in_data[47]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \deci_low.doa_in_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \deci_low.doa_out_rd_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_ready_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.doa_wr_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.fir_resetn_i_1_n_0\ : STD_LOGIC;
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
  signal \deci_low.raw_active_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_active_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.raw_counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_10\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_11\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_12\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_13\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_14\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_15\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_8\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[15]_i_2_n_9\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \deci_low.raw_counter_reg[7]_i_1_n_9\ : STD_LOGIC;
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
  signal \deci_low.raw_delay_reg0\ : STD_LOGIC_VECTOR ( 11 downto 0 );
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
  signal \deci_low.raw_fifo_wr_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_in_data[191]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[100]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[101]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[102]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[103]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[104]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[105]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[106]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[107]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[108]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[109]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[110]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[111]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[112]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[113]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[114]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[115]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[116]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[117]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[118]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[119]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[120]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[121]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[122]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[123]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[124]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[125]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[126]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[127]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[128]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[129]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[130]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[131]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[132]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[133]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[134]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[135]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[136]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[137]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[138]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[139]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[140]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[141]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[142]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[143]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[144]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[145]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[146]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[147]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[148]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[149]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[150]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[151]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[152]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[153]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[154]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[155]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[156]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[157]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[158]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[159]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[160]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[161]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[162]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[163]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[164]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[165]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[166]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[167]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[168]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[169]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[170]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[171]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[172]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[173]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[174]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[175]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[176]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[177]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[178]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[179]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[180]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[181]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[182]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[183]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[184]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[185]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[186]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[187]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[188]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[189]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[190]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[191]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[53]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[57]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[58]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[59]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[60]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[61]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[62]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[63]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[64]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[65]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[66]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[67]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[68]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[69]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[70]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[71]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[72]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[73]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[74]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[75]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[76]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[77]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[78]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[79]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[80]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[81]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[82]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[83]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[84]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[85]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[86]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[87]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[88]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[89]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[90]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[91]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[92]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[93]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[94]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[95]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[96]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[97]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[98]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[99]\ : STD_LOGIC;
  signal \deci_low.raw_in_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \deci_low.raw_wr_delay[3]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.reset_active[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.reset_active[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.reset_active[2]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.reset_active[2]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.reset_delay[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.reset_delay[2]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.reset_delay[2]_i_3_n_0\ : STD_LOGIC;
  signal \deci_low.reset_delay_reg0\ : STD_LOGIC;
  signal \deci_low.reset_delay_reg01_in\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \deci_low.sim_active_1_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_active_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_count[0]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_count[1]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_count[1]_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.sim_curr_data[127]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_curr_data[63]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_curr_data[95]_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[0]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[100]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[101]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[102]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[103]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[104]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[105]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[106]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[107]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[108]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[109]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[10]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[110]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[111]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[112]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[113]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[114]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[115]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[116]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[117]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[118]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[119]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[11]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[120]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[121]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[122]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[123]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[124]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[125]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[126]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[127]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[12]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[13]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[14]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[15]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[16]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[17]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[18]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[19]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[1]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[20]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[21]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[22]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[23]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[24]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[25]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[26]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[27]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[28]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[29]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[2]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[30]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[31]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[32]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[33]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[34]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[35]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[36]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[37]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[38]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[39]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[3]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[40]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[41]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[42]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[43]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[44]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[45]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[46]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[47]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[48]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[49]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[4]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[50]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[51]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[52]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[53]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[54]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[55]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[56]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[57]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[58]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[59]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[5]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[60]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[61]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[62]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[63]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[64]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[65]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[66]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[67]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[68]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[69]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[6]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[70]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[71]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[72]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[73]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[74]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[75]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[76]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[77]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[78]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[79]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[7]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[80]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[81]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[82]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[83]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[84]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[85]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[86]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[87]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[88]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[89]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[8]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[90]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[91]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[92]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[93]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[94]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[95]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[96]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[97]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[98]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[99]\ : STD_LOGIC;
  signal \deci_low.sim_curr_data_reg_n_0_[9]\ : STD_LOGIC;
  signal \deci_low.sim_curr_wr_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_curr_wr_reg_n_0\ : STD_LOGIC;
  signal \deci_low.sim_rd_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_E_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_E_i_2_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_N_i_1_n_0\ : STD_LOGIC;
  signal \deci_low.sim_wr_W_i_1_n_0\ : STD_LOGIC;
  signal doa_E : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of doa_E : signal is std.standard.true;
  signal doa_N : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of doa_N : signal is std.standard.true;
  signal doa_W : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of doa_W : signal is std.standard.true;
  signal doa_fifo_empty : STD_LOGIC;
  attribute MARK_DEBUG of doa_fifo_empty : signal is std.standard.true;
  signal doa_fifo_wr : STD_LOGIC;
  attribute MARK_DEBUG of doa_fifo_wr : signal is std.standard.true;
  signal doa_out_data : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal doa_out_delay : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of doa_out_delay : signal is std.standard.true;
  signal \doa_out_delay__0\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal doa_out_rd : STD_LOGIC;
  attribute MARK_DEBUG of doa_out_rd : signal is std.standard.true;
  signal \^doa_ready\ : STD_LOGIC;
  attribute MARK_DEBUG of doa_ready : signal is std.standard.true;
  signal doa_wr_delay : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of doa_wr_delay : signal is std.standard.true;
  signal \doa_wr_delay__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal fifo_sim_N_i_i_1_n_0 : STD_LOGIC;
  signal fir_raw_E : STD_LOGIC_VECTOR ( 126 downto 15 );
  signal fir_raw_W : STD_LOGIC_VECTOR ( 126 downto 15 );
  signal fir_resetn : STD_LOGIC;
  attribute MARK_DEBUG of fir_resetn : signal is std.standard.true;
  signal mux_E : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal mux_N0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N0 : signal is std.standard.true;
  signal mux_N1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N1 : signal is std.standard.true;
  signal mux_N2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N2 : signal is std.standard.true;
  signal mux_N3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N3 : signal is std.standard.true;
  signal mux_N4 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N4 : signal is std.standard.true;
  signal mux_N5 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N5 : signal is std.standard.true;
  signal mux_N6 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N6 : signal is std.standard.true;
  signal mux_N7 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of mux_N7 : signal is std.standard.true;
  signal mux_W : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal mux_active : STD_LOGIC;
  attribute MARK_DEBUG of mux_active : signal is std.standard.true;
  signal raw_N0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_N0 : signal is std.standard.true;
  signal raw_N1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_N1 : signal is std.standard.true;
  signal raw_N2 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_N2 : signal is std.standard.true;
  signal raw_N3 : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_N3 : signal is std.standard.true;
  signal raw_active : STD_LOGIC;
  attribute MARK_DEBUG of raw_active : signal is std.standard.true;
  signal raw_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  attribute MARK_DEBUG of raw_counter : signal is std.standard.true;
  signal \raw_counter__0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal raw_delay : STD_LOGIC_VECTOR ( 11 downto 0 );
  attribute MARK_DEBUG of raw_delay : signal is std.standard.true;
  signal raw_fifo_empty : STD_LOGIC;
  attribute MARK_DEBUG of raw_fifo_empty : signal is std.standard.true;
  signal raw_fifo_wr : STD_LOGIC;
  attribute MARK_DEBUG of raw_fifo_wr : signal is std.standard.true;
  signal raw_out_data : STD_LOGIC_VECTOR ( 191 downto 0 );
  signal \^raw_ready\ : STD_LOGIC;
  attribute MARK_DEBUG of raw_ready : signal is std.standard.true;
  signal raw_wr_delay : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute MARK_DEBUG of raw_wr_delay : signal is std.standard.true;
  signal \raw_wr_delay__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal reset_active : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of reset_active : signal is std.standard.true;
  signal reset_delay : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute MARK_DEBUG of reset_delay : signal is std.standard.true;
  signal \^sim_active\ : STD_LOGIC;
  signal sim_active_1 : STD_LOGIC;
  signal sim_active_2 : STD_LOGIC;
  signal \sim_count__0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal sim_curr_data : STD_LOGIC_VECTOR ( 127 downto 31 );
  signal sim_empty_E : STD_LOGIC;
  signal sim_empty_N : STD_LOGIC;
  signal sim_empty_W : STD_LOGIC;
  signal sim_in_data : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sim_out_E : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sim_out_N : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sim_out_W : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal sim_rd : STD_LOGIC;
  signal sim_wr_E : STD_LOGIC;
  signal sim_wr_N : STD_LOGIC;
  signal sim_wr_W : STD_LOGIC;
  signal \NLW_deci_low.raw_counter_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
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
  signal NLW_fir_doa_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_E_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir_doa_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_N_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir_doa_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_doa_W_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fir_raw_E_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_raw_E_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_raw_E_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_fir_raw_N_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_raw_N_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_raw_N_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal NLW_fir_raw_W_i_m_axis_data_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_raw_W_i_s_axis_data_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fir_raw_W_i_m_axis_data_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 127 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \deci_low.doa_fifo_wr_reg\ : label is "yes";
  attribute KEEP of \deci_low.doa_out_delay_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.doa_out_delay_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.doa_out_delay_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.doa_out_rd_reg\ : label is "yes";
  attribute KEEP of \deci_low.doa_ready_reg\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \deci_low.doa_ready_reg\ : label is "yes";
  attribute KEEP of \deci_low.doa_wr_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.doa_wr_delay_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.doa_wr_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.doa_wr_delay_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.doa_wr_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.doa_wr_delay_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.doa_wr_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.doa_wr_delay_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.fir_resetn_reg\ : label is "yes";
  attribute KEEP of \deci_low.mux_active_reg\ : label is "yes";
  attribute KEEP of \deci_low.raw_active_reg\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[11]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[12]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[13]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[14]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[15]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \deci_low.raw_counter_reg[15]_i_2\ : label is 35;
  attribute KEEP of \deci_low.raw_counter_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[7]\ : label is "yes";
  attribute ADDER_THRESHOLD of \deci_low.raw_counter_reg[7]_i_1\ : label is 35;
  attribute KEEP of \deci_low.raw_counter_reg[8]\ : label is "yes";
  attribute KEEP of \deci_low.raw_counter_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[10]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[10]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[11]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[11]\ : label is "yes";
  attribute ADDER_THRESHOLD of \deci_low.raw_delay_reg[11]_i_2\ : label is 35;
  attribute KEEP of \deci_low.raw_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[4]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[4]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[5]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[5]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[6]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[6]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[7]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[7]\ : label is "yes";
  attribute KEEP of \deci_low.raw_delay_reg[8]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[8]\ : label is "yes";
  attribute ADDER_THRESHOLD of \deci_low.raw_delay_reg[8]_i_1\ : label is 35;
  attribute KEEP of \deci_low.raw_delay_reg[9]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_delay_reg[9]\ : label is "yes";
  attribute KEEP of \deci_low.raw_fifo_wr_reg\ : label is "yes";
  attribute KEEP of \deci_low.raw_ready_reg\ : label is "yes";
  attribute KEEP of \deci_low.raw_wr_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_wr_delay_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.raw_wr_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_wr_delay_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.raw_wr_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_wr_delay_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.raw_wr_delay_reg[3]\ : label is "yes";
  attribute mark_debug_string of \deci_low.raw_wr_delay_reg[3]\ : label is "yes";
  attribute KEEP of \deci_low.reset_active_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.reset_active_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.reset_active_reg[2]\ : label is "yes";
  attribute KEEP of \deci_low.reset_delay_reg[0]\ : label is "yes";
  attribute mark_debug_string of \deci_low.reset_delay_reg[0]\ : label is "yes";
  attribute KEEP of \deci_low.reset_delay_reg[1]\ : label is "yes";
  attribute mark_debug_string of \deci_low.reset_delay_reg[1]\ : label is "yes";
  attribute KEEP of \deci_low.reset_delay_reg[2]\ : label is "yes";
  attribute mark_debug_string of \deci_low.reset_delay_reg[2]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \deci_low.sim_count[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \deci_low.sim_count[1]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \deci_low.sim_curr_wr_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \deci_low.sim_wr_E_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \deci_low.sim_wr_N_i_1\ : label is "soft_lutpair2";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_doa_i : label is "fifo_doa_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_doa_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_doa_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_raw_i : label is "fifo_raw_low,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_raw_i : label is "yes";
  attribute x_core_info of fifo_raw_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_sim_E_i : label is "fifo_sim,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_sim_E_i : label is "yes";
  attribute x_core_info of fifo_sim_E_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fifo_sim_N_i : label is "fifo_sim,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_sim_N_i : label is "yes";
  attribute x_core_info of fifo_sim_N_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute SOFT_HLUTNM of fifo_sim_N_i_i_1 : label is "soft_lutpair0";
  attribute CHECK_LICENSE_TYPE of fifo_sim_W_i : label is "fifo_sim,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings of fifo_sim_W_i : label is "yes";
  attribute x_core_info of fifo_sim_W_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_E_i : label is "fir_deci_low,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_E_i : label is "yes";
  attribute x_core_info of fir_doa_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_N_i : label is "fir_deci_low,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_N_i : label is "yes";
  attribute x_core_info of fir_doa_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_doa_W_i : label is "fir_deci_low,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_doa_W_i : label is "yes";
  attribute x_core_info of fir_doa_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_raw_E_i : label is "fir_raw_deci,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_raw_E_i : label is "yes";
  attribute x_core_info of fir_raw_E_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_raw_N_i : label is "fir_raw_deci,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_raw_N_i : label is "yes";
  attribute x_core_info of fir_raw_N_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of fir_raw_W_i : label is "fir_raw_deci,fir_compiler_v7_2_24,{}";
  attribute downgradeipidentifiedwarnings of fir_raw_W_i : label is "yes";
  attribute x_core_info of fir_raw_W_i : label is "fir_compiler_v7_2_24,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_2_i : label is "ila_2,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_2_i : label is "yes";
  attribute x_core_info of ila_2_i : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_7_i : label is "ila_7,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_7_i : label is "yes";
  attribute x_core_info of ila_7_i : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_8_i : label is "ila_8,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_8_i : label is "yes";
  attribute x_core_info of ila_8_i : label is "ila,Vivado 2025.1";
begin
  doa_ready <= \^doa_ready\;
  raw_ready <= \^raw_ready\;
  sim_active <= \^sim_active\;
\deci_low.doa_data[47]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAE8"
    )
        port map (
      I0 => doa_fifo_empty,
      I1 => doa_out_delay(2),
      I2 => doa_out_delay(0),
      I3 => doa_out_delay(1),
      O => \deci_low.doa_data[47]_i_1_n_0\
    );
\deci_low.doa_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(0),
      Q => doa_data(0),
      R => '0'
    );
\deci_low.doa_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(10),
      Q => doa_data(10),
      R => '0'
    );
\deci_low.doa_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(11),
      Q => doa_data(11),
      R => '0'
    );
\deci_low.doa_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(12),
      Q => doa_data(12),
      R => '0'
    );
\deci_low.doa_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(13),
      Q => doa_data(13),
      R => '0'
    );
\deci_low.doa_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(14),
      Q => doa_data(14),
      R => '0'
    );
\deci_low.doa_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(15),
      Q => doa_data(15),
      R => '0'
    );
\deci_low.doa_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(16),
      Q => doa_data(16),
      R => '0'
    );
\deci_low.doa_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(17),
      Q => doa_data(17),
      R => '0'
    );
\deci_low.doa_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(18),
      Q => doa_data(18),
      R => '0'
    );
\deci_low.doa_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(19),
      Q => doa_data(19),
      R => '0'
    );
\deci_low.doa_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(1),
      Q => doa_data(1),
      R => '0'
    );
\deci_low.doa_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(20),
      Q => doa_data(20),
      R => '0'
    );
\deci_low.doa_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(21),
      Q => doa_data(21),
      R => '0'
    );
\deci_low.doa_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(22),
      Q => doa_data(22),
      R => '0'
    );
\deci_low.doa_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(23),
      Q => doa_data(23),
      R => '0'
    );
\deci_low.doa_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(24),
      Q => doa_data(24),
      R => '0'
    );
\deci_low.doa_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(25),
      Q => doa_data(25),
      R => '0'
    );
\deci_low.doa_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(26),
      Q => doa_data(26),
      R => '0'
    );
\deci_low.doa_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(27),
      Q => doa_data(27),
      R => '0'
    );
\deci_low.doa_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(28),
      Q => doa_data(28),
      R => '0'
    );
\deci_low.doa_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(29),
      Q => doa_data(29),
      R => '0'
    );
\deci_low.doa_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(2),
      Q => doa_data(2),
      R => '0'
    );
\deci_low.doa_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(30),
      Q => doa_data(30),
      R => '0'
    );
\deci_low.doa_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(31),
      Q => doa_data(31),
      R => '0'
    );
\deci_low.doa_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(32),
      Q => doa_data(32),
      R => '0'
    );
\deci_low.doa_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(33),
      Q => doa_data(33),
      R => '0'
    );
\deci_low.doa_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(34),
      Q => doa_data(34),
      R => '0'
    );
\deci_low.doa_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(35),
      Q => doa_data(35),
      R => '0'
    );
\deci_low.doa_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(36),
      Q => doa_data(36),
      R => '0'
    );
\deci_low.doa_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(37),
      Q => doa_data(37),
      R => '0'
    );
\deci_low.doa_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(38),
      Q => doa_data(38),
      R => '0'
    );
\deci_low.doa_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(39),
      Q => doa_data(39),
      R => '0'
    );
\deci_low.doa_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(3),
      Q => doa_data(3),
      R => '0'
    );
\deci_low.doa_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(40),
      Q => doa_data(40),
      R => '0'
    );
\deci_low.doa_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(41),
      Q => doa_data(41),
      R => '0'
    );
\deci_low.doa_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(42),
      Q => doa_data(42),
      R => '0'
    );
\deci_low.doa_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(43),
      Q => doa_data(43),
      R => '0'
    );
\deci_low.doa_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(44),
      Q => doa_data(44),
      R => '0'
    );
\deci_low.doa_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(45),
      Q => doa_data(45),
      R => '0'
    );
\deci_low.doa_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(46),
      Q => doa_data(46),
      R => '0'
    );
\deci_low.doa_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(47),
      Q => doa_data(47),
      R => '0'
    );
\deci_low.doa_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(4),
      Q => doa_data(4),
      R => '0'
    );
\deci_low.doa_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(5),
      Q => doa_data(5),
      R => '0'
    );
\deci_low.doa_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(6),
      Q => doa_data(6),
      R => '0'
    );
\deci_low.doa_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(7),
      Q => doa_data(7),
      R => '0'
    );
\deci_low.doa_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(8),
      Q => doa_data(8),
      R => '0'
    );
\deci_low.doa_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => \deci_low.doa_data[47]_i_1_n_0\,
      D => doa_out_data(9),
      Q => doa_data(9),
      R => '0'
    );
\deci_low.doa_fifo_wr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAFFFFFFFC"
    )
        port map (
      I0 => doa_fifo_wr,
      I1 => doa_wr_delay(2),
      I2 => doa_wr_delay(3),
      I3 => doa_wr_delay(1),
      I4 => doa_wr_delay(0),
      I5 => mux_active,
      O => \deci_low.doa_fifo_wr_i_1_n_0\
    );
\deci_low.doa_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.doa_fifo_wr_i_1_n_0\,
      Q => doa_fifo_wr,
      R => '0'
    );
\deci_low.doa_in_data[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555D554"
    )
        port map (
      I0 => mux_active,
      I1 => doa_wr_delay(1),
      I2 => doa_wr_delay(0),
      I3 => doa_wr_delay(3),
      I4 => doa_wr_delay(2),
      O => \deci_low.doa_in_data[47]_i_1_n_0\
    );
\deci_low.doa_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(0),
      Q => \deci_low.doa_in_data_reg_n_0_[0]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(10),
      Q => \deci_low.doa_in_data_reg_n_0_[10]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(11),
      Q => \deci_low.doa_in_data_reg_n_0_[11]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(12),
      Q => \deci_low.doa_in_data_reg_n_0_[12]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(13),
      Q => \deci_low.doa_in_data_reg_n_0_[13]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(14),
      Q => \deci_low.doa_in_data_reg_n_0_[14]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(15),
      Q => \deci_low.doa_in_data_reg_n_0_[15]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(0),
      Q => \deci_low.doa_in_data_reg_n_0_[16]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(1),
      Q => \deci_low.doa_in_data_reg_n_0_[17]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(2),
      Q => \deci_low.doa_in_data_reg_n_0_[18]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(3),
      Q => \deci_low.doa_in_data_reg_n_0_[19]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(1),
      Q => \deci_low.doa_in_data_reg_n_0_[1]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(4),
      Q => \deci_low.doa_in_data_reg_n_0_[20]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(5),
      Q => \deci_low.doa_in_data_reg_n_0_[21]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(6),
      Q => \deci_low.doa_in_data_reg_n_0_[22]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(7),
      Q => \deci_low.doa_in_data_reg_n_0_[23]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(8),
      Q => \deci_low.doa_in_data_reg_n_0_[24]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(9),
      Q => \deci_low.doa_in_data_reg_n_0_[25]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(10),
      Q => \deci_low.doa_in_data_reg_n_0_[26]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(11),
      Q => \deci_low.doa_in_data_reg_n_0_[27]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(12),
      Q => \deci_low.doa_in_data_reg_n_0_[28]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(13),
      Q => \deci_low.doa_in_data_reg_n_0_[29]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(2),
      Q => \deci_low.doa_in_data_reg_n_0_[2]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(14),
      Q => \deci_low.doa_in_data_reg_n_0_[30]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_E(15),
      Q => \deci_low.doa_in_data_reg_n_0_[31]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(0),
      Q => \deci_low.doa_in_data_reg_n_0_[32]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(1),
      Q => \deci_low.doa_in_data_reg_n_0_[33]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(2),
      Q => \deci_low.doa_in_data_reg_n_0_[34]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(3),
      Q => \deci_low.doa_in_data_reg_n_0_[35]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(4),
      Q => \deci_low.doa_in_data_reg_n_0_[36]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(5),
      Q => \deci_low.doa_in_data_reg_n_0_[37]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(6),
      Q => \deci_low.doa_in_data_reg_n_0_[38]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(7),
      Q => \deci_low.doa_in_data_reg_n_0_[39]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(3),
      Q => \deci_low.doa_in_data_reg_n_0_[3]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(8),
      Q => \deci_low.doa_in_data_reg_n_0_[40]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(9),
      Q => \deci_low.doa_in_data_reg_n_0_[41]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(10),
      Q => \deci_low.doa_in_data_reg_n_0_[42]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(11),
      Q => \deci_low.doa_in_data_reg_n_0_[43]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(12),
      Q => \deci_low.doa_in_data_reg_n_0_[44]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(13),
      Q => \deci_low.doa_in_data_reg_n_0_[45]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(14),
      Q => \deci_low.doa_in_data_reg_n_0_[46]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_W(15),
      Q => \deci_low.doa_in_data_reg_n_0_[47]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(4),
      Q => \deci_low.doa_in_data_reg_n_0_[4]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(5),
      Q => \deci_low.doa_in_data_reg_n_0_[5]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(6),
      Q => \deci_low.doa_in_data_reg_n_0_[6]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(7),
      Q => \deci_low.doa_in_data_reg_n_0_[7]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(8),
      Q => \deci_low.doa_in_data_reg_n_0_[8]\,
      R => '0'
    );
\deci_low.doa_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_in_data[47]_i_1_n_0\,
      D => doa_N(9),
      Q => \deci_low.doa_in_data_reg_n_0_[9]\,
      R => '0'
    );
\deci_low.doa_out_delay[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"323B"
    )
        port map (
      I0 => doa_out_delay(2),
      I1 => doa_out_delay(0),
      I2 => doa_out_delay(1),
      I3 => doa_fifo_empty,
      O => \doa_out_delay__0\(0)
    );
\deci_low.doa_out_delay[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8962"
    )
        port map (
      I0 => doa_out_delay(1),
      I1 => doa_fifo_empty,
      I2 => doa_out_delay(2),
      I3 => doa_out_delay(0),
      O => \doa_out_delay__0\(1)
    );
\deci_low.doa_out_delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9AA2"
    )
        port map (
      I0 => doa_out_delay(2),
      I1 => doa_fifo_empty,
      I2 => doa_out_delay(1),
      I3 => doa_out_delay(0),
      O => \doa_out_delay__0\(2)
    );
\deci_low.doa_out_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => '1',
      D => \doa_out_delay__0\(0),
      Q => doa_out_delay(0),
      R => '0'
    );
\deci_low.doa_out_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => '1',
      D => \doa_out_delay__0\(1),
      Q => doa_out_delay(1),
      R => '0'
    );
\deci_low.doa_out_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => '1',
      D => \doa_out_delay__0\(2),
      Q => doa_out_delay(2),
      R => '0'
    );
\deci_low.doa_out_rd_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => doa_fifo_empty,
      O => \deci_low.doa_out_rd_i_1_n_0\
    );
\deci_low.doa_out_rd_reg\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => '1',
      D => \deci_low.doa_out_rd_i_1_n_0\,
      Q => doa_out_rd,
      R => '0'
    );
\deci_low.doa_ready_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEEEFEE2"
    )
        port map (
      I0 => \^doa_ready\,
      I1 => doa_fifo_empty,
      I2 => doa_out_delay(2),
      I3 => doa_out_delay(0),
      I4 => doa_out_delay(1),
      O => \deci_low.doa_ready_i_1_n_0\
    );
\deci_low.doa_ready_reg\: unisim.vcomponents.FDRE
     port map (
      C => doa_clk,
      CE => '1',
      D => \deci_low.doa_ready_i_1_n_0\,
      Q => \^doa_ready\,
      R => '0'
    );
\deci_low.doa_wr_delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3B333333"
    )
        port map (
      I0 => mux_active,
      I1 => doa_wr_delay(0),
      I2 => doa_wr_delay(2),
      I3 => doa_wr_delay(3),
      I4 => doa_wr_delay(1),
      O => \doa_wr_delay__0\(0)
    );
\deci_low.doa_wr_delay[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5DAAAA55"
    )
        port map (
      I0 => doa_wr_delay(0),
      I1 => doa_wr_delay(3),
      I2 => doa_wr_delay(2),
      I3 => doa_wr_delay(1),
      I4 => mux_active,
      O => \doa_wr_delay__0\(1)
    );
\deci_low.doa_wr_delay[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F40FC03"
    )
        port map (
      I0 => doa_wr_delay(3),
      I1 => doa_wr_delay(0),
      I2 => doa_wr_delay(1),
      I3 => doa_wr_delay(2),
      I4 => mux_active,
      O => \doa_wr_delay__0\(2)
    );
\deci_low.doa_wr_delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => mux_active,
      I1 => doa_wr_delay(2),
      I2 => doa_wr_delay(3),
      I3 => doa_wr_delay(0),
      I4 => doa_wr_delay(1),
      O => \deci_low.doa_wr_delay[3]_i_1_n_0\
    );
\deci_low.doa_wr_delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => doa_wr_delay(1),
      I1 => doa_wr_delay(0),
      I2 => mux_active,
      I3 => doa_wr_delay(3),
      I4 => doa_wr_delay(2),
      O => \doa_wr_delay__0\(3)
    );
\deci_low.doa_wr_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_wr_delay[3]_i_1_n_0\,
      D => \doa_wr_delay__0\(0),
      Q => doa_wr_delay(0),
      R => '0'
    );
\deci_low.doa_wr_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_wr_delay[3]_i_1_n_0\,
      D => \doa_wr_delay__0\(1),
      Q => doa_wr_delay(1),
      R => '0'
    );
\deci_low.doa_wr_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_wr_delay[3]_i_1_n_0\,
      D => \doa_wr_delay__0\(2),
      Q => doa_wr_delay(2),
      R => '0'
    );
\deci_low.doa_wr_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.doa_wr_delay[3]_i_1_n_0\,
      D => \doa_wr_delay__0\(3),
      Q => doa_wr_delay(3),
      R => '0'
    );
\deci_low.fir_resetn_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"81"
    )
        port map (
      I0 => reset_active(0),
      I1 => reset_active(2),
      I2 => reset_active(1),
      O => \deci_low.fir_resetn_i_1_n_0\
    );
\deci_low.fir_resetn_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.fir_resetn_i_1_n_0\,
      Q => fir_resetn,
      R => '0'
    );
\deci_low.mux_E[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(0),
      I3 => adc_active,
      I4 => sim_out_E(0),
      O => \deci_low.mux_E[0]_i_1_n_0\
    );
\deci_low.mux_E[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(100),
      I3 => adc_active,
      I4 => sim_out_E(100),
      O => \deci_low.mux_E[100]_i_1_n_0\
    );
\deci_low.mux_E[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(101),
      I3 => adc_active,
      I4 => sim_out_E(101),
      O => \deci_low.mux_E[101]_i_1_n_0\
    );
\deci_low.mux_E[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(102),
      I3 => adc_active,
      I4 => sim_out_E(102),
      O => \deci_low.mux_E[102]_i_1_n_0\
    );
\deci_low.mux_E[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(103),
      I3 => adc_active,
      I4 => sim_out_E(103),
      O => \deci_low.mux_E[103]_i_1_n_0\
    );
\deci_low.mux_E[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(104),
      I3 => adc_active,
      I4 => sim_out_E(104),
      O => \deci_low.mux_E[104]_i_1_n_0\
    );
\deci_low.mux_E[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(105),
      I3 => adc_active,
      I4 => sim_out_E(105),
      O => \deci_low.mux_E[105]_i_1_n_0\
    );
\deci_low.mux_E[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(106),
      I3 => adc_active,
      I4 => sim_out_E(106),
      O => \deci_low.mux_E[106]_i_1_n_0\
    );
\deci_low.mux_E[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(107),
      I3 => adc_active,
      I4 => sim_out_E(107),
      O => \deci_low.mux_E[107]_i_1_n_0\
    );
\deci_low.mux_E[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(108),
      I3 => adc_active,
      I4 => sim_out_E(108),
      O => \deci_low.mux_E[108]_i_1_n_0\
    );
\deci_low.mux_E[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(109),
      I3 => adc_active,
      I4 => sim_out_E(109),
      O => \deci_low.mux_E[109]_i_1_n_0\
    );
\deci_low.mux_E[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(10),
      I3 => adc_active,
      I4 => sim_out_E(10),
      O => \deci_low.mux_E[10]_i_1_n_0\
    );
\deci_low.mux_E[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(110),
      I3 => adc_active,
      I4 => sim_out_E(110),
      O => \deci_low.mux_E[110]_i_1_n_0\
    );
\deci_low.mux_E[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(111),
      I3 => adc_active,
      I4 => sim_out_E(111),
      O => \deci_low.mux_E[111]_i_1_n_0\
    );
\deci_low.mux_E[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(112),
      I3 => adc_active,
      I4 => sim_out_E(112),
      O => \deci_low.mux_E[112]_i_1_n_0\
    );
\deci_low.mux_E[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(113),
      I3 => adc_active,
      I4 => sim_out_E(113),
      O => \deci_low.mux_E[113]_i_1_n_0\
    );
\deci_low.mux_E[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(114),
      I3 => adc_active,
      I4 => sim_out_E(114),
      O => \deci_low.mux_E[114]_i_1_n_0\
    );
\deci_low.mux_E[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(115),
      I3 => adc_active,
      I4 => sim_out_E(115),
      O => \deci_low.mux_E[115]_i_1_n_0\
    );
\deci_low.mux_E[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(116),
      I3 => adc_active,
      I4 => sim_out_E(116),
      O => \deci_low.mux_E[116]_i_1_n_0\
    );
\deci_low.mux_E[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(117),
      I3 => adc_active,
      I4 => sim_out_E(117),
      O => \deci_low.mux_E[117]_i_1_n_0\
    );
\deci_low.mux_E[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(118),
      I3 => adc_active,
      I4 => sim_out_E(118),
      O => \deci_low.mux_E[118]_i_1_n_0\
    );
\deci_low.mux_E[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(119),
      I3 => adc_active,
      I4 => sim_out_E(119),
      O => \deci_low.mux_E[119]_i_1_n_0\
    );
\deci_low.mux_E[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(11),
      I3 => adc_active,
      I4 => sim_out_E(11),
      O => \deci_low.mux_E[11]_i_1_n_0\
    );
\deci_low.mux_E[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(120),
      I3 => adc_active,
      I4 => sim_out_E(120),
      O => \deci_low.mux_E[120]_i_1_n_0\
    );
\deci_low.mux_E[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(121),
      I3 => adc_active,
      I4 => sim_out_E(121),
      O => \deci_low.mux_E[121]_i_1_n_0\
    );
\deci_low.mux_E[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(122),
      I3 => adc_active,
      I4 => sim_out_E(122),
      O => \deci_low.mux_E[122]_i_1_n_0\
    );
\deci_low.mux_E[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(123),
      I3 => adc_active,
      I4 => sim_out_E(123),
      O => \deci_low.mux_E[123]_i_1_n_0\
    );
\deci_low.mux_E[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(124),
      I3 => adc_active,
      I4 => sim_out_E(124),
      O => \deci_low.mux_E[124]_i_1_n_0\
    );
\deci_low.mux_E[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(125),
      I3 => adc_active,
      I4 => sim_out_E(125),
      O => \deci_low.mux_E[125]_i_1_n_0\
    );
\deci_low.mux_E[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(126),
      I3 => adc_active,
      I4 => sim_out_E(126),
      O => \deci_low.mux_E[126]_i_1_n_0\
    );
\deci_low.mux_E[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(127),
      I3 => adc_active,
      I4 => sim_out_E(127),
      O => \deci_low.mux_E[127]_i_1_n_0\
    );
\deci_low.mux_E[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(12),
      I3 => adc_active,
      I4 => sim_out_E(12),
      O => \deci_low.mux_E[12]_i_1_n_0\
    );
\deci_low.mux_E[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(13),
      I3 => adc_active,
      I4 => sim_out_E(13),
      O => \deci_low.mux_E[13]_i_1_n_0\
    );
\deci_low.mux_E[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(14),
      I3 => adc_active,
      I4 => sim_out_E(14),
      O => \deci_low.mux_E[14]_i_1_n_0\
    );
\deci_low.mux_E[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(15),
      I3 => adc_active,
      I4 => sim_out_E(15),
      O => \deci_low.mux_E[15]_i_1_n_0\
    );
\deci_low.mux_E[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(16),
      I3 => adc_active,
      I4 => sim_out_E(16),
      O => \deci_low.mux_E[16]_i_1_n_0\
    );
\deci_low.mux_E[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(17),
      I3 => adc_active,
      I4 => sim_out_E(17),
      O => \deci_low.mux_E[17]_i_1_n_0\
    );
\deci_low.mux_E[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(18),
      I3 => adc_active,
      I4 => sim_out_E(18),
      O => \deci_low.mux_E[18]_i_1_n_0\
    );
\deci_low.mux_E[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(19),
      I3 => adc_active,
      I4 => sim_out_E(19),
      O => \deci_low.mux_E[19]_i_1_n_0\
    );
\deci_low.mux_E[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(1),
      I3 => adc_active,
      I4 => sim_out_E(1),
      O => \deci_low.mux_E[1]_i_1_n_0\
    );
\deci_low.mux_E[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(20),
      I3 => adc_active,
      I4 => sim_out_E(20),
      O => \deci_low.mux_E[20]_i_1_n_0\
    );
\deci_low.mux_E[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(21),
      I3 => adc_active,
      I4 => sim_out_E(21),
      O => \deci_low.mux_E[21]_i_1_n_0\
    );
\deci_low.mux_E[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(22),
      I3 => adc_active,
      I4 => sim_out_E(22),
      O => \deci_low.mux_E[22]_i_1_n_0\
    );
\deci_low.mux_E[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(23),
      I3 => adc_active,
      I4 => sim_out_E(23),
      O => \deci_low.mux_E[23]_i_1_n_0\
    );
\deci_low.mux_E[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(24),
      I3 => adc_active,
      I4 => sim_out_E(24),
      O => \deci_low.mux_E[24]_i_1_n_0\
    );
\deci_low.mux_E[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(25),
      I3 => adc_active,
      I4 => sim_out_E(25),
      O => \deci_low.mux_E[25]_i_1_n_0\
    );
\deci_low.mux_E[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(26),
      I3 => adc_active,
      I4 => sim_out_E(26),
      O => \deci_low.mux_E[26]_i_1_n_0\
    );
\deci_low.mux_E[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(27),
      I3 => adc_active,
      I4 => sim_out_E(27),
      O => \deci_low.mux_E[27]_i_1_n_0\
    );
\deci_low.mux_E[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(28),
      I3 => adc_active,
      I4 => sim_out_E(28),
      O => \deci_low.mux_E[28]_i_1_n_0\
    );
\deci_low.mux_E[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(29),
      I3 => adc_active,
      I4 => sim_out_E(29),
      O => \deci_low.mux_E[29]_i_1_n_0\
    );
\deci_low.mux_E[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(2),
      I3 => adc_active,
      I4 => sim_out_E(2),
      O => \deci_low.mux_E[2]_i_1_n_0\
    );
\deci_low.mux_E[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(30),
      I3 => adc_active,
      I4 => sim_out_E(30),
      O => \deci_low.mux_E[30]_i_1_n_0\
    );
\deci_low.mux_E[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(31),
      I3 => adc_active,
      I4 => sim_out_E(31),
      O => \deci_low.mux_E[31]_i_1_n_0\
    );
\deci_low.mux_E[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(32),
      I3 => adc_active,
      I4 => sim_out_E(32),
      O => \deci_low.mux_E[32]_i_1_n_0\
    );
\deci_low.mux_E[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(33),
      I3 => adc_active,
      I4 => sim_out_E(33),
      O => \deci_low.mux_E[33]_i_1_n_0\
    );
\deci_low.mux_E[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(34),
      I3 => adc_active,
      I4 => sim_out_E(34),
      O => \deci_low.mux_E[34]_i_1_n_0\
    );
\deci_low.mux_E[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(35),
      I3 => adc_active,
      I4 => sim_out_E(35),
      O => \deci_low.mux_E[35]_i_1_n_0\
    );
\deci_low.mux_E[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(36),
      I3 => adc_active,
      I4 => sim_out_E(36),
      O => \deci_low.mux_E[36]_i_1_n_0\
    );
\deci_low.mux_E[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(37),
      I3 => adc_active,
      I4 => sim_out_E(37),
      O => \deci_low.mux_E[37]_i_1_n_0\
    );
\deci_low.mux_E[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(38),
      I3 => adc_active,
      I4 => sim_out_E(38),
      O => \deci_low.mux_E[38]_i_1_n_0\
    );
\deci_low.mux_E[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(39),
      I3 => adc_active,
      I4 => sim_out_E(39),
      O => \deci_low.mux_E[39]_i_1_n_0\
    );
\deci_low.mux_E[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(3),
      I3 => adc_active,
      I4 => sim_out_E(3),
      O => \deci_low.mux_E[3]_i_1_n_0\
    );
\deci_low.mux_E[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(40),
      I3 => adc_active,
      I4 => sim_out_E(40),
      O => \deci_low.mux_E[40]_i_1_n_0\
    );
\deci_low.mux_E[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(41),
      I3 => adc_active,
      I4 => sim_out_E(41),
      O => \deci_low.mux_E[41]_i_1_n_0\
    );
\deci_low.mux_E[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(42),
      I3 => adc_active,
      I4 => sim_out_E(42),
      O => \deci_low.mux_E[42]_i_1_n_0\
    );
\deci_low.mux_E[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(43),
      I3 => adc_active,
      I4 => sim_out_E(43),
      O => \deci_low.mux_E[43]_i_1_n_0\
    );
\deci_low.mux_E[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(44),
      I3 => adc_active,
      I4 => sim_out_E(44),
      O => \deci_low.mux_E[44]_i_1_n_0\
    );
\deci_low.mux_E[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(45),
      I3 => adc_active,
      I4 => sim_out_E(45),
      O => \deci_low.mux_E[45]_i_1_n_0\
    );
\deci_low.mux_E[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(46),
      I3 => adc_active,
      I4 => sim_out_E(46),
      O => \deci_low.mux_E[46]_i_1_n_0\
    );
\deci_low.mux_E[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(47),
      I3 => adc_active,
      I4 => sim_out_E(47),
      O => \deci_low.mux_E[47]_i_1_n_0\
    );
\deci_low.mux_E[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(48),
      I3 => adc_active,
      I4 => sim_out_E(48),
      O => \deci_low.mux_E[48]_i_1_n_0\
    );
\deci_low.mux_E[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(49),
      I3 => adc_active,
      I4 => sim_out_E(49),
      O => \deci_low.mux_E[49]_i_1_n_0\
    );
\deci_low.mux_E[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(4),
      I3 => adc_active,
      I4 => sim_out_E(4),
      O => \deci_low.mux_E[4]_i_1_n_0\
    );
\deci_low.mux_E[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(50),
      I3 => adc_active,
      I4 => sim_out_E(50),
      O => \deci_low.mux_E[50]_i_1_n_0\
    );
\deci_low.mux_E[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(51),
      I3 => adc_active,
      I4 => sim_out_E(51),
      O => \deci_low.mux_E[51]_i_1_n_0\
    );
\deci_low.mux_E[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(52),
      I3 => adc_active,
      I4 => sim_out_E(52),
      O => \deci_low.mux_E[52]_i_1_n_0\
    );
\deci_low.mux_E[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(53),
      I3 => adc_active,
      I4 => sim_out_E(53),
      O => \deci_low.mux_E[53]_i_1_n_0\
    );
\deci_low.mux_E[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(54),
      I3 => adc_active,
      I4 => sim_out_E(54),
      O => \deci_low.mux_E[54]_i_1_n_0\
    );
\deci_low.mux_E[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(55),
      I3 => adc_active,
      I4 => sim_out_E(55),
      O => \deci_low.mux_E[55]_i_1_n_0\
    );
\deci_low.mux_E[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(56),
      I3 => adc_active,
      I4 => sim_out_E(56),
      O => \deci_low.mux_E[56]_i_1_n_0\
    );
\deci_low.mux_E[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(57),
      I3 => adc_active,
      I4 => sim_out_E(57),
      O => \deci_low.mux_E[57]_i_1_n_0\
    );
\deci_low.mux_E[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(58),
      I3 => adc_active,
      I4 => sim_out_E(58),
      O => \deci_low.mux_E[58]_i_1_n_0\
    );
\deci_low.mux_E[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(59),
      I3 => adc_active,
      I4 => sim_out_E(59),
      O => \deci_low.mux_E[59]_i_1_n_0\
    );
\deci_low.mux_E[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(5),
      I3 => adc_active,
      I4 => sim_out_E(5),
      O => \deci_low.mux_E[5]_i_1_n_0\
    );
\deci_low.mux_E[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(60),
      I3 => adc_active,
      I4 => sim_out_E(60),
      O => \deci_low.mux_E[60]_i_1_n_0\
    );
\deci_low.mux_E[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(61),
      I3 => adc_active,
      I4 => sim_out_E(61),
      O => \deci_low.mux_E[61]_i_1_n_0\
    );
\deci_low.mux_E[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(62),
      I3 => adc_active,
      I4 => sim_out_E(62),
      O => \deci_low.mux_E[62]_i_1_n_0\
    );
\deci_low.mux_E[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(63),
      I3 => adc_active,
      I4 => sim_out_E(63),
      O => \deci_low.mux_E[63]_i_1_n_0\
    );
\deci_low.mux_E[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(64),
      I3 => adc_active,
      I4 => sim_out_E(64),
      O => \deci_low.mux_E[64]_i_1_n_0\
    );
\deci_low.mux_E[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(65),
      I3 => adc_active,
      I4 => sim_out_E(65),
      O => \deci_low.mux_E[65]_i_1_n_0\
    );
\deci_low.mux_E[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(66),
      I3 => adc_active,
      I4 => sim_out_E(66),
      O => \deci_low.mux_E[66]_i_1_n_0\
    );
\deci_low.mux_E[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(67),
      I3 => adc_active,
      I4 => sim_out_E(67),
      O => \deci_low.mux_E[67]_i_1_n_0\
    );
\deci_low.mux_E[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(68),
      I3 => adc_active,
      I4 => sim_out_E(68),
      O => \deci_low.mux_E[68]_i_1_n_0\
    );
\deci_low.mux_E[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(69),
      I3 => adc_active,
      I4 => sim_out_E(69),
      O => \deci_low.mux_E[69]_i_1_n_0\
    );
\deci_low.mux_E[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(6),
      I3 => adc_active,
      I4 => sim_out_E(6),
      O => \deci_low.mux_E[6]_i_1_n_0\
    );
\deci_low.mux_E[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(70),
      I3 => adc_active,
      I4 => sim_out_E(70),
      O => \deci_low.mux_E[70]_i_1_n_0\
    );
\deci_low.mux_E[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(71),
      I3 => adc_active,
      I4 => sim_out_E(71),
      O => \deci_low.mux_E[71]_i_1_n_0\
    );
\deci_low.mux_E[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(72),
      I3 => adc_active,
      I4 => sim_out_E(72),
      O => \deci_low.mux_E[72]_i_1_n_0\
    );
\deci_low.mux_E[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(73),
      I3 => adc_active,
      I4 => sim_out_E(73),
      O => \deci_low.mux_E[73]_i_1_n_0\
    );
\deci_low.mux_E[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(74),
      I3 => adc_active,
      I4 => sim_out_E(74),
      O => \deci_low.mux_E[74]_i_1_n_0\
    );
\deci_low.mux_E[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(75),
      I3 => adc_active,
      I4 => sim_out_E(75),
      O => \deci_low.mux_E[75]_i_1_n_0\
    );
\deci_low.mux_E[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(76),
      I3 => adc_active,
      I4 => sim_out_E(76),
      O => \deci_low.mux_E[76]_i_1_n_0\
    );
\deci_low.mux_E[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(77),
      I3 => adc_active,
      I4 => sim_out_E(77),
      O => \deci_low.mux_E[77]_i_1_n_0\
    );
\deci_low.mux_E[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(78),
      I3 => adc_active,
      I4 => sim_out_E(78),
      O => \deci_low.mux_E[78]_i_1_n_0\
    );
\deci_low.mux_E[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(79),
      I3 => adc_active,
      I4 => sim_out_E(79),
      O => \deci_low.mux_E[79]_i_1_n_0\
    );
\deci_low.mux_E[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(7),
      I3 => adc_active,
      I4 => sim_out_E(7),
      O => \deci_low.mux_E[7]_i_1_n_0\
    );
\deci_low.mux_E[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(80),
      I3 => adc_active,
      I4 => sim_out_E(80),
      O => \deci_low.mux_E[80]_i_1_n_0\
    );
\deci_low.mux_E[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(81),
      I3 => adc_active,
      I4 => sim_out_E(81),
      O => \deci_low.mux_E[81]_i_1_n_0\
    );
\deci_low.mux_E[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(82),
      I3 => adc_active,
      I4 => sim_out_E(82),
      O => \deci_low.mux_E[82]_i_1_n_0\
    );
\deci_low.mux_E[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(83),
      I3 => adc_active,
      I4 => sim_out_E(83),
      O => \deci_low.mux_E[83]_i_1_n_0\
    );
\deci_low.mux_E[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(84),
      I3 => adc_active,
      I4 => sim_out_E(84),
      O => \deci_low.mux_E[84]_i_1_n_0\
    );
\deci_low.mux_E[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(85),
      I3 => adc_active,
      I4 => sim_out_E(85),
      O => \deci_low.mux_E[85]_i_1_n_0\
    );
\deci_low.mux_E[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(86),
      I3 => adc_active,
      I4 => sim_out_E(86),
      O => \deci_low.mux_E[86]_i_1_n_0\
    );
\deci_low.mux_E[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(87),
      I3 => adc_active,
      I4 => sim_out_E(87),
      O => \deci_low.mux_E[87]_i_1_n_0\
    );
\deci_low.mux_E[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(88),
      I3 => adc_active,
      I4 => sim_out_E(88),
      O => \deci_low.mux_E[88]_i_1_n_0\
    );
\deci_low.mux_E[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(89),
      I3 => adc_active,
      I4 => sim_out_E(89),
      O => \deci_low.mux_E[89]_i_1_n_0\
    );
\deci_low.mux_E[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(8),
      I3 => adc_active,
      I4 => sim_out_E(8),
      O => \deci_low.mux_E[8]_i_1_n_0\
    );
\deci_low.mux_E[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(90),
      I3 => adc_active,
      I4 => sim_out_E(90),
      O => \deci_low.mux_E[90]_i_1_n_0\
    );
\deci_low.mux_E[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(91),
      I3 => adc_active,
      I4 => sim_out_E(91),
      O => \deci_low.mux_E[91]_i_1_n_0\
    );
\deci_low.mux_E[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(92),
      I3 => adc_active,
      I4 => sim_out_E(92),
      O => \deci_low.mux_E[92]_i_1_n_0\
    );
\deci_low.mux_E[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(93),
      I3 => adc_active,
      I4 => sim_out_E(93),
      O => \deci_low.mux_E[93]_i_1_n_0\
    );
\deci_low.mux_E[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(94),
      I3 => adc_active,
      I4 => sim_out_E(94),
      O => \deci_low.mux_E[94]_i_1_n_0\
    );
\deci_low.mux_E[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(95),
      I3 => adc_active,
      I4 => sim_out_E(95),
      O => \deci_low.mux_E[95]_i_1_n_0\
    );
\deci_low.mux_E[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(96),
      I3 => adc_active,
      I4 => sim_out_E(96),
      O => \deci_low.mux_E[96]_i_1_n_0\
    );
\deci_low.mux_E[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(97),
      I3 => adc_active,
      I4 => sim_out_E(97),
      O => \deci_low.mux_E[97]_i_1_n_0\
    );
\deci_low.mux_E[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(98),
      I3 => adc_active,
      I4 => sim_out_E(98),
      O => \deci_low.mux_E[98]_i_1_n_0\
    );
\deci_low.mux_E[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(99),
      I3 => adc_active,
      I4 => sim_out_E(99),
      O => \deci_low.mux_E[99]_i_1_n_0\
    );
\deci_low.mux_E[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_E(9),
      I3 => adc_active,
      I4 => sim_out_E(9),
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
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(0),
      I3 => adc_active,
      I4 => sim_out_N(0),
      O => \deci_low.mux_N[0]_i_1_n_0\
    );
\deci_low.mux_N[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(100),
      I3 => adc_active,
      I4 => sim_out_N(100),
      O => \deci_low.mux_N[100]_i_1_n_0\
    );
\deci_low.mux_N[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(101),
      I3 => adc_active,
      I4 => sim_out_N(101),
      O => \deci_low.mux_N[101]_i_1_n_0\
    );
\deci_low.mux_N[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(102),
      I3 => adc_active,
      I4 => sim_out_N(102),
      O => \deci_low.mux_N[102]_i_1_n_0\
    );
\deci_low.mux_N[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(103),
      I3 => adc_active,
      I4 => sim_out_N(103),
      O => \deci_low.mux_N[103]_i_1_n_0\
    );
\deci_low.mux_N[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(104),
      I3 => adc_active,
      I4 => sim_out_N(104),
      O => \deci_low.mux_N[104]_i_1_n_0\
    );
\deci_low.mux_N[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(105),
      I3 => adc_active,
      I4 => sim_out_N(105),
      O => \deci_low.mux_N[105]_i_1_n_0\
    );
\deci_low.mux_N[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(106),
      I3 => adc_active,
      I4 => sim_out_N(106),
      O => \deci_low.mux_N[106]_i_1_n_0\
    );
\deci_low.mux_N[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(107),
      I3 => adc_active,
      I4 => sim_out_N(107),
      O => \deci_low.mux_N[107]_i_1_n_0\
    );
\deci_low.mux_N[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(108),
      I3 => adc_active,
      I4 => sim_out_N(108),
      O => \deci_low.mux_N[108]_i_1_n_0\
    );
\deci_low.mux_N[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(109),
      I3 => adc_active,
      I4 => sim_out_N(109),
      O => \deci_low.mux_N[109]_i_1_n_0\
    );
\deci_low.mux_N[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(10),
      I3 => adc_active,
      I4 => sim_out_N(10),
      O => \deci_low.mux_N[10]_i_1_n_0\
    );
\deci_low.mux_N[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(110),
      I3 => adc_active,
      I4 => sim_out_N(110),
      O => \deci_low.mux_N[110]_i_1_n_0\
    );
\deci_low.mux_N[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(111),
      I3 => adc_active,
      I4 => sim_out_N(111),
      O => \deci_low.mux_N[111]_i_1_n_0\
    );
\deci_low.mux_N[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(112),
      I3 => adc_active,
      I4 => sim_out_N(112),
      O => \deci_low.mux_N[112]_i_1_n_0\
    );
\deci_low.mux_N[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(113),
      I3 => adc_active,
      I4 => sim_out_N(113),
      O => \deci_low.mux_N[113]_i_1_n_0\
    );
\deci_low.mux_N[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(114),
      I3 => adc_active,
      I4 => sim_out_N(114),
      O => \deci_low.mux_N[114]_i_1_n_0\
    );
\deci_low.mux_N[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(115),
      I3 => adc_active,
      I4 => sim_out_N(115),
      O => \deci_low.mux_N[115]_i_1_n_0\
    );
\deci_low.mux_N[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(116),
      I3 => adc_active,
      I4 => sim_out_N(116),
      O => \deci_low.mux_N[116]_i_1_n_0\
    );
\deci_low.mux_N[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(117),
      I3 => adc_active,
      I4 => sim_out_N(117),
      O => \deci_low.mux_N[117]_i_1_n_0\
    );
\deci_low.mux_N[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(118),
      I3 => adc_active,
      I4 => sim_out_N(118),
      O => \deci_low.mux_N[118]_i_1_n_0\
    );
\deci_low.mux_N[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(119),
      I3 => adc_active,
      I4 => sim_out_N(119),
      O => \deci_low.mux_N[119]_i_1_n_0\
    );
\deci_low.mux_N[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(11),
      I3 => adc_active,
      I4 => sim_out_N(11),
      O => \deci_low.mux_N[11]_i_1_n_0\
    );
\deci_low.mux_N[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(120),
      I3 => adc_active,
      I4 => sim_out_N(120),
      O => \deci_low.mux_N[120]_i_1_n_0\
    );
\deci_low.mux_N[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(121),
      I3 => adc_active,
      I4 => sim_out_N(121),
      O => \deci_low.mux_N[121]_i_1_n_0\
    );
\deci_low.mux_N[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(122),
      I3 => adc_active,
      I4 => sim_out_N(122),
      O => \deci_low.mux_N[122]_i_1_n_0\
    );
\deci_low.mux_N[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(123),
      I3 => adc_active,
      I4 => sim_out_N(123),
      O => \deci_low.mux_N[123]_i_1_n_0\
    );
\deci_low.mux_N[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(124),
      I3 => adc_active,
      I4 => sim_out_N(124),
      O => \deci_low.mux_N[124]_i_1_n_0\
    );
\deci_low.mux_N[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(125),
      I3 => adc_active,
      I4 => sim_out_N(125),
      O => \deci_low.mux_N[125]_i_1_n_0\
    );
\deci_low.mux_N[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(126),
      I3 => adc_active,
      I4 => sim_out_N(126),
      O => \deci_low.mux_N[126]_i_1_n_0\
    );
\deci_low.mux_N[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(127),
      I3 => adc_active,
      I4 => sim_out_N(127),
      O => \deci_low.mux_N[127]_i_1_n_0\
    );
\deci_low.mux_N[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(12),
      I3 => adc_active,
      I4 => sim_out_N(12),
      O => \deci_low.mux_N[12]_i_1_n_0\
    );
\deci_low.mux_N[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(13),
      I3 => adc_active,
      I4 => sim_out_N(13),
      O => \deci_low.mux_N[13]_i_1_n_0\
    );
\deci_low.mux_N[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(14),
      I3 => adc_active,
      I4 => sim_out_N(14),
      O => \deci_low.mux_N[14]_i_1_n_0\
    );
\deci_low.mux_N[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(15),
      I3 => adc_active,
      I4 => sim_out_N(15),
      O => \deci_low.mux_N[15]_i_1_n_0\
    );
\deci_low.mux_N[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(16),
      I3 => adc_active,
      I4 => sim_out_N(16),
      O => \deci_low.mux_N[16]_i_1_n_0\
    );
\deci_low.mux_N[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(17),
      I3 => adc_active,
      I4 => sim_out_N(17),
      O => \deci_low.mux_N[17]_i_1_n_0\
    );
\deci_low.mux_N[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(18),
      I3 => adc_active,
      I4 => sim_out_N(18),
      O => \deci_low.mux_N[18]_i_1_n_0\
    );
\deci_low.mux_N[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(19),
      I3 => adc_active,
      I4 => sim_out_N(19),
      O => \deci_low.mux_N[19]_i_1_n_0\
    );
\deci_low.mux_N[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(1),
      I3 => adc_active,
      I4 => sim_out_N(1),
      O => \deci_low.mux_N[1]_i_1_n_0\
    );
\deci_low.mux_N[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(20),
      I3 => adc_active,
      I4 => sim_out_N(20),
      O => \deci_low.mux_N[20]_i_1_n_0\
    );
\deci_low.mux_N[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(21),
      I3 => adc_active,
      I4 => sim_out_N(21),
      O => \deci_low.mux_N[21]_i_1_n_0\
    );
\deci_low.mux_N[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(22),
      I3 => adc_active,
      I4 => sim_out_N(22),
      O => \deci_low.mux_N[22]_i_1_n_0\
    );
\deci_low.mux_N[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(23),
      I3 => adc_active,
      I4 => sim_out_N(23),
      O => \deci_low.mux_N[23]_i_1_n_0\
    );
\deci_low.mux_N[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(24),
      I3 => adc_active,
      I4 => sim_out_N(24),
      O => \deci_low.mux_N[24]_i_1_n_0\
    );
\deci_low.mux_N[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(25),
      I3 => adc_active,
      I4 => sim_out_N(25),
      O => \deci_low.mux_N[25]_i_1_n_0\
    );
\deci_low.mux_N[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(26),
      I3 => adc_active,
      I4 => sim_out_N(26),
      O => \deci_low.mux_N[26]_i_1_n_0\
    );
\deci_low.mux_N[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(27),
      I3 => adc_active,
      I4 => sim_out_N(27),
      O => \deci_low.mux_N[27]_i_1_n_0\
    );
\deci_low.mux_N[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(28),
      I3 => adc_active,
      I4 => sim_out_N(28),
      O => \deci_low.mux_N[28]_i_1_n_0\
    );
\deci_low.mux_N[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(29),
      I3 => adc_active,
      I4 => sim_out_N(29),
      O => \deci_low.mux_N[29]_i_1_n_0\
    );
\deci_low.mux_N[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(2),
      I3 => adc_active,
      I4 => sim_out_N(2),
      O => \deci_low.mux_N[2]_i_1_n_0\
    );
\deci_low.mux_N[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(30),
      I3 => adc_active,
      I4 => sim_out_N(30),
      O => \deci_low.mux_N[30]_i_1_n_0\
    );
\deci_low.mux_N[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(31),
      I3 => adc_active,
      I4 => sim_out_N(31),
      O => \deci_low.mux_N[31]_i_1_n_0\
    );
\deci_low.mux_N[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(32),
      I3 => adc_active,
      I4 => sim_out_N(32),
      O => \deci_low.mux_N[32]_i_1_n_0\
    );
\deci_low.mux_N[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(33),
      I3 => adc_active,
      I4 => sim_out_N(33),
      O => \deci_low.mux_N[33]_i_1_n_0\
    );
\deci_low.mux_N[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(34),
      I3 => adc_active,
      I4 => sim_out_N(34),
      O => \deci_low.mux_N[34]_i_1_n_0\
    );
\deci_low.mux_N[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(35),
      I3 => adc_active,
      I4 => sim_out_N(35),
      O => \deci_low.mux_N[35]_i_1_n_0\
    );
\deci_low.mux_N[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(36),
      I3 => adc_active,
      I4 => sim_out_N(36),
      O => \deci_low.mux_N[36]_i_1_n_0\
    );
\deci_low.mux_N[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(37),
      I3 => adc_active,
      I4 => sim_out_N(37),
      O => \deci_low.mux_N[37]_i_1_n_0\
    );
\deci_low.mux_N[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(38),
      I3 => adc_active,
      I4 => sim_out_N(38),
      O => \deci_low.mux_N[38]_i_1_n_0\
    );
\deci_low.mux_N[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(39),
      I3 => adc_active,
      I4 => sim_out_N(39),
      O => \deci_low.mux_N[39]_i_1_n_0\
    );
\deci_low.mux_N[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(3),
      I3 => adc_active,
      I4 => sim_out_N(3),
      O => \deci_low.mux_N[3]_i_1_n_0\
    );
\deci_low.mux_N[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(40),
      I3 => adc_active,
      I4 => sim_out_N(40),
      O => \deci_low.mux_N[40]_i_1_n_0\
    );
\deci_low.mux_N[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(41),
      I3 => adc_active,
      I4 => sim_out_N(41),
      O => \deci_low.mux_N[41]_i_1_n_0\
    );
\deci_low.mux_N[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(42),
      I3 => adc_active,
      I4 => sim_out_N(42),
      O => \deci_low.mux_N[42]_i_1_n_0\
    );
\deci_low.mux_N[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(43),
      I3 => adc_active,
      I4 => sim_out_N(43),
      O => \deci_low.mux_N[43]_i_1_n_0\
    );
\deci_low.mux_N[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(44),
      I3 => adc_active,
      I4 => sim_out_N(44),
      O => \deci_low.mux_N[44]_i_1_n_0\
    );
\deci_low.mux_N[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(45),
      I3 => adc_active,
      I4 => sim_out_N(45),
      O => \deci_low.mux_N[45]_i_1_n_0\
    );
\deci_low.mux_N[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(46),
      I3 => adc_active,
      I4 => sim_out_N(46),
      O => \deci_low.mux_N[46]_i_1_n_0\
    );
\deci_low.mux_N[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(47),
      I3 => adc_active,
      I4 => sim_out_N(47),
      O => \deci_low.mux_N[47]_i_1_n_0\
    );
\deci_low.mux_N[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(48),
      I3 => adc_active,
      I4 => sim_out_N(48),
      O => \deci_low.mux_N[48]_i_1_n_0\
    );
\deci_low.mux_N[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(49),
      I3 => adc_active,
      I4 => sim_out_N(49),
      O => \deci_low.mux_N[49]_i_1_n_0\
    );
\deci_low.mux_N[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(4),
      I3 => adc_active,
      I4 => sim_out_N(4),
      O => \deci_low.mux_N[4]_i_1_n_0\
    );
\deci_low.mux_N[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(50),
      I3 => adc_active,
      I4 => sim_out_N(50),
      O => \deci_low.mux_N[50]_i_1_n_0\
    );
\deci_low.mux_N[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(51),
      I3 => adc_active,
      I4 => sim_out_N(51),
      O => \deci_low.mux_N[51]_i_1_n_0\
    );
\deci_low.mux_N[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(52),
      I3 => adc_active,
      I4 => sim_out_N(52),
      O => \deci_low.mux_N[52]_i_1_n_0\
    );
\deci_low.mux_N[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(53),
      I3 => adc_active,
      I4 => sim_out_N(53),
      O => \deci_low.mux_N[53]_i_1_n_0\
    );
\deci_low.mux_N[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(54),
      I3 => adc_active,
      I4 => sim_out_N(54),
      O => \deci_low.mux_N[54]_i_1_n_0\
    );
\deci_low.mux_N[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(55),
      I3 => adc_active,
      I4 => sim_out_N(55),
      O => \deci_low.mux_N[55]_i_1_n_0\
    );
\deci_low.mux_N[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(56),
      I3 => adc_active,
      I4 => sim_out_N(56),
      O => \deci_low.mux_N[56]_i_1_n_0\
    );
\deci_low.mux_N[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(57),
      I3 => adc_active,
      I4 => sim_out_N(57),
      O => \deci_low.mux_N[57]_i_1_n_0\
    );
\deci_low.mux_N[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(58),
      I3 => adc_active,
      I4 => sim_out_N(58),
      O => \deci_low.mux_N[58]_i_1_n_0\
    );
\deci_low.mux_N[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(59),
      I3 => adc_active,
      I4 => sim_out_N(59),
      O => \deci_low.mux_N[59]_i_1_n_0\
    );
\deci_low.mux_N[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(5),
      I3 => adc_active,
      I4 => sim_out_N(5),
      O => \deci_low.mux_N[5]_i_1_n_0\
    );
\deci_low.mux_N[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(60),
      I3 => adc_active,
      I4 => sim_out_N(60),
      O => \deci_low.mux_N[60]_i_1_n_0\
    );
\deci_low.mux_N[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(61),
      I3 => adc_active,
      I4 => sim_out_N(61),
      O => \deci_low.mux_N[61]_i_1_n_0\
    );
\deci_low.mux_N[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(62),
      I3 => adc_active,
      I4 => sim_out_N(62),
      O => \deci_low.mux_N[62]_i_1_n_0\
    );
\deci_low.mux_N[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(63),
      I3 => adc_active,
      I4 => sim_out_N(63),
      O => \deci_low.mux_N[63]_i_1_n_0\
    );
\deci_low.mux_N[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(64),
      I3 => adc_active,
      I4 => sim_out_N(64),
      O => \deci_low.mux_N[64]_i_1_n_0\
    );
\deci_low.mux_N[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(65),
      I3 => adc_active,
      I4 => sim_out_N(65),
      O => \deci_low.mux_N[65]_i_1_n_0\
    );
\deci_low.mux_N[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(66),
      I3 => adc_active,
      I4 => sim_out_N(66),
      O => \deci_low.mux_N[66]_i_1_n_0\
    );
\deci_low.mux_N[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(67),
      I3 => adc_active,
      I4 => sim_out_N(67),
      O => \deci_low.mux_N[67]_i_1_n_0\
    );
\deci_low.mux_N[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(68),
      I3 => adc_active,
      I4 => sim_out_N(68),
      O => \deci_low.mux_N[68]_i_1_n_0\
    );
\deci_low.mux_N[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(69),
      I3 => adc_active,
      I4 => sim_out_N(69),
      O => \deci_low.mux_N[69]_i_1_n_0\
    );
\deci_low.mux_N[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(6),
      I3 => adc_active,
      I4 => sim_out_N(6),
      O => \deci_low.mux_N[6]_i_1_n_0\
    );
\deci_low.mux_N[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(70),
      I3 => adc_active,
      I4 => sim_out_N(70),
      O => \deci_low.mux_N[70]_i_1_n_0\
    );
\deci_low.mux_N[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(71),
      I3 => adc_active,
      I4 => sim_out_N(71),
      O => \deci_low.mux_N[71]_i_1_n_0\
    );
\deci_low.mux_N[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(72),
      I3 => adc_active,
      I4 => sim_out_N(72),
      O => \deci_low.mux_N[72]_i_1_n_0\
    );
\deci_low.mux_N[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(73),
      I3 => adc_active,
      I4 => sim_out_N(73),
      O => \deci_low.mux_N[73]_i_1_n_0\
    );
\deci_low.mux_N[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(74),
      I3 => adc_active,
      I4 => sim_out_N(74),
      O => \deci_low.mux_N[74]_i_1_n_0\
    );
\deci_low.mux_N[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(75),
      I3 => adc_active,
      I4 => sim_out_N(75),
      O => \deci_low.mux_N[75]_i_1_n_0\
    );
\deci_low.mux_N[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(76),
      I3 => adc_active,
      I4 => sim_out_N(76),
      O => \deci_low.mux_N[76]_i_1_n_0\
    );
\deci_low.mux_N[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(77),
      I3 => adc_active,
      I4 => sim_out_N(77),
      O => \deci_low.mux_N[77]_i_1_n_0\
    );
\deci_low.mux_N[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(78),
      I3 => adc_active,
      I4 => sim_out_N(78),
      O => \deci_low.mux_N[78]_i_1_n_0\
    );
\deci_low.mux_N[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(79),
      I3 => adc_active,
      I4 => sim_out_N(79),
      O => \deci_low.mux_N[79]_i_1_n_0\
    );
\deci_low.mux_N[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(7),
      I3 => adc_active,
      I4 => sim_out_N(7),
      O => \deci_low.mux_N[7]_i_1_n_0\
    );
\deci_low.mux_N[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(80),
      I3 => adc_active,
      I4 => sim_out_N(80),
      O => \deci_low.mux_N[80]_i_1_n_0\
    );
\deci_low.mux_N[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(81),
      I3 => adc_active,
      I4 => sim_out_N(81),
      O => \deci_low.mux_N[81]_i_1_n_0\
    );
\deci_low.mux_N[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(82),
      I3 => adc_active,
      I4 => sim_out_N(82),
      O => \deci_low.mux_N[82]_i_1_n_0\
    );
\deci_low.mux_N[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(83),
      I3 => adc_active,
      I4 => sim_out_N(83),
      O => \deci_low.mux_N[83]_i_1_n_0\
    );
\deci_low.mux_N[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(84),
      I3 => adc_active,
      I4 => sim_out_N(84),
      O => \deci_low.mux_N[84]_i_1_n_0\
    );
\deci_low.mux_N[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(85),
      I3 => adc_active,
      I4 => sim_out_N(85),
      O => \deci_low.mux_N[85]_i_1_n_0\
    );
\deci_low.mux_N[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(86),
      I3 => adc_active,
      I4 => sim_out_N(86),
      O => \deci_low.mux_N[86]_i_1_n_0\
    );
\deci_low.mux_N[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(87),
      I3 => adc_active,
      I4 => sim_out_N(87),
      O => \deci_low.mux_N[87]_i_1_n_0\
    );
\deci_low.mux_N[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(88),
      I3 => adc_active,
      I4 => sim_out_N(88),
      O => \deci_low.mux_N[88]_i_1_n_0\
    );
\deci_low.mux_N[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(89),
      I3 => adc_active,
      I4 => sim_out_N(89),
      O => \deci_low.mux_N[89]_i_1_n_0\
    );
\deci_low.mux_N[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(8),
      I3 => adc_active,
      I4 => sim_out_N(8),
      O => \deci_low.mux_N[8]_i_1_n_0\
    );
\deci_low.mux_N[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(90),
      I3 => adc_active,
      I4 => sim_out_N(90),
      O => \deci_low.mux_N[90]_i_1_n_0\
    );
\deci_low.mux_N[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(91),
      I3 => adc_active,
      I4 => sim_out_N(91),
      O => \deci_low.mux_N[91]_i_1_n_0\
    );
\deci_low.mux_N[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(92),
      I3 => adc_active,
      I4 => sim_out_N(92),
      O => \deci_low.mux_N[92]_i_1_n_0\
    );
\deci_low.mux_N[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(93),
      I3 => adc_active,
      I4 => sim_out_N(93),
      O => \deci_low.mux_N[93]_i_1_n_0\
    );
\deci_low.mux_N[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(94),
      I3 => adc_active,
      I4 => sim_out_N(94),
      O => \deci_low.mux_N[94]_i_1_n_0\
    );
\deci_low.mux_N[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(95),
      I3 => adc_active,
      I4 => sim_out_N(95),
      O => \deci_low.mux_N[95]_i_1_n_0\
    );
\deci_low.mux_N[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(96),
      I3 => adc_active,
      I4 => sim_out_N(96),
      O => \deci_low.mux_N[96]_i_1_n_0\
    );
\deci_low.mux_N[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(97),
      I3 => adc_active,
      I4 => sim_out_N(97),
      O => \deci_low.mux_N[97]_i_1_n_0\
    );
\deci_low.mux_N[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(98),
      I3 => adc_active,
      I4 => sim_out_N(98),
      O => \deci_low.mux_N[98]_i_1_n_0\
    );
\deci_low.mux_N[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(99),
      I3 => adc_active,
      I4 => sim_out_N(99),
      O => \deci_low.mux_N[99]_i_1_n_0\
    );
\deci_low.mux_N[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_N(9),
      I3 => adc_active,
      I4 => sim_out_N(9),
      O => \deci_low.mux_N[9]_i_1_n_0\
    );
\deci_low.mux_N_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[0]_i_1_n_0\,
      Q => mux_N0(0),
      R => '0'
    );
\deci_low.mux_N_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[100]_i_1_n_0\,
      Q => mux_N6(4),
      R => '0'
    );
\deci_low.mux_N_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[101]_i_1_n_0\,
      Q => mux_N6(5),
      R => '0'
    );
\deci_low.mux_N_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[102]_i_1_n_0\,
      Q => mux_N6(6),
      R => '0'
    );
\deci_low.mux_N_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[103]_i_1_n_0\,
      Q => mux_N6(7),
      R => '0'
    );
\deci_low.mux_N_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[104]_i_1_n_0\,
      Q => mux_N6(8),
      R => '0'
    );
\deci_low.mux_N_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[105]_i_1_n_0\,
      Q => mux_N6(9),
      R => '0'
    );
\deci_low.mux_N_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[106]_i_1_n_0\,
      Q => mux_N6(10),
      R => '0'
    );
\deci_low.mux_N_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[107]_i_1_n_0\,
      Q => mux_N6(11),
      R => '0'
    );
\deci_low.mux_N_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[108]_i_1_n_0\,
      Q => mux_N6(12),
      R => '0'
    );
\deci_low.mux_N_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[109]_i_1_n_0\,
      Q => mux_N6(13),
      R => '0'
    );
\deci_low.mux_N_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[10]_i_1_n_0\,
      Q => mux_N0(10),
      R => '0'
    );
\deci_low.mux_N_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[110]_i_1_n_0\,
      Q => mux_N6(14),
      R => '0'
    );
\deci_low.mux_N_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[111]_i_1_n_0\,
      Q => mux_N6(15),
      R => '0'
    );
\deci_low.mux_N_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[112]_i_1_n_0\,
      Q => mux_N7(0),
      R => '0'
    );
\deci_low.mux_N_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[113]_i_1_n_0\,
      Q => mux_N7(1),
      R => '0'
    );
\deci_low.mux_N_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[114]_i_1_n_0\,
      Q => mux_N7(2),
      R => '0'
    );
\deci_low.mux_N_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[115]_i_1_n_0\,
      Q => mux_N7(3),
      R => '0'
    );
\deci_low.mux_N_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[116]_i_1_n_0\,
      Q => mux_N7(4),
      R => '0'
    );
\deci_low.mux_N_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[117]_i_1_n_0\,
      Q => mux_N7(5),
      R => '0'
    );
\deci_low.mux_N_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[118]_i_1_n_0\,
      Q => mux_N7(6),
      R => '0'
    );
\deci_low.mux_N_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[119]_i_1_n_0\,
      Q => mux_N7(7),
      R => '0'
    );
\deci_low.mux_N_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[11]_i_1_n_0\,
      Q => mux_N0(11),
      R => '0'
    );
\deci_low.mux_N_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[120]_i_1_n_0\,
      Q => mux_N7(8),
      R => '0'
    );
\deci_low.mux_N_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[121]_i_1_n_0\,
      Q => mux_N7(9),
      R => '0'
    );
\deci_low.mux_N_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[122]_i_1_n_0\,
      Q => mux_N7(10),
      R => '0'
    );
\deci_low.mux_N_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[123]_i_1_n_0\,
      Q => mux_N7(11),
      R => '0'
    );
\deci_low.mux_N_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[124]_i_1_n_0\,
      Q => mux_N7(12),
      R => '0'
    );
\deci_low.mux_N_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[125]_i_1_n_0\,
      Q => mux_N7(13),
      R => '0'
    );
\deci_low.mux_N_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[126]_i_1_n_0\,
      Q => mux_N7(14),
      R => '0'
    );
\deci_low.mux_N_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[127]_i_1_n_0\,
      Q => mux_N7(15),
      R => '0'
    );
\deci_low.mux_N_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[12]_i_1_n_0\,
      Q => mux_N0(12),
      R => '0'
    );
\deci_low.mux_N_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[13]_i_1_n_0\,
      Q => mux_N0(13),
      R => '0'
    );
\deci_low.mux_N_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[14]_i_1_n_0\,
      Q => mux_N0(14),
      R => '0'
    );
\deci_low.mux_N_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[15]_i_1_n_0\,
      Q => mux_N0(15),
      R => '0'
    );
\deci_low.mux_N_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[16]_i_1_n_0\,
      Q => mux_N1(0),
      R => '0'
    );
\deci_low.mux_N_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[17]_i_1_n_0\,
      Q => mux_N1(1),
      R => '0'
    );
\deci_low.mux_N_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[18]_i_1_n_0\,
      Q => mux_N1(2),
      R => '0'
    );
\deci_low.mux_N_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[19]_i_1_n_0\,
      Q => mux_N1(3),
      R => '0'
    );
\deci_low.mux_N_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[1]_i_1_n_0\,
      Q => mux_N0(1),
      R => '0'
    );
\deci_low.mux_N_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[20]_i_1_n_0\,
      Q => mux_N1(4),
      R => '0'
    );
\deci_low.mux_N_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[21]_i_1_n_0\,
      Q => mux_N1(5),
      R => '0'
    );
\deci_low.mux_N_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[22]_i_1_n_0\,
      Q => mux_N1(6),
      R => '0'
    );
\deci_low.mux_N_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[23]_i_1_n_0\,
      Q => mux_N1(7),
      R => '0'
    );
\deci_low.mux_N_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[24]_i_1_n_0\,
      Q => mux_N1(8),
      R => '0'
    );
\deci_low.mux_N_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[25]_i_1_n_0\,
      Q => mux_N1(9),
      R => '0'
    );
\deci_low.mux_N_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[26]_i_1_n_0\,
      Q => mux_N1(10),
      R => '0'
    );
\deci_low.mux_N_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[27]_i_1_n_0\,
      Q => mux_N1(11),
      R => '0'
    );
\deci_low.mux_N_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[28]_i_1_n_0\,
      Q => mux_N1(12),
      R => '0'
    );
\deci_low.mux_N_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[29]_i_1_n_0\,
      Q => mux_N1(13),
      R => '0'
    );
\deci_low.mux_N_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[2]_i_1_n_0\,
      Q => mux_N0(2),
      R => '0'
    );
\deci_low.mux_N_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[30]_i_1_n_0\,
      Q => mux_N1(14),
      R => '0'
    );
\deci_low.mux_N_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[31]_i_1_n_0\,
      Q => mux_N1(15),
      R => '0'
    );
\deci_low.mux_N_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[32]_i_1_n_0\,
      Q => mux_N2(0),
      R => '0'
    );
\deci_low.mux_N_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[33]_i_1_n_0\,
      Q => mux_N2(1),
      R => '0'
    );
\deci_low.mux_N_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[34]_i_1_n_0\,
      Q => mux_N2(2),
      R => '0'
    );
\deci_low.mux_N_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[35]_i_1_n_0\,
      Q => mux_N2(3),
      R => '0'
    );
\deci_low.mux_N_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[36]_i_1_n_0\,
      Q => mux_N2(4),
      R => '0'
    );
\deci_low.mux_N_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[37]_i_1_n_0\,
      Q => mux_N2(5),
      R => '0'
    );
\deci_low.mux_N_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[38]_i_1_n_0\,
      Q => mux_N2(6),
      R => '0'
    );
\deci_low.mux_N_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[39]_i_1_n_0\,
      Q => mux_N2(7),
      R => '0'
    );
\deci_low.mux_N_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[3]_i_1_n_0\,
      Q => mux_N0(3),
      R => '0'
    );
\deci_low.mux_N_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[40]_i_1_n_0\,
      Q => mux_N2(8),
      R => '0'
    );
\deci_low.mux_N_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[41]_i_1_n_0\,
      Q => mux_N2(9),
      R => '0'
    );
\deci_low.mux_N_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[42]_i_1_n_0\,
      Q => mux_N2(10),
      R => '0'
    );
\deci_low.mux_N_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[43]_i_1_n_0\,
      Q => mux_N2(11),
      R => '0'
    );
\deci_low.mux_N_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[44]_i_1_n_0\,
      Q => mux_N2(12),
      R => '0'
    );
\deci_low.mux_N_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[45]_i_1_n_0\,
      Q => mux_N2(13),
      R => '0'
    );
\deci_low.mux_N_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[46]_i_1_n_0\,
      Q => mux_N2(14),
      R => '0'
    );
\deci_low.mux_N_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[47]_i_1_n_0\,
      Q => mux_N2(15),
      R => '0'
    );
\deci_low.mux_N_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[48]_i_1_n_0\,
      Q => mux_N3(0),
      R => '0'
    );
\deci_low.mux_N_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[49]_i_1_n_0\,
      Q => mux_N3(1),
      R => '0'
    );
\deci_low.mux_N_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[4]_i_1_n_0\,
      Q => mux_N0(4),
      R => '0'
    );
\deci_low.mux_N_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[50]_i_1_n_0\,
      Q => mux_N3(2),
      R => '0'
    );
\deci_low.mux_N_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[51]_i_1_n_0\,
      Q => mux_N3(3),
      R => '0'
    );
\deci_low.mux_N_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[52]_i_1_n_0\,
      Q => mux_N3(4),
      R => '0'
    );
\deci_low.mux_N_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[53]_i_1_n_0\,
      Q => mux_N3(5),
      R => '0'
    );
\deci_low.mux_N_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[54]_i_1_n_0\,
      Q => mux_N3(6),
      R => '0'
    );
\deci_low.mux_N_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[55]_i_1_n_0\,
      Q => mux_N3(7),
      R => '0'
    );
\deci_low.mux_N_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[56]_i_1_n_0\,
      Q => mux_N3(8),
      R => '0'
    );
\deci_low.mux_N_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[57]_i_1_n_0\,
      Q => mux_N3(9),
      R => '0'
    );
\deci_low.mux_N_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[58]_i_1_n_0\,
      Q => mux_N3(10),
      R => '0'
    );
\deci_low.mux_N_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[59]_i_1_n_0\,
      Q => mux_N3(11),
      R => '0'
    );
\deci_low.mux_N_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[5]_i_1_n_0\,
      Q => mux_N0(5),
      R => '0'
    );
\deci_low.mux_N_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[60]_i_1_n_0\,
      Q => mux_N3(12),
      R => '0'
    );
\deci_low.mux_N_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[61]_i_1_n_0\,
      Q => mux_N3(13),
      R => '0'
    );
\deci_low.mux_N_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[62]_i_1_n_0\,
      Q => mux_N3(14),
      R => '0'
    );
\deci_low.mux_N_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[63]_i_1_n_0\,
      Q => mux_N3(15),
      R => '0'
    );
\deci_low.mux_N_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[64]_i_1_n_0\,
      Q => mux_N4(0),
      R => '0'
    );
\deci_low.mux_N_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[65]_i_1_n_0\,
      Q => mux_N4(1),
      R => '0'
    );
\deci_low.mux_N_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[66]_i_1_n_0\,
      Q => mux_N4(2),
      R => '0'
    );
\deci_low.mux_N_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[67]_i_1_n_0\,
      Q => mux_N4(3),
      R => '0'
    );
\deci_low.mux_N_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[68]_i_1_n_0\,
      Q => mux_N4(4),
      R => '0'
    );
\deci_low.mux_N_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[69]_i_1_n_0\,
      Q => mux_N4(5),
      R => '0'
    );
\deci_low.mux_N_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[6]_i_1_n_0\,
      Q => mux_N0(6),
      R => '0'
    );
\deci_low.mux_N_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[70]_i_1_n_0\,
      Q => mux_N4(6),
      R => '0'
    );
\deci_low.mux_N_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[71]_i_1_n_0\,
      Q => mux_N4(7),
      R => '0'
    );
\deci_low.mux_N_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[72]_i_1_n_0\,
      Q => mux_N4(8),
      R => '0'
    );
\deci_low.mux_N_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[73]_i_1_n_0\,
      Q => mux_N4(9),
      R => '0'
    );
\deci_low.mux_N_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[74]_i_1_n_0\,
      Q => mux_N4(10),
      R => '0'
    );
\deci_low.mux_N_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[75]_i_1_n_0\,
      Q => mux_N4(11),
      R => '0'
    );
\deci_low.mux_N_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[76]_i_1_n_0\,
      Q => mux_N4(12),
      R => '0'
    );
\deci_low.mux_N_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[77]_i_1_n_0\,
      Q => mux_N4(13),
      R => '0'
    );
\deci_low.mux_N_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[78]_i_1_n_0\,
      Q => mux_N4(14),
      R => '0'
    );
\deci_low.mux_N_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[79]_i_1_n_0\,
      Q => mux_N4(15),
      R => '0'
    );
\deci_low.mux_N_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[7]_i_1_n_0\,
      Q => mux_N0(7),
      R => '0'
    );
\deci_low.mux_N_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[80]_i_1_n_0\,
      Q => mux_N5(0),
      R => '0'
    );
\deci_low.mux_N_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[81]_i_1_n_0\,
      Q => mux_N5(1),
      R => '0'
    );
\deci_low.mux_N_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[82]_i_1_n_0\,
      Q => mux_N5(2),
      R => '0'
    );
\deci_low.mux_N_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[83]_i_1_n_0\,
      Q => mux_N5(3),
      R => '0'
    );
\deci_low.mux_N_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[84]_i_1_n_0\,
      Q => mux_N5(4),
      R => '0'
    );
\deci_low.mux_N_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[85]_i_1_n_0\,
      Q => mux_N5(5),
      R => '0'
    );
\deci_low.mux_N_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[86]_i_1_n_0\,
      Q => mux_N5(6),
      R => '0'
    );
\deci_low.mux_N_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[87]_i_1_n_0\,
      Q => mux_N5(7),
      R => '0'
    );
\deci_low.mux_N_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[88]_i_1_n_0\,
      Q => mux_N5(8),
      R => '0'
    );
\deci_low.mux_N_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[89]_i_1_n_0\,
      Q => mux_N5(9),
      R => '0'
    );
\deci_low.mux_N_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[8]_i_1_n_0\,
      Q => mux_N0(8),
      R => '0'
    );
\deci_low.mux_N_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[90]_i_1_n_0\,
      Q => mux_N5(10),
      R => '0'
    );
\deci_low.mux_N_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[91]_i_1_n_0\,
      Q => mux_N5(11),
      R => '0'
    );
\deci_low.mux_N_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[92]_i_1_n_0\,
      Q => mux_N5(12),
      R => '0'
    );
\deci_low.mux_N_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[93]_i_1_n_0\,
      Q => mux_N5(13),
      R => '0'
    );
\deci_low.mux_N_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[94]_i_1_n_0\,
      Q => mux_N5(14),
      R => '0'
    );
\deci_low.mux_N_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[95]_i_1_n_0\,
      Q => mux_N5(15),
      R => '0'
    );
\deci_low.mux_N_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[96]_i_1_n_0\,
      Q => mux_N6(0),
      R => '0'
    );
\deci_low.mux_N_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[97]_i_1_n_0\,
      Q => mux_N6(1),
      R => '0'
    );
\deci_low.mux_N_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[98]_i_1_n_0\,
      Q => mux_N6(2),
      R => '0'
    );
\deci_low.mux_N_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[99]_i_1_n_0\,
      Q => mux_N6(3),
      R => '0'
    );
\deci_low.mux_N_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.mux_N[9]_i_1_n_0\,
      Q => mux_N0(9),
      R => '0'
    );
\deci_low.mux_W[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(0),
      I3 => adc_active,
      I4 => sim_out_W(0),
      O => \deci_low.mux_W[0]_i_1_n_0\
    );
\deci_low.mux_W[100]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(100),
      I3 => adc_active,
      I4 => sim_out_W(100),
      O => \deci_low.mux_W[100]_i_1_n_0\
    );
\deci_low.mux_W[101]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(101),
      I3 => adc_active,
      I4 => sim_out_W(101),
      O => \deci_low.mux_W[101]_i_1_n_0\
    );
\deci_low.mux_W[102]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(102),
      I3 => adc_active,
      I4 => sim_out_W(102),
      O => \deci_low.mux_W[102]_i_1_n_0\
    );
\deci_low.mux_W[103]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(103),
      I3 => adc_active,
      I4 => sim_out_W(103),
      O => \deci_low.mux_W[103]_i_1_n_0\
    );
\deci_low.mux_W[104]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(104),
      I3 => adc_active,
      I4 => sim_out_W(104),
      O => \deci_low.mux_W[104]_i_1_n_0\
    );
\deci_low.mux_W[105]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(105),
      I3 => adc_active,
      I4 => sim_out_W(105),
      O => \deci_low.mux_W[105]_i_1_n_0\
    );
\deci_low.mux_W[106]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(106),
      I3 => adc_active,
      I4 => sim_out_W(106),
      O => \deci_low.mux_W[106]_i_1_n_0\
    );
\deci_low.mux_W[107]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(107),
      I3 => adc_active,
      I4 => sim_out_W(107),
      O => \deci_low.mux_W[107]_i_1_n_0\
    );
\deci_low.mux_W[108]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(108),
      I3 => adc_active,
      I4 => sim_out_W(108),
      O => \deci_low.mux_W[108]_i_1_n_0\
    );
\deci_low.mux_W[109]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(109),
      I3 => adc_active,
      I4 => sim_out_W(109),
      O => \deci_low.mux_W[109]_i_1_n_0\
    );
\deci_low.mux_W[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(10),
      I3 => adc_active,
      I4 => sim_out_W(10),
      O => \deci_low.mux_W[10]_i_1_n_0\
    );
\deci_low.mux_W[110]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(110),
      I3 => adc_active,
      I4 => sim_out_W(110),
      O => \deci_low.mux_W[110]_i_1_n_0\
    );
\deci_low.mux_W[111]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(111),
      I3 => adc_active,
      I4 => sim_out_W(111),
      O => \deci_low.mux_W[111]_i_1_n_0\
    );
\deci_low.mux_W[112]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(112),
      I3 => adc_active,
      I4 => sim_out_W(112),
      O => \deci_low.mux_W[112]_i_1_n_0\
    );
\deci_low.mux_W[113]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(113),
      I3 => adc_active,
      I4 => sim_out_W(113),
      O => \deci_low.mux_W[113]_i_1_n_0\
    );
\deci_low.mux_W[114]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(114),
      I3 => adc_active,
      I4 => sim_out_W(114),
      O => \deci_low.mux_W[114]_i_1_n_0\
    );
\deci_low.mux_W[115]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(115),
      I3 => adc_active,
      I4 => sim_out_W(115),
      O => \deci_low.mux_W[115]_i_1_n_0\
    );
\deci_low.mux_W[116]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(116),
      I3 => adc_active,
      I4 => sim_out_W(116),
      O => \deci_low.mux_W[116]_i_1_n_0\
    );
\deci_low.mux_W[117]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(117),
      I3 => adc_active,
      I4 => sim_out_W(117),
      O => \deci_low.mux_W[117]_i_1_n_0\
    );
\deci_low.mux_W[118]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(118),
      I3 => adc_active,
      I4 => sim_out_W(118),
      O => \deci_low.mux_W[118]_i_1_n_0\
    );
\deci_low.mux_W[119]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(119),
      I3 => adc_active,
      I4 => sim_out_W(119),
      O => \deci_low.mux_W[119]_i_1_n_0\
    );
\deci_low.mux_W[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(11),
      I3 => adc_active,
      I4 => sim_out_W(11),
      O => \deci_low.mux_W[11]_i_1_n_0\
    );
\deci_low.mux_W[120]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(120),
      I3 => adc_active,
      I4 => sim_out_W(120),
      O => \deci_low.mux_W[120]_i_1_n_0\
    );
\deci_low.mux_W[121]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(121),
      I3 => adc_active,
      I4 => sim_out_W(121),
      O => \deci_low.mux_W[121]_i_1_n_0\
    );
\deci_low.mux_W[122]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(122),
      I3 => adc_active,
      I4 => sim_out_W(122),
      O => \deci_low.mux_W[122]_i_1_n_0\
    );
\deci_low.mux_W[123]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(123),
      I3 => adc_active,
      I4 => sim_out_W(123),
      O => \deci_low.mux_W[123]_i_1_n_0\
    );
\deci_low.mux_W[124]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(124),
      I3 => adc_active,
      I4 => sim_out_W(124),
      O => \deci_low.mux_W[124]_i_1_n_0\
    );
\deci_low.mux_W[125]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(125),
      I3 => adc_active,
      I4 => sim_out_W(125),
      O => \deci_low.mux_W[125]_i_1_n_0\
    );
\deci_low.mux_W[126]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(126),
      I3 => adc_active,
      I4 => sim_out_W(126),
      O => \deci_low.mux_W[126]_i_1_n_0\
    );
\deci_low.mux_W[127]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(127),
      I3 => adc_active,
      I4 => sim_out_W(127),
      O => \deci_low.mux_W[127]_i_1_n_0\
    );
\deci_low.mux_W[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(12),
      I3 => adc_active,
      I4 => sim_out_W(12),
      O => \deci_low.mux_W[12]_i_1_n_0\
    );
\deci_low.mux_W[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(13),
      I3 => adc_active,
      I4 => sim_out_W(13),
      O => \deci_low.mux_W[13]_i_1_n_0\
    );
\deci_low.mux_W[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(14),
      I3 => adc_active,
      I4 => sim_out_W(14),
      O => \deci_low.mux_W[14]_i_1_n_0\
    );
\deci_low.mux_W[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(15),
      I3 => adc_active,
      I4 => sim_out_W(15),
      O => \deci_low.mux_W[15]_i_1_n_0\
    );
\deci_low.mux_W[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(16),
      I3 => adc_active,
      I4 => sim_out_W(16),
      O => \deci_low.mux_W[16]_i_1_n_0\
    );
\deci_low.mux_W[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(17),
      I3 => adc_active,
      I4 => sim_out_W(17),
      O => \deci_low.mux_W[17]_i_1_n_0\
    );
\deci_low.mux_W[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(18),
      I3 => adc_active,
      I4 => sim_out_W(18),
      O => \deci_low.mux_W[18]_i_1_n_0\
    );
\deci_low.mux_W[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(19),
      I3 => adc_active,
      I4 => sim_out_W(19),
      O => \deci_low.mux_W[19]_i_1_n_0\
    );
\deci_low.mux_W[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(1),
      I3 => adc_active,
      I4 => sim_out_W(1),
      O => \deci_low.mux_W[1]_i_1_n_0\
    );
\deci_low.mux_W[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(20),
      I3 => adc_active,
      I4 => sim_out_W(20),
      O => \deci_low.mux_W[20]_i_1_n_0\
    );
\deci_low.mux_W[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(21),
      I3 => adc_active,
      I4 => sim_out_W(21),
      O => \deci_low.mux_W[21]_i_1_n_0\
    );
\deci_low.mux_W[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(22),
      I3 => adc_active,
      I4 => sim_out_W(22),
      O => \deci_low.mux_W[22]_i_1_n_0\
    );
\deci_low.mux_W[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(23),
      I3 => adc_active,
      I4 => sim_out_W(23),
      O => \deci_low.mux_W[23]_i_1_n_0\
    );
\deci_low.mux_W[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(24),
      I3 => adc_active,
      I4 => sim_out_W(24),
      O => \deci_low.mux_W[24]_i_1_n_0\
    );
\deci_low.mux_W[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(25),
      I3 => adc_active,
      I4 => sim_out_W(25),
      O => \deci_low.mux_W[25]_i_1_n_0\
    );
\deci_low.mux_W[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(26),
      I3 => adc_active,
      I4 => sim_out_W(26),
      O => \deci_low.mux_W[26]_i_1_n_0\
    );
\deci_low.mux_W[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(27),
      I3 => adc_active,
      I4 => sim_out_W(27),
      O => \deci_low.mux_W[27]_i_1_n_0\
    );
\deci_low.mux_W[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(28),
      I3 => adc_active,
      I4 => sim_out_W(28),
      O => \deci_low.mux_W[28]_i_1_n_0\
    );
\deci_low.mux_W[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(29),
      I3 => adc_active,
      I4 => sim_out_W(29),
      O => \deci_low.mux_W[29]_i_1_n_0\
    );
\deci_low.mux_W[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(2),
      I3 => adc_active,
      I4 => sim_out_W(2),
      O => \deci_low.mux_W[2]_i_1_n_0\
    );
\deci_low.mux_W[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(30),
      I3 => adc_active,
      I4 => sim_out_W(30),
      O => \deci_low.mux_W[30]_i_1_n_0\
    );
\deci_low.mux_W[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(31),
      I3 => adc_active,
      I4 => sim_out_W(31),
      O => \deci_low.mux_W[31]_i_1_n_0\
    );
\deci_low.mux_W[32]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(32),
      I3 => adc_active,
      I4 => sim_out_W(32),
      O => \deci_low.mux_W[32]_i_1_n_0\
    );
\deci_low.mux_W[33]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(33),
      I3 => adc_active,
      I4 => sim_out_W(33),
      O => \deci_low.mux_W[33]_i_1_n_0\
    );
\deci_low.mux_W[34]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(34),
      I3 => adc_active,
      I4 => sim_out_W(34),
      O => \deci_low.mux_W[34]_i_1_n_0\
    );
\deci_low.mux_W[35]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(35),
      I3 => adc_active,
      I4 => sim_out_W(35),
      O => \deci_low.mux_W[35]_i_1_n_0\
    );
\deci_low.mux_W[36]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(36),
      I3 => adc_active,
      I4 => sim_out_W(36),
      O => \deci_low.mux_W[36]_i_1_n_0\
    );
\deci_low.mux_W[37]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(37),
      I3 => adc_active,
      I4 => sim_out_W(37),
      O => \deci_low.mux_W[37]_i_1_n_0\
    );
\deci_low.mux_W[38]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(38),
      I3 => adc_active,
      I4 => sim_out_W(38),
      O => \deci_low.mux_W[38]_i_1_n_0\
    );
\deci_low.mux_W[39]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(39),
      I3 => adc_active,
      I4 => sim_out_W(39),
      O => \deci_low.mux_W[39]_i_1_n_0\
    );
\deci_low.mux_W[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(3),
      I3 => adc_active,
      I4 => sim_out_W(3),
      O => \deci_low.mux_W[3]_i_1_n_0\
    );
\deci_low.mux_W[40]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(40),
      I3 => adc_active,
      I4 => sim_out_W(40),
      O => \deci_low.mux_W[40]_i_1_n_0\
    );
\deci_low.mux_W[41]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(41),
      I3 => adc_active,
      I4 => sim_out_W(41),
      O => \deci_low.mux_W[41]_i_1_n_0\
    );
\deci_low.mux_W[42]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(42),
      I3 => adc_active,
      I4 => sim_out_W(42),
      O => \deci_low.mux_W[42]_i_1_n_0\
    );
\deci_low.mux_W[43]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(43),
      I3 => adc_active,
      I4 => sim_out_W(43),
      O => \deci_low.mux_W[43]_i_1_n_0\
    );
\deci_low.mux_W[44]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(44),
      I3 => adc_active,
      I4 => sim_out_W(44),
      O => \deci_low.mux_W[44]_i_1_n_0\
    );
\deci_low.mux_W[45]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(45),
      I3 => adc_active,
      I4 => sim_out_W(45),
      O => \deci_low.mux_W[45]_i_1_n_0\
    );
\deci_low.mux_W[46]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(46),
      I3 => adc_active,
      I4 => sim_out_W(46),
      O => \deci_low.mux_W[46]_i_1_n_0\
    );
\deci_low.mux_W[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(47),
      I3 => adc_active,
      I4 => sim_out_W(47),
      O => \deci_low.mux_W[47]_i_1_n_0\
    );
\deci_low.mux_W[48]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(48),
      I3 => adc_active,
      I4 => sim_out_W(48),
      O => \deci_low.mux_W[48]_i_1_n_0\
    );
\deci_low.mux_W[49]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(49),
      I3 => adc_active,
      I4 => sim_out_W(49),
      O => \deci_low.mux_W[49]_i_1_n_0\
    );
\deci_low.mux_W[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(4),
      I3 => adc_active,
      I4 => sim_out_W(4),
      O => \deci_low.mux_W[4]_i_1_n_0\
    );
\deci_low.mux_W[50]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(50),
      I3 => adc_active,
      I4 => sim_out_W(50),
      O => \deci_low.mux_W[50]_i_1_n_0\
    );
\deci_low.mux_W[51]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(51),
      I3 => adc_active,
      I4 => sim_out_W(51),
      O => \deci_low.mux_W[51]_i_1_n_0\
    );
\deci_low.mux_W[52]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(52),
      I3 => adc_active,
      I4 => sim_out_W(52),
      O => \deci_low.mux_W[52]_i_1_n_0\
    );
\deci_low.mux_W[53]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(53),
      I3 => adc_active,
      I4 => sim_out_W(53),
      O => \deci_low.mux_W[53]_i_1_n_0\
    );
\deci_low.mux_W[54]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(54),
      I3 => adc_active,
      I4 => sim_out_W(54),
      O => \deci_low.mux_W[54]_i_1_n_0\
    );
\deci_low.mux_W[55]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(55),
      I3 => adc_active,
      I4 => sim_out_W(55),
      O => \deci_low.mux_W[55]_i_1_n_0\
    );
\deci_low.mux_W[56]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(56),
      I3 => adc_active,
      I4 => sim_out_W(56),
      O => \deci_low.mux_W[56]_i_1_n_0\
    );
\deci_low.mux_W[57]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(57),
      I3 => adc_active,
      I4 => sim_out_W(57),
      O => \deci_low.mux_W[57]_i_1_n_0\
    );
\deci_low.mux_W[58]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(58),
      I3 => adc_active,
      I4 => sim_out_W(58),
      O => \deci_low.mux_W[58]_i_1_n_0\
    );
\deci_low.mux_W[59]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(59),
      I3 => adc_active,
      I4 => sim_out_W(59),
      O => \deci_low.mux_W[59]_i_1_n_0\
    );
\deci_low.mux_W[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(5),
      I3 => adc_active,
      I4 => sim_out_W(5),
      O => \deci_low.mux_W[5]_i_1_n_0\
    );
\deci_low.mux_W[60]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(60),
      I3 => adc_active,
      I4 => sim_out_W(60),
      O => \deci_low.mux_W[60]_i_1_n_0\
    );
\deci_low.mux_W[61]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(61),
      I3 => adc_active,
      I4 => sim_out_W(61),
      O => \deci_low.mux_W[61]_i_1_n_0\
    );
\deci_low.mux_W[62]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(62),
      I3 => adc_active,
      I4 => sim_out_W(62),
      O => \deci_low.mux_W[62]_i_1_n_0\
    );
\deci_low.mux_W[63]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(63),
      I3 => adc_active,
      I4 => sim_out_W(63),
      O => \deci_low.mux_W[63]_i_1_n_0\
    );
\deci_low.mux_W[64]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(64),
      I3 => adc_active,
      I4 => sim_out_W(64),
      O => \deci_low.mux_W[64]_i_1_n_0\
    );
\deci_low.mux_W[65]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(65),
      I3 => adc_active,
      I4 => sim_out_W(65),
      O => \deci_low.mux_W[65]_i_1_n_0\
    );
\deci_low.mux_W[66]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(66),
      I3 => adc_active,
      I4 => sim_out_W(66),
      O => \deci_low.mux_W[66]_i_1_n_0\
    );
\deci_low.mux_W[67]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(67),
      I3 => adc_active,
      I4 => sim_out_W(67),
      O => \deci_low.mux_W[67]_i_1_n_0\
    );
\deci_low.mux_W[68]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(68),
      I3 => adc_active,
      I4 => sim_out_W(68),
      O => \deci_low.mux_W[68]_i_1_n_0\
    );
\deci_low.mux_W[69]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(69),
      I3 => adc_active,
      I4 => sim_out_W(69),
      O => \deci_low.mux_W[69]_i_1_n_0\
    );
\deci_low.mux_W[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(6),
      I3 => adc_active,
      I4 => sim_out_W(6),
      O => \deci_low.mux_W[6]_i_1_n_0\
    );
\deci_low.mux_W[70]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(70),
      I3 => adc_active,
      I4 => sim_out_W(70),
      O => \deci_low.mux_W[70]_i_1_n_0\
    );
\deci_low.mux_W[71]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(71),
      I3 => adc_active,
      I4 => sim_out_W(71),
      O => \deci_low.mux_W[71]_i_1_n_0\
    );
\deci_low.mux_W[72]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(72),
      I3 => adc_active,
      I4 => sim_out_W(72),
      O => \deci_low.mux_W[72]_i_1_n_0\
    );
\deci_low.mux_W[73]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(73),
      I3 => adc_active,
      I4 => sim_out_W(73),
      O => \deci_low.mux_W[73]_i_1_n_0\
    );
\deci_low.mux_W[74]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(74),
      I3 => adc_active,
      I4 => sim_out_W(74),
      O => \deci_low.mux_W[74]_i_1_n_0\
    );
\deci_low.mux_W[75]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(75),
      I3 => adc_active,
      I4 => sim_out_W(75),
      O => \deci_low.mux_W[75]_i_1_n_0\
    );
\deci_low.mux_W[76]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(76),
      I3 => adc_active,
      I4 => sim_out_W(76),
      O => \deci_low.mux_W[76]_i_1_n_0\
    );
\deci_low.mux_W[77]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(77),
      I3 => adc_active,
      I4 => sim_out_W(77),
      O => \deci_low.mux_W[77]_i_1_n_0\
    );
\deci_low.mux_W[78]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(78),
      I3 => adc_active,
      I4 => sim_out_W(78),
      O => \deci_low.mux_W[78]_i_1_n_0\
    );
\deci_low.mux_W[79]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(79),
      I3 => adc_active,
      I4 => sim_out_W(79),
      O => \deci_low.mux_W[79]_i_1_n_0\
    );
\deci_low.mux_W[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(7),
      I3 => adc_active,
      I4 => sim_out_W(7),
      O => \deci_low.mux_W[7]_i_1_n_0\
    );
\deci_low.mux_W[80]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(80),
      I3 => adc_active,
      I4 => sim_out_W(80),
      O => \deci_low.mux_W[80]_i_1_n_0\
    );
\deci_low.mux_W[81]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(81),
      I3 => adc_active,
      I4 => sim_out_W(81),
      O => \deci_low.mux_W[81]_i_1_n_0\
    );
\deci_low.mux_W[82]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(82),
      I3 => adc_active,
      I4 => sim_out_W(82),
      O => \deci_low.mux_W[82]_i_1_n_0\
    );
\deci_low.mux_W[83]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(83),
      I3 => adc_active,
      I4 => sim_out_W(83),
      O => \deci_low.mux_W[83]_i_1_n_0\
    );
\deci_low.mux_W[84]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(84),
      I3 => adc_active,
      I4 => sim_out_W(84),
      O => \deci_low.mux_W[84]_i_1_n_0\
    );
\deci_low.mux_W[85]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(85),
      I3 => adc_active,
      I4 => sim_out_W(85),
      O => \deci_low.mux_W[85]_i_1_n_0\
    );
\deci_low.mux_W[86]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(86),
      I3 => adc_active,
      I4 => sim_out_W(86),
      O => \deci_low.mux_W[86]_i_1_n_0\
    );
\deci_low.mux_W[87]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(87),
      I3 => adc_active,
      I4 => sim_out_W(87),
      O => \deci_low.mux_W[87]_i_1_n_0\
    );
\deci_low.mux_W[88]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(88),
      I3 => adc_active,
      I4 => sim_out_W(88),
      O => \deci_low.mux_W[88]_i_1_n_0\
    );
\deci_low.mux_W[89]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(89),
      I3 => adc_active,
      I4 => sim_out_W(89),
      O => \deci_low.mux_W[89]_i_1_n_0\
    );
\deci_low.mux_W[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(8),
      I3 => adc_active,
      I4 => sim_out_W(8),
      O => \deci_low.mux_W[8]_i_1_n_0\
    );
\deci_low.mux_W[90]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(90),
      I3 => adc_active,
      I4 => sim_out_W(90),
      O => \deci_low.mux_W[90]_i_1_n_0\
    );
\deci_low.mux_W[91]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(91),
      I3 => adc_active,
      I4 => sim_out_W(91),
      O => \deci_low.mux_W[91]_i_1_n_0\
    );
\deci_low.mux_W[92]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(92),
      I3 => adc_active,
      I4 => sim_out_W(92),
      O => \deci_low.mux_W[92]_i_1_n_0\
    );
\deci_low.mux_W[93]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(93),
      I3 => adc_active,
      I4 => sim_out_W(93),
      O => \deci_low.mux_W[93]_i_1_n_0\
    );
\deci_low.mux_W[94]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(94),
      I3 => adc_active,
      I4 => sim_out_W(94),
      O => \deci_low.mux_W[94]_i_1_n_0\
    );
\deci_low.mux_W[95]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(95),
      I3 => adc_active,
      I4 => sim_out_W(95),
      O => \deci_low.mux_W[95]_i_1_n_0\
    );
\deci_low.mux_W[96]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(96),
      I3 => adc_active,
      I4 => sim_out_W(96),
      O => \deci_low.mux_W[96]_i_1_n_0\
    );
\deci_low.mux_W[97]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(97),
      I3 => adc_active,
      I4 => sim_out_W(97),
      O => \deci_low.mux_W[97]_i_1_n_0\
    );
\deci_low.mux_W[98]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(98),
      I3 => adc_active,
      I4 => sim_out_W(98),
      O => \deci_low.mux_W[98]_i_1_n_0\
    );
\deci_low.mux_W[99]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(99),
      I3 => adc_active,
      I4 => sim_out_W(99),
      O => \deci_low.mux_W[99]_i_1_n_0\
    );
\deci_low.mux_W[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F088F000"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => data_W(9),
      I3 => adc_active,
      I4 => sim_out_W(9),
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
      INIT => X"F000000088888888"
    )
        port map (
      I0 => \^sim_active\,
      I1 => sim_active_1,
      I2 => ready_N,
      I3 => ready_E,
      I4 => ready_W,
      I5 => adc_active,
      O => \deci_low.mux_active_i_1_n_0\
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
      I0 => raw_delay(1),
      I1 => raw_delay(0),
      I2 => raw_delay(3),
      I3 => raw_delay(2),
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
\deci_low.raw_counter[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_active,
      O => \raw_counter__0\(0)
    );
\deci_low.raw_counter[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_counter(0),
      O => \deci_low.raw_counter[7]_i_2_n_0\
    );
\deci_low.raw_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_15\,
      Q => raw_counter(0),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_13\,
      Q => raw_counter(10),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_12\,
      Q => raw_counter(11),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_11\,
      Q => raw_counter(12),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_10\,
      Q => raw_counter(13),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_9\,
      Q => raw_counter(14),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_8\,
      Q => raw_counter(15),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[15]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \deci_low.raw_counter_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_deci_low.raw_counter_reg[15]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \deci_low.raw_counter_reg[15]_i_2_n_1\,
      CO(5) => \deci_low.raw_counter_reg[15]_i_2_n_2\,
      CO(4) => \deci_low.raw_counter_reg[15]_i_2_n_3\,
      CO(3) => \deci_low.raw_counter_reg[15]_i_2_n_4\,
      CO(2) => \deci_low.raw_counter_reg[15]_i_2_n_5\,
      CO(1) => \deci_low.raw_counter_reg[15]_i_2_n_6\,
      CO(0) => \deci_low.raw_counter_reg[15]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \deci_low.raw_counter_reg[15]_i_2_n_8\,
      O(6) => \deci_low.raw_counter_reg[15]_i_2_n_9\,
      O(5) => \deci_low.raw_counter_reg[15]_i_2_n_10\,
      O(4) => \deci_low.raw_counter_reg[15]_i_2_n_11\,
      O(3) => \deci_low.raw_counter_reg[15]_i_2_n_12\,
      O(2) => \deci_low.raw_counter_reg[15]_i_2_n_13\,
      O(1) => \deci_low.raw_counter_reg[15]_i_2_n_14\,
      O(0) => \deci_low.raw_counter_reg[15]_i_2_n_15\,
      S(7 downto 0) => raw_counter(15 downto 8)
    );
\deci_low.raw_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_14\,
      Q => raw_counter(1),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_13\,
      Q => raw_counter(2),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_12\,
      Q => raw_counter(3),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_11\,
      Q => raw_counter(4),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_10\,
      Q => raw_counter(5),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_9\,
      Q => raw_counter(6),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[7]_i_1_n_8\,
      Q => raw_counter(7),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \deci_low.raw_counter_reg[7]_i_1_n_0\,
      CO(6) => \deci_low.raw_counter_reg[7]_i_1_n_1\,
      CO(5) => \deci_low.raw_counter_reg[7]_i_1_n_2\,
      CO(4) => \deci_low.raw_counter_reg[7]_i_1_n_3\,
      CO(3) => \deci_low.raw_counter_reg[7]_i_1_n_4\,
      CO(2) => \deci_low.raw_counter_reg[7]_i_1_n_5\,
      CO(1) => \deci_low.raw_counter_reg[7]_i_1_n_6\,
      CO(0) => \deci_low.raw_counter_reg[7]_i_1_n_7\,
      DI(7 downto 1) => B"0000000",
      DI(0) => raw_counter(0),
      O(7) => \deci_low.raw_counter_reg[7]_i_1_n_8\,
      O(6) => \deci_low.raw_counter_reg[7]_i_1_n_9\,
      O(5) => \deci_low.raw_counter_reg[7]_i_1_n_10\,
      O(4) => \deci_low.raw_counter_reg[7]_i_1_n_11\,
      O(3) => \deci_low.raw_counter_reg[7]_i_1_n_12\,
      O(2) => \deci_low.raw_counter_reg[7]_i_1_n_13\,
      O(1) => \deci_low.raw_counter_reg[7]_i_1_n_14\,
      O(0) => \deci_low.raw_counter_reg[7]_i_1_n_15\,
      S(7 downto 1) => raw_counter(7 downto 1),
      S(0) => \deci_low.raw_counter[7]_i_2_n_0\
    );
\deci_low.raw_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_15\,
      Q => raw_counter(8),
      R => \raw_counter__0\(0)
    );
\deci_low.raw_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => '1',
      D => \deci_low.raw_counter_reg[15]_i_2_n_14\,
      Q => raw_counter(9),
      R => \raw_counter__0\(0)
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
      I0 => raw_delay(0),
      O => \deci_low.raw_delay_reg0\(0)
    );
\deci_low.raw_delay[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => raw_delay(2),
      I1 => raw_delay(3),
      I2 => raw_delay(0),
      I3 => raw_delay(1),
      I4 => \deci_low.raw_delay[11]_i_3_n_0\,
      I5 => \deci_low.raw_delay[11]_i_4_n_0\,
      O => \deci_low.raw_delay[11]_i_1_n_0\
    );
\deci_low.raw_delay[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => raw_delay(9),
      I1 => raw_delay(8),
      I2 => raw_delay(11),
      I3 => raw_delay(10),
      O => \deci_low.raw_delay[11]_i_3_n_0\
    );
\deci_low.raw_delay[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => raw_delay(5),
      I1 => raw_delay(4),
      I2 => raw_delay(7),
      I3 => raw_delay(6),
      O => \deci_low.raw_delay[11]_i_4_n_0\
    );
\deci_low.raw_delay[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(11),
      O => \deci_low.raw_delay[11]_i_5_n_0\
    );
\deci_low.raw_delay[11]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(10),
      O => \deci_low.raw_delay[11]_i_6_n_0\
    );
\deci_low.raw_delay[11]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(9),
      O => \deci_low.raw_delay[11]_i_7_n_0\
    );
\deci_low.raw_delay[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(8),
      O => \deci_low.raw_delay[8]_i_2_n_0\
    );
\deci_low.raw_delay[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(7),
      O => \deci_low.raw_delay[8]_i_3_n_0\
    );
\deci_low.raw_delay[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(6),
      O => \deci_low.raw_delay[8]_i_4_n_0\
    );
\deci_low.raw_delay[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(5),
      O => \deci_low.raw_delay[8]_i_5_n_0\
    );
\deci_low.raw_delay[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(4),
      O => \deci_low.raw_delay[8]_i_6_n_0\
    );
\deci_low.raw_delay[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(3),
      O => \deci_low.raw_delay[8]_i_7_n_0\
    );
\deci_low.raw_delay[8]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(2),
      O => \deci_low.raw_delay[8]_i_8_n_0\
    );
\deci_low.raw_delay[8]_i_9\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => raw_delay(1),
      O => \deci_low.raw_delay[8]_i_9_n_0\
    );
\deci_low.raw_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(0),
      Q => raw_delay(0),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(10),
      Q => raw_delay(10),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(11),
      Q => raw_delay(11),
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
      DI(1 downto 0) => raw_delay(10 downto 9),
      O(7 downto 3) => \NLW_deci_low.raw_delay_reg[11]_i_2_O_UNCONNECTED\(7 downto 3),
      O(2 downto 0) => \deci_low.raw_delay_reg0\(11 downto 9),
      S(7 downto 3) => B"00000",
      S(2) => \deci_low.raw_delay[11]_i_5_n_0\,
      S(1) => \deci_low.raw_delay[11]_i_6_n_0\,
      S(0) => \deci_low.raw_delay[11]_i_7_n_0\
    );
\deci_low.raw_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(1),
      Q => raw_delay(1),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(2),
      Q => raw_delay(2),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(3),
      Q => raw_delay(3),
      R => raw_fifo_empty
    );
\deci_low.raw_delay_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(4),
      Q => raw_delay(4),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(5),
      Q => raw_delay(5),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[6]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(6),
      Q => raw_delay(6),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[7]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(7),
      Q => raw_delay(7),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => raw_clk,
      CE => \deci_low.raw_delay[11]_i_1_n_0\,
      D => \deci_low.raw_delay_reg0\(8),
      Q => raw_delay(8),
      S => raw_fifo_empty
    );
\deci_low.raw_delay_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => raw_delay(0),
      CI_TOP => '0',
      CO(7) => \deci_low.raw_delay_reg[8]_i_1_n_0\,
      CO(6) => \deci_low.raw_delay_reg[8]_i_1_n_1\,
      CO(5) => \deci_low.raw_delay_reg[8]_i_1_n_2\,
      CO(4) => \deci_low.raw_delay_reg[8]_i_1_n_3\,
      CO(3) => \deci_low.raw_delay_reg[8]_i_1_n_4\,
      CO(2) => \deci_low.raw_delay_reg[8]_i_1_n_5\,
      CO(1) => \deci_low.raw_delay_reg[8]_i_1_n_6\,
      CO(0) => \deci_low.raw_delay_reg[8]_i_1_n_7\,
      DI(7 downto 0) => raw_delay(8 downto 1),
      O(7 downto 0) => \deci_low.raw_delay_reg0\(8 downto 1),
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
      D => \deci_low.raw_delay_reg0\(9),
      Q => raw_delay(9),
      S => raw_fifo_empty
    );
\deci_low.raw_fifo_wr_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BAAAAAAAFFFFFFFC"
    )
        port map (
      I0 => raw_fifo_wr,
      I1 => raw_wr_delay(1),
      I2 => raw_wr_delay(2),
      I3 => raw_wr_delay(3),
      I4 => raw_wr_delay(0),
      I5 => mux_active,
      O => \deci_low.raw_fifo_wr_i_1_n_0\
    );
\deci_low.raw_fifo_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.raw_fifo_wr_i_1_n_0\,
      Q => raw_fifo_wr,
      R => '0'
    );
\deci_low.raw_in_data[191]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"75555554"
    )
        port map (
      I0 => mux_active,
      I1 => raw_wr_delay(1),
      I2 => raw_wr_delay(0),
      I3 => raw_wr_delay(3),
      I4 => raw_wr_delay(2),
      O => \deci_low.raw_in_data[191]_i_1_n_0\
    );
\deci_low.raw_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(0),
      Q => \deci_low.raw_in_data_reg_n_0_[0]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(83),
      Q => \deci_low.raw_in_data_reg_n_0_[100]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(84),
      Q => \deci_low.raw_in_data_reg_n_0_[101]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(85),
      Q => \deci_low.raw_in_data_reg_n_0_[102]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(86),
      Q => \deci_low.raw_in_data_reg_n_0_[103]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(87),
      Q => \deci_low.raw_in_data_reg_n_0_[104]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(88),
      Q => \deci_low.raw_in_data_reg_n_0_[105]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(89),
      Q => \deci_low.raw_in_data_reg_n_0_[106]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(90),
      Q => \deci_low.raw_in_data_reg_n_0_[107]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(91),
      Q => \deci_low.raw_in_data_reg_n_0_[108]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(92),
      Q => \deci_low.raw_in_data_reg_n_0_[109]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(10),
      Q => \deci_low.raw_in_data_reg_n_0_[10]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(93),
      Q => \deci_low.raw_in_data_reg_n_0_[110]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(94),
      Q => \deci_low.raw_in_data_reg_n_0_[111]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(111),
      Q => \deci_low.raw_in_data_reg_n_0_[112]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(112),
      Q => \deci_low.raw_in_data_reg_n_0_[113]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(113),
      Q => \deci_low.raw_in_data_reg_n_0_[114]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(114),
      Q => \deci_low.raw_in_data_reg_n_0_[115]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(115),
      Q => \deci_low.raw_in_data_reg_n_0_[116]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(116),
      Q => \deci_low.raw_in_data_reg_n_0_[117]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(117),
      Q => \deci_low.raw_in_data_reg_n_0_[118]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(118),
      Q => \deci_low.raw_in_data_reg_n_0_[119]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(11),
      Q => \deci_low.raw_in_data_reg_n_0_[11]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(119),
      Q => \deci_low.raw_in_data_reg_n_0_[120]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(120),
      Q => \deci_low.raw_in_data_reg_n_0_[121]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(121),
      Q => \deci_low.raw_in_data_reg_n_0_[122]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(122),
      Q => \deci_low.raw_in_data_reg_n_0_[123]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(123),
      Q => \deci_low.raw_in_data_reg_n_0_[124]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(124),
      Q => \deci_low.raw_in_data_reg_n_0_[125]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(125),
      Q => \deci_low.raw_in_data_reg_n_0_[126]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(126),
      Q => \deci_low.raw_in_data_reg_n_0_[127]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(15),
      Q => \deci_low.raw_in_data_reg_n_0_[128]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(16),
      Q => \deci_low.raw_in_data_reg_n_0_[129]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(12),
      Q => \deci_low.raw_in_data_reg_n_0_[12]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(17),
      Q => \deci_low.raw_in_data_reg_n_0_[130]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(18),
      Q => \deci_low.raw_in_data_reg_n_0_[131]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(19),
      Q => \deci_low.raw_in_data_reg_n_0_[132]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(20),
      Q => \deci_low.raw_in_data_reg_n_0_[133]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(21),
      Q => \deci_low.raw_in_data_reg_n_0_[134]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(22),
      Q => \deci_low.raw_in_data_reg_n_0_[135]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(23),
      Q => \deci_low.raw_in_data_reg_n_0_[136]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(24),
      Q => \deci_low.raw_in_data_reg_n_0_[137]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(25),
      Q => \deci_low.raw_in_data_reg_n_0_[138]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(26),
      Q => \deci_low.raw_in_data_reg_n_0_[139]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(13),
      Q => \deci_low.raw_in_data_reg_n_0_[13]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(27),
      Q => \deci_low.raw_in_data_reg_n_0_[140]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(28),
      Q => \deci_low.raw_in_data_reg_n_0_[141]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(29),
      Q => \deci_low.raw_in_data_reg_n_0_[142]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(30),
      Q => \deci_low.raw_in_data_reg_n_0_[143]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(47),
      Q => \deci_low.raw_in_data_reg_n_0_[144]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(48),
      Q => \deci_low.raw_in_data_reg_n_0_[145]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(49),
      Q => \deci_low.raw_in_data_reg_n_0_[146]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(50),
      Q => \deci_low.raw_in_data_reg_n_0_[147]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(51),
      Q => \deci_low.raw_in_data_reg_n_0_[148]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(52),
      Q => \deci_low.raw_in_data_reg_n_0_[149]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(14),
      Q => \deci_low.raw_in_data_reg_n_0_[14]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(53),
      Q => \deci_low.raw_in_data_reg_n_0_[150]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(54),
      Q => \deci_low.raw_in_data_reg_n_0_[151]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(55),
      Q => \deci_low.raw_in_data_reg_n_0_[152]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(56),
      Q => \deci_low.raw_in_data_reg_n_0_[153]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(57),
      Q => \deci_low.raw_in_data_reg_n_0_[154]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(58),
      Q => \deci_low.raw_in_data_reg_n_0_[155]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(59),
      Q => \deci_low.raw_in_data_reg_n_0_[156]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(60),
      Q => \deci_low.raw_in_data_reg_n_0_[157]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(61),
      Q => \deci_low.raw_in_data_reg_n_0_[158]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(62),
      Q => \deci_low.raw_in_data_reg_n_0_[159]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(15),
      Q => \deci_low.raw_in_data_reg_n_0_[15]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(79),
      Q => \deci_low.raw_in_data_reg_n_0_[160]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(80),
      Q => \deci_low.raw_in_data_reg_n_0_[161]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(81),
      Q => \deci_low.raw_in_data_reg_n_0_[162]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(82),
      Q => \deci_low.raw_in_data_reg_n_0_[163]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(83),
      Q => \deci_low.raw_in_data_reg_n_0_[164]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(84),
      Q => \deci_low.raw_in_data_reg_n_0_[165]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(85),
      Q => \deci_low.raw_in_data_reg_n_0_[166]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(86),
      Q => \deci_low.raw_in_data_reg_n_0_[167]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(87),
      Q => \deci_low.raw_in_data_reg_n_0_[168]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(88),
      Q => \deci_low.raw_in_data_reg_n_0_[169]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(0),
      Q => \deci_low.raw_in_data_reg_n_0_[16]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(89),
      Q => \deci_low.raw_in_data_reg_n_0_[170]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(90),
      Q => \deci_low.raw_in_data_reg_n_0_[171]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(91),
      Q => \deci_low.raw_in_data_reg_n_0_[172]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(92),
      Q => \deci_low.raw_in_data_reg_n_0_[173]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(93),
      Q => \deci_low.raw_in_data_reg_n_0_[174]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(94),
      Q => \deci_low.raw_in_data_reg_n_0_[175]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(111),
      Q => \deci_low.raw_in_data_reg_n_0_[176]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(112),
      Q => \deci_low.raw_in_data_reg_n_0_[177]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(113),
      Q => \deci_low.raw_in_data_reg_n_0_[178]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(114),
      Q => \deci_low.raw_in_data_reg_n_0_[179]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(1),
      Q => \deci_low.raw_in_data_reg_n_0_[17]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(115),
      Q => \deci_low.raw_in_data_reg_n_0_[180]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(116),
      Q => \deci_low.raw_in_data_reg_n_0_[181]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(117),
      Q => \deci_low.raw_in_data_reg_n_0_[182]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(118),
      Q => \deci_low.raw_in_data_reg_n_0_[183]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(119),
      Q => \deci_low.raw_in_data_reg_n_0_[184]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(120),
      Q => \deci_low.raw_in_data_reg_n_0_[185]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(121),
      Q => \deci_low.raw_in_data_reg_n_0_[186]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(122),
      Q => \deci_low.raw_in_data_reg_n_0_[187]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(123),
      Q => \deci_low.raw_in_data_reg_n_0_[188]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(124),
      Q => \deci_low.raw_in_data_reg_n_0_[189]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(2),
      Q => \deci_low.raw_in_data_reg_n_0_[18]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(125),
      Q => \deci_low.raw_in_data_reg_n_0_[190]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_W(126),
      Q => \deci_low.raw_in_data_reg_n_0_[191]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(3),
      Q => \deci_low.raw_in_data_reg_n_0_[19]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(1),
      Q => \deci_low.raw_in_data_reg_n_0_[1]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(4),
      Q => \deci_low.raw_in_data_reg_n_0_[20]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(5),
      Q => \deci_low.raw_in_data_reg_n_0_[21]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(6),
      Q => \deci_low.raw_in_data_reg_n_0_[22]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(7),
      Q => \deci_low.raw_in_data_reg_n_0_[23]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(8),
      Q => \deci_low.raw_in_data_reg_n_0_[24]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(9),
      Q => \deci_low.raw_in_data_reg_n_0_[25]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(10),
      Q => \deci_low.raw_in_data_reg_n_0_[26]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(11),
      Q => \deci_low.raw_in_data_reg_n_0_[27]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(12),
      Q => \deci_low.raw_in_data_reg_n_0_[28]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(13),
      Q => \deci_low.raw_in_data_reg_n_0_[29]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(2),
      Q => \deci_low.raw_in_data_reg_n_0_[2]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(14),
      Q => \deci_low.raw_in_data_reg_n_0_[30]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N1(15),
      Q => \deci_low.raw_in_data_reg_n_0_[31]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(0),
      Q => \deci_low.raw_in_data_reg_n_0_[32]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(1),
      Q => \deci_low.raw_in_data_reg_n_0_[33]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(2),
      Q => \deci_low.raw_in_data_reg_n_0_[34]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(3),
      Q => \deci_low.raw_in_data_reg_n_0_[35]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(4),
      Q => \deci_low.raw_in_data_reg_n_0_[36]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(5),
      Q => \deci_low.raw_in_data_reg_n_0_[37]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(6),
      Q => \deci_low.raw_in_data_reg_n_0_[38]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(7),
      Q => \deci_low.raw_in_data_reg_n_0_[39]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(3),
      Q => \deci_low.raw_in_data_reg_n_0_[3]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(8),
      Q => \deci_low.raw_in_data_reg_n_0_[40]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(9),
      Q => \deci_low.raw_in_data_reg_n_0_[41]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(10),
      Q => \deci_low.raw_in_data_reg_n_0_[42]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(11),
      Q => \deci_low.raw_in_data_reg_n_0_[43]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(12),
      Q => \deci_low.raw_in_data_reg_n_0_[44]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(13),
      Q => \deci_low.raw_in_data_reg_n_0_[45]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(14),
      Q => \deci_low.raw_in_data_reg_n_0_[46]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N2(15),
      Q => \deci_low.raw_in_data_reg_n_0_[47]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(0),
      Q => \deci_low.raw_in_data_reg_n_0_[48]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(1),
      Q => \deci_low.raw_in_data_reg_n_0_[49]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(4),
      Q => \deci_low.raw_in_data_reg_n_0_[4]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(2),
      Q => \deci_low.raw_in_data_reg_n_0_[50]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(3),
      Q => \deci_low.raw_in_data_reg_n_0_[51]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(4),
      Q => \deci_low.raw_in_data_reg_n_0_[52]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(5),
      Q => \deci_low.raw_in_data_reg_n_0_[53]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(6),
      Q => \deci_low.raw_in_data_reg_n_0_[54]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(7),
      Q => \deci_low.raw_in_data_reg_n_0_[55]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(8),
      Q => \deci_low.raw_in_data_reg_n_0_[56]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(9),
      Q => \deci_low.raw_in_data_reg_n_0_[57]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(10),
      Q => \deci_low.raw_in_data_reg_n_0_[58]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(11),
      Q => \deci_low.raw_in_data_reg_n_0_[59]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(5),
      Q => \deci_low.raw_in_data_reg_n_0_[5]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(12),
      Q => \deci_low.raw_in_data_reg_n_0_[60]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(13),
      Q => \deci_low.raw_in_data_reg_n_0_[61]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(14),
      Q => \deci_low.raw_in_data_reg_n_0_[62]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N3(15),
      Q => \deci_low.raw_in_data_reg_n_0_[63]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(15),
      Q => \deci_low.raw_in_data_reg_n_0_[64]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(16),
      Q => \deci_low.raw_in_data_reg_n_0_[65]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(17),
      Q => \deci_low.raw_in_data_reg_n_0_[66]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(18),
      Q => \deci_low.raw_in_data_reg_n_0_[67]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(19),
      Q => \deci_low.raw_in_data_reg_n_0_[68]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(20),
      Q => \deci_low.raw_in_data_reg_n_0_[69]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(6),
      Q => \deci_low.raw_in_data_reg_n_0_[6]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(21),
      Q => \deci_low.raw_in_data_reg_n_0_[70]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(22),
      Q => \deci_low.raw_in_data_reg_n_0_[71]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(23),
      Q => \deci_low.raw_in_data_reg_n_0_[72]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(24),
      Q => \deci_low.raw_in_data_reg_n_0_[73]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(25),
      Q => \deci_low.raw_in_data_reg_n_0_[74]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(26),
      Q => \deci_low.raw_in_data_reg_n_0_[75]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(27),
      Q => \deci_low.raw_in_data_reg_n_0_[76]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(28),
      Q => \deci_low.raw_in_data_reg_n_0_[77]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(29),
      Q => \deci_low.raw_in_data_reg_n_0_[78]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(30),
      Q => \deci_low.raw_in_data_reg_n_0_[79]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(7),
      Q => \deci_low.raw_in_data_reg_n_0_[7]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(47),
      Q => \deci_low.raw_in_data_reg_n_0_[80]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(48),
      Q => \deci_low.raw_in_data_reg_n_0_[81]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(49),
      Q => \deci_low.raw_in_data_reg_n_0_[82]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(50),
      Q => \deci_low.raw_in_data_reg_n_0_[83]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(51),
      Q => \deci_low.raw_in_data_reg_n_0_[84]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(52),
      Q => \deci_low.raw_in_data_reg_n_0_[85]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(53),
      Q => \deci_low.raw_in_data_reg_n_0_[86]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(54),
      Q => \deci_low.raw_in_data_reg_n_0_[87]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(55),
      Q => \deci_low.raw_in_data_reg_n_0_[88]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(56),
      Q => \deci_low.raw_in_data_reg_n_0_[89]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(8),
      Q => \deci_low.raw_in_data_reg_n_0_[8]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(57),
      Q => \deci_low.raw_in_data_reg_n_0_[90]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(58),
      Q => \deci_low.raw_in_data_reg_n_0_[91]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(59),
      Q => \deci_low.raw_in_data_reg_n_0_[92]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(60),
      Q => \deci_low.raw_in_data_reg_n_0_[93]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(61),
      Q => \deci_low.raw_in_data_reg_n_0_[94]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(62),
      Q => \deci_low.raw_in_data_reg_n_0_[95]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(79),
      Q => \deci_low.raw_in_data_reg_n_0_[96]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(80),
      Q => \deci_low.raw_in_data_reg_n_0_[97]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(81),
      Q => \deci_low.raw_in_data_reg_n_0_[98]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => fir_raw_E(82),
      Q => \deci_low.raw_in_data_reg_n_0_[99]\,
      R => '0'
    );
\deci_low.raw_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_in_data[191]_i_1_n_0\,
      D => raw_N0(9),
      Q => \deci_low.raw_in_data_reg_n_0_[9]\,
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
\deci_low.raw_wr_delay[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3333B333"
    )
        port map (
      I0 => mux_active,
      I1 => raw_wr_delay(0),
      I2 => raw_wr_delay(3),
      I3 => raw_wr_delay(2),
      I4 => raw_wr_delay(1),
      O => \raw_wr_delay__0\(0)
    );
\deci_low.raw_wr_delay[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"552AAA55"
    )
        port map (
      I0 => raw_wr_delay(0),
      I1 => raw_wr_delay(2),
      I2 => raw_wr_delay(3),
      I3 => raw_wr_delay(1),
      I4 => mux_active,
      O => \raw_wr_delay__0\(1)
    );
\deci_low.raw_wr_delay[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"78E1"
    )
        port map (
      I0 => raw_wr_delay(0),
      I1 => raw_wr_delay(1),
      I2 => raw_wr_delay(2),
      I3 => mux_active,
      O => \raw_wr_delay__0\(2)
    );
\deci_low.raw_wr_delay[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => mux_active,
      I1 => raw_wr_delay(2),
      I2 => raw_wr_delay(3),
      I3 => raw_wr_delay(0),
      I4 => raw_wr_delay(1),
      O => \deci_low.raw_wr_delay[3]_i_1_n_0\
    );
\deci_low.raw_wr_delay[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7F80FE01"
    )
        port map (
      I0 => raw_wr_delay(1),
      I1 => raw_wr_delay(0),
      I2 => mux_active,
      I3 => raw_wr_delay(3),
      I4 => raw_wr_delay(2),
      O => \raw_wr_delay__0\(3)
    );
\deci_low.raw_wr_delay_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_wr_delay[3]_i_1_n_0\,
      D => \raw_wr_delay__0\(0),
      Q => raw_wr_delay(0),
      R => '0'
    );
\deci_low.raw_wr_delay_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_wr_delay[3]_i_1_n_0\,
      D => \raw_wr_delay__0\(1),
      Q => raw_wr_delay(1),
      R => '0'
    );
\deci_low.raw_wr_delay_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_wr_delay[3]_i_1_n_0\,
      D => \raw_wr_delay__0\(2),
      Q => raw_wr_delay(2),
      R => '0'
    );
\deci_low.raw_wr_delay_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \deci_low.raw_wr_delay[3]_i_1_n_0\,
      D => \raw_wr_delay__0\(3),
      Q => raw_wr_delay(3),
      R => '0'
    );
\deci_low.reset_active[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2220"
    )
        port map (
      I0 => resetn,
      I1 => reset_active(0),
      I2 => reset_active(1),
      I3 => reset_active(2),
      O => \deci_low.reset_active[0]_i_1_n_0\
    );
\deci_low.reset_active[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DD75"
    )
        port map (
      I0 => resetn,
      I1 => reset_active(1),
      I2 => reset_active(2),
      I3 => reset_active(0),
      O => \deci_low.reset_active[1]_i_1_n_0\
    );
\deci_low.reset_active[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA8"
    )
        port map (
      I0 => resetn,
      I1 => reset_delay(1),
      I2 => reset_delay(2),
      I3 => reset_delay(0),
      O => \deci_low.reset_active[2]_i_1_n_0\
    );
\deci_low.reset_active[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DDD5"
    )
        port map (
      I0 => resetn,
      I1 => reset_active(2),
      I2 => reset_active(0),
      I3 => reset_active(1),
      O => \deci_low.reset_active[2]_i_2_n_0\
    );
\deci_low.reset_active_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.reset_active[0]_i_1_n_0\,
      Q => reset_active(0),
      S => \deci_low.reset_active[2]_i_1_n_0\
    );
\deci_low.reset_active_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.reset_active[1]_i_1_n_0\,
      Q => reset_active(1),
      S => \deci_low.reset_active[2]_i_1_n_0\
    );
\deci_low.reset_active_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.reset_active[2]_i_2_n_0\,
      Q => reset_active(2),
      S => \deci_low.reset_active[2]_i_1_n_0\
    );
\deci_low.reset_delay[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_delay(0),
      O => \deci_low.reset_delay_reg01_in\(0)
    );
\deci_low.reset_delay[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => reset_delay(0),
      I1 => reset_delay(1),
      O => \deci_low.reset_delay[1]_i_1_n_0\
    );
\deci_low.reset_delay[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => mux_active,
      I1 => doa_fifo_wr,
      O => \deci_low.reset_delay_reg0\
    );
\deci_low.reset_delay[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => reset_delay(0),
      I1 => reset_delay(2),
      I2 => reset_delay(1),
      O => \deci_low.reset_delay[2]_i_2_n_0\
    );
\deci_low.reset_delay[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E1"
    )
        port map (
      I0 => reset_delay(1),
      I1 => reset_delay(0),
      I2 => reset_delay(2),
      O => \deci_low.reset_delay[2]_i_3_n_0\
    );
\deci_low.reset_delay_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \deci_low.reset_delay[2]_i_2_n_0\,
      D => \deci_low.reset_delay_reg01_in\(0),
      Q => reset_delay(0),
      S => \deci_low.reset_delay_reg0\
    );
\deci_low.reset_delay_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \deci_low.reset_delay[2]_i_2_n_0\,
      D => \deci_low.reset_delay[1]_i_1_n_0\,
      Q => reset_delay(1),
      S => \deci_low.reset_delay_reg0\
    );
\deci_low.reset_delay_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \deci_low.reset_delay[2]_i_2_n_0\,
      D => \deci_low.reset_delay[2]_i_3_n_0\,
      Q => reset_delay(2),
      S => \deci_low.reset_delay_reg0\
    );
\deci_low.sim_active_1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => sim_active_1,
      I1 => resetn,
      I2 => sim_rd,
      O => \deci_low.sim_active_1_i_1_n_0\
    );
\deci_low.sim_active_1_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.sim_active_1_i_1_n_0\,
      Q => sim_active_1,
      S => sim_start
    );
\deci_low.sim_active_2_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sim_active_1,
      Q => sim_active_2,
      R => \deci_low.sim_active_i_1_n_0\
    );
\deci_low.sim_active_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \deci_low.sim_active_i_1_n_0\
    );
\deci_low.sim_active_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => sim_active_2,
      Q => \^sim_active\,
      R => \deci_low.sim_active_i_1_n_0\
    );
\deci_low.sim_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \sim_count__0\(0),
      O => \deci_low.sim_count[0]_i_1_n_0\
    );
\deci_low.sim_count[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"54FF"
    )
        port map (
      I0 => sim_wr,
      I1 => \sim_count__0\(0),
      I2 => \sim_count__0\(1),
      I3 => sim_resetn,
      O => \deci_low.sim_count[1]_i_1_n_0\
    );
\deci_low.sim_count[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \sim_count__0\(0),
      I1 => \sim_count__0\(1),
      O => \deci_low.sim_count[1]_i_2_n_0\
    );
\deci_low.sim_count_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_wr,
      D => \deci_low.sim_count[0]_i_1_n_0\,
      Q => \sim_count__0\(0),
      R => \deci_low.sim_count[1]_i_1_n_0\
    );
\deci_low.sim_count_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_wr,
      D => \deci_low.sim_count[1]_i_2_n_0\,
      Q => \sim_count__0\(1),
      R => \deci_low.sim_count[1]_i_1_n_0\
    );
\deci_low.sim_curr_data[127]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => \sim_count__0\(0),
      I1 => \sim_count__0\(1),
      I2 => sim_resetn,
      I3 => sim_wr,
      O => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data[127]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"80A8"
    )
        port map (
      I0 => sim_resetn,
      I1 => \sim_count__0\(1),
      I2 => \sim_count__0\(0),
      I3 => sim_wr,
      O => sim_curr_data(127)
    );
\deci_low.sim_curr_data[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => sim_resetn,
      I1 => sim_wr,
      I2 => \sim_count__0\(0),
      I3 => \sim_count__0\(1),
      O => sim_curr_data(31)
    );
\deci_low.sim_curr_data[63]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => \sim_count__0\(0),
      I1 => \sim_count__0\(1),
      I2 => sim_resetn,
      I3 => sim_wr,
      O => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data[63]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => sim_resetn,
      I1 => \sim_count__0\(1),
      I2 => \sim_count__0\(0),
      O => sim_curr_data(63)
    );
\deci_low.sim_curr_data[95]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0060"
    )
        port map (
      I0 => \sim_count__0\(1),
      I1 => \sim_count__0\(0),
      I2 => sim_resetn,
      I3 => sim_wr,
      O => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data[95]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2028"
    )
        port map (
      I0 => sim_resetn,
      I1 => \sim_count__0\(0),
      I2 => \sim_count__0\(1),
      I3 => sim_wr,
      O => sim_curr_data(95)
    );
\deci_low.sim_curr_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(0),
      Q => \deci_low.sim_curr_data_reg_n_0_[0]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(4),
      Q => \deci_low.sim_curr_data_reg_n_0_[100]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(5),
      Q => \deci_low.sim_curr_data_reg_n_0_[101]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(6),
      Q => \deci_low.sim_curr_data_reg_n_0_[102]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(7),
      Q => \deci_low.sim_curr_data_reg_n_0_[103]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(8),
      Q => \deci_low.sim_curr_data_reg_n_0_[104]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(9),
      Q => \deci_low.sim_curr_data_reg_n_0_[105]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(10),
      Q => \deci_low.sim_curr_data_reg_n_0_[106]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(11),
      Q => \deci_low.sim_curr_data_reg_n_0_[107]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(12),
      Q => \deci_low.sim_curr_data_reg_n_0_[108]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(13),
      Q => \deci_low.sim_curr_data_reg_n_0_[109]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(10),
      Q => \deci_low.sim_curr_data_reg_n_0_[10]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(14),
      Q => \deci_low.sim_curr_data_reg_n_0_[110]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(15),
      Q => \deci_low.sim_curr_data_reg_n_0_[111]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(16),
      Q => \deci_low.sim_curr_data_reg_n_0_[112]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(17),
      Q => \deci_low.sim_curr_data_reg_n_0_[113]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(18),
      Q => \deci_low.sim_curr_data_reg_n_0_[114]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(19),
      Q => \deci_low.sim_curr_data_reg_n_0_[115]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(20),
      Q => \deci_low.sim_curr_data_reg_n_0_[116]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(21),
      Q => \deci_low.sim_curr_data_reg_n_0_[117]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(22),
      Q => \deci_low.sim_curr_data_reg_n_0_[118]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(23),
      Q => \deci_low.sim_curr_data_reg_n_0_[119]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(11),
      Q => \deci_low.sim_curr_data_reg_n_0_[11]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(24),
      Q => \deci_low.sim_curr_data_reg_n_0_[120]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(25),
      Q => \deci_low.sim_curr_data_reg_n_0_[121]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(26),
      Q => \deci_low.sim_curr_data_reg_n_0_[122]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(27),
      Q => \deci_low.sim_curr_data_reg_n_0_[123]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(28),
      Q => \deci_low.sim_curr_data_reg_n_0_[124]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(29),
      Q => \deci_low.sim_curr_data_reg_n_0_[125]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(30),
      Q => \deci_low.sim_curr_data_reg_n_0_[126]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(31),
      Q => \deci_low.sim_curr_data_reg_n_0_[127]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(12),
      Q => \deci_low.sim_curr_data_reg_n_0_[12]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(13),
      Q => \deci_low.sim_curr_data_reg_n_0_[13]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(14),
      Q => \deci_low.sim_curr_data_reg_n_0_[14]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(15),
      Q => \deci_low.sim_curr_data_reg_n_0_[15]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(16),
      Q => \deci_low.sim_curr_data_reg_n_0_[16]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(17),
      Q => \deci_low.sim_curr_data_reg_n_0_[17]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(18),
      Q => \deci_low.sim_curr_data_reg_n_0_[18]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(19),
      Q => \deci_low.sim_curr_data_reg_n_0_[19]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(1),
      Q => \deci_low.sim_curr_data_reg_n_0_[1]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(20),
      Q => \deci_low.sim_curr_data_reg_n_0_[20]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(21),
      Q => \deci_low.sim_curr_data_reg_n_0_[21]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(22),
      Q => \deci_low.sim_curr_data_reg_n_0_[22]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(23),
      Q => \deci_low.sim_curr_data_reg_n_0_[23]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(24),
      Q => \deci_low.sim_curr_data_reg_n_0_[24]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(25),
      Q => \deci_low.sim_curr_data_reg_n_0_[25]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(26),
      Q => \deci_low.sim_curr_data_reg_n_0_[26]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(27),
      Q => \deci_low.sim_curr_data_reg_n_0_[27]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(28),
      Q => \deci_low.sim_curr_data_reg_n_0_[28]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(29),
      Q => \deci_low.sim_curr_data_reg_n_0_[29]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(2),
      Q => \deci_low.sim_curr_data_reg_n_0_[2]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(30),
      Q => \deci_low.sim_curr_data_reg_n_0_[30]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(31),
      Q => \deci_low.sim_curr_data_reg_n_0_[31]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(0),
      Q => \deci_low.sim_curr_data_reg_n_0_[32]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(1),
      Q => \deci_low.sim_curr_data_reg_n_0_[33]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(2),
      Q => \deci_low.sim_curr_data_reg_n_0_[34]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(3),
      Q => \deci_low.sim_curr_data_reg_n_0_[35]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(4),
      Q => \deci_low.sim_curr_data_reg_n_0_[36]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(5),
      Q => \deci_low.sim_curr_data_reg_n_0_[37]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(6),
      Q => \deci_low.sim_curr_data_reg_n_0_[38]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(7),
      Q => \deci_low.sim_curr_data_reg_n_0_[39]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(3),
      Q => \deci_low.sim_curr_data_reg_n_0_[3]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(8),
      Q => \deci_low.sim_curr_data_reg_n_0_[40]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(9),
      Q => \deci_low.sim_curr_data_reg_n_0_[41]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(10),
      Q => \deci_low.sim_curr_data_reg_n_0_[42]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(11),
      Q => \deci_low.sim_curr_data_reg_n_0_[43]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(12),
      Q => \deci_low.sim_curr_data_reg_n_0_[44]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(13),
      Q => \deci_low.sim_curr_data_reg_n_0_[45]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(14),
      Q => \deci_low.sim_curr_data_reg_n_0_[46]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(15),
      Q => \deci_low.sim_curr_data_reg_n_0_[47]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(16),
      Q => \deci_low.sim_curr_data_reg_n_0_[48]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(17),
      Q => \deci_low.sim_curr_data_reg_n_0_[49]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(4),
      Q => \deci_low.sim_curr_data_reg_n_0_[4]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(18),
      Q => \deci_low.sim_curr_data_reg_n_0_[50]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(19),
      Q => \deci_low.sim_curr_data_reg_n_0_[51]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(20),
      Q => \deci_low.sim_curr_data_reg_n_0_[52]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(21),
      Q => \deci_low.sim_curr_data_reg_n_0_[53]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(22),
      Q => \deci_low.sim_curr_data_reg_n_0_[54]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(23),
      Q => \deci_low.sim_curr_data_reg_n_0_[55]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(24),
      Q => \deci_low.sim_curr_data_reg_n_0_[56]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(25),
      Q => \deci_low.sim_curr_data_reg_n_0_[57]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(26),
      Q => \deci_low.sim_curr_data_reg_n_0_[58]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(27),
      Q => \deci_low.sim_curr_data_reg_n_0_[59]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(5),
      Q => \deci_low.sim_curr_data_reg_n_0_[5]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(28),
      Q => \deci_low.sim_curr_data_reg_n_0_[60]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(29),
      Q => \deci_low.sim_curr_data_reg_n_0_[61]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(30),
      Q => \deci_low.sim_curr_data_reg_n_0_[62]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(63),
      D => sim_data(31),
      Q => \deci_low.sim_curr_data_reg_n_0_[63]\,
      R => \deci_low.sim_curr_data[63]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(0),
      Q => \deci_low.sim_curr_data_reg_n_0_[64]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(1),
      Q => \deci_low.sim_curr_data_reg_n_0_[65]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(2),
      Q => \deci_low.sim_curr_data_reg_n_0_[66]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(3),
      Q => \deci_low.sim_curr_data_reg_n_0_[67]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(4),
      Q => \deci_low.sim_curr_data_reg_n_0_[68]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(5),
      Q => \deci_low.sim_curr_data_reg_n_0_[69]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(6),
      Q => \deci_low.sim_curr_data_reg_n_0_[6]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(6),
      Q => \deci_low.sim_curr_data_reg_n_0_[70]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(7),
      Q => \deci_low.sim_curr_data_reg_n_0_[71]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(8),
      Q => \deci_low.sim_curr_data_reg_n_0_[72]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(9),
      Q => \deci_low.sim_curr_data_reg_n_0_[73]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(10),
      Q => \deci_low.sim_curr_data_reg_n_0_[74]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(11),
      Q => \deci_low.sim_curr_data_reg_n_0_[75]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(12),
      Q => \deci_low.sim_curr_data_reg_n_0_[76]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(13),
      Q => \deci_low.sim_curr_data_reg_n_0_[77]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(14),
      Q => \deci_low.sim_curr_data_reg_n_0_[78]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(15),
      Q => \deci_low.sim_curr_data_reg_n_0_[79]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(7),
      Q => \deci_low.sim_curr_data_reg_n_0_[7]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(16),
      Q => \deci_low.sim_curr_data_reg_n_0_[80]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(17),
      Q => \deci_low.sim_curr_data_reg_n_0_[81]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(18),
      Q => \deci_low.sim_curr_data_reg_n_0_[82]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(19),
      Q => \deci_low.sim_curr_data_reg_n_0_[83]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(20),
      Q => \deci_low.sim_curr_data_reg_n_0_[84]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(21),
      Q => \deci_low.sim_curr_data_reg_n_0_[85]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(22),
      Q => \deci_low.sim_curr_data_reg_n_0_[86]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(23),
      Q => \deci_low.sim_curr_data_reg_n_0_[87]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(24),
      Q => \deci_low.sim_curr_data_reg_n_0_[88]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(25),
      Q => \deci_low.sim_curr_data_reg_n_0_[89]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(8),
      Q => \deci_low.sim_curr_data_reg_n_0_[8]\,
      R => '0'
    );
\deci_low.sim_curr_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(26),
      Q => \deci_low.sim_curr_data_reg_n_0_[90]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(27),
      Q => \deci_low.sim_curr_data_reg_n_0_[91]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(28),
      Q => \deci_low.sim_curr_data_reg_n_0_[92]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(29),
      Q => \deci_low.sim_curr_data_reg_n_0_[93]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(30),
      Q => \deci_low.sim_curr_data_reg_n_0_[94]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(95),
      D => sim_data(31),
      Q => \deci_low.sim_curr_data_reg_n_0_[95]\,
      R => \deci_low.sim_curr_data[95]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(0),
      Q => \deci_low.sim_curr_data_reg_n_0_[96]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(1),
      Q => \deci_low.sim_curr_data_reg_n_0_[97]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(2),
      Q => \deci_low.sim_curr_data_reg_n_0_[98]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(127),
      D => sim_data(3),
      Q => \deci_low.sim_curr_data_reg_n_0_[99]\,
      R => \deci_low.sim_curr_data[127]_i_1_n_0\
    );
\deci_low.sim_curr_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => sim_curr_data(31),
      D => sim_data(9),
      Q => \deci_low.sim_curr_data_reg_n_0_[9]\,
      R => '0'
    );
\deci_low.sim_curr_wr_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D400"
    )
        port map (
      I0 => sim_wr,
      I1 => \sim_count__0\(1),
      I2 => \sim_count__0\(0),
      I3 => sim_resetn,
      O => \deci_low.sim_curr_wr_i_1_n_0\
    );
\deci_low.sim_curr_wr_reg\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => '1',
      D => \deci_low.sim_curr_wr_i_1_n_0\,
      Q => \deci_low.sim_curr_wr_reg_n_0\,
      R => '0'
    );
\deci_low.sim_in_data_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[0]\,
      Q => sim_in_data(0),
      R => '0'
    );
\deci_low.sim_in_data_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[100]\,
      Q => sim_in_data(100),
      R => '0'
    );
\deci_low.sim_in_data_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[101]\,
      Q => sim_in_data(101),
      R => '0'
    );
\deci_low.sim_in_data_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[102]\,
      Q => sim_in_data(102),
      R => '0'
    );
\deci_low.sim_in_data_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[103]\,
      Q => sim_in_data(103),
      R => '0'
    );
\deci_low.sim_in_data_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[104]\,
      Q => sim_in_data(104),
      R => '0'
    );
\deci_low.sim_in_data_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[105]\,
      Q => sim_in_data(105),
      R => '0'
    );
\deci_low.sim_in_data_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[106]\,
      Q => sim_in_data(106),
      R => '0'
    );
\deci_low.sim_in_data_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[107]\,
      Q => sim_in_data(107),
      R => '0'
    );
\deci_low.sim_in_data_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[108]\,
      Q => sim_in_data(108),
      R => '0'
    );
\deci_low.sim_in_data_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[109]\,
      Q => sim_in_data(109),
      R => '0'
    );
\deci_low.sim_in_data_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[10]\,
      Q => sim_in_data(10),
      R => '0'
    );
\deci_low.sim_in_data_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[110]\,
      Q => sim_in_data(110),
      R => '0'
    );
\deci_low.sim_in_data_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[111]\,
      Q => sim_in_data(111),
      R => '0'
    );
\deci_low.sim_in_data_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[112]\,
      Q => sim_in_data(112),
      R => '0'
    );
\deci_low.sim_in_data_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[113]\,
      Q => sim_in_data(113),
      R => '0'
    );
\deci_low.sim_in_data_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[114]\,
      Q => sim_in_data(114),
      R => '0'
    );
\deci_low.sim_in_data_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[115]\,
      Q => sim_in_data(115),
      R => '0'
    );
\deci_low.sim_in_data_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[116]\,
      Q => sim_in_data(116),
      R => '0'
    );
\deci_low.sim_in_data_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[117]\,
      Q => sim_in_data(117),
      R => '0'
    );
\deci_low.sim_in_data_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[118]\,
      Q => sim_in_data(118),
      R => '0'
    );
\deci_low.sim_in_data_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[119]\,
      Q => sim_in_data(119),
      R => '0'
    );
\deci_low.sim_in_data_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[11]\,
      Q => sim_in_data(11),
      R => '0'
    );
\deci_low.sim_in_data_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[120]\,
      Q => sim_in_data(120),
      R => '0'
    );
\deci_low.sim_in_data_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[121]\,
      Q => sim_in_data(121),
      R => '0'
    );
\deci_low.sim_in_data_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[122]\,
      Q => sim_in_data(122),
      R => '0'
    );
\deci_low.sim_in_data_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[123]\,
      Q => sim_in_data(123),
      R => '0'
    );
\deci_low.sim_in_data_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[124]\,
      Q => sim_in_data(124),
      R => '0'
    );
\deci_low.sim_in_data_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[125]\,
      Q => sim_in_data(125),
      R => '0'
    );
\deci_low.sim_in_data_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[126]\,
      Q => sim_in_data(126),
      R => '0'
    );
\deci_low.sim_in_data_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[127]\,
      Q => sim_in_data(127),
      R => '0'
    );
\deci_low.sim_in_data_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[12]\,
      Q => sim_in_data(12),
      R => '0'
    );
\deci_low.sim_in_data_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[13]\,
      Q => sim_in_data(13),
      R => '0'
    );
\deci_low.sim_in_data_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[14]\,
      Q => sim_in_data(14),
      R => '0'
    );
\deci_low.sim_in_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[15]\,
      Q => sim_in_data(15),
      R => '0'
    );
\deci_low.sim_in_data_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[16]\,
      Q => sim_in_data(16),
      R => '0'
    );
\deci_low.sim_in_data_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[17]\,
      Q => sim_in_data(17),
      R => '0'
    );
\deci_low.sim_in_data_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[18]\,
      Q => sim_in_data(18),
      R => '0'
    );
\deci_low.sim_in_data_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[19]\,
      Q => sim_in_data(19),
      R => '0'
    );
\deci_low.sim_in_data_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[1]\,
      Q => sim_in_data(1),
      R => '0'
    );
\deci_low.sim_in_data_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[20]\,
      Q => sim_in_data(20),
      R => '0'
    );
\deci_low.sim_in_data_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[21]\,
      Q => sim_in_data(21),
      R => '0'
    );
\deci_low.sim_in_data_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[22]\,
      Q => sim_in_data(22),
      R => '0'
    );
\deci_low.sim_in_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[23]\,
      Q => sim_in_data(23),
      R => '0'
    );
\deci_low.sim_in_data_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[24]\,
      Q => sim_in_data(24),
      R => '0'
    );
\deci_low.sim_in_data_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[25]\,
      Q => sim_in_data(25),
      R => '0'
    );
\deci_low.sim_in_data_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[26]\,
      Q => sim_in_data(26),
      R => '0'
    );
\deci_low.sim_in_data_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[27]\,
      Q => sim_in_data(27),
      R => '0'
    );
\deci_low.sim_in_data_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[28]\,
      Q => sim_in_data(28),
      R => '0'
    );
\deci_low.sim_in_data_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[29]\,
      Q => sim_in_data(29),
      R => '0'
    );
\deci_low.sim_in_data_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[2]\,
      Q => sim_in_data(2),
      R => '0'
    );
\deci_low.sim_in_data_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[30]\,
      Q => sim_in_data(30),
      R => '0'
    );
\deci_low.sim_in_data_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[31]\,
      Q => sim_in_data(31),
      R => '0'
    );
\deci_low.sim_in_data_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[32]\,
      Q => sim_in_data(32),
      R => '0'
    );
\deci_low.sim_in_data_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[33]\,
      Q => sim_in_data(33),
      R => '0'
    );
\deci_low.sim_in_data_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[34]\,
      Q => sim_in_data(34),
      R => '0'
    );
\deci_low.sim_in_data_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[35]\,
      Q => sim_in_data(35),
      R => '0'
    );
\deci_low.sim_in_data_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[36]\,
      Q => sim_in_data(36),
      R => '0'
    );
\deci_low.sim_in_data_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[37]\,
      Q => sim_in_data(37),
      R => '0'
    );
\deci_low.sim_in_data_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[38]\,
      Q => sim_in_data(38),
      R => '0'
    );
\deci_low.sim_in_data_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[39]\,
      Q => sim_in_data(39),
      R => '0'
    );
\deci_low.sim_in_data_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[3]\,
      Q => sim_in_data(3),
      R => '0'
    );
\deci_low.sim_in_data_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[40]\,
      Q => sim_in_data(40),
      R => '0'
    );
\deci_low.sim_in_data_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[41]\,
      Q => sim_in_data(41),
      R => '0'
    );
\deci_low.sim_in_data_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[42]\,
      Q => sim_in_data(42),
      R => '0'
    );
\deci_low.sim_in_data_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[43]\,
      Q => sim_in_data(43),
      R => '0'
    );
\deci_low.sim_in_data_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[44]\,
      Q => sim_in_data(44),
      R => '0'
    );
\deci_low.sim_in_data_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[45]\,
      Q => sim_in_data(45),
      R => '0'
    );
\deci_low.sim_in_data_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[46]\,
      Q => sim_in_data(46),
      R => '0'
    );
\deci_low.sim_in_data_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[47]\,
      Q => sim_in_data(47),
      R => '0'
    );
\deci_low.sim_in_data_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[48]\,
      Q => sim_in_data(48),
      R => '0'
    );
\deci_low.sim_in_data_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[49]\,
      Q => sim_in_data(49),
      R => '0'
    );
\deci_low.sim_in_data_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[4]\,
      Q => sim_in_data(4),
      R => '0'
    );
\deci_low.sim_in_data_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[50]\,
      Q => sim_in_data(50),
      R => '0'
    );
\deci_low.sim_in_data_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[51]\,
      Q => sim_in_data(51),
      R => '0'
    );
\deci_low.sim_in_data_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[52]\,
      Q => sim_in_data(52),
      R => '0'
    );
\deci_low.sim_in_data_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[53]\,
      Q => sim_in_data(53),
      R => '0'
    );
\deci_low.sim_in_data_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[54]\,
      Q => sim_in_data(54),
      R => '0'
    );
\deci_low.sim_in_data_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[55]\,
      Q => sim_in_data(55),
      R => '0'
    );
\deci_low.sim_in_data_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[56]\,
      Q => sim_in_data(56),
      R => '0'
    );
\deci_low.sim_in_data_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[57]\,
      Q => sim_in_data(57),
      R => '0'
    );
\deci_low.sim_in_data_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[58]\,
      Q => sim_in_data(58),
      R => '0'
    );
\deci_low.sim_in_data_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[59]\,
      Q => sim_in_data(59),
      R => '0'
    );
\deci_low.sim_in_data_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[5]\,
      Q => sim_in_data(5),
      R => '0'
    );
\deci_low.sim_in_data_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[60]\,
      Q => sim_in_data(60),
      R => '0'
    );
\deci_low.sim_in_data_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[61]\,
      Q => sim_in_data(61),
      R => '0'
    );
\deci_low.sim_in_data_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[62]\,
      Q => sim_in_data(62),
      R => '0'
    );
\deci_low.sim_in_data_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[63]\,
      Q => sim_in_data(63),
      R => '0'
    );
\deci_low.sim_in_data_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[64]\,
      Q => sim_in_data(64),
      R => '0'
    );
\deci_low.sim_in_data_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[65]\,
      Q => sim_in_data(65),
      R => '0'
    );
\deci_low.sim_in_data_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[66]\,
      Q => sim_in_data(66),
      R => '0'
    );
\deci_low.sim_in_data_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[67]\,
      Q => sim_in_data(67),
      R => '0'
    );
\deci_low.sim_in_data_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[68]\,
      Q => sim_in_data(68),
      R => '0'
    );
\deci_low.sim_in_data_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[69]\,
      Q => sim_in_data(69),
      R => '0'
    );
\deci_low.sim_in_data_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[6]\,
      Q => sim_in_data(6),
      R => '0'
    );
\deci_low.sim_in_data_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[70]\,
      Q => sim_in_data(70),
      R => '0'
    );
\deci_low.sim_in_data_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[71]\,
      Q => sim_in_data(71),
      R => '0'
    );
\deci_low.sim_in_data_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[72]\,
      Q => sim_in_data(72),
      R => '0'
    );
\deci_low.sim_in_data_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[73]\,
      Q => sim_in_data(73),
      R => '0'
    );
\deci_low.sim_in_data_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[74]\,
      Q => sim_in_data(74),
      R => '0'
    );
\deci_low.sim_in_data_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[75]\,
      Q => sim_in_data(75),
      R => '0'
    );
\deci_low.sim_in_data_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[76]\,
      Q => sim_in_data(76),
      R => '0'
    );
\deci_low.sim_in_data_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[77]\,
      Q => sim_in_data(77),
      R => '0'
    );
\deci_low.sim_in_data_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[78]\,
      Q => sim_in_data(78),
      R => '0'
    );
\deci_low.sim_in_data_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[79]\,
      Q => sim_in_data(79),
      R => '0'
    );
\deci_low.sim_in_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[7]\,
      Q => sim_in_data(7),
      R => '0'
    );
\deci_low.sim_in_data_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[80]\,
      Q => sim_in_data(80),
      R => '0'
    );
\deci_low.sim_in_data_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[81]\,
      Q => sim_in_data(81),
      R => '0'
    );
\deci_low.sim_in_data_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[82]\,
      Q => sim_in_data(82),
      R => '0'
    );
\deci_low.sim_in_data_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[83]\,
      Q => sim_in_data(83),
      R => '0'
    );
\deci_low.sim_in_data_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[84]\,
      Q => sim_in_data(84),
      R => '0'
    );
\deci_low.sim_in_data_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[85]\,
      Q => sim_in_data(85),
      R => '0'
    );
\deci_low.sim_in_data_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[86]\,
      Q => sim_in_data(86),
      R => '0'
    );
\deci_low.sim_in_data_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[87]\,
      Q => sim_in_data(87),
      R => '0'
    );
\deci_low.sim_in_data_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[88]\,
      Q => sim_in_data(88),
      R => '0'
    );
\deci_low.sim_in_data_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[89]\,
      Q => sim_in_data(89),
      R => '0'
    );
\deci_low.sim_in_data_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[8]\,
      Q => sim_in_data(8),
      R => '0'
    );
\deci_low.sim_in_data_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[90]\,
      Q => sim_in_data(90),
      R => '0'
    );
\deci_low.sim_in_data_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[91]\,
      Q => sim_in_data(91),
      R => '0'
    );
\deci_low.sim_in_data_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[92]\,
      Q => sim_in_data(92),
      R => '0'
    );
\deci_low.sim_in_data_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[93]\,
      Q => sim_in_data(93),
      R => '0'
    );
\deci_low.sim_in_data_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[94]\,
      Q => sim_in_data(94),
      R => '0'
    );
\deci_low.sim_in_data_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[95]\,
      Q => sim_in_data(95),
      R => '0'
    );
\deci_low.sim_in_data_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[96]\,
      Q => sim_in_data(96),
      R => '0'
    );
\deci_low.sim_in_data_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[97]\,
      Q => sim_in_data(97),
      R => '0'
    );
\deci_low.sim_in_data_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[98]\,
      Q => sim_in_data(98),
      R => '0'
    );
\deci_low.sim_in_data_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[99]\,
      Q => sim_in_data(99),
      R => '0'
    );
\deci_low.sim_in_data_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sim_clk,
      CE => \deci_low.sim_curr_wr_reg_n_0\,
      D => \deci_low.sim_curr_data_reg_n_0_[9]\,
      Q => sim_in_data(9),
      R => '0'
    );
\deci_low.sim_rd_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => sim_rd,
      I1 => sim_empty_W,
      I2 => sim_empty_E,
      I3 => sim_empty_N,
      O => \deci_low.sim_rd_i_1_n_0\
    );
\deci_low.sim_rd_reg\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => '1',
      D => \deci_low.sim_rd_i_1_n_0\,
      Q => sim_rd,
      S => sim_start
    );
\deci_low.sim_wr_E_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \deci_low.sim_curr_wr_reg_n_0\,
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
fifo_doa_i: component ps_deci_low_0_0_fifo_doa_low
     port map (
      din(47) => \deci_low.doa_in_data_reg_n_0_[47]\,
      din(46) => \deci_low.doa_in_data_reg_n_0_[46]\,
      din(45) => \deci_low.doa_in_data_reg_n_0_[45]\,
      din(44) => \deci_low.doa_in_data_reg_n_0_[44]\,
      din(43) => \deci_low.doa_in_data_reg_n_0_[43]\,
      din(42) => \deci_low.doa_in_data_reg_n_0_[42]\,
      din(41) => \deci_low.doa_in_data_reg_n_0_[41]\,
      din(40) => \deci_low.doa_in_data_reg_n_0_[40]\,
      din(39) => \deci_low.doa_in_data_reg_n_0_[39]\,
      din(38) => \deci_low.doa_in_data_reg_n_0_[38]\,
      din(37) => \deci_low.doa_in_data_reg_n_0_[37]\,
      din(36) => \deci_low.doa_in_data_reg_n_0_[36]\,
      din(35) => \deci_low.doa_in_data_reg_n_0_[35]\,
      din(34) => \deci_low.doa_in_data_reg_n_0_[34]\,
      din(33) => \deci_low.doa_in_data_reg_n_0_[33]\,
      din(32) => \deci_low.doa_in_data_reg_n_0_[32]\,
      din(31) => \deci_low.doa_in_data_reg_n_0_[31]\,
      din(30) => \deci_low.doa_in_data_reg_n_0_[30]\,
      din(29) => \deci_low.doa_in_data_reg_n_0_[29]\,
      din(28) => \deci_low.doa_in_data_reg_n_0_[28]\,
      din(27) => \deci_low.doa_in_data_reg_n_0_[27]\,
      din(26) => \deci_low.doa_in_data_reg_n_0_[26]\,
      din(25) => \deci_low.doa_in_data_reg_n_0_[25]\,
      din(24) => \deci_low.doa_in_data_reg_n_0_[24]\,
      din(23) => \deci_low.doa_in_data_reg_n_0_[23]\,
      din(22) => \deci_low.doa_in_data_reg_n_0_[22]\,
      din(21) => \deci_low.doa_in_data_reg_n_0_[21]\,
      din(20) => \deci_low.doa_in_data_reg_n_0_[20]\,
      din(19) => \deci_low.doa_in_data_reg_n_0_[19]\,
      din(18) => \deci_low.doa_in_data_reg_n_0_[18]\,
      din(17) => \deci_low.doa_in_data_reg_n_0_[17]\,
      din(16) => \deci_low.doa_in_data_reg_n_0_[16]\,
      din(15) => \deci_low.doa_in_data_reg_n_0_[15]\,
      din(14) => \deci_low.doa_in_data_reg_n_0_[14]\,
      din(13) => \deci_low.doa_in_data_reg_n_0_[13]\,
      din(12) => \deci_low.doa_in_data_reg_n_0_[12]\,
      din(11) => \deci_low.doa_in_data_reg_n_0_[11]\,
      din(10) => \deci_low.doa_in_data_reg_n_0_[10]\,
      din(9) => \deci_low.doa_in_data_reg_n_0_[9]\,
      din(8) => \deci_low.doa_in_data_reg_n_0_[8]\,
      din(7) => \deci_low.doa_in_data_reg_n_0_[7]\,
      din(6) => \deci_low.doa_in_data_reg_n_0_[6]\,
      din(5) => \deci_low.doa_in_data_reg_n_0_[5]\,
      din(4) => \deci_low.doa_in_data_reg_n_0_[4]\,
      din(3) => \deci_low.doa_in_data_reg_n_0_[3]\,
      din(2) => \deci_low.doa_in_data_reg_n_0_[2]\,
      din(1) => \deci_low.doa_in_data_reg_n_0_[1]\,
      din(0) => \deci_low.doa_in_data_reg_n_0_[0]\,
      dout(47 downto 0) => doa_out_data(47 downto 0),
      empty => doa_fifo_empty,
      full => NLW_fifo_doa_i_full_UNCONNECTED,
      rd_clk => doa_clk,
      rd_en => doa_out_rd,
      rd_rst_busy => NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED,
      rst => \deci_low.sim_active_i_1_n_0\,
      wr_clk => clk,
      wr_en => doa_fifo_wr,
      wr_rst_busy => NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED
    );
fifo_raw_i: component ps_deci_low_0_0_fifo_raw_low
     port map (
      din(191) => \deci_low.raw_in_data_reg_n_0_[191]\,
      din(190) => \deci_low.raw_in_data_reg_n_0_[190]\,
      din(189) => \deci_low.raw_in_data_reg_n_0_[189]\,
      din(188) => \deci_low.raw_in_data_reg_n_0_[188]\,
      din(187) => \deci_low.raw_in_data_reg_n_0_[187]\,
      din(186) => \deci_low.raw_in_data_reg_n_0_[186]\,
      din(185) => \deci_low.raw_in_data_reg_n_0_[185]\,
      din(184) => \deci_low.raw_in_data_reg_n_0_[184]\,
      din(183) => \deci_low.raw_in_data_reg_n_0_[183]\,
      din(182) => \deci_low.raw_in_data_reg_n_0_[182]\,
      din(181) => \deci_low.raw_in_data_reg_n_0_[181]\,
      din(180) => \deci_low.raw_in_data_reg_n_0_[180]\,
      din(179) => \deci_low.raw_in_data_reg_n_0_[179]\,
      din(178) => \deci_low.raw_in_data_reg_n_0_[178]\,
      din(177) => \deci_low.raw_in_data_reg_n_0_[177]\,
      din(176) => \deci_low.raw_in_data_reg_n_0_[176]\,
      din(175) => \deci_low.raw_in_data_reg_n_0_[175]\,
      din(174) => \deci_low.raw_in_data_reg_n_0_[174]\,
      din(173) => \deci_low.raw_in_data_reg_n_0_[173]\,
      din(172) => \deci_low.raw_in_data_reg_n_0_[172]\,
      din(171) => \deci_low.raw_in_data_reg_n_0_[171]\,
      din(170) => \deci_low.raw_in_data_reg_n_0_[170]\,
      din(169) => \deci_low.raw_in_data_reg_n_0_[169]\,
      din(168) => \deci_low.raw_in_data_reg_n_0_[168]\,
      din(167) => \deci_low.raw_in_data_reg_n_0_[167]\,
      din(166) => \deci_low.raw_in_data_reg_n_0_[166]\,
      din(165) => \deci_low.raw_in_data_reg_n_0_[165]\,
      din(164) => \deci_low.raw_in_data_reg_n_0_[164]\,
      din(163) => \deci_low.raw_in_data_reg_n_0_[163]\,
      din(162) => \deci_low.raw_in_data_reg_n_0_[162]\,
      din(161) => \deci_low.raw_in_data_reg_n_0_[161]\,
      din(160) => \deci_low.raw_in_data_reg_n_0_[160]\,
      din(159) => \deci_low.raw_in_data_reg_n_0_[159]\,
      din(158) => \deci_low.raw_in_data_reg_n_0_[158]\,
      din(157) => \deci_low.raw_in_data_reg_n_0_[157]\,
      din(156) => \deci_low.raw_in_data_reg_n_0_[156]\,
      din(155) => \deci_low.raw_in_data_reg_n_0_[155]\,
      din(154) => \deci_low.raw_in_data_reg_n_0_[154]\,
      din(153) => \deci_low.raw_in_data_reg_n_0_[153]\,
      din(152) => \deci_low.raw_in_data_reg_n_0_[152]\,
      din(151) => \deci_low.raw_in_data_reg_n_0_[151]\,
      din(150) => \deci_low.raw_in_data_reg_n_0_[150]\,
      din(149) => \deci_low.raw_in_data_reg_n_0_[149]\,
      din(148) => \deci_low.raw_in_data_reg_n_0_[148]\,
      din(147) => \deci_low.raw_in_data_reg_n_0_[147]\,
      din(146) => \deci_low.raw_in_data_reg_n_0_[146]\,
      din(145) => \deci_low.raw_in_data_reg_n_0_[145]\,
      din(144) => \deci_low.raw_in_data_reg_n_0_[144]\,
      din(143) => \deci_low.raw_in_data_reg_n_0_[143]\,
      din(142) => \deci_low.raw_in_data_reg_n_0_[142]\,
      din(141) => \deci_low.raw_in_data_reg_n_0_[141]\,
      din(140) => \deci_low.raw_in_data_reg_n_0_[140]\,
      din(139) => \deci_low.raw_in_data_reg_n_0_[139]\,
      din(138) => \deci_low.raw_in_data_reg_n_0_[138]\,
      din(137) => \deci_low.raw_in_data_reg_n_0_[137]\,
      din(136) => \deci_low.raw_in_data_reg_n_0_[136]\,
      din(135) => \deci_low.raw_in_data_reg_n_0_[135]\,
      din(134) => \deci_low.raw_in_data_reg_n_0_[134]\,
      din(133) => \deci_low.raw_in_data_reg_n_0_[133]\,
      din(132) => \deci_low.raw_in_data_reg_n_0_[132]\,
      din(131) => \deci_low.raw_in_data_reg_n_0_[131]\,
      din(130) => \deci_low.raw_in_data_reg_n_0_[130]\,
      din(129) => \deci_low.raw_in_data_reg_n_0_[129]\,
      din(128) => \deci_low.raw_in_data_reg_n_0_[128]\,
      din(127) => \deci_low.raw_in_data_reg_n_0_[127]\,
      din(126) => \deci_low.raw_in_data_reg_n_0_[126]\,
      din(125) => \deci_low.raw_in_data_reg_n_0_[125]\,
      din(124) => \deci_low.raw_in_data_reg_n_0_[124]\,
      din(123) => \deci_low.raw_in_data_reg_n_0_[123]\,
      din(122) => \deci_low.raw_in_data_reg_n_0_[122]\,
      din(121) => \deci_low.raw_in_data_reg_n_0_[121]\,
      din(120) => \deci_low.raw_in_data_reg_n_0_[120]\,
      din(119) => \deci_low.raw_in_data_reg_n_0_[119]\,
      din(118) => \deci_low.raw_in_data_reg_n_0_[118]\,
      din(117) => \deci_low.raw_in_data_reg_n_0_[117]\,
      din(116) => \deci_low.raw_in_data_reg_n_0_[116]\,
      din(115) => \deci_low.raw_in_data_reg_n_0_[115]\,
      din(114) => \deci_low.raw_in_data_reg_n_0_[114]\,
      din(113) => \deci_low.raw_in_data_reg_n_0_[113]\,
      din(112) => \deci_low.raw_in_data_reg_n_0_[112]\,
      din(111) => \deci_low.raw_in_data_reg_n_0_[111]\,
      din(110) => \deci_low.raw_in_data_reg_n_0_[110]\,
      din(109) => \deci_low.raw_in_data_reg_n_0_[109]\,
      din(108) => \deci_low.raw_in_data_reg_n_0_[108]\,
      din(107) => \deci_low.raw_in_data_reg_n_0_[107]\,
      din(106) => \deci_low.raw_in_data_reg_n_0_[106]\,
      din(105) => \deci_low.raw_in_data_reg_n_0_[105]\,
      din(104) => \deci_low.raw_in_data_reg_n_0_[104]\,
      din(103) => \deci_low.raw_in_data_reg_n_0_[103]\,
      din(102) => \deci_low.raw_in_data_reg_n_0_[102]\,
      din(101) => \deci_low.raw_in_data_reg_n_0_[101]\,
      din(100) => \deci_low.raw_in_data_reg_n_0_[100]\,
      din(99) => \deci_low.raw_in_data_reg_n_0_[99]\,
      din(98) => \deci_low.raw_in_data_reg_n_0_[98]\,
      din(97) => \deci_low.raw_in_data_reg_n_0_[97]\,
      din(96) => \deci_low.raw_in_data_reg_n_0_[96]\,
      din(95) => \deci_low.raw_in_data_reg_n_0_[95]\,
      din(94) => \deci_low.raw_in_data_reg_n_0_[94]\,
      din(93) => \deci_low.raw_in_data_reg_n_0_[93]\,
      din(92) => \deci_low.raw_in_data_reg_n_0_[92]\,
      din(91) => \deci_low.raw_in_data_reg_n_0_[91]\,
      din(90) => \deci_low.raw_in_data_reg_n_0_[90]\,
      din(89) => \deci_low.raw_in_data_reg_n_0_[89]\,
      din(88) => \deci_low.raw_in_data_reg_n_0_[88]\,
      din(87) => \deci_low.raw_in_data_reg_n_0_[87]\,
      din(86) => \deci_low.raw_in_data_reg_n_0_[86]\,
      din(85) => \deci_low.raw_in_data_reg_n_0_[85]\,
      din(84) => \deci_low.raw_in_data_reg_n_0_[84]\,
      din(83) => \deci_low.raw_in_data_reg_n_0_[83]\,
      din(82) => \deci_low.raw_in_data_reg_n_0_[82]\,
      din(81) => \deci_low.raw_in_data_reg_n_0_[81]\,
      din(80) => \deci_low.raw_in_data_reg_n_0_[80]\,
      din(79) => \deci_low.raw_in_data_reg_n_0_[79]\,
      din(78) => \deci_low.raw_in_data_reg_n_0_[78]\,
      din(77) => \deci_low.raw_in_data_reg_n_0_[77]\,
      din(76) => \deci_low.raw_in_data_reg_n_0_[76]\,
      din(75) => \deci_low.raw_in_data_reg_n_0_[75]\,
      din(74) => \deci_low.raw_in_data_reg_n_0_[74]\,
      din(73) => \deci_low.raw_in_data_reg_n_0_[73]\,
      din(72) => \deci_low.raw_in_data_reg_n_0_[72]\,
      din(71) => \deci_low.raw_in_data_reg_n_0_[71]\,
      din(70) => \deci_low.raw_in_data_reg_n_0_[70]\,
      din(69) => \deci_low.raw_in_data_reg_n_0_[69]\,
      din(68) => \deci_low.raw_in_data_reg_n_0_[68]\,
      din(67) => \deci_low.raw_in_data_reg_n_0_[67]\,
      din(66) => \deci_low.raw_in_data_reg_n_0_[66]\,
      din(65) => \deci_low.raw_in_data_reg_n_0_[65]\,
      din(64) => \deci_low.raw_in_data_reg_n_0_[64]\,
      din(63) => \deci_low.raw_in_data_reg_n_0_[63]\,
      din(62) => \deci_low.raw_in_data_reg_n_0_[62]\,
      din(61) => \deci_low.raw_in_data_reg_n_0_[61]\,
      din(60) => \deci_low.raw_in_data_reg_n_0_[60]\,
      din(59) => \deci_low.raw_in_data_reg_n_0_[59]\,
      din(58) => \deci_low.raw_in_data_reg_n_0_[58]\,
      din(57) => \deci_low.raw_in_data_reg_n_0_[57]\,
      din(56) => \deci_low.raw_in_data_reg_n_0_[56]\,
      din(55) => \deci_low.raw_in_data_reg_n_0_[55]\,
      din(54) => \deci_low.raw_in_data_reg_n_0_[54]\,
      din(53) => \deci_low.raw_in_data_reg_n_0_[53]\,
      din(52) => \deci_low.raw_in_data_reg_n_0_[52]\,
      din(51) => \deci_low.raw_in_data_reg_n_0_[51]\,
      din(50) => \deci_low.raw_in_data_reg_n_0_[50]\,
      din(49) => \deci_low.raw_in_data_reg_n_0_[49]\,
      din(48) => \deci_low.raw_in_data_reg_n_0_[48]\,
      din(47) => \deci_low.raw_in_data_reg_n_0_[47]\,
      din(46) => \deci_low.raw_in_data_reg_n_0_[46]\,
      din(45) => \deci_low.raw_in_data_reg_n_0_[45]\,
      din(44) => \deci_low.raw_in_data_reg_n_0_[44]\,
      din(43) => \deci_low.raw_in_data_reg_n_0_[43]\,
      din(42) => \deci_low.raw_in_data_reg_n_0_[42]\,
      din(41) => \deci_low.raw_in_data_reg_n_0_[41]\,
      din(40) => \deci_low.raw_in_data_reg_n_0_[40]\,
      din(39) => \deci_low.raw_in_data_reg_n_0_[39]\,
      din(38) => \deci_low.raw_in_data_reg_n_0_[38]\,
      din(37) => \deci_low.raw_in_data_reg_n_0_[37]\,
      din(36) => \deci_low.raw_in_data_reg_n_0_[36]\,
      din(35) => \deci_low.raw_in_data_reg_n_0_[35]\,
      din(34) => \deci_low.raw_in_data_reg_n_0_[34]\,
      din(33) => \deci_low.raw_in_data_reg_n_0_[33]\,
      din(32) => \deci_low.raw_in_data_reg_n_0_[32]\,
      din(31) => \deci_low.raw_in_data_reg_n_0_[31]\,
      din(30) => \deci_low.raw_in_data_reg_n_0_[30]\,
      din(29) => \deci_low.raw_in_data_reg_n_0_[29]\,
      din(28) => \deci_low.raw_in_data_reg_n_0_[28]\,
      din(27) => \deci_low.raw_in_data_reg_n_0_[27]\,
      din(26) => \deci_low.raw_in_data_reg_n_0_[26]\,
      din(25) => \deci_low.raw_in_data_reg_n_0_[25]\,
      din(24) => \deci_low.raw_in_data_reg_n_0_[24]\,
      din(23) => \deci_low.raw_in_data_reg_n_0_[23]\,
      din(22) => \deci_low.raw_in_data_reg_n_0_[22]\,
      din(21) => \deci_low.raw_in_data_reg_n_0_[21]\,
      din(20) => \deci_low.raw_in_data_reg_n_0_[20]\,
      din(19) => \deci_low.raw_in_data_reg_n_0_[19]\,
      din(18) => \deci_low.raw_in_data_reg_n_0_[18]\,
      din(17) => \deci_low.raw_in_data_reg_n_0_[17]\,
      din(16) => \deci_low.raw_in_data_reg_n_0_[16]\,
      din(15) => \deci_low.raw_in_data_reg_n_0_[15]\,
      din(14) => \deci_low.raw_in_data_reg_n_0_[14]\,
      din(13) => \deci_low.raw_in_data_reg_n_0_[13]\,
      din(12) => \deci_low.raw_in_data_reg_n_0_[12]\,
      din(11) => \deci_low.raw_in_data_reg_n_0_[11]\,
      din(10) => \deci_low.raw_in_data_reg_n_0_[10]\,
      din(9) => \deci_low.raw_in_data_reg_n_0_[9]\,
      din(8) => \deci_low.raw_in_data_reg_n_0_[8]\,
      din(7) => \deci_low.raw_in_data_reg_n_0_[7]\,
      din(6) => \deci_low.raw_in_data_reg_n_0_[6]\,
      din(5) => \deci_low.raw_in_data_reg_n_0_[5]\,
      din(4) => \deci_low.raw_in_data_reg_n_0_[4]\,
      din(3) => \deci_low.raw_in_data_reg_n_0_[3]\,
      din(2) => \deci_low.raw_in_data_reg_n_0_[2]\,
      din(1) => \deci_low.raw_in_data_reg_n_0_[1]\,
      din(0) => \deci_low.raw_in_data_reg_n_0_[0]\,
      dout(191 downto 0) => raw_out_data(191 downto 0),
      empty => raw_fifo_empty,
      full => NLW_fifo_raw_i_full_UNCONNECTED,
      rd_clk => raw_clk,
      rd_en => \^raw_ready\,
      rd_rst_busy => NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED,
      rst => \deci_low.sim_active_i_1_n_0\,
      wr_clk => clk,
      wr_en => raw_fifo_wr,
      wr_rst_busy => NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED
    );
fifo_sim_E_i: component ps_deci_low_0_0_fifo_sim
     port map (
      din(127 downto 0) => sim_in_data(127 downto 0),
      dout(127 downto 0) => sim_out_E(127 downto 0),
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
      dout(127 downto 0) => sim_out_N(127 downto 0),
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
      dout(127 downto 0) => sim_out_W(127 downto 0),
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
fir_doa_E_i: component ps_deci_low_0_0_fir_deci_low
     port map (
      aclk => clk,
      aresetn => fir_resetn,
      m_axis_data_tdata(31) => NLW_fir_doa_E_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 15) => doa_E(15 downto 0),
      m_axis_data_tdata(14 downto 0) => NLW_fir_doa_E_i_m_axis_data_tdata_UNCONNECTED(14 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(127 downto 0) => mux_E(127 downto 0),
      s_axis_data_tready => NLW_fir_doa_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_doa_N_i: component ps_deci_low_0_0_fir_deci_low
     port map (
      aclk => clk,
      aresetn => fir_resetn,
      m_axis_data_tdata(31) => NLW_fir_doa_N_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 15) => doa_N(15 downto 0),
      m_axis_data_tdata(14 downto 0) => NLW_fir_doa_N_i_m_axis_data_tdata_UNCONNECTED(14 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(127 downto 112) => mux_N7(15 downto 0),
      s_axis_data_tdata(111 downto 96) => mux_N6(15 downto 0),
      s_axis_data_tdata(95 downto 80) => mux_N5(15 downto 0),
      s_axis_data_tdata(79 downto 64) => mux_N4(15 downto 0),
      s_axis_data_tdata(63 downto 48) => mux_N3(15 downto 0),
      s_axis_data_tdata(47 downto 32) => mux_N2(15 downto 0),
      s_axis_data_tdata(31 downto 16) => mux_N1(15 downto 0),
      s_axis_data_tdata(15 downto 0) => mux_N0(15 downto 0),
      s_axis_data_tready => NLW_fir_doa_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_doa_W_i: component ps_deci_low_0_0_fir_deci_low_HD2
     port map (
      aclk => clk,
      aresetn => fir_resetn,
      m_axis_data_tdata(31) => NLW_fir_doa_W_i_m_axis_data_tdata_UNCONNECTED(31),
      m_axis_data_tdata(30 downto 15) => doa_W(15 downto 0),
      m_axis_data_tdata(14 downto 0) => NLW_fir_doa_W_i_m_axis_data_tdata_UNCONNECTED(14 downto 0),
      m_axis_data_tvalid => NLW_fir_doa_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(127 downto 0) => mux_W(127 downto 0),
      s_axis_data_tready => NLW_fir_doa_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_raw_E_i: component ps_deci_low_0_0_fir_raw_deci
     port map (
      aclk => clk,
      aresetn => fir_resetn,
      m_axis_data_tdata(127) => NLW_fir_raw_E_i_m_axis_data_tdata_UNCONNECTED(127),
      m_axis_data_tdata(126 downto 111) => fir_raw_E(126 downto 111),
      m_axis_data_tdata(110 downto 95) => NLW_fir_raw_E_i_m_axis_data_tdata_UNCONNECTED(110 downto 95),
      m_axis_data_tdata(94 downto 79) => fir_raw_E(94 downto 79),
      m_axis_data_tdata(78 downto 63) => NLW_fir_raw_E_i_m_axis_data_tdata_UNCONNECTED(78 downto 63),
      m_axis_data_tdata(62 downto 47) => fir_raw_E(62 downto 47),
      m_axis_data_tdata(46 downto 31) => NLW_fir_raw_E_i_m_axis_data_tdata_UNCONNECTED(46 downto 31),
      m_axis_data_tdata(30 downto 15) => fir_raw_E(30 downto 15),
      m_axis_data_tdata(14 downto 0) => NLW_fir_raw_E_i_m_axis_data_tdata_UNCONNECTED(14 downto 0),
      m_axis_data_tvalid => NLW_fir_raw_E_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(127 downto 0) => mux_E(127 downto 0),
      s_axis_data_tready => NLW_fir_raw_E_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_raw_N_i: component ps_deci_low_0_0_fir_raw_deci
     port map (
      aclk => clk,
      aresetn => fir_resetn,
      m_axis_data_tdata(127) => NLW_fir_raw_N_i_m_axis_data_tdata_UNCONNECTED(127),
      m_axis_data_tdata(126 downto 111) => raw_N3(15 downto 0),
      m_axis_data_tdata(110 downto 95) => NLW_fir_raw_N_i_m_axis_data_tdata_UNCONNECTED(110 downto 95),
      m_axis_data_tdata(94 downto 79) => raw_N2(15 downto 0),
      m_axis_data_tdata(78 downto 63) => NLW_fir_raw_N_i_m_axis_data_tdata_UNCONNECTED(78 downto 63),
      m_axis_data_tdata(62 downto 47) => raw_N1(15 downto 0),
      m_axis_data_tdata(46 downto 31) => NLW_fir_raw_N_i_m_axis_data_tdata_UNCONNECTED(46 downto 31),
      m_axis_data_tdata(30 downto 15) => raw_N0(15 downto 0),
      m_axis_data_tdata(14 downto 0) => NLW_fir_raw_N_i_m_axis_data_tdata_UNCONNECTED(14 downto 0),
      m_axis_data_tvalid => NLW_fir_raw_N_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(127 downto 112) => mux_N7(15 downto 0),
      s_axis_data_tdata(111 downto 96) => mux_N6(15 downto 0),
      s_axis_data_tdata(95 downto 80) => mux_N5(15 downto 0),
      s_axis_data_tdata(79 downto 64) => mux_N4(15 downto 0),
      s_axis_data_tdata(63 downto 48) => mux_N3(15 downto 0),
      s_axis_data_tdata(47 downto 32) => mux_N2(15 downto 0),
      s_axis_data_tdata(31 downto 16) => mux_N1(15 downto 0),
      s_axis_data_tdata(15 downto 0) => mux_N0(15 downto 0),
      s_axis_data_tready => NLW_fir_raw_N_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
fir_raw_W_i: component ps_deci_low_0_0_fir_raw_deci_HD3
     port map (
      aclk => clk,
      aresetn => fir_resetn,
      m_axis_data_tdata(127) => NLW_fir_raw_W_i_m_axis_data_tdata_UNCONNECTED(127),
      m_axis_data_tdata(126 downto 111) => fir_raw_W(126 downto 111),
      m_axis_data_tdata(110 downto 95) => NLW_fir_raw_W_i_m_axis_data_tdata_UNCONNECTED(110 downto 95),
      m_axis_data_tdata(94 downto 79) => fir_raw_W(94 downto 79),
      m_axis_data_tdata(78 downto 63) => NLW_fir_raw_W_i_m_axis_data_tdata_UNCONNECTED(78 downto 63),
      m_axis_data_tdata(62 downto 47) => fir_raw_W(62 downto 47),
      m_axis_data_tdata(46 downto 31) => NLW_fir_raw_W_i_m_axis_data_tdata_UNCONNECTED(46 downto 31),
      m_axis_data_tdata(30 downto 15) => fir_raw_W(30 downto 15),
      m_axis_data_tdata(14 downto 0) => NLW_fir_raw_W_i_m_axis_data_tdata_UNCONNECTED(14 downto 0),
      m_axis_data_tvalid => NLW_fir_raw_W_i_m_axis_data_tvalid_UNCONNECTED,
      s_axis_data_tdata(127 downto 0) => mux_W(127 downto 0),
      s_axis_data_tready => NLW_fir_raw_W_i_s_axis_data_tready_UNCONNECTED,
      s_axis_data_tvalid => mux_active
    );
ila_2_i: component ps_deci_low_0_0_ila_2
     port map (
      clk => clk,
      probe0(2 downto 0) => reset_delay(2 downto 0),
      probe1(2 downto 0) => reset_active(2 downto 0),
      probe10(15 downto 0) => mux_N1(15 downto 0),
      probe11(15 downto 0) => mux_N2(15 downto 0),
      probe12(15 downto 0) => mux_N3(15 downto 0),
      probe13(15 downto 0) => mux_N4(15 downto 0),
      probe14(15 downto 0) => mux_N5(15 downto 0),
      probe15(15 downto 0) => mux_N6(15 downto 0),
      probe16(15 downto 0) => mux_N7(15 downto 0),
      probe17(15 downto 0) => raw_N0(15 downto 0),
      probe18(15 downto 0) => raw_N1(15 downto 0),
      probe19(15 downto 0) => raw_N2(15 downto 0),
      probe2(0) => fir_resetn,
      probe20(15 downto 0) => raw_N3(15 downto 0),
      probe21(15 downto 0) => doa_N(15 downto 0),
      probe22(15 downto 0) => doa_E(15 downto 0),
      probe23(15 downto 0) => doa_W(15 downto 0),
      probe3(0) => adc_active,
      probe4(0) => mux_active,
      probe5(3 downto 0) => raw_wr_delay(3 downto 0),
      probe6(0) => raw_fifo_wr,
      probe7(3 downto 0) => doa_wr_delay(3 downto 0),
      probe8(0) => doa_fifo_wr,
      probe9(15 downto 0) => mux_N0(15 downto 0)
    );
ila_7_i: component ps_deci_low_0_0_ila_7
     port map (
      clk => raw_clk,
      probe0(0) => raw_fifo_empty,
      probe1(11 downto 0) => raw_delay(11 downto 0),
      probe2(0) => raw_active,
      probe3(15 downto 0) => raw_counter(15 downto 0),
      probe4(0) => \^raw_ready\
    );
ila_8_i: component ps_deci_low_0_0_ila_8
     port map (
      clk => doa_clk,
      probe0(0) => doa_fifo_empty,
      probe1(0) => doa_out_rd,
      probe2(2 downto 0) => doa_out_delay(2 downto 0),
      probe3(0) => \^doa_ready\
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
    sim_clk : in STD_LOGIC;
    sim_resetn : in STD_LOGIC;
    sim_wr : in STD_LOGIC;
    sim_channel : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sim_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    raw_clk : in STD_LOGIC;
    raw_ready : out STD_LOGIC;
    raw_data : out STD_LOGIC_VECTOR ( 191 downto 0 );
    doa_clk : in STD_LOGIC;
    doa_ready : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 47 downto 0 )
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
      doa_data(47 downto 0) => doa_data(47 downto 0),
      doa_ready => doa_ready,
      raw_clk => raw_clk,
      raw_data(191 downto 0) => raw_data(191 downto 0),
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
      sim_wr => sim_wr
    );
end STRUCTURE;
