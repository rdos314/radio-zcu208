-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Mar  6 06:34:13 2026
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_int_0_0/ps_axi_int_0_0_sim_netlist.vhdl
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
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_axi_int_0_0_axi_int : entity is "axi_int";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_axi_int_0_0_axi_int : entity is "soft";
end ps_axi_int_0_0_axi_int;

architecture STRUCTURE of ps_axi_int_0_0_axi_int is
  component ps_axi_int_0_0_fifo_config is
  port (
    rst : in STD_LOGIC;
    wr_clk : in STD_LOGIC;
    rd_clk : in STD_LOGIC;
    din : in STD_LOGIC_VECTOR ( 39 downto 0 );
    wr_en : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    dout : out STD_LOGIC_VECTOR ( 39 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    wr_rst_busy : out STD_LOGIC;
    rd_rst_busy : out STD_LOGIC
  );
  end component ps_axi_int_0_0_fifo_config;
  component ps_axi_int_0_0_ila_6 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 39 downto 0 );
    probe6 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe7 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe8 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe9 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe10 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    probe11 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe12 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe13 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe14 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe15 : in STD_LOGIC_VECTOR ( 26 downto 0 );
    probe16 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe17 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component ps_axi_int_0_0_ila_6;
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of \^m_axi_awaddr\ : signal is std.standard.true;
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of \^m_axi_awlen\ : signal is std.standard.true;
  signal M_AXI_AWLEN0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awvalid\ : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_AWVALID : signal is std.standard.true;
  signal \^m_axi_bready\ : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_BREADY : signal is std.standard.true;
  signal \^m_axi_wdata\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  attribute MARK_DEBUG of \^m_axi_wdata\ : signal is std.standard.true;
  signal \^m_axi_wlast\ : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_WLAST : signal is std.standard.true;
  signal \M_AXI_WLAST__0\ : STD_LOGIC;
  signal \^m_axi_wvalid\ : STD_LOGIC;
  attribute MARK_DEBUG of M_AXI_WVALID : signal is std.standard.true;
  signal adr : STD_LOGIC_VECTOR ( 26 downto 0 );
  attribute MARK_DEBUG of adr : signal is std.standard.true;
  signal \axi_int.M_AXI_AWADDR[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWADDR[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWLEN[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWVALID_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_AWVALID_reg0\ : STD_LOGIC;
  signal \axi_int.M_AXI_WDATA[39]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_WLAST_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_WLAST_i_4_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_WVALID_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.M_AXI_WVALID_reg0\ : STD_LOGIC;
  signal \axi_int.adr[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_10\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_11\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_12\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_13\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_14\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_15\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_8\ : STD_LOGIC;
  signal \axi_int.adr_reg[16]_i_1_n_9\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_10\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_11\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_12\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_13\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_14\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_15\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_8\ : STD_LOGIC;
  signal \axi_int.adr_reg[24]_i_1_n_9\ : STD_LOGIC;
  signal \axi_int.adr_reg[26]_i_1_n_14\ : STD_LOGIC;
  signal \axi_int.adr_reg[26]_i_1_n_15\ : STD_LOGIC;
  signal \axi_int.adr_reg[26]_i_1_n_7\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_10\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_11\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_12\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_13\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_14\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_15\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_8\ : STD_LOGIC;
  signal \axi_int.adr_reg[8]_i_1_n_9\ : STD_LOGIC;
  signal \axi_int.busy_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.busy_reg0\ : STD_LOGIC;
  signal \axi_int.counter[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.counter[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.counter[6]_i_3_n_0\ : STD_LOGIC;
  signal \axi_int.counter[6]_i_4_n_0\ : STD_LOGIC;
  signal \axi_int.counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \axi_int.counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_int.req_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.req_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.req_reg0\ : STD_LOGIC;
  signal \axi_int.req_timeout[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.req_timeout[7]_i_4_n_0\ : STD_LOGIC;
  signal \axi_int.req_timeout_reg0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \axi_int.size[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.size[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.size[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.size[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.size[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.size[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_int.size[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.size[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_int.size[7]_i_3_n_0\ : STD_LOGIC;
  signal busy : STD_LOGIC;
  attribute MARK_DEBUG of busy : signal is std.standard.true;
  signal cfg_empty : STD_LOGIC;
  signal config_data_adr_out : STD_LOGIC_VECTOR ( 39 downto 0 );
  signal counter : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of counter : signal is std.standard.true;
  signal counter1 : STD_LOGIC;
  signal \next\ : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal req : STD_LOGIC;
  attribute MARK_DEBUG of req : signal is std.standard.true;
  signal req_timeout : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of req_timeout : signal is std.standard.true;
  signal reset : STD_LOGIC;
  signal size : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute MARK_DEBUG of size : signal is std.standard.true;
  signal start : STD_LOGIC;
  signal \NLW_axi_int.adr_reg[26]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \NLW_axi_int.adr_reg[26]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal NLW_fifo_config_i_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_config_i_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_config_i_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  attribute KEEP : string;
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[0]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[10]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[10]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[11]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[11]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[12]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[12]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[13]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[13]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[14]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[14]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[15]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[15]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[16]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[16]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[17]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[17]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[18]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[18]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[19]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[19]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[1]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[20]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[20]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[21]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[21]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[22]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[22]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[23]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[23]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[24]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[24]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[25]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[25]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[26]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[26]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[27]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[27]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[28]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[28]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[29]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[29]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[2]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[30]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[30]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[31]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[31]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[3]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[4]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[5]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[6]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[7]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[8]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[8]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWADDR_reg[9]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWADDR_reg[9]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[0]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[1]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[2]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[3]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[4]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[5]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[6]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWLEN_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWLEN_reg[7]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_AWVALID_reg\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_AWVALID_reg\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_BREADY_reg\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[0]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[100]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[101]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[102]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[103]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[104]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[105]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[106]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[107]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[108]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[109]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[10]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[110]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[111]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[112]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[113]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[114]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[115]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[116]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[117]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[118]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[119]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[11]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[120]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[121]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[122]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[123]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[124]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[125]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[126]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[127]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[128]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[129]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[12]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[130]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[131]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[132]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[133]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[134]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[135]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[136]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[137]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[138]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[139]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[13]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[140]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[141]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[142]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[143]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[144]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[145]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[146]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[147]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[148]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[149]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[14]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[150]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[151]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[152]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[153]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[154]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[155]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[156]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[157]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[158]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[159]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[15]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[160]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[161]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[162]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[163]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[164]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[165]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[166]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[167]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[168]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[169]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[16]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[170]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[171]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[172]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[173]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[174]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[175]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[176]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[177]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[178]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[179]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[17]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[180]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[181]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[182]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[183]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[184]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[185]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[186]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[187]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[188]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[189]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[18]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[190]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[191]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[192]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[193]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[194]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[195]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[196]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[197]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[198]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[199]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[19]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[1]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[200]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[201]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[202]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[203]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[204]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[205]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[206]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[207]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[208]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[209]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[20]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[210]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[211]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[212]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[213]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[214]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[215]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[216]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[217]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[218]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[219]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[21]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[220]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[221]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[222]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[223]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[224]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[225]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[226]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[227]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[228]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[229]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[22]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[230]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[231]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[232]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[233]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[234]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[235]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[236]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[237]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[238]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[239]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[23]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[240]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[241]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[242]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[243]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[244]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[245]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[246]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[247]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[248]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[249]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[24]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[250]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[251]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[252]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[253]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[254]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[255]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[25]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[26]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[27]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[28]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[29]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[2]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[30]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[31]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[32]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[33]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[34]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[35]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[36]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[37]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[38]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[39]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[3]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[40]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[41]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[42]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[43]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[44]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[45]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[46]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[47]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[48]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[49]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[4]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[50]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[51]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[52]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[53]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[54]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[55]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[56]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[57]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[58]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[59]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[5]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[60]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[61]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[62]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[63]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[64]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[65]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[66]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[67]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[68]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[69]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[6]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[70]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[71]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[72]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[73]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[74]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[75]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[76]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[77]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[78]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[79]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[7]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[80]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[81]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[82]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[83]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[84]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[85]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[86]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[87]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[88]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[89]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[8]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[90]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[91]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[92]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[93]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[94]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[95]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[96]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[97]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[98]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[99]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WDATA_reg[9]\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WLAST_reg\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_WLAST_reg\ : label is "yes";
  attribute KEEP of \axi_int.M_AXI_WVALID_reg\ : label is "yes";
  attribute mark_debug_string of \axi_int.M_AXI_WVALID_reg\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[0]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[10]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[10]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[11]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[11]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[12]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[12]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[13]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[13]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[14]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[14]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[15]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[15]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[16]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[16]\ : label is "yes";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \axi_int.adr_reg[16]_i_1\ : label is 35;
  attribute KEEP of \axi_int.adr_reg[17]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[17]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[18]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[18]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[19]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[19]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[1]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[20]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[20]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[21]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[21]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[22]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[22]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[23]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[23]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[24]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[24]\ : label is "yes";
  attribute ADDER_THRESHOLD of \axi_int.adr_reg[24]_i_1\ : label is 35;
  attribute KEEP of \axi_int.adr_reg[25]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[25]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[26]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[26]\ : label is "yes";
  attribute ADDER_THRESHOLD of \axi_int.adr_reg[26]_i_1\ : label is 35;
  attribute KEEP of \axi_int.adr_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[2]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[3]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[4]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[5]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[6]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[7]\ : label is "yes";
  attribute KEEP of \axi_int.adr_reg[8]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[8]\ : label is "yes";
  attribute ADDER_THRESHOLD of \axi_int.adr_reg[8]_i_1\ : label is 35;
  attribute KEEP of \axi_int.adr_reg[9]\ : label is "yes";
  attribute mark_debug_string of \axi_int.adr_reg[9]\ : label is "yes";
  attribute KEEP of \axi_int.busy_reg\ : label is "yes";
  attribute mark_debug_string of \axi_int.busy_reg\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[0]\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[1]\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[2]\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[3]\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[4]\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[5]\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[6]\ : label is "yes";
  attribute KEEP of \axi_int.counter_reg[7]\ : label is "yes";
  attribute KEEP of \axi_int.req_reg\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[0]\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[1]\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[2]\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[3]\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[4]\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[5]\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[6]\ : label is "yes";
  attribute KEEP of \axi_int.req_timeout_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_int.req_timeout_reg[7]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[0]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[0]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[1]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[1]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[2]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[2]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[3]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[3]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[4]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[4]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[5]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[5]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[6]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[6]\ : label is "yes";
  attribute KEEP of \axi_int.size_reg[7]\ : label is "yes";
  attribute mark_debug_string of \axi_int.size_reg[7]\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of fifo_config_i : label is "fifo_config,fifo_generator_v13_2_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of fifo_config_i : label is "yes";
  attribute x_core_info : string;
  attribute x_core_info of fifo_config_i : label is "fifo_generator_v13_2_13,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_i : label is "ila_6,ila,{}";
  attribute downgradeipidentifiedwarnings of ila_i : label is "yes";
  attribute x_core_info of ila_i : label is "ila,Vivado 2025.1";
begin
  M_AXI_AWADDR(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const0>\;
  M_AXI_AWLEN(7 downto 0) <= \^m_axi_awlen\(7 downto 0);
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const0>\;
  M_AXI_AWSIZE(2) <= \<const0>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const0>\;
  M_AXI_AWVALID <= \^m_axi_awvalid\;
  M_AXI_BREADY <= \^m_axi_bready\;
  M_AXI_WDATA(255 downto 0) <= \^m_axi_wdata\(255 downto 0);
  M_AXI_WLAST <= \^m_axi_wlast\;
  M_AXI_WSTRB(31) <= \<const0>\;
  M_AXI_WSTRB(30) <= \<const0>\;
  M_AXI_WSTRB(29) <= \<const0>\;
  M_AXI_WSTRB(28) <= \<const0>\;
  M_AXI_WSTRB(27) <= \<const0>\;
  M_AXI_WSTRB(26) <= \<const0>\;
  M_AXI_WSTRB(25) <= \<const0>\;
  M_AXI_WSTRB(24) <= \<const0>\;
  M_AXI_WSTRB(23) <= \<const0>\;
  M_AXI_WSTRB(22) <= \<const0>\;
  M_AXI_WSTRB(21) <= \<const0>\;
  M_AXI_WSTRB(20) <= \<const0>\;
  M_AXI_WSTRB(19) <= \<const0>\;
  M_AXI_WSTRB(18) <= \<const0>\;
  M_AXI_WSTRB(17) <= \<const0>\;
  M_AXI_WSTRB(16) <= \<const0>\;
  M_AXI_WSTRB(15) <= \<const0>\;
  M_AXI_WSTRB(14) <= \<const0>\;
  M_AXI_WSTRB(13) <= \<const0>\;
  M_AXI_WSTRB(12) <= \<const0>\;
  M_AXI_WSTRB(11) <= \<const0>\;
  M_AXI_WSTRB(10) <= \<const0>\;
  M_AXI_WSTRB(9) <= \<const0>\;
  M_AXI_WSTRB(8) <= \<const0>\;
  M_AXI_WSTRB(7) <= \<const0>\;
  M_AXI_WSTRB(6) <= \<const0>\;
  M_AXI_WSTRB(5) <= \<const0>\;
  M_AXI_WSTRB(4) <= \<const0>\;
  M_AXI_WSTRB(3) <= \<const0>\;
  M_AXI_WSTRB(2) <= \<const0>\;
  M_AXI_WSTRB(1) <= \<const0>\;
  M_AXI_WSTRB(0) <= \<const0>\;
  M_AXI_WVALID <= \^m_axi_wvalid\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\axi_int.M_AXI_AWADDR[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(10),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(5),
      O => \axi_int.M_AXI_AWADDR[10]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(11),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(6),
      O => \axi_int.M_AXI_AWADDR[11]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(12),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(7),
      O => \axi_int.M_AXI_AWADDR[12]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(13),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(8),
      O => \axi_int.M_AXI_AWADDR[13]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(14),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(9),
      O => \axi_int.M_AXI_AWADDR[14]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(15),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(10),
      O => \axi_int.M_AXI_AWADDR[15]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(16),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(11),
      O => \axi_int.M_AXI_AWADDR[16]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(17),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(12),
      O => \axi_int.M_AXI_AWADDR[17]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(18),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(13),
      O => \axi_int.M_AXI_AWADDR[18]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(19),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(14),
      O => \axi_int.M_AXI_AWADDR[19]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(20),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(15),
      O => \axi_int.M_AXI_AWADDR[20]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(21),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(16),
      O => \axi_int.M_AXI_AWADDR[21]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(22),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(17),
      O => \axi_int.M_AXI_AWADDR[22]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(23),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(18),
      O => \axi_int.M_AXI_AWADDR[23]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(24),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(19),
      O => \axi_int.M_AXI_AWADDR[24]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(25),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(20),
      O => \axi_int.M_AXI_AWADDR[25]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(26),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(21),
      O => \axi_int.M_AXI_AWADDR[26]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(27),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(22),
      O => \axi_int.M_AXI_AWADDR[27]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(28),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(23),
      O => \axi_int.M_AXI_AWADDR[28]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(29),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(24),
      O => \axi_int.M_AXI_AWADDR[29]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(30),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(25),
      O => \axi_int.M_AXI_AWADDR[30]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EAFFEAEA"
    )
        port map (
      I0 => reset,
      I1 => M_AXI_AWREADY,
      I2 => \^m_axi_awvalid\,
      I3 => busy,
      I4 => req,
      O => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(31),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(26),
      O => \axi_int.M_AXI_AWADDR[31]_i_2_n_0\
    );
\axi_int.M_AXI_AWADDR[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020202"
    )
        port map (
      I0 => req,
      I1 => busy,
      I2 => reset,
      I3 => M_AXI_AWREADY,
      I4 => \^m_axi_awvalid\,
      O => \axi_int.M_AXI_AWADDR[4]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(5),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(0),
      O => \axi_int.M_AXI_AWADDR[5]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(6),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(1),
      O => \axi_int.M_AXI_AWADDR[6]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(7),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(2),
      O => \axi_int.M_AXI_AWADDR[7]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(8),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(3),
      O => \axi_int.M_AXI_AWADDR[8]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AABFAA80"
    )
        port map (
      I0 => \^m_axi_awaddr\(9),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => adr(4),
      O => \axi_int.M_AXI_AWADDR[9]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \^m_axi_awaddr\(0),
      Q => \^m_axi_awaddr\(0),
      R => \axi_int.M_AXI_AWADDR[4]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[10]_i_1_n_0\,
      Q => \^m_axi_awaddr\(10),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[11]_i_1_n_0\,
      Q => \^m_axi_awaddr\(11),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[12]_i_1_n_0\,
      Q => \^m_axi_awaddr\(12),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[13]_i_1_n_0\,
      Q => \^m_axi_awaddr\(13),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[14]_i_1_n_0\,
      Q => \^m_axi_awaddr\(14),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[15]_i_1_n_0\,
      Q => \^m_axi_awaddr\(15),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[16]_i_1_n_0\,
      Q => \^m_axi_awaddr\(16),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[17]_i_1_n_0\,
      Q => \^m_axi_awaddr\(17),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[18]_i_1_n_0\,
      Q => \^m_axi_awaddr\(18),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[19]_i_1_n_0\,
      Q => \^m_axi_awaddr\(19),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \^m_axi_awaddr\(1),
      Q => \^m_axi_awaddr\(1),
      R => \axi_int.M_AXI_AWADDR[4]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[20]_i_1_n_0\,
      Q => \^m_axi_awaddr\(20),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[21]_i_1_n_0\,
      Q => \^m_axi_awaddr\(21),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[22]_i_1_n_0\,
      Q => \^m_axi_awaddr\(22),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[23]_i_1_n_0\,
      Q => \^m_axi_awaddr\(23),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[24]_i_1_n_0\,
      Q => \^m_axi_awaddr\(24),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[25]_i_1_n_0\,
      Q => \^m_axi_awaddr\(25),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[26]_i_1_n_0\,
      Q => \^m_axi_awaddr\(26),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[27]_i_1_n_0\,
      Q => \^m_axi_awaddr\(27),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[28]_i_1_n_0\,
      Q => \^m_axi_awaddr\(28),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[29]_i_1_n_0\,
      Q => \^m_axi_awaddr\(29),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \^m_axi_awaddr\(2),
      Q => \^m_axi_awaddr\(2),
      R => \axi_int.M_AXI_AWADDR[4]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[30]_i_1_n_0\,
      Q => \^m_axi_awaddr\(30),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[31]_i_2_n_0\,
      Q => \^m_axi_awaddr\(31),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \^m_axi_awaddr\(3),
      Q => \^m_axi_awaddr\(3),
      R => \axi_int.M_AXI_AWADDR[4]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \^m_axi_awaddr\(4),
      Q => \^m_axi_awaddr\(4),
      R => \axi_int.M_AXI_AWADDR[4]_i_1_n_0\
    );
\axi_int.M_AXI_AWADDR_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[5]_i_1_n_0\,
      Q => \^m_axi_awaddr\(5),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[6]_i_1_n_0\,
      Q => \^m_axi_awaddr\(6),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[7]_i_1_n_0\,
      Q => \^m_axi_awaddr\(7),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[8]_i_1_n_0\,
      Q => \^m_axi_awaddr\(8),
      R => '0'
    );
\axi_int.M_AXI_AWADDR_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWADDR[9]_i_1_n_0\,
      Q => \^m_axi_awaddr\(9),
      R => '0'
    );
\axi_int.M_AXI_AWLEN[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA80AABF"
    )
        port map (
      I0 => \^m_axi_awlen\(0),
      I1 => \^m_axi_awvalid\,
      I2 => M_AXI_AWREADY,
      I3 => reset,
      I4 => size(0),
      O => \axi_int.M_AXI_AWLEN[0]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF99900000999"
    )
        port map (
      I0 => size(0),
      I1 => size(1),
      I2 => \^m_axi_awvalid\,
      I3 => M_AXI_AWREADY,
      I4 => reset,
      I5 => \^m_axi_awlen\(1),
      O => \axi_int.M_AXI_AWLEN[1]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => size(0),
      I3 => \axi_int.M_AXI_AWVALID_reg0\,
      I4 => \^m_axi_awlen\(2),
      O => \axi_int.M_AXI_AWLEN[2]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => size(3),
      I1 => size(0),
      I2 => size(1),
      I3 => size(2),
      I4 => \axi_int.M_AXI_AWVALID_reg0\,
      I5 => \^m_axi_awlen\(3),
      O => \axi_int.M_AXI_AWLEN[3]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF99900000999"
    )
        port map (
      I0 => size(4),
      I1 => \axi_int.M_AXI_AWLEN[6]_i_2_n_0\,
      I2 => \^m_axi_awvalid\,
      I3 => M_AXI_AWREADY,
      I4 => reset,
      I5 => \^m_axi_awlen\(4),
      O => \axi_int.M_AXI_AWLEN[4]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => size(5),
      I1 => \axi_int.M_AXI_AWLEN[6]_i_2_n_0\,
      I2 => size(4),
      I3 => \axi_int.M_AXI_AWVALID_reg0\,
      I4 => \^m_axi_awlen\(5),
      O => \axi_int.M_AXI_AWLEN[5]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAAA90000AAA9"
    )
        port map (
      I0 => size(6),
      I1 => size(4),
      I2 => \axi_int.M_AXI_AWLEN[6]_i_2_n_0\,
      I3 => size(5),
      I4 => \axi_int.M_AXI_AWVALID_reg0\,
      I5 => \^m_axi_awlen\(6),
      O => \axi_int.M_AXI_AWLEN[6]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => size(0),
      I3 => size(3),
      O => \axi_int.M_AXI_AWLEN[6]_i_2_n_0\
    );
\axi_int.M_AXI_AWLEN[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFA900A9"
    )
        port map (
      I0 => size(7),
      I1 => size(6),
      I2 => \axi_int.M_AXI_AWLEN[7]_i_2_n_0\,
      I3 => \axi_int.M_AXI_AWVALID_reg0\,
      I4 => \^m_axi_awlen\(7),
      O => \axi_int.M_AXI_AWLEN[7]_i_1_n_0\
    );
\axi_int.M_AXI_AWLEN[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => size(4),
      I1 => size(2),
      I2 => size(1),
      I3 => size(0),
      I4 => size(3),
      I5 => size(5),
      O => \axi_int.M_AXI_AWLEN[7]_i_2_n_0\
    );
\axi_int.M_AXI_AWLEN[7]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_axi_awvalid\,
      I1 => M_AXI_AWREADY,
      I2 => reset,
      O => \axi_int.M_AXI_AWVALID_reg0\
    );
\axi_int.M_AXI_AWLEN_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[0]_i_1_n_0\,
      Q => \^m_axi_awlen\(0),
      R => '0'
    );
\axi_int.M_AXI_AWLEN_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[1]_i_1_n_0\,
      Q => \^m_axi_awlen\(1),
      R => '0'
    );
\axi_int.M_AXI_AWLEN_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[2]_i_1_n_0\,
      Q => \^m_axi_awlen\(2),
      R => '0'
    );
\axi_int.M_AXI_AWLEN_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[3]_i_1_n_0\,
      Q => \^m_axi_awlen\(3),
      R => '0'
    );
\axi_int.M_AXI_AWLEN_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[4]_i_1_n_0\,
      Q => \^m_axi_awlen\(4),
      R => '0'
    );
\axi_int.M_AXI_AWLEN_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[5]_i_1_n_0\,
      Q => \^m_axi_awlen\(5),
      R => '0'
    );
\axi_int.M_AXI_AWLEN_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[6]_i_1_n_0\,
      Q => \^m_axi_awlen\(6),
      R => '0'
    );
\axi_int.M_AXI_AWLEN_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_AWADDR[31]_i_1_n_0\,
      D => \axi_int.M_AXI_AWLEN[7]_i_1_n_0\,
      Q => \^m_axi_awlen\(7),
      R => '0'
    );
\axi_int.M_AXI_AWVALID_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000AE00AE00AE"
    )
        port map (
      I0 => \^m_axi_awvalid\,
      I1 => req,
      I2 => busy,
      I3 => reset,
      I4 => M_AXI_AWREADY,
      I5 => \^m_axi_awvalid\,
      O => \axi_int.M_AXI_AWVALID_i_1_n_0\
    );
\axi_int.M_AXI_AWVALID_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_int.M_AXI_AWVALID_i_1_n_0\,
      Q => \^m_axi_awvalid\,
      R => '0'
    );
\axi_int.M_AXI_BREADY_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => M_AXI_BVALID,
      I1 => \^m_axi_bready\,
      I2 => reset,
      O => \axi_int.busy_reg0\
    );
\axi_int.M_AXI_BREADY_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => M_AXI_BVALID,
      Q => \^m_axi_bready\,
      R => \axi_int.busy_reg0\
    );
\axi_int.M_AXI_WDATA[39]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5540404000000000"
    )
        port map (
      I0 => \axi_int.busy_reg0\,
      I1 => \^m_axi_wvalid\,
      I2 => M_AXI_WREADY,
      I3 => \^m_axi_awvalid\,
      I4 => M_AXI_AWREADY,
      I5 => \axi_int.counter[6]_i_3_n_0\,
      O => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(0),
      Q => \^m_axi_wdata\(0),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(100),
      Q => \^m_axi_wdata\(100),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(101),
      Q => \^m_axi_wdata\(101),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(102),
      Q => \^m_axi_wdata\(102),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(103),
      Q => \^m_axi_wdata\(103),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(104),
      Q => \^m_axi_wdata\(104),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(105),
      Q => \^m_axi_wdata\(105),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(106),
      Q => \^m_axi_wdata\(106),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(107),
      Q => \^m_axi_wdata\(107),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(108),
      Q => \^m_axi_wdata\(108),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(109),
      Q => \^m_axi_wdata\(109),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(10),
      Q => \^m_axi_wdata\(10),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(110),
      Q => \^m_axi_wdata\(110),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(111),
      Q => \^m_axi_wdata\(111),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(112),
      Q => \^m_axi_wdata\(112),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(113),
      Q => \^m_axi_wdata\(113),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(114),
      Q => \^m_axi_wdata\(114),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(115),
      Q => \^m_axi_wdata\(115),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(116),
      Q => \^m_axi_wdata\(116),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(117),
      Q => \^m_axi_wdata\(117),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(118),
      Q => \^m_axi_wdata\(118),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(119),
      Q => \^m_axi_wdata\(119),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(11),
      Q => \^m_axi_wdata\(11),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(120),
      Q => \^m_axi_wdata\(120),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(121),
      Q => \^m_axi_wdata\(121),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(122),
      Q => \^m_axi_wdata\(122),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(123),
      Q => \^m_axi_wdata\(123),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(124),
      Q => \^m_axi_wdata\(124),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(125),
      Q => \^m_axi_wdata\(125),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(126),
      Q => \^m_axi_wdata\(126),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(127),
      Q => \^m_axi_wdata\(127),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(128),
      Q => \^m_axi_wdata\(128),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(129),
      Q => \^m_axi_wdata\(129),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(12),
      Q => \^m_axi_wdata\(12),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(130),
      Q => \^m_axi_wdata\(130),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(131),
      Q => \^m_axi_wdata\(131),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(132),
      Q => \^m_axi_wdata\(132),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(133),
      Q => \^m_axi_wdata\(133),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(134),
      Q => \^m_axi_wdata\(134),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(135),
      Q => \^m_axi_wdata\(135),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(136),
      Q => \^m_axi_wdata\(136),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(137),
      Q => \^m_axi_wdata\(137),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(138),
      Q => \^m_axi_wdata\(138),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(139),
      Q => \^m_axi_wdata\(139),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(13),
      Q => \^m_axi_wdata\(13),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(140),
      Q => \^m_axi_wdata\(140),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(141),
      Q => \^m_axi_wdata\(141),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(142),
      Q => \^m_axi_wdata\(142),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(143),
      Q => \^m_axi_wdata\(143),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(144),
      Q => \^m_axi_wdata\(144),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(145),
      Q => \^m_axi_wdata\(145),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(146),
      Q => \^m_axi_wdata\(146),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(147),
      Q => \^m_axi_wdata\(147),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(148),
      Q => \^m_axi_wdata\(148),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(149),
      Q => \^m_axi_wdata\(149),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(14),
      Q => \^m_axi_wdata\(14),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(150),
      Q => \^m_axi_wdata\(150),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(151),
      Q => \^m_axi_wdata\(151),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(152),
      Q => \^m_axi_wdata\(152),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(153),
      Q => \^m_axi_wdata\(153),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(154),
      Q => \^m_axi_wdata\(154),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(155),
      Q => \^m_axi_wdata\(155),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(156),
      Q => \^m_axi_wdata\(156),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(157),
      Q => \^m_axi_wdata\(157),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(158),
      Q => \^m_axi_wdata\(158),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(159),
      Q => \^m_axi_wdata\(159),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(15),
      Q => \^m_axi_wdata\(15),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(160),
      Q => \^m_axi_wdata\(160),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(161),
      Q => \^m_axi_wdata\(161),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(162),
      Q => \^m_axi_wdata\(162),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(163),
      Q => \^m_axi_wdata\(163),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(164),
      Q => \^m_axi_wdata\(164),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(165),
      Q => \^m_axi_wdata\(165),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(166),
      Q => \^m_axi_wdata\(166),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(167),
      Q => \^m_axi_wdata\(167),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(168),
      Q => \^m_axi_wdata\(168),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(169),
      Q => \^m_axi_wdata\(169),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(16),
      Q => \^m_axi_wdata\(16),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(170),
      Q => \^m_axi_wdata\(170),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(171),
      Q => \^m_axi_wdata\(171),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(172),
      Q => \^m_axi_wdata\(172),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(173),
      Q => \^m_axi_wdata\(173),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(174),
      Q => \^m_axi_wdata\(174),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(175),
      Q => \^m_axi_wdata\(175),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(176),
      Q => \^m_axi_wdata\(176),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(177),
      Q => \^m_axi_wdata\(177),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(178),
      Q => \^m_axi_wdata\(178),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(179),
      Q => \^m_axi_wdata\(179),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(17),
      Q => \^m_axi_wdata\(17),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(180),
      Q => \^m_axi_wdata\(180),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(181),
      Q => \^m_axi_wdata\(181),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(182),
      Q => \^m_axi_wdata\(182),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(183),
      Q => \^m_axi_wdata\(183),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(184),
      Q => \^m_axi_wdata\(184),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(185),
      Q => \^m_axi_wdata\(185),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(186),
      Q => \^m_axi_wdata\(186),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(187),
      Q => \^m_axi_wdata\(187),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(188),
      Q => \^m_axi_wdata\(188),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(189),
      Q => \^m_axi_wdata\(189),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(18),
      Q => \^m_axi_wdata\(18),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(190),
      Q => \^m_axi_wdata\(190),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(191),
      Q => \^m_axi_wdata\(191),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(192),
      Q => \^m_axi_wdata\(192),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(193),
      Q => \^m_axi_wdata\(193),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(194),
      Q => \^m_axi_wdata\(194),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(195),
      Q => \^m_axi_wdata\(195),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(196),
      Q => \^m_axi_wdata\(196),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(197),
      Q => \^m_axi_wdata\(197),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(198),
      Q => \^m_axi_wdata\(198),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(199),
      Q => \^m_axi_wdata\(199),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(19),
      Q => \^m_axi_wdata\(19),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(1),
      Q => \^m_axi_wdata\(1),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(200),
      Q => \^m_axi_wdata\(200),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(201),
      Q => \^m_axi_wdata\(201),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(202),
      Q => \^m_axi_wdata\(202),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(203),
      Q => \^m_axi_wdata\(203),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(204),
      Q => \^m_axi_wdata\(204),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(205),
      Q => \^m_axi_wdata\(205),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(206),
      Q => \^m_axi_wdata\(206),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(207),
      Q => \^m_axi_wdata\(207),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(208),
      Q => \^m_axi_wdata\(208),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(209),
      Q => \^m_axi_wdata\(209),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(20),
      Q => \^m_axi_wdata\(20),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(210),
      Q => \^m_axi_wdata\(210),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(211),
      Q => \^m_axi_wdata\(211),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(212),
      Q => \^m_axi_wdata\(212),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(213),
      Q => \^m_axi_wdata\(213),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(214),
      Q => \^m_axi_wdata\(214),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(215),
      Q => \^m_axi_wdata\(215),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(216),
      Q => \^m_axi_wdata\(216),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(217),
      Q => \^m_axi_wdata\(217),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(218),
      Q => \^m_axi_wdata\(218),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(219),
      Q => \^m_axi_wdata\(219),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(21),
      Q => \^m_axi_wdata\(21),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(220),
      Q => \^m_axi_wdata\(220),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(221),
      Q => \^m_axi_wdata\(221),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(222),
      Q => \^m_axi_wdata\(222),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(223),
      Q => \^m_axi_wdata\(223),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(224),
      Q => \^m_axi_wdata\(224),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(225),
      Q => \^m_axi_wdata\(225),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(226),
      Q => \^m_axi_wdata\(226),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(227),
      Q => \^m_axi_wdata\(227),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(228),
      Q => \^m_axi_wdata\(228),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(229),
      Q => \^m_axi_wdata\(229),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(22),
      Q => \^m_axi_wdata\(22),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(230),
      Q => \^m_axi_wdata\(230),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(231),
      Q => \^m_axi_wdata\(231),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(232),
      Q => \^m_axi_wdata\(232),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(233),
      Q => \^m_axi_wdata\(233),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(234),
      Q => \^m_axi_wdata\(234),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(235),
      Q => \^m_axi_wdata\(235),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(236),
      Q => \^m_axi_wdata\(236),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(237),
      Q => \^m_axi_wdata\(237),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(238),
      Q => \^m_axi_wdata\(238),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(239),
      Q => \^m_axi_wdata\(239),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(23),
      Q => \^m_axi_wdata\(23),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(240),
      Q => \^m_axi_wdata\(240),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(241),
      Q => \^m_axi_wdata\(241),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(242),
      Q => \^m_axi_wdata\(242),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(243),
      Q => \^m_axi_wdata\(243),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(244),
      Q => \^m_axi_wdata\(244),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(245),
      Q => \^m_axi_wdata\(245),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(246),
      Q => \^m_axi_wdata\(246),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(247),
      Q => \^m_axi_wdata\(247),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(248),
      Q => \^m_axi_wdata\(248),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(249),
      Q => \^m_axi_wdata\(249),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(24),
      Q => \^m_axi_wdata\(24),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(250),
      Q => \^m_axi_wdata\(250),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(251),
      Q => \^m_axi_wdata\(251),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(252),
      Q => \^m_axi_wdata\(252),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(253),
      Q => \^m_axi_wdata\(253),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(254),
      Q => \^m_axi_wdata\(254),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(255),
      Q => \^m_axi_wdata\(255),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(25),
      Q => \^m_axi_wdata\(25),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(26),
      Q => \^m_axi_wdata\(26),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(27),
      Q => \^m_axi_wdata\(27),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(28),
      Q => \^m_axi_wdata\(28),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(29),
      Q => \^m_axi_wdata\(29),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(2),
      Q => \^m_axi_wdata\(2),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(30),
      Q => \^m_axi_wdata\(30),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(31),
      Q => \^m_axi_wdata\(31),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(32),
      Q => \^m_axi_wdata\(32),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(33),
      Q => \^m_axi_wdata\(33),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(34),
      Q => \^m_axi_wdata\(34),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(35),
      Q => \^m_axi_wdata\(35),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(36),
      Q => \^m_axi_wdata\(36),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(37),
      Q => \^m_axi_wdata\(37),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(38),
      Q => \^m_axi_wdata\(38),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(39),
      Q => \^m_axi_wdata\(39),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(3),
      Q => \^m_axi_wdata\(3),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(40),
      Q => \^m_axi_wdata\(40),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(41),
      Q => \^m_axi_wdata\(41),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(42),
      Q => \^m_axi_wdata\(42),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(43),
      Q => \^m_axi_wdata\(43),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(44),
      Q => \^m_axi_wdata\(44),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(45),
      Q => \^m_axi_wdata\(45),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(46),
      Q => \^m_axi_wdata\(46),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(47),
      Q => \^m_axi_wdata\(47),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(48),
      Q => \^m_axi_wdata\(48),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(49),
      Q => \^m_axi_wdata\(49),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(4),
      Q => \^m_axi_wdata\(4),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(50),
      Q => \^m_axi_wdata\(50),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(51),
      Q => \^m_axi_wdata\(51),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(52),
      Q => \^m_axi_wdata\(52),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(53),
      Q => \^m_axi_wdata\(53),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(54),
      Q => \^m_axi_wdata\(54),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(55),
      Q => \^m_axi_wdata\(55),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(56),
      Q => \^m_axi_wdata\(56),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(57),
      Q => \^m_axi_wdata\(57),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(58),
      Q => \^m_axi_wdata\(58),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(59),
      Q => \^m_axi_wdata\(59),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(5),
      Q => \^m_axi_wdata\(5),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(60),
      Q => \^m_axi_wdata\(60),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(61),
      Q => \^m_axi_wdata\(61),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(62),
      Q => \^m_axi_wdata\(62),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(63),
      Q => \^m_axi_wdata\(63),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(64),
      Q => \^m_axi_wdata\(64),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(65),
      Q => \^m_axi_wdata\(65),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(66),
      Q => \^m_axi_wdata\(66),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(67),
      Q => \^m_axi_wdata\(67),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(68),
      Q => \^m_axi_wdata\(68),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(69),
      Q => \^m_axi_wdata\(69),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(6),
      Q => \^m_axi_wdata\(6),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(70),
      Q => \^m_axi_wdata\(70),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(71),
      Q => \^m_axi_wdata\(71),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(72),
      Q => \^m_axi_wdata\(72),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(73),
      Q => \^m_axi_wdata\(73),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(74),
      Q => \^m_axi_wdata\(74),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(75),
      Q => \^m_axi_wdata\(75),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(76),
      Q => \^m_axi_wdata\(76),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(77),
      Q => \^m_axi_wdata\(77),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(78),
      Q => \^m_axi_wdata\(78),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(79),
      Q => \^m_axi_wdata\(79),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(7),
      Q => \^m_axi_wdata\(7),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(80),
      Q => \^m_axi_wdata\(80),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(81),
      Q => \^m_axi_wdata\(81),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(82),
      Q => \^m_axi_wdata\(82),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(83),
      Q => \^m_axi_wdata\(83),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(84),
      Q => \^m_axi_wdata\(84),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(85),
      Q => \^m_axi_wdata\(85),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(86),
      Q => \^m_axi_wdata\(86),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(87),
      Q => \^m_axi_wdata\(87),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(88),
      Q => \^m_axi_wdata\(88),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(89),
      Q => \^m_axi_wdata\(89),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(8),
      Q => \^m_axi_wdata\(8),
      R => '0'
    );
\axi_int.M_AXI_WDATA_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(90),
      Q => \^m_axi_wdata\(90),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(91),
      Q => \^m_axi_wdata\(91),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(92),
      Q => \^m_axi_wdata\(92),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(93),
      Q => \^m_axi_wdata\(93),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(94),
      Q => \^m_axi_wdata\(94),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(95),
      Q => \^m_axi_wdata\(95),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(96),
      Q => \^m_axi_wdata\(96),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(97),
      Q => \^m_axi_wdata\(97),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(98),
      Q => \^m_axi_wdata\(98),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \^m_axi_wdata\(99),
      Q => \^m_axi_wdata\(99),
      R => \axi_int.M_AXI_WDATA[39]_i_1_n_0\
    );
\axi_int.M_AXI_WDATA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.M_AXI_WDATA[39]_i_1_n_0\,
      D => config_data_adr_out(9),
      Q => \^m_axi_wdata\(9),
      R => '0'
    );
\axi_int.M_AXI_WLAST_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFF8F8F8"
    )
        port map (
      I0 => M_AXI_WREADY,
      I1 => \^m_axi_wlast\,
      I2 => reset,
      I3 => \^m_axi_bready\,
      I4 => M_AXI_BVALID,
      O => \axi_int.M_AXI_WVALID_reg0\
    );
\axi_int.M_AXI_WLAST_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABFBFBFAA808080"
    )
        port map (
      I0 => \M_AXI_WLAST__0\,
      I1 => \^m_axi_wvalid\,
      I2 => M_AXI_WREADY,
      I3 => \^m_axi_awvalid\,
      I4 => M_AXI_AWREADY,
      I5 => \^m_axi_wlast\,
      O => \axi_int.M_AXI_WLAST_i_2_n_0\
    );
\axi_int.M_AXI_WLAST_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000010"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(0),
      I3 => counter(1),
      I4 => \axi_int.M_AXI_WLAST_i_4_n_0\,
      O => \M_AXI_WLAST__0\
    );
\axi_int.M_AXI_WLAST_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(6),
      I1 => counter(4),
      I2 => counter(5),
      I3 => counter(7),
      O => \axi_int.M_AXI_WLAST_i_4_n_0\
    );
\axi_int.M_AXI_WLAST_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_int.M_AXI_WLAST_i_2_n_0\,
      Q => \^m_axi_wlast\,
      R => \axi_int.M_AXI_WVALID_reg0\
    );
\axi_int.M_AXI_WVALID_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_axi_awvalid\,
      I1 => M_AXI_AWREADY,
      I2 => \^m_axi_wvalid\,
      O => \axi_int.M_AXI_WVALID_i_1_n_0\
    );
\axi_int.M_AXI_WVALID_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_int.M_AXI_WVALID_i_1_n_0\,
      Q => \^m_axi_wvalid\,
      R => \axi_int.M_AXI_WVALID_reg0\
    );
\axi_int.adr[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => adr(0),
      O => \axi_int.adr[0]_i_1_n_0\
    );
\axi_int.adr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr[0]_i_1_n_0\,
      Q => adr(0),
      R => reset
    );
\axi_int.adr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_14\,
      Q => adr(10),
      R => reset
    );
\axi_int.adr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_13\,
      Q => adr(11),
      R => reset
    );
\axi_int.adr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_12\,
      Q => adr(12),
      R => reset
    );
\axi_int.adr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_11\,
      Q => adr(13),
      R => reset
    );
\axi_int.adr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_10\,
      Q => adr(14),
      R => reset
    );
\axi_int.adr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_9\,
      Q => adr(15),
      R => reset
    );
\axi_int.adr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_8\,
      Q => adr(16),
      R => reset
    );
\axi_int.adr_reg[16]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_int.adr_reg[8]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_int.adr_reg[16]_i_1_n_0\,
      CO(6) => \axi_int.adr_reg[16]_i_1_n_1\,
      CO(5) => \axi_int.adr_reg[16]_i_1_n_2\,
      CO(4) => \axi_int.adr_reg[16]_i_1_n_3\,
      CO(3) => \axi_int.adr_reg[16]_i_1_n_4\,
      CO(2) => \axi_int.adr_reg[16]_i_1_n_5\,
      CO(1) => \axi_int.adr_reg[16]_i_1_n_6\,
      CO(0) => \axi_int.adr_reg[16]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_int.adr_reg[16]_i_1_n_8\,
      O(6) => \axi_int.adr_reg[16]_i_1_n_9\,
      O(5) => \axi_int.adr_reg[16]_i_1_n_10\,
      O(4) => \axi_int.adr_reg[16]_i_1_n_11\,
      O(3) => \axi_int.adr_reg[16]_i_1_n_12\,
      O(2) => \axi_int.adr_reg[16]_i_1_n_13\,
      O(1) => \axi_int.adr_reg[16]_i_1_n_14\,
      O(0) => \axi_int.adr_reg[16]_i_1_n_15\,
      S(7 downto 0) => adr(16 downto 9)
    );
\axi_int.adr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_15\,
      Q => adr(17),
      R => reset
    );
\axi_int.adr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_14\,
      Q => adr(18),
      R => reset
    );
\axi_int.adr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_13\,
      Q => adr(19),
      R => reset
    );
\axi_int.adr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_15\,
      Q => adr(1),
      R => reset
    );
\axi_int.adr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_12\,
      Q => adr(20),
      R => reset
    );
\axi_int.adr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_11\,
      Q => adr(21),
      R => reset
    );
\axi_int.adr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_10\,
      Q => adr(22),
      R => reset
    );
\axi_int.adr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_9\,
      Q => adr(23),
      R => reset
    );
\axi_int.adr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[24]_i_1_n_8\,
      Q => adr(24),
      R => reset
    );
\axi_int.adr_reg[24]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_int.adr_reg[16]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \axi_int.adr_reg[24]_i_1_n_0\,
      CO(6) => \axi_int.adr_reg[24]_i_1_n_1\,
      CO(5) => \axi_int.adr_reg[24]_i_1_n_2\,
      CO(4) => \axi_int.adr_reg[24]_i_1_n_3\,
      CO(3) => \axi_int.adr_reg[24]_i_1_n_4\,
      CO(2) => \axi_int.adr_reg[24]_i_1_n_5\,
      CO(1) => \axi_int.adr_reg[24]_i_1_n_6\,
      CO(0) => \axi_int.adr_reg[24]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_int.adr_reg[24]_i_1_n_8\,
      O(6) => \axi_int.adr_reg[24]_i_1_n_9\,
      O(5) => \axi_int.adr_reg[24]_i_1_n_10\,
      O(4) => \axi_int.adr_reg[24]_i_1_n_11\,
      O(3) => \axi_int.adr_reg[24]_i_1_n_12\,
      O(2) => \axi_int.adr_reg[24]_i_1_n_13\,
      O(1) => \axi_int.adr_reg[24]_i_1_n_14\,
      O(0) => \axi_int.adr_reg[24]_i_1_n_15\,
      S(7 downto 0) => adr(24 downto 17)
    );
\axi_int.adr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[26]_i_1_n_15\,
      Q => adr(25),
      R => reset
    );
\axi_int.adr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[26]_i_1_n_14\,
      Q => adr(26),
      R => reset
    );
\axi_int.adr_reg[26]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \axi_int.adr_reg[24]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 1) => \NLW_axi_int.adr_reg[26]_i_1_CO_UNCONNECTED\(7 downto 1),
      CO(0) => \axi_int.adr_reg[26]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 2) => \NLW_axi_int.adr_reg[26]_i_1_O_UNCONNECTED\(7 downto 2),
      O(1) => \axi_int.adr_reg[26]_i_1_n_14\,
      O(0) => \axi_int.adr_reg[26]_i_1_n_15\,
      S(7 downto 2) => B"000000",
      S(1 downto 0) => adr(26 downto 25)
    );
\axi_int.adr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_14\,
      Q => adr(2),
      R => reset
    );
\axi_int.adr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_13\,
      Q => adr(3),
      R => reset
    );
\axi_int.adr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_12\,
      Q => adr(4),
      R => reset
    );
\axi_int.adr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_11\,
      Q => adr(5),
      R => reset
    );
\axi_int.adr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_10\,
      Q => adr(6),
      R => reset
    );
\axi_int.adr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_9\,
      Q => adr(7),
      R => reset
    );
\axi_int.adr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[8]_i_1_n_8\,
      Q => adr(8),
      R => reset
    );
\axi_int.adr_reg[8]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => adr(0),
      CI_TOP => '0',
      CO(7) => \axi_int.adr_reg[8]_i_1_n_0\,
      CO(6) => \axi_int.adr_reg[8]_i_1_n_1\,
      CO(5) => \axi_int.adr_reg[8]_i_1_n_2\,
      CO(4) => \axi_int.adr_reg[8]_i_1_n_3\,
      CO(3) => \axi_int.adr_reg[8]_i_1_n_4\,
      CO(2) => \axi_int.adr_reg[8]_i_1_n_5\,
      CO(1) => \axi_int.adr_reg[8]_i_1_n_6\,
      CO(0) => \axi_int.adr_reg[8]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \axi_int.adr_reg[8]_i_1_n_8\,
      O(6) => \axi_int.adr_reg[8]_i_1_n_9\,
      O(5) => \axi_int.adr_reg[8]_i_1_n_10\,
      O(4) => \axi_int.adr_reg[8]_i_1_n_11\,
      O(3) => \axi_int.adr_reg[8]_i_1_n_12\,
      O(2) => \axi_int.adr_reg[8]_i_1_n_13\,
      O(1) => \axi_int.adr_reg[8]_i_1_n_14\,
      O(0) => \axi_int.adr_reg[8]_i_1_n_15\,
      S(7 downto 0) => adr(8 downto 1)
    );
\axi_int.adr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \next\,
      D => \axi_int.adr_reg[16]_i_1_n_15\,
      Q => adr(9),
      R => reset
    );
\axi_int.busy_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => \^m_axi_awvalid\,
      I1 => M_AXI_AWREADY,
      I2 => busy,
      O => \axi_int.busy_i_1_n_0\
    );
\axi_int.busy_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_int.busy_i_1_n_0\,
      Q => busy,
      R => \axi_int.busy_reg0\
    );
\axi_int.counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FFFD20FF00FD20"
    )
        port map (
      I0 => req,
      I1 => busy,
      I2 => size(0),
      I3 => counter(0),
      I4 => \axi_int.counter[6]_i_3_n_0\,
      I5 => counter1,
      O => \p_1_in__0\(0)
    );
\axi_int.counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF5C0CA3F35000"
    )
        port map (
      I0 => counter(0),
      I1 => \axi_int.counter[7]_i_2_n_0\,
      I2 => \axi_int.counter[6]_i_3_n_0\,
      I3 => counter1,
      I4 => counter(1),
      I5 => size(1),
      O => \p_1_in__0\(1)
    );
\axi_int.counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF5C0CA3F35000"
    )
        port map (
      I0 => \axi_int.counter[2]_i_2_n_0\,
      I1 => \axi_int.counter[7]_i_2_n_0\,
      I2 => \axi_int.counter[6]_i_3_n_0\,
      I3 => counter1,
      I4 => counter(2),
      I5 => size(2),
      O => \p_1_in__0\(2)
    );
\axi_int.counter[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter(1),
      I1 => counter(0),
      O => \axi_int.counter[2]_i_2_n_0\
    );
\axi_int.counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFF5C0CA3F35000"
    )
        port map (
      I0 => \axi_int.counter[3]_i_2_n_0\,
      I1 => \axi_int.counter[7]_i_2_n_0\,
      I2 => \axi_int.counter[6]_i_3_n_0\,
      I3 => counter1,
      I4 => counter(3),
      I5 => size(3),
      O => \p_1_in__0\(3)
    );
\axi_int.counter[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter(0),
      I1 => counter(1),
      I2 => counter(2),
      O => \axi_int.counter[3]_i_2_n_0\
    );
\axi_int.counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00FD2000FFFD20"
    )
        port map (
      I0 => req,
      I1 => busy,
      I2 => size(4),
      I3 => counter(4),
      I4 => \axi_int.counter[6]_i_3_n_0\,
      I5 => \axi_int.counter[6]_i_4_n_0\,
      O => \p_1_in__0\(4)
    );
\axi_int.counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF0C5CF3A30050"
    )
        port map (
      I0 => counter(4),
      I1 => \axi_int.counter[7]_i_2_n_0\,
      I2 => \axi_int.counter[6]_i_3_n_0\,
      I3 => \axi_int.counter[6]_i_4_n_0\,
      I4 => counter(5),
      I5 => size(5),
      O => \p_1_in__0\(5)
    );
\axi_int.counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAF0C5CF3A30050"
    )
        port map (
      I0 => \axi_int.counter[6]_i_2_n_0\,
      I1 => \axi_int.counter[7]_i_2_n_0\,
      I2 => \axi_int.counter[6]_i_3_n_0\,
      I3 => \axi_int.counter[6]_i_4_n_0\,
      I4 => counter(6),
      I5 => size(6),
      O => \p_1_in__0\(6)
    );
\axi_int.counter[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      O => \axi_int.counter[6]_i_2_n_0\
    );
\axi_int.counter[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(7),
      I1 => counter(5),
      I2 => counter(4),
      I3 => counter(6),
      I4 => \axi_int.counter[7]_i_3_n_0\,
      O => \axi_int.counter[6]_i_3_n_0\
    );
\axi_int.counter[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFFFEFFFEFFFF"
    )
        port map (
      I0 => counter(3),
      I1 => counter(0),
      I2 => counter(1),
      I3 => counter(2),
      I4 => start,
      I5 => \next\,
      O => \axi_int.counter[6]_i_4_n_0\
    );
\axi_int.counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFF0202FCFF0000"
    )
        port map (
      I0 => \axi_int.counter[7]_i_2_n_0\,
      I1 => \axi_int.counter[7]_i_3_n_0\,
      I2 => \axi_int.counter[7]_i_4_n_0\,
      I3 => counter1,
      I4 => counter(7),
      I5 => size(7),
      O => \p_1_in__0\(7)
    );
\axi_int.counter[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => req,
      I1 => busy,
      O => \axi_int.counter[7]_i_2_n_0\
    );
\axi_int.counter[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(2),
      I1 => counter(1),
      I2 => counter(0),
      I3 => counter(3),
      O => \axi_int.counter[7]_i_3_n_0\
    );
\axi_int.counter[7]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => counter(6),
      O => \axi_int.counter[7]_i_4_n_0\
    );
\axi_int.counter[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^m_axi_wvalid\,
      I1 => M_AXI_WREADY,
      I2 => \^m_axi_awvalid\,
      I3 => M_AXI_AWREADY,
      O => counter1
    );
\axi_int.counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(0),
      Q => counter(0),
      R => \axi_int.busy_reg0\
    );
\axi_int.counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(1),
      Q => counter(1),
      R => \axi_int.busy_reg0\
    );
\axi_int.counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(2),
      Q => counter(2),
      R => \axi_int.busy_reg0\
    );
\axi_int.counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(3),
      Q => counter(3),
      R => \axi_int.busy_reg0\
    );
\axi_int.counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(4),
      Q => counter(4),
      R => \axi_int.busy_reg0\
    );
\axi_int.counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(5),
      Q => counter(5),
      R => \axi_int.busy_reg0\
    );
\axi_int.counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(6),
      Q => counter(6),
      R => \axi_int.busy_reg0\
    );
\axi_int.counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_1_in__0\(7),
      Q => counter(7),
      R => \axi_int.busy_reg0\
    );
\axi_int.req_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000AE"
    )
        port map (
      I0 => req,
      I1 => \axi_int.req_i_2_n_0\,
      I2 => \axi_int.req_timeout[7]_i_4_n_0\,
      I3 => reset,
      I4 => cfg_empty,
      O => \axi_int.req_i_1_n_0\
    );
\axi_int.req_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => req_timeout(5),
      I1 => req_timeout(4),
      I2 => req_timeout(7),
      I3 => req_timeout(6),
      O => \axi_int.req_i_2_n_0\
    );
\axi_int.req_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \axi_int.req_i_1_n_0\,
      Q => req,
      R => '0'
    );
\axi_int.req_timeout[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => req_timeout(0),
      O => \axi_int.req_timeout_reg0\(0)
    );
\axi_int.req_timeout[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => req_timeout(1),
      I1 => req_timeout(0),
      O => \axi_int.req_timeout_reg0\(1)
    );
\axi_int.req_timeout[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A9"
    )
        port map (
      I0 => req_timeout(2),
      I1 => req_timeout(0),
      I2 => req_timeout(1),
      O => \axi_int.req_timeout_reg0\(2)
    );
\axi_int.req_timeout[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => req_timeout(3),
      I1 => req_timeout(1),
      I2 => req_timeout(0),
      I3 => req_timeout(2),
      O => \axi_int.req_timeout_reg0\(3)
    );
\axi_int.req_timeout[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA9"
    )
        port map (
      I0 => req_timeout(4),
      I1 => req_timeout(2),
      I2 => req_timeout(0),
      I3 => req_timeout(1),
      I4 => req_timeout(3),
      O => \axi_int.req_timeout_reg0\(4)
    );
\axi_int.req_timeout[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAAAA9"
    )
        port map (
      I0 => req_timeout(5),
      I1 => req_timeout(3),
      I2 => req_timeout(1),
      I3 => req_timeout(0),
      I4 => req_timeout(2),
      I5 => req_timeout(4),
      O => \axi_int.req_timeout_reg0\(5)
    );
\axi_int.req_timeout[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAA9"
    )
        port map (
      I0 => req_timeout(6),
      I1 => req_timeout(4),
      I2 => \axi_int.req_timeout[7]_i_4_n_0\,
      I3 => req_timeout(5),
      O => \axi_int.req_timeout_reg0\(6)
    );
\axi_int.req_timeout[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => cfg_empty,
      I1 => reset,
      O => \axi_int.req_reg0\
    );
\axi_int.req_timeout[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => req_timeout(6),
      I1 => req_timeout(7),
      I2 => req_timeout(4),
      I3 => \axi_int.req_timeout[7]_i_4_n_0\,
      I4 => req_timeout(5),
      O => \axi_int.req_timeout[7]_i_2_n_0\
    );
\axi_int.req_timeout[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => req_timeout(6),
      I1 => req_timeout(4),
      I2 => \axi_int.req_timeout[7]_i_4_n_0\,
      I3 => req_timeout(5),
      I4 => req_timeout(7),
      O => \axi_int.req_timeout_reg0\(7)
    );
\axi_int.req_timeout[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => req_timeout(2),
      I1 => req_timeout(0),
      I2 => req_timeout(1),
      I3 => req_timeout(3),
      O => \axi_int.req_timeout[7]_i_4_n_0\
    );
\axi_int.req_timeout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(0),
      Q => req_timeout(0),
      R => \axi_int.req_reg0\
    );
\axi_int.req_timeout_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(1),
      Q => req_timeout(1),
      S => \axi_int.req_reg0\
    );
\axi_int.req_timeout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(2),
      Q => req_timeout(2),
      R => \axi_int.req_reg0\
    );
\axi_int.req_timeout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(3),
      Q => req_timeout(3),
      R => \axi_int.req_reg0\
    );
\axi_int.req_timeout_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(4),
      Q => req_timeout(4),
      S => \axi_int.req_reg0\
    );
\axi_int.req_timeout_reg[5]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(5),
      Q => req_timeout(5),
      S => \axi_int.req_reg0\
    );
\axi_int.req_timeout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(6),
      Q => req_timeout(6),
      R => \axi_int.req_reg0\
    );
\axi_int.req_timeout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \axi_int.req_timeout[7]_i_2_n_0\,
      D => \axi_int.req_timeout_reg0\(7),
      Q => req_timeout(7),
      R => \axi_int.req_reg0\
    );
\axi_int.reset_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => \p_0_in__0\
    );
\axi_int.reset_reg\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\,
      Q => reset,
      R => '0'
    );
\axi_int.size[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => size(0),
      O => M_AXI_AWLEN0(0)
    );
\axi_int.size[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => size(0),
      I1 => size(1),
      O => \axi_int.size[1]_i_1_n_0\
    );
\axi_int.size[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => size(0),
      I1 => size(1),
      I2 => size(2),
      O => \axi_int.size[2]_i_1_n_0\
    );
\axi_int.size[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => size(0),
      I3 => size(3),
      O => \axi_int.size[3]_i_1_n_0\
    );
\axi_int.size[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => size(3),
      I1 => size(0),
      I2 => size(1),
      I3 => size(2),
      I4 => size(4),
      O => \axi_int.size[4]_i_1_n_0\
    );
\axi_int.size[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => size(2),
      I1 => size(1),
      I2 => size(0),
      I3 => size(3),
      I4 => size(4),
      I5 => size(5),
      O => \axi_int.size[5]_i_1_n_0\
    );
\axi_int.size[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => size(4),
      I1 => size(3),
      I2 => \axi_int.size[6]_i_2_n_0\,
      I3 => size(2),
      I4 => size(5),
      I5 => size(6),
      O => \axi_int.size[6]_i_1_n_0\
    );
\axi_int.size[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => size(1),
      I1 => size(0),
      O => \axi_int.size[6]_i_2_n_0\
    );
\axi_int.size[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXI_AWREADY,
      I1 => \^m_axi_awvalid\,
      O => start
    );
\axi_int.size[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => size(6),
      I1 => \axi_int.size[7]_i_3_n_0\,
      I2 => size(7),
      O => \axi_int.size[7]_i_2_n_0\
    );
\axi_int.size[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => size(5),
      I1 => size(2),
      I2 => size(1),
      I3 => size(0),
      I4 => size(3),
      I5 => size(4),
      O => \axi_int.size[7]_i_3_n_0\
    );
\axi_int.size_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => start,
      D => M_AXI_AWLEN0(0),
      Q => size(0),
      S => cfg_empty
    );
\axi_int.size_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => start,
      D => \axi_int.size[1]_i_1_n_0\,
      Q => size(1),
      R => cfg_empty
    );
\axi_int.size_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => start,
      D => \axi_int.size[2]_i_1_n_0\,
      Q => size(2),
      R => cfg_empty
    );
\axi_int.size_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => start,
      D => \axi_int.size[3]_i_1_n_0\,
      Q => size(3),
      R => cfg_empty
    );
\axi_int.size_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => start,
      D => \axi_int.size[4]_i_1_n_0\,
      Q => size(4),
      R => cfg_empty
    );
\axi_int.size_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => start,
      D => \axi_int.size[5]_i_1_n_0\,
      Q => size(5),
      R => cfg_empty
    );
\axi_int.size_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => start,
      D => \axi_int.size[6]_i_1_n_0\,
      Q => size(6),
      R => cfg_empty
    );
\axi_int.size_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => start,
      D => \axi_int.size[7]_i_2_n_0\,
      Q => size(7),
      R => cfg_empty
    );
fifo_config_i: component ps_axi_int_0_0_fifo_config
     port map (
      din(39 downto 8) => config_data(31 downto 0),
      din(7 downto 0) => config_adr(7 downto 0),
      dout(39 downto 0) => config_data_adr_out(39 downto 0),
      empty => cfg_empty,
      full => NLW_fifo_config_i_full_UNCONNECTED,
      rd_clk => clk,
      rd_en => \next\,
      rd_rst_busy => NLW_fifo_config_i_rd_rst_busy_UNCONNECTED,
      rst => reset,
      wr_clk => config_clk,
      wr_en => config_wr,
      wr_rst_busy => NLW_fifo_config_i_wr_rst_busy_UNCONNECTED
    );
fifo_config_i_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => M_AXI_WREADY,
      I1 => \^m_axi_wvalid\,
      O => \next\
    );
ila_i: component ps_axi_int_0_0_ila_6
     port map (
      clk => clk,
      probe0(0) => up,
      probe1(31 downto 0) => \^m_axi_awaddr\(31 downto 0),
      probe10(1 downto 0) => M_AXI_BRESP(1 downto 0),
      probe11(0) => \^m_axi_bready\,
      probe12(7 downto 0) => req_timeout(7 downto 0),
      probe13(0) => req,
      probe14(0) => busy,
      probe15(26 downto 0) => adr(26 downto 0),
      probe16(7 downto 0) => size(7 downto 0),
      probe17(7 downto 0) => counter(7 downto 0),
      probe2(7 downto 0) => \^m_axi_awlen\(7 downto 0),
      probe3(0) => \^m_axi_awvalid\,
      probe4(0) => M_AXI_AWREADY,
      probe5(39 downto 0) => \^m_axi_wdata\(39 downto 0),
      probe6(0) => \^m_axi_wlast\,
      probe7(0) => \^m_axi_wvalid\,
      probe8(0) => M_AXI_WREADY,
      probe9(0) => M_AXI_BVALID
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_axi_int_0_0 is
  port (
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  signal NLW_inst_M_AXI_AWBURST_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_AWPROT_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_M_AXI_AWSIZE_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_M_AXI_WSTRB_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of config_clk : signal is "xilinx.com:signal:clock:1.0 config_clk CLK";
  attribute X_INTERFACE_MODE of config_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of config_clk : signal is "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
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
  M_AXI_AWBURST(1) <= \<const0>\;
  M_AXI_AWBURST(0) <= \<const1>\;
  M_AXI_AWPROT(1) <= \<const0>\;
  M_AXI_AWPROT(0) <= \<const1>\;
  M_AXI_AWSIZE(2) <= \<const1>\;
  M_AXI_AWSIZE(1) <= \<const0>\;
  M_AXI_AWSIZE(0) <= \<const1>\;
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
      M_AXI_AWADDR(31 downto 0) => M_AXI_AWADDR(31 downto 0),
      M_AXI_AWBURST(1 downto 0) => NLW_inst_M_AXI_AWBURST_UNCONNECTED(1 downto 0),
      M_AXI_AWLEN(7 downto 0) => M_AXI_AWLEN(7 downto 0),
      M_AXI_AWPROT(1 downto 0) => NLW_inst_M_AXI_AWPROT_UNCONNECTED(1 downto 0),
      M_AXI_AWREADY => M_AXI_AWREADY,
      M_AXI_AWSIZE(2 downto 0) => NLW_inst_M_AXI_AWSIZE_UNCONNECTED(2 downto 0),
      M_AXI_AWVALID => M_AXI_AWVALID,
      M_AXI_BREADY => M_AXI_BREADY,
      M_AXI_BRESP(1 downto 0) => M_AXI_BRESP(1 downto 0),
      M_AXI_BVALID => M_AXI_BVALID,
      M_AXI_WDATA(255 downto 0) => M_AXI_WDATA(255 downto 0),
      M_AXI_WLAST => M_AXI_WLAST,
      M_AXI_WREADY => M_AXI_WREADY,
      M_AXI_WSTRB(31 downto 0) => NLW_inst_M_AXI_WSTRB_UNCONNECTED(31 downto 0),
      M_AXI_WVALID => M_AXI_WVALID,
      clk => clk,
      config_adr(7 downto 0) => config_adr(7 downto 0),
      config_clk => config_clk,
      config_data(31 downto 0) => config_data(31 downto 0),
      config_wr => config_wr,
      resetn => resetn,
      up => up
    );
end STRUCTURE;
