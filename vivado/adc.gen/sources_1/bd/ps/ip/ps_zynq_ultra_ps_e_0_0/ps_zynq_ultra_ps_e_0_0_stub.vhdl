-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Sat Sep 20 14:25:00 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_zynq_ultra_ps_e_0_0/ps_zynq_ultra_ps_e_0_0_stub.vhdl
-- Design      : ps_zynq_ultra_ps_e_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_zynq_ultra_ps_e_0_0 is
  Port ( 
    maxihpm0_lpd_aclk : in STD_LOGIC;
    maxigp2_awid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awaddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_awlock : out STD_LOGIC;
    maxigp2_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_awvalid : out STD_LOGIC;
    maxigp2_awuser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_awready : in STD_LOGIC;
    maxigp2_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_wlast : out STD_LOGIC;
    maxigp2_wvalid : out STD_LOGIC;
    maxigp2_wready : in STD_LOGIC;
    maxigp2_bid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_bvalid : in STD_LOGIC;
    maxigp2_bready : out STD_LOGIC;
    maxigp2_arid : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_araddr : out STD_LOGIC_VECTOR ( 39 downto 0 );
    maxigp2_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    maxigp2_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_arlock : out STD_LOGIC;
    maxigp2_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    maxigp2_arvalid : out STD_LOGIC;
    maxigp2_aruser : out STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_arready : in STD_LOGIC;
    maxigp2_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    maxigp2_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    maxigp2_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    maxigp2_rlast : in STD_LOGIC;
    maxigp2_rvalid : in STD_LOGIC;
    maxigp2_rready : out STD_LOGIC;
    maxigp2_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    maxigp2_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    pl_ps_irq0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    pl_resetn0 : out STD_LOGIC;
    pl_clk0 : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_zynq_ultra_ps_e_0_0 : entity is "ps_zynq_ultra_ps_e_0_0,zynq_ultra_ps_e_v3_5_7_zynq_ultra_ps_e,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of ps_zynq_ultra_ps_e_0_0 : entity is "ps_zynq_ultra_ps_e_0_0,zynq_ultra_ps_e_v3_5_7_zynq_ultra_ps_e,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=zynq_ultra_ps_e,x_ipVersion=3.5,x_ipCoreRevision=7,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_DP_USE_AUDIO=0,C_DP_USE_VIDEO=0,C_MAXIGP0_DATA_WIDTH=128,C_MAXIGP1_DATA_WIDTH=128,C_MAXIGP2_DATA_WIDTH=32,C_SAXIGP0_DATA_WIDTH=128,C_SAXIGP1_DATA_WIDTH=128,C_SAXIGP2_DATA_WIDTH=128,C_SAXIGP3_DATA_WIDTH=128,C_SAXIGP4_DATA_WIDTH=128,C_SAXIGP5_DATA_WIDTH=128,C_SAXIGP6_DATA_WIDTH=128,C_USE_DIFF_RW_CLK_GP0=0,C_USE_DIFF_RW_CLK_GP1=0,C_USE_DIFF_RW_CLK_GP2=0,C_USE_DIFF_RW_CLK_GP3=0,C_USE_DIFF_RW_CLK_GP4=0,C_USE_DIFF_RW_CLK_GP5=0,C_USE_DIFF_RW_CLK_GP6=0,C_EN_FIFO_ENET0=0,C_EN_FIFO_ENET1=0,C_EN_FIFO_ENET2=0,C_EN_FIFO_ENET3=0,C_PL_CLK0_BUF=TRUE,C_PL_CLK1_BUF=FALSE,C_PL_CLK2_BUF=FALSE,C_PL_CLK3_BUF=FALSE,C_TRACE_PIPELINE_WIDTH=8,C_EN_EMIO_TRACE=0,C_TRACE_DATA_WIDTH=32,C_USE_DEBUG_TEST=0,C_SD0_INTERNAL_BUS_WIDTH=5,C_SD1_INTERNAL_BUS_WIDTH=8,C_NUM_F2P_0_INTR_INPUTS=1,C_NUM_F2P_1_INTR_INPUTS=1,C_EMIO_GPIO_WIDTH=1,C_NUM_FABRIC_RESETS=1}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_zynq_ultra_ps_e_0_0 : entity is "yes";
end ps_zynq_ultra_ps_e_0_0;

architecture stub of ps_zynq_ultra_ps_e_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "maxihpm0_lpd_aclk,maxigp2_awid[15:0],maxigp2_awaddr[39:0],maxigp2_awlen[7:0],maxigp2_awsize[2:0],maxigp2_awburst[1:0],maxigp2_awlock,maxigp2_awcache[3:0],maxigp2_awprot[2:0],maxigp2_awvalid,maxigp2_awuser[15:0],maxigp2_awready,maxigp2_wdata[31:0],maxigp2_wstrb[3:0],maxigp2_wlast,maxigp2_wvalid,maxigp2_wready,maxigp2_bid[15:0],maxigp2_bresp[1:0],maxigp2_bvalid,maxigp2_bready,maxigp2_arid[15:0],maxigp2_araddr[39:0],maxigp2_arlen[7:0],maxigp2_arsize[2:0],maxigp2_arburst[1:0],maxigp2_arlock,maxigp2_arcache[3:0],maxigp2_arprot[2:0],maxigp2_arvalid,maxigp2_aruser[15:0],maxigp2_arready,maxigp2_rid[15:0],maxigp2_rdata[31:0],maxigp2_rresp[1:0],maxigp2_rlast,maxigp2_rvalid,maxigp2_rready,maxigp2_awqos[3:0],maxigp2_arqos[3:0],pl_ps_irq0[0:0],pl_resetn0,pl_clk0";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of maxihpm0_lpd_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_HPM0_LPD_ACLK CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of maxihpm0_lpd_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of maxihpm0_lpd_aclk : signal is "XIL_INTERFACENAME M_AXI_HPM0_LPD_ACLK, ASSOCIATED_BUSIF M_AXI_HPM0_LPD, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of maxigp2_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWID";
  attribute X_INTERFACE_MODE of maxigp2_awid : signal is "master";
  attribute X_INTERFACE_PARAMETER of maxigp2_awid : signal is "XIL_INTERFACENAME M_AXI_HPM0_LPD, NUM_WRITE_OUTSTANDING 8, NUM_READ_OUTSTANDING 8, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 99999001, ID_WIDTH 16, ADDR_WIDTH 40, AWUSER_WIDTH 16, ARUSER_WIDTH 16, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of maxigp2_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWADDR";
  attribute X_INTERFACE_INFO of maxigp2_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWLEN";
  attribute X_INTERFACE_INFO of maxigp2_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWSIZE";
  attribute X_INTERFACE_INFO of maxigp2_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWBURST";
  attribute X_INTERFACE_INFO of maxigp2_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWLOCK";
  attribute X_INTERFACE_INFO of maxigp2_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWCACHE";
  attribute X_INTERFACE_INFO of maxigp2_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWPROT";
  attribute X_INTERFACE_INFO of maxigp2_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWVALID";
  attribute X_INTERFACE_INFO of maxigp2_awuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWUSER";
  attribute X_INTERFACE_INFO of maxigp2_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWREADY";
  attribute X_INTERFACE_INFO of maxigp2_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WDATA";
  attribute X_INTERFACE_INFO of maxigp2_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WSTRB";
  attribute X_INTERFACE_INFO of maxigp2_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WLAST";
  attribute X_INTERFACE_INFO of maxigp2_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WVALID";
  attribute X_INTERFACE_INFO of maxigp2_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD WREADY";
  attribute X_INTERFACE_INFO of maxigp2_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BID";
  attribute X_INTERFACE_INFO of maxigp2_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BRESP";
  attribute X_INTERFACE_INFO of maxigp2_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BVALID";
  attribute X_INTERFACE_INFO of maxigp2_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD BREADY";
  attribute X_INTERFACE_INFO of maxigp2_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARID";
  attribute X_INTERFACE_INFO of maxigp2_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARADDR";
  attribute X_INTERFACE_INFO of maxigp2_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARLEN";
  attribute X_INTERFACE_INFO of maxigp2_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARSIZE";
  attribute X_INTERFACE_INFO of maxigp2_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARBURST";
  attribute X_INTERFACE_INFO of maxigp2_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARLOCK";
  attribute X_INTERFACE_INFO of maxigp2_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARCACHE";
  attribute X_INTERFACE_INFO of maxigp2_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARPROT";
  attribute X_INTERFACE_INFO of maxigp2_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARVALID";
  attribute X_INTERFACE_INFO of maxigp2_aruser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARUSER";
  attribute X_INTERFACE_INFO of maxigp2_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARREADY";
  attribute X_INTERFACE_INFO of maxigp2_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RID";
  attribute X_INTERFACE_INFO of maxigp2_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RDATA";
  attribute X_INTERFACE_INFO of maxigp2_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RRESP";
  attribute X_INTERFACE_INFO of maxigp2_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RLAST";
  attribute X_INTERFACE_INFO of maxigp2_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RVALID";
  attribute X_INTERFACE_INFO of maxigp2_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD RREADY";
  attribute X_INTERFACE_INFO of maxigp2_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD AWQOS";
  attribute X_INTERFACE_INFO of maxigp2_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI_HPM0_LPD ARQOS";
  attribute X_INTERFACE_INFO of pl_ps_irq0 : signal is "xilinx.com:signal:interrupt:1.0 PL_PS_IRQ0 INTERRUPT";
  attribute X_INTERFACE_MODE of pl_ps_irq0 : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_ps_irq0 : signal is "XIL_INTERFACENAME PL_PS_IRQ0, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of pl_resetn0 : signal is "xilinx.com:signal:reset:1.0 PL_RESETN0 RST";
  attribute X_INTERFACE_MODE of pl_resetn0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_resetn0 : signal is "XIL_INTERFACENAME PL_RESETN0, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk0 : signal is "xilinx.com:signal:clock:1.0 PL_CLK0 CLK";
  attribute X_INTERFACE_MODE of pl_clk0 : signal is "master";
  attribute X_INTERFACE_PARAMETER of pl_clk0 : signal is "XIL_INTERFACENAME PL_CLK0, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "zynq_ultra_ps_e_v3_5_7_zynq_ultra_ps_e,Vivado 2025.1";
begin
end;
