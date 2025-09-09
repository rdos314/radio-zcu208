-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:33:11 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_bufgmux_adc0_0/rfdc_ex_bufgmux_adc0_0_stub.vhdl
-- Design      : rfdc_ex_bufgmux_adc0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rfdc_ex_bufgmux_adc0_0 is
  Port ( 
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    S : in STD_LOGIC;
    O : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rfdc_ex_bufgmux_adc0_0 : entity is "rfdc_ex_bufgmux_adc0_0,bufgmux,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of rfdc_ex_bufgmux_adc0_0 : entity is "rfdc_ex_bufgmux_adc0_0,bufgmux,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=bufgmux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_bufgmux_adc0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rfdc_ex_bufgmux_adc0_0 : entity is "module_ref";
end rfdc_ex_bufgmux_adc0_0;

architecture stub of rfdc_ex_bufgmux_adc0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "I0,I1,S,O";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I0 : signal is "xilinx.com:signal:clock:1.0 I0 CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of I0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I0 : signal is "XIL_INTERFACENAME I0, FREQ_HZ 368640000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I1 : signal is "xilinx.com:signal:clock:1.0 I1 CLK";
  attribute X_INTERFACE_MODE of I1 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of I1 : signal is "XIL_INTERFACENAME I1, FREQ_HZ 368640000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of O : signal is "xilinx.com:signal:clock:1.0 O CLK";
  attribute X_INTERFACE_MODE of O : signal is "master";
  attribute X_INTERFACE_PARAMETER of O : signal is "XIL_INTERFACENAME O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_bufgmux_adc0_0_O, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "bufgmux,Vivado 2025.1";
begin
end;
