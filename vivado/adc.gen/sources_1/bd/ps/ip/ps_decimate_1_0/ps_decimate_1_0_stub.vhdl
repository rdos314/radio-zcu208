-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Mon Nov  3 23:11:32 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_decimate_1_0/ps_decimate_1_0_stub.vhdl
-- Design      : ps_decimate_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_decimate_1_0 is
  Port ( 
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    data_N : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_N : in STD_LOGIC;
    fir_N : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_N : in STD_LOGIC;
    data_E : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_E : in STD_LOGIC;
    fir_E : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_E : in STD_LOGIC;
    data_W : in STD_LOGIC_VECTOR ( 159 downto 0 );
    ready_W : in STD_LOGIC;
    fir_W : in STD_LOGIC_VECTOR ( 31 downto 0 );
    valid_W : in STD_LOGIC;
    fifo_wr : out STD_LOGIC;
    fifo : out STD_LOGIC_VECTOR ( 447 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_decimate_1_0 : entity is "ps_decimate_1_0,decimate,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_decimate_1_0 : entity is "ps_decimate_1_0,decimate,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=decimate,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_decimate_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_decimate_1_0 : entity is "module_ref";
end ps_decimate_1_0;

architecture stub of ps_decimate_1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "clk,resetn,data_N[159:0],ready_N,fir_N[31:0],valid_N,data_E[159:0],ready_E,fir_E[31:0],valid_E,data_W[159:0],ready_W,fir_W[31:0],valid_W,fifo_wr,fifo[447:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET resetn, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "decimate,Vivado 2025.1";
begin
end;
