-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sat May 16 17:27:34 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_ana_0_0/ps_ana_0_0_stub.vhdl
-- Design      : ps_ana_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_ana_0_0 is
  Port ( 
    fifo_clk : in STD_LOGIC;
    ana_wr : in STD_LOGIC;
    env_N : in STD_LOGIC_VECTOR ( 15 downto 0 );
    env_E : in STD_LOGIC_VECTOR ( 15 downto 0 );
    env_W : in STD_LOGIC_VECTOR ( 15 downto 0 );
    phase_N : in STD_LOGIC_VECTOR ( 19 downto 0 );
    phase_E : in STD_LOGIC_VECTOR ( 19 downto 0 );
    phase_W : in STD_LOGIC_VECTOR ( 19 downto 0 );
    err_NE : in STD_LOGIC_VECTOR ( 11 downto 0 );
    err_EW : in STD_LOGIC_VECTOR ( 11 downto 0 );
    err_WN : in STD_LOGIC_VECTOR ( 11 downto 0 );
    config_clk : in STD_LOGIC;
    config_wr : in STD_LOGIC;
    config_adr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    config_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    comp_wr : out STD_LOGIC;
    sample : out STD_LOGIC_VECTOR ( 15 downto 0 );
    size : out STD_LOGIC_VECTOR ( 8 downto 0 );
    freq : out STD_LOGIC_VECTOR ( 19 downto 0 );
    angle : out STD_LOGIC_VECTOR ( 15 downto 0 );
    doa_error : out STD_LOGIC_VECTOR ( 9 downto 0 );
    sample_N : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sample_E : out STD_LOGIC_VECTOR ( 5 downto 0 );
    sample_W : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_ana_0_0 : entity is "ps_ana_0_0,ana,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_ana_0_0 : entity is "ps_ana_0_0,ana,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=ana,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_ana_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_ana_0_0 : entity is "module_ref";
end ps_ana_0_0;

architecture stub of ps_ana_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "fifo_clk,ana_wr,env_N[15:0],env_E[15:0],env_W[15:0],phase_N[19:0],phase_E[19:0],phase_W[19:0],err_NE[11:0],err_EW[11:0],err_WN[11:0],config_clk,config_wr,config_adr[7:0],config_data[31:0],clk,reset,comp_wr,sample[15:0],size[8:0],freq[19:0],angle[15:0],doa_error[9:0],sample_N[5:0],sample_E[5:0],sample_W[5:0]";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of fifo_clk : signal is "xilinx.com:signal:clock:1.0 fifo_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of fifo_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of fifo_clk : signal is "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of config_clk : signal is "xilinx.com:signal:clock:1.0 config_clk CLK";
  attribute X_INTERFACE_MODE of config_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of config_clk : signal is "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_ana1_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "ana,Vivado 2025.1";
begin
end;
