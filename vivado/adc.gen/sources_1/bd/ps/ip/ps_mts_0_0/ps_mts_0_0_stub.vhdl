-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sun Dec 14 15:59:03 2025
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
    pl_clk : in STD_LOGIC;
    pl_sysref : in STD_LOGIC;
    sys_reset : in STD_LOGIC;
    axi_clk : in STD_LOGIC;
    axi_reset_out : out STD_LOGIC;
    axi_adc_start : in STD_LOGIC;
    axi_sim_start : in STD_LOGIC;
    axi_adc_stop : in STD_LOGIC;
    axi_adc_active : out STD_LOGIC;
    axi_sim_active : out STD_LOGIC;
    deci_clk : out STD_LOGIC;
    deci_resetn : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    deci_adc_active : out STD_LOGIC;
    deci_sim_start : out STD_LOGIC;
    deci_sim_active_low : in STD_LOGIC;
    deci_sim_active_high : in STD_LOGIC;
    comp0_clk : out STD_LOGIC;
    comp0_reset : out STD_LOGIC;
    comp1_clk : out STD_LOGIC;
    comp1_reset : out STD_LOGIC;
    freq0_clk : out STD_LOGIC;
    freq0_reset : out STD_LOGIC;
    freq1_clk : out STD_LOGIC;
    freq1_reset : out STD_LOGIC
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
  attribute black_box_pad_pin of stub : architecture is "pl_clk,pl_sysref,sys_reset,axi_clk,axi_reset_out,axi_adc_start,axi_sim_start,axi_adc_stop,axi_adc_active,axi_sim_active,deci_clk,deci_resetn,user_sysref_adc,deci_adc_active,deci_sim_start,deci_sim_active_low,deci_sim_active_high,comp0_clk,comp0_reset,comp1_clk,comp1_reset,freq0_clk,freq0_reset,freq1_clk,freq1_reset";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of pl_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_pl_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of sys_reset : signal is "xilinx.com:signal:reset:1.0 sys_reset RST";
  attribute X_INTERFACE_MODE of sys_reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of sys_reset : signal is "XIL_INTERFACENAME sys_reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axi_clk : signal is "xilinx.com:signal:clock:1.0 axi_clk CLK";
  attribute X_INTERFACE_MODE of axi_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of axi_clk : signal is "XIL_INTERFACENAME axi_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of deci_clk : signal is "xilinx.com:signal:clock:1.0 deci_clk CLK";
  attribute X_INTERFACE_MODE of deci_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of deci_clk : signal is "XIL_INTERFACENAME deci_clk, ASSOCIATED_RESET deci_resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of deci_resetn : signal is "xilinx.com:signal:reset:1.0 deci_resetn RST";
  attribute X_INTERFACE_MODE of deci_resetn : signal is "master";
  attribute X_INTERFACE_PARAMETER of deci_resetn : signal is "XIL_INTERFACENAME deci_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp0_clk : signal is "xilinx.com:signal:clock:1.0 comp0_clk CLK";
  attribute X_INTERFACE_MODE of comp0_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of comp0_clk : signal is "XIL_INTERFACENAME comp0_clk, ASSOCIATED_RESET comp0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp0_reset : signal is "xilinx.com:signal:reset:1.0 comp0_reset RST";
  attribute X_INTERFACE_MODE of comp0_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of comp0_reset : signal is "XIL_INTERFACENAME comp0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp1_clk : signal is "xilinx.com:signal:clock:1.0 comp1_clk CLK";
  attribute X_INTERFACE_MODE of comp1_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of comp1_clk : signal is "XIL_INTERFACENAME comp1_clk, ASSOCIATED_RESET comp1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of comp1_reset : signal is "xilinx.com:signal:reset:1.0 comp1_reset RST";
  attribute X_INTERFACE_MODE of comp1_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of comp1_reset : signal is "XIL_INTERFACENAME comp1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freq0_clk : signal is "xilinx.com:signal:clock:1.0 freq0_clk CLK";
  attribute X_INTERFACE_MODE of freq0_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq0_clk : signal is "XIL_INTERFACENAME freq0_clk, ASSOCIATED_RESET freq0_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freq0_reset : signal is "xilinx.com:signal:reset:1.0 freq0_reset RST";
  attribute X_INTERFACE_MODE of freq0_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq0_reset : signal is "XIL_INTERFACENAME freq0_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freq1_clk : signal is "xilinx.com:signal:clock:1.0 freq1_clk CLK";
  attribute X_INTERFACE_MODE of freq1_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq1_clk : signal is "XIL_INTERFACENAME freq1_clk, ASSOCIATED_RESET freq1_reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of freq1_reset : signal is "xilinx.com:signal:reset:1.0 freq1_reset RST";
  attribute X_INTERFACE_MODE of freq1_reset : signal is "master";
  attribute X_INTERFACE_PARAMETER of freq1_reset : signal is "XIL_INTERFACENAME freq1_reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "mts,Vivado 2025.1";
begin
end;
