-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Dec 10 23:28:42 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_freq_low_46_0_0/ps_freq_low_46_0_0_stub.vhdl
-- Design      : ps_freq_low_46_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_freq_low_46_0_0 is
  Port ( 
    deci_clk : in STD_LOGIC;
    deci_fifo_wr : in STD_LOGIC;
    deci_fifo_data : in STD_LOGIC;
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    freq_fifo_valid : in STD_LOGIC;
    freq_fifo_data : in STD_LOGIC_VECTOR ( 47 downto 0 );
    valid : out STD_LOGIC;
    env_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_N : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_E : out STD_LOGIC_VECTOR ( 19 downto 0 );
    env_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_W : out STD_LOGIC_VECTOR ( 19 downto 0 );
    diff_W : out STD_LOGIC_VECTOR ( 19 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_freq_low_46_0_0 : entity is "ps_freq_low_46_0_0,freq_low_46,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_freq_low_46_0_0 : entity is "ps_freq_low_46_0_0,freq_low_46,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=freq_low_46,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_freq_low_46_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_freq_low_46_0_0 : entity is "module_ref";
end ps_freq_low_46_0_0;

architecture stub of ps_freq_low_46_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "deci_clk,deci_fifo_wr,deci_fifo_data,clk,reset,freq_fifo_valid,freq_fifo_data[47:0],valid,env_N[15:0],phase_N[19:0],diff_N[19:0],env_E[15:0],phase_E[19:0],diff_E[19:0],env_W[15:0],phase_W[19:0],diff_W[19:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of deci_clk : signal is "xilinx.com:signal:clock:1.0 deci_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of deci_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of deci_clk : signal is "XIL_INTERFACENAME deci_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "freq_low_46,Vivado 2025.1";
begin
end;
