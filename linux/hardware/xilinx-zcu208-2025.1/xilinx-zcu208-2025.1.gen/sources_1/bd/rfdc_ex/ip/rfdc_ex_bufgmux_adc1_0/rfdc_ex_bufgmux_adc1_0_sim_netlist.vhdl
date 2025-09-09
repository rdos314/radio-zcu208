-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:33:11 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_bufgmux_adc1_0/rfdc_ex_bufgmux_adc1_0_sim_netlist.vhdl
-- Design      : rfdc_ex_bufgmux_adc1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_bufgmux_adc1_0_bufgmux is
  port (
    O : out STD_LOGIC;
    S : in STD_LOGIC;
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rfdc_ex_bufgmux_adc1_0_bufgmux : entity is "bufgmux";
end rfdc_ex_bufgmux_adc1_0_bufgmux;

architecture STRUCTURE of rfdc_ex_bufgmux_adc1_0_bufgmux is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFGMUX_inst : label is "PRIMITIVE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of BUFGMUX_inst : label is "BUFGMUX";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of BUFGMUX_inst : label is "S:CE1,CE0 VCC:IGNORE1,IGNORE0,S1,S0";
begin
BUFGMUX_inst: unisim.vcomponents.BUFGCTRL
    generic map(
      INIT_OUT => 0,
      IS_CE0_INVERTED => '1',
      PRESELECT_I0 => true,
      PRESELECT_I1 => false,
      SIM_DEVICE => "ULTRASCALE_PLUS"
    )
        port map (
      CE0 => S,
      CE1 => S,
      I0 => I0,
      I1 => I1,
      IGNORE0 => '1',
      IGNORE1 => '1',
      O => O,
      S0 => '1',
      S1 => '1'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_bufgmux_adc1_0 is
  port (
    I0 : in STD_LOGIC;
    I1 : in STD_LOGIC;
    S : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rfdc_ex_bufgmux_adc1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rfdc_ex_bufgmux_adc1_0 : entity is "rfdc_ex_bufgmux_adc1_0,bufgmux,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_bufgmux_adc1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rfdc_ex_bufgmux_adc1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rfdc_ex_bufgmux_adc1_0 : entity is "bufgmux,Vivado 2025.1";
end rfdc_ex_bufgmux_adc1_0;

architecture STRUCTURE of rfdc_ex_bufgmux_adc1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of I0 : signal is "xilinx.com:signal:clock:1.0 I0 CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of I0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of I0 : signal is "XIL_INTERFACENAME I0, FREQ_HZ 368640000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of I1 : signal is "xilinx.com:signal:clock:1.0 I1 CLK";
  attribute X_INTERFACE_MODE of I1 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of I1 : signal is "XIL_INTERFACENAME I1, FREQ_HZ 368640000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of O : signal is "xilinx.com:signal:clock:1.0 O CLK";
  attribute X_INTERFACE_MODE of O : signal is "master";
  attribute X_INTERFACE_PARAMETER of O : signal is "XIL_INTERFACENAME O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_bufgmux_adc1_0_O, INSERT_VIP 0";
begin
inst: entity work.rfdc_ex_bufgmux_adc1_0_bufgmux
     port map (
      I0 => I0,
      I1 => I1,
      O => O,
      S => S
    );
end STRUCTURE;
