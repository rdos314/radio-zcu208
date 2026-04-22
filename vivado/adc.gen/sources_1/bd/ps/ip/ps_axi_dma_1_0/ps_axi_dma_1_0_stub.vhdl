-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Apr 21 22:55:13 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_dma_1_0/ps_axi_dma_1_0_stub.vhdl
-- Design      : ps_axi_dma_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_axi_dma_1_0 is
  Port ( 
    lpd_clk : in STD_LOGIC;
    lpd_resetn : in STD_LOGIC;
    spy_wr : in STD_LOGIC;
    spy_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    avail_size : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    rd_ptr : out STD_LOGIC_VECTOR ( 26 downto 0 );
    wr_ptr : in STD_LOGIC_VECTOR ( 26 downto 0 );
    M_AXI_TDATA_cmd : out STD_LOGIC_VECTOR ( 71 downto 0 );
    M_AXI_TVALID_cmd : out STD_LOGIC;
    M_AXI_TREADY_cmd : in STD_LOGIC;
    M_AXI_STS_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    M_AXI_STS_tvalid : in STD_LOGIC;
    M_AXI_STS_tready : out STD_LOGIC;
    M_AXI_TDATA_in : in STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_TVALID_in : in STD_LOGIC;
    M_AXI_TREADY_in : out STD_LOGIC;
    M_AXI_TDATA_out : out STD_LOGIC_VECTOR ( 255 downto 0 );
    M_AXI_TVALID_out : out STD_LOGIC;
    M_AXI_TLAST_out : out STD_LOGIC;
    M_AXI_TREADY_out : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_axi_dma_1_0 : entity is "ps_axi_dma_1_0,axi_dma,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_axi_dma_1_0 : entity is "ps_axi_dma_1_0,axi_dma,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=axi_dma,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_axi_dma_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_axi_dma_1_0 : entity is "module_ref";
end ps_axi_dma_1_0;

architecture stub of ps_axi_dma_1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "lpd_clk,lpd_resetn,spy_wr,spy_data[31:0],avail_size[31:0],clk,resetn,rd_ptr[26:0],wr_ptr[26:0],M_AXI_TDATA_cmd[71:0],M_AXI_TVALID_cmd,M_AXI_TREADY_cmd,M_AXI_STS_tdata[7:0],M_AXI_STS_tvalid,M_AXI_STS_tready,M_AXI_TDATA_in[255:0],M_AXI_TVALID_in,M_AXI_TREADY_in,M_AXI_TDATA_out[255:0],M_AXI_TVALID_out,M_AXI_TLAST_out,M_AXI_TREADY_out";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of lpd_clk : signal is "xilinx.com:signal:clock:1.0 lpd_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of lpd_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of lpd_clk : signal is "XIL_INTERFACENAME lpd_clk, ASSOCIATED_RESET lpd_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of lpd_resetn : signal is "xilinx.com:signal:reset:1.0 lpd_resetn RST";
  attribute X_INTERFACE_MODE of lpd_resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of lpd_resetn : signal is "XIL_INTERFACENAME lpd_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI_STS:M_AXI_cmd:M_AXI_in:M_AXI_out, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_TDATA_cmd : signal is "xilinx.com:interface:axis:1.0 M_AXI_cmd TDATA";
  attribute X_INTERFACE_MODE of M_AXI_TDATA_cmd : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXI_TDATA_cmd : signal is "XIL_INTERFACENAME M_AXI_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_TVALID_cmd : signal is "xilinx.com:interface:axis:1.0 M_AXI_cmd TVALID";
  attribute X_INTERFACE_INFO of M_AXI_TREADY_cmd : signal is "xilinx.com:interface:axis:1.0 M_AXI_cmd TREADY";
  attribute X_INTERFACE_INFO of M_AXI_STS_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXI_STS TDATA";
  attribute X_INTERFACE_MODE of M_AXI_STS_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of M_AXI_STS_tdata : signal is "XIL_INTERFACENAME M_AXI_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_STS_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXI_STS TVALID";
  attribute X_INTERFACE_INFO of M_AXI_STS_tready : signal is "xilinx.com:interface:axis:1.0 M_AXI_STS TREADY";
  attribute X_INTERFACE_INFO of M_AXI_TDATA_in : signal is "xilinx.com:interface:axis:1.0 M_AXI_in TDATA";
  attribute X_INTERFACE_MODE of M_AXI_TDATA_in : signal is "slave";
  attribute X_INTERFACE_PARAMETER of M_AXI_TDATA_in : signal is "XIL_INTERFACENAME M_AXI_in, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_TVALID_in : signal is "xilinx.com:interface:axis:1.0 M_AXI_in TVALID";
  attribute X_INTERFACE_INFO of M_AXI_TREADY_in : signal is "xilinx.com:interface:axis:1.0 M_AXI_in TREADY";
  attribute X_INTERFACE_INFO of M_AXI_TDATA_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TDATA";
  attribute X_INTERFACE_MODE of M_AXI_TDATA_out : signal is "master";
  attribute X_INTERFACE_PARAMETER of M_AXI_TDATA_out : signal is "XIL_INTERFACENAME M_AXI_out, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXI_TVALID_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TVALID";
  attribute X_INTERFACE_INFO of M_AXI_TLAST_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TLAST";
  attribute X_INTERFACE_INFO of M_AXI_TREADY_out : signal is "xilinx.com:interface:axis:1.0 M_AXI_out TREADY";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "axi_dma,Vivado 2025.1";
begin
end;
