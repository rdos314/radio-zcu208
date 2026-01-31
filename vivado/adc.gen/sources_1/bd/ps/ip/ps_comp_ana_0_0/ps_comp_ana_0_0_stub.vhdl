-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Jan 30 23:37:14 2026
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_ana_0_0/ps_comp_ana_0_0_stub.vhdl
-- Design      : ps_comp_ana_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_comp_ana_0_0 is
  Port ( 
    fifo_clk : in STD_LOGIC;
    fifo_active : in STD_LOGIC;
    fifo_re : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_im : in STD_LOGIC_VECTOR ( 63 downto 0 );
    fifo_burst : in STD_LOGIC;
    fifo_sample : in STD_LOGIC_VECTOR ( 15 downto 0 );
    fifo_size : in STD_LOGIC_VECTOR ( 8 downto 0 );
    fifo_freq : in STD_LOGIC_VECTOR ( 19 downto 0 );
    fifo_angle : in STD_LOGIC_VECTOR ( 15 downto 0 );
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_comp_ana_0_0 : entity is "ps_comp_ana_0_0,comp_ana,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_comp_ana_0_0 : entity is "ps_comp_ana_0_0,comp_ana,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=comp_ana,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_comp_ana_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_comp_ana_0_0 : entity is "module_ref";
end ps_comp_ana_0_0;

architecture stub of ps_comp_ana_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "fifo_clk,fifo_active,fifo_re[63:0],fifo_im[63:0],fifo_burst,fifo_sample[15:0],fifo_size[8:0],fifo_freq[19:0],fifo_angle[15:0],config_clk,config_wr,config_adr[7:0],config_data[31:0],clk,reset";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of config_clk : signal is "xilinx.com:signal:clock:1.0 config_clk CLK";
  attribute X_INTERFACE_MODE of config_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of config_clk : signal is "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp_ana0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "comp_ana,Vivado 2025.1";
begin
end;
