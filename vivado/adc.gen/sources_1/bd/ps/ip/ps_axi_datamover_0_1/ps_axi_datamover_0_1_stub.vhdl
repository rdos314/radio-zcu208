-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Tue Apr 21 22:55:13 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_datamover_0_1/ps_axi_datamover_0_1_stub.vhdl
-- Design      : ps_axi_datamover_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_axi_datamover_0_1 is
  Port ( 
    m_axi_mm2s_aclk : in STD_LOGIC;
    m_axi_mm2s_aresetn : in STD_LOGIC;
    mm2s_err : out STD_LOGIC;
    m_axis_mm2s_cmdsts_aclk : in STD_LOGIC;
    m_axis_mm2s_cmdsts_aresetn : in STD_LOGIC;
    s_axis_mm2s_cmd_tvalid : in STD_LOGIC;
    s_axis_mm2s_cmd_tready : out STD_LOGIC;
    s_axis_mm2s_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_mm2s_sts_tvalid : out STD_LOGIC;
    m_axis_mm2s_sts_tready : in STD_LOGIC;
    m_axis_mm2s_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_mm2s_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_mm2s_sts_tlast : out STD_LOGIC;
    m_axi_mm2s_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_mm2s_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_mm2s_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_mm2s_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_aruser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_mm2s_arvalid : out STD_LOGIC;
    m_axi_mm2s_arready : in STD_LOGIC;
    m_axi_mm2s_rdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axi_mm2s_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_mm2s_rlast : in STD_LOGIC;
    m_axi_mm2s_rvalid : in STD_LOGIC;
    m_axi_mm2s_rready : out STD_LOGIC;
    m_axis_mm2s_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_mm2s_tkeep : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_mm2s_tlast : out STD_LOGIC;
    m_axis_mm2s_tvalid : out STD_LOGIC;
    m_axis_mm2s_tready : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_axi_datamover_0_1 : entity is "ps_axi_datamover_0_1,axi_datamover,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ps_axi_datamover_0_1 : entity is "ps_axi_datamover_0_1,axi_datamover,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_datamover,x_ipVersion=5.1,x_ipCoreRevision=37,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_INCLUDE_MM2S=1,C_M_AXI_MM2S_ARID=0,C_M_AXI_MM2S_ID_WIDTH=4,C_M_AXI_MM2S_ADDR_WIDTH=32,C_M_AXI_MM2S_DATA_WIDTH=256,C_M_AXIS_MM2S_TDATA_WIDTH=256,C_INCLUDE_MM2S_STSFIFO=1,C_MM2S_STSCMD_FIFO_DEPTH=4,C_MM2S_STSCMD_IS_ASYNC=0,C_INCLUDE_MM2S_DRE=0,C_MM2S_BURST_SIZE=128,C_MM2S_BTT_USED=16,C_MM2S_ADDR_PIPE_DEPTH=3,C_INCLUDE_S2MM=0,C_M_AXI_S2MM_AWID=1,C_M_AXI_S2MM_ID_WIDTH=4,C_M_AXI_S2MM_ADDR_WIDTH=32,C_M_AXI_S2MM_DATA_WIDTH=32,C_S_AXIS_S2MM_TDATA_WIDTH=32,C_INCLUDE_S2MM_STSFIFO=0,C_S2MM_STSCMD_FIFO_DEPTH=4,C_S2MM_STSCMD_IS_ASYNC=0,C_INCLUDE_S2MM_DRE=0,C_S2MM_BURST_SIZE=16,C_S2MM_BTT_USED=16,C_S2MM_SUPPORT_INDET_BTT=0,C_S2MM_ADDR_PIPE_DEPTH=3,C_FAMILY=zynquplus,C_MM2S_INCLUDE_SF=1,C_S2MM_INCLUDE_SF=0,C_ENABLE_CACHE_USER=0,C_ENABLE_MM2S_TKEEP=1,C_ENABLE_S2MM_TKEEP=1,C_ENABLE_SKID_BUF=11111,C_ENABLE_S2MM_ADV_SIG=0,C_ENABLE_MM2S_ADV_SIG=0,C_CMD_WIDTH=72}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ps_axi_datamover_0_1 : entity is "yes";
end ps_axi_datamover_0_1;

architecture stub of ps_axi_datamover_0_1 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "m_axi_mm2s_aclk,m_axi_mm2s_aresetn,mm2s_err,m_axis_mm2s_cmdsts_aclk,m_axis_mm2s_cmdsts_aresetn,s_axis_mm2s_cmd_tvalid,s_axis_mm2s_cmd_tready,s_axis_mm2s_cmd_tdata[71:0],m_axis_mm2s_sts_tvalid,m_axis_mm2s_sts_tready,m_axis_mm2s_sts_tdata[7:0],m_axis_mm2s_sts_tkeep[0:0],m_axis_mm2s_sts_tlast,m_axi_mm2s_arid[3:0],m_axi_mm2s_araddr[31:0],m_axi_mm2s_arlen[7:0],m_axi_mm2s_arsize[2:0],m_axi_mm2s_arburst[1:0],m_axi_mm2s_arprot[2:0],m_axi_mm2s_arcache[3:0],m_axi_mm2s_aruser[3:0],m_axi_mm2s_arvalid,m_axi_mm2s_arready,m_axi_mm2s_rdata[255:0],m_axi_mm2s_rresp[1:0],m_axi_mm2s_rlast,m_axi_mm2s_rvalid,m_axi_mm2s_rready,m_axis_mm2s_tdata[255:0],m_axis_mm2s_tkeep[31:0],m_axis_mm2s_tlast,m_axis_mm2s_tvalid,m_axis_mm2s_tready";
  attribute x_interface_info : string;
  attribute x_interface_info of m_axi_mm2s_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_MM2S_ACLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of m_axi_mm2s_aclk : signal is "slave M_AXI_MM2S_ACLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axi_mm2s_aclk : signal is "XIL_INTERFACENAME M_AXI_MM2S_ACLK, ASSOCIATED_BUSIF M_AXI_MM2S:M_AXIS_MM2S:M_AXI, ASSOCIATED_RESET m_axi_mm2s_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axi_mm2s_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXI_MM2S_ARESETN RST";
  attribute x_interface_mode of m_axi_mm2s_aresetn : signal is "slave M_AXI_MM2S_ARESETN";
  attribute x_interface_parameter of m_axi_mm2s_aresetn : signal is "XIL_INTERFACENAME M_AXI_MM2S_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_mm2s_cmdsts_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_MM2S_CMDSTS_ACLK CLK";
  attribute x_interface_mode of m_axis_mm2s_cmdsts_aclk : signal is "slave M_AXIS_MM2S_CMDSTS_ACLK";
  attribute x_interface_parameter of m_axis_mm2s_cmdsts_aclk : signal is "XIL_INTERFACENAME M_AXIS_MM2S_CMDSTS_ACLK, ASSOCIATED_BUSIF S_AXIS_MM2S_CMD:M_AXIS_MM2S_STS, ASSOCIATED_RESET m_axis_mm2s_cmdsts_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_mm2s_cmdsts_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_MM2S_CMDSTS_ARESETN RST";
  attribute x_interface_mode of m_axis_mm2s_cmdsts_aresetn : signal is "slave M_AXIS_MM2S_CMDSTS_ARESETN";
  attribute x_interface_parameter of m_axis_mm2s_cmdsts_aresetn : signal is "XIL_INTERFACENAME M_AXIS_MM2S_CMDSTS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_mm2s_cmd_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MM2S_CMD TVALID";
  attribute x_interface_mode of s_axis_mm2s_cmd_tvalid : signal is "slave S_AXIS_MM2S_CMD";
  attribute x_interface_parameter of s_axis_mm2s_cmd_tvalid : signal is "XIL_INTERFACENAME S_AXIS_MM2S_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_mm2s_cmd_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MM2S_CMD TREADY";
  attribute x_interface_info of s_axis_mm2s_cmd_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_MM2S_CMD TDATA";
  attribute x_interface_info of m_axis_mm2s_sts_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TVALID";
  attribute x_interface_mode of m_axis_mm2s_sts_tvalid : signal is "master M_AXIS_MM2S_STS";
  attribute x_interface_parameter of m_axis_mm2s_sts_tvalid : signal is "XIL_INTERFACENAME M_AXIS_MM2S_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_mm2s_sts_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TREADY";
  attribute x_interface_info of m_axis_mm2s_sts_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TDATA";
  attribute x_interface_info of m_axis_mm2s_sts_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TKEEP";
  attribute x_interface_info of m_axis_mm2s_sts_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S_STS TLAST";
  attribute x_interface_info of m_axi_mm2s_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARID";
  attribute x_interface_mode of m_axi_mm2s_arid : signal is "master M_AXI_MM2S";
  attribute x_interface_parameter of m_axi_mm2s_arid : signal is "XIL_INTERFACENAME M_AXI_MM2S, NUM_READ_OUTSTANDING 2, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 4, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_ONLY, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 0, HAS_BRESP 0, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 128, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_mm2s_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARADDR";
  attribute x_interface_info of m_axi_mm2s_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARLEN";
  attribute x_interface_info of m_axi_mm2s_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARSIZE";
  attribute x_interface_info of m_axi_mm2s_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARBURST";
  attribute x_interface_info of m_axi_mm2s_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARPROT";
  attribute x_interface_info of m_axi_mm2s_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARCACHE";
  attribute x_interface_info of m_axi_mm2s_aruser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARUSER";
  attribute x_interface_info of m_axi_mm2s_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARVALID";
  attribute x_interface_info of m_axi_mm2s_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S ARREADY";
  attribute x_interface_info of m_axi_mm2s_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RDATA";
  attribute x_interface_info of m_axi_mm2s_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RRESP";
  attribute x_interface_info of m_axi_mm2s_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RLAST";
  attribute x_interface_info of m_axi_mm2s_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RVALID";
  attribute x_interface_info of m_axi_mm2s_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_MM2S RREADY";
  attribute x_interface_info of m_axis_mm2s_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TDATA";
  attribute x_interface_mode of m_axis_mm2s_tdata : signal is "master M_AXIS_MM2S";
  attribute x_interface_parameter of m_axis_mm2s_tdata : signal is "XIL_INTERFACENAME M_AXIS_MM2S, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_mm2s_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TKEEP";
  attribute x_interface_info of m_axis_mm2s_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TLAST";
  attribute x_interface_info of m_axis_mm2s_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TVALID";
  attribute x_interface_info of m_axis_mm2s_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_MM2S TREADY";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "axi_datamover,Vivado 2025.1";
begin
end;
