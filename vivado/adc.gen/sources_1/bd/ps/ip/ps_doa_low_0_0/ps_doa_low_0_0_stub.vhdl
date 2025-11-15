-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Nov 15 16:12:20 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_low_0_0/ps_doa_low_0_0_stub.vhdl
-- Design      : ps_doa_low_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_doa_low_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    fifo_valid : in STD_LOGIC;
    fifo_data : in STD_LOGIC_VECTOR ( 69 downto 0 );
    valid_N : out STD_LOGIC;
    env_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    diff_N : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_E : out STD_LOGIC;
    env_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    diff_E : out STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_W : out STD_LOGIC;
    env_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_W : out STD_LOGIC_VECTOR ( 15 downto 0 );
    diff_W : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_doa_low_0_0 : entity is "ps_doa_low_0_0,doa_low,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_doa_low_0_0 : entity is "ps_doa_low_0_0,doa_low,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=doa_low,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_doa_low_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_doa_low_0_0 : entity is "module_ref";
end ps_doa_low_0_0;

architecture stub of ps_doa_low_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,reset,fifo_valid,fifo_data[69:0],valid_N,env_N[15:0],phase_N[15:0],diff_N[15:0],valid_E,env_E[15:0],phase_E[15:0],diff_E[15:0],valid_W,env_W[15:0],phase_W[15:0],diff_W[15:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "doa_low,Vivado 2025.1";
begin
end;
