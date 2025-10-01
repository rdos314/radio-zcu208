-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Thu Oct  2 00:57:19 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_mts_0_0/ps_mts_0_0_stub.vhdl
-- Design      : ps_mts_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_mts_0_0 is
  Port ( 
    pl_clk_p : in STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    pl_clk : out STD_LOGIC;
    pl_sysref_p : in STD_LOGIC;
    pl_sysref_n : in STD_LOGIC;
    pl_sysref : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    m0_axis_aclk : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_mts_0_0 : entity is "ps_mts_0_0,mts,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_mts_0_0 : entity is "ps_mts_0_0,mts,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=mts,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_mts_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_mts_0_0 : entity is "module_ref";
end ps_mts_0_0;

architecture stub of ps_mts_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "pl_clk_p,pl_clk_n,pl_clk,pl_sysref_p,pl_sysref_n,pl_sysref,user_sysref_adc,m0_axis_aclk";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pl_clk_p : signal is "xilinx.com:signal:clock:1.0 pl_clk_p CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of pl_clk_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pl_clk_p : signal is "XIL_INTERFACENAME pl_clk_p, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_p, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk_n : signal is "xilinx.com:signal:clock:1.0 pl_clk_n CLK";
  attribute X_INTERFACE_MODE of pl_clk_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk_n : signal is "XIL_INTERFACENAME pl_clk_n, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE of pl_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_pl_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m0_axis_aclk : signal is "xilinx.com:signal:clock:1.0 m0_axis_aclk CLK";
  attribute X_INTERFACE_MODE of m0_axis_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of m0_axis_aclk : signal is "XIL_INTERFACENAME m0_axis_aclk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_adc0_clk_wiz_0_clk_out1, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "mts,Vivado 2025.1";
begin
end;
