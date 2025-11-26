-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Wed Nov 26 20:09:54 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_deci_high_0_0/ps_deci_high_0_0_stub.vhdl
-- Design      : ps_deci_high_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_deci_high_0_0 is
  Port ( 
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
    raw_data : out STD_LOGIC_VECTOR ( 383 downto 0 );
    doa_clk : in STD_LOGIC;
    doa_ready : out STD_LOGIC;
    doa_data : out STD_LOGIC_VECTOR ( 95 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_deci_high_0_0 : entity is "ps_deci_high_0_0,deci_high,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_deci_high_0_0 : entity is "ps_deci_high_0_0,deci_high,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=deci_high,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_deci_high_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_deci_high_0_0 : entity is "module_ref";
end ps_deci_high_0_0;

architecture stub of ps_deci_high_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,resetn,data_N[127:0],ready_N,data_E[127:0],ready_E,data_W[127:0],ready_W,sim_start,adc_active,sim_active,sim_clk,sim_resetn,sim_wr,sim_channel[1:0],sim_data[31:0],raw_clk,raw_ready,raw_data[383:0],doa_clk,doa_ready,doa_data[95:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sim_clk : signal is "xilinx.com:signal:clock:1.0 sim_clk CLK";
  attribute X_INTERFACE_MODE of sim_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sim_clk : signal is "XIL_INTERFACENAME sim_clk, ASSOCIATED_RESET sim_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sim_resetn : signal is "xilinx.com:signal:reset:1.0 sim_resetn RST";
  attribute X_INTERFACE_MODE of sim_resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sim_resetn : signal is "XIL_INTERFACENAME sim_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of raw_clk : signal is "xilinx.com:signal:clock:1.0 raw_clk CLK";
  attribute X_INTERFACE_MODE of raw_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of raw_clk : signal is "XIL_INTERFACENAME raw_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of doa_clk : signal is "xilinx.com:signal:clock:1.0 doa_clk CLK";
  attribute X_INTERFACE_MODE of doa_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of doa_clk : signal is "XIL_INTERFACENAME doa_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "deci_high,Vivado 2025.1";
begin
end;
