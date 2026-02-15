-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Feb 13 16:48:05 2026
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_low_0_0/ps_comp_low_0_0_stub.vhdl
-- Design      : ps_comp_low_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_comp_low_0_0 is
  Port ( 
    ana_fifo_clk : in STD_LOGIC;
    ana_fifo_wr : in STD_LOGIC;
    ana_fifo_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ana_fifo_size : in STD_LOGIC_VECTOR ( 8 downto 0 );
    ana_fifo_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    ana_fifo_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ana_fifo_sample_N : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ana_fifo_sample_E : in STD_LOGIC_VECTOR ( 5 downto 0 );
    ana_fifo_sample_W : in STD_LOGIC_VECTOR ( 5 downto 0 );
    raw_fifo_clk : in STD_LOGIC;
    raw_fifo_wr : in STD_LOGIC;
    raw_fifo_N : in STD_LOGIC_VECTOR ( 127 downto 0 );
    raw_fifo_E : in STD_LOGIC_VECTOR ( 127 downto 0 );
    raw_fifo_W : in STD_LOGIC_VECTOR ( 127 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    active : out STD_LOGIC;
    re : out STD_LOGIC_VECTOR ( 63 downto 0 );
    im : out STD_LOGIC_VECTOR ( 63 downto 0 );
    burst : out STD_LOGIC;
    sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    size : out STD_LOGIC_VECTOR ( 8 downto 0 );
    freq : out STD_LOGIC_VECTOR ( 19 downto 0 );
    angle : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_comp_low_0_0 : entity is "ps_comp_low_0_0,comp_low,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_comp_low_0_0 : entity is "ps_comp_low_0_0,comp_low,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_low,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_comp_low_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_comp_low_0_0 : entity is "module_ref";
end ps_comp_low_0_0;

architecture stub of ps_comp_low_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "ana_fifo_clk,ana_fifo_wr,ana_fifo_sample[15:0],ana_fifo_size[8:0],ana_fifo_freq[19:0],ana_fifo_angle[15:0],ana_fifo_sample_N[5:0],ana_fifo_sample_E[5:0],ana_fifo_sample_W[5:0],raw_fifo_clk,raw_fifo_wr,raw_fifo_N[127:0],raw_fifo_E[127:0],raw_fifo_W[127:0],clk,reset,active,re[63:0],im[63:0],burst,sample[15:0],size[8:0],freq[19:0],angle[15:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of ana_fifo_clk : signal is "xilinx.com:signal:clock:1.0 ana_fifo_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of ana_fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of ana_fifo_clk : signal is "XIL_INTERFACENAME ana_fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of raw_fifo_clk : signal is "xilinx.com:signal:clock:1.0 raw_fifo_clk CLK";
  attribute X_INTERFACE_MODE of raw_fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of raw_fifo_clk : signal is "XIL_INTERFACENAME raw_fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "comp_low,Vivado 2025.1";
begin
end;
