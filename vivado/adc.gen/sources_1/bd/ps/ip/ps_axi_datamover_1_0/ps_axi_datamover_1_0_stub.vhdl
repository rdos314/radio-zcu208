-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Sun May 10 23:36:34 2026
-- Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_datamover_1_0/ps_axi_datamover_1_0_stub.vhdl
-- Design      : ps_axi_datamover_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ps_axi_datamover_1_0 is
  Port ( 
    m_axi_s2mm_aclk : in STD_LOGIC;
    m_axi_s2mm_aresetn : in STD_LOGIC;
    s2mm_err : out STD_LOGIC;
    m_axis_s2mm_cmdsts_awclk : in STD_LOGIC;
    m_axis_s2mm_cmdsts_aresetn : in STD_LOGIC;
    s_axis_s2mm_cmd_tvalid : in STD_LOGIC;
    s_axis_s2mm_cmd_tready : out STD_LOGIC;
    s_axis_s2mm_cmd_tdata : in STD_LOGIC_VECTOR ( 71 downto 0 );
    m_axis_s2mm_sts_tvalid : out STD_LOGIC;
    m_axis_s2mm_sts_tready : in STD_LOGIC;
    m_axis_s2mm_sts_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axis_s2mm_sts_tkeep : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_s2mm_sts_tlast : out STD_LOGIC;
    m_axi_s2mm_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_s2mm_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_s2mm_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_s2mm_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awuser : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_s2mm_awvalid : out STD_LOGIC;
    m_axi_s2mm_awready : in STD_LOGIC;
    m_axi_s2mm_wdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axi_s2mm_wstrb : out STD_LOGIC_VECTOR ( 15 downto 0 );
    m_axi_s2mm_wlast : out STD_LOGIC;
    m_axi_s2mm_wvalid : out STD_LOGIC;
    m_axi_s2mm_wready : in STD_LOGIC;
    m_axi_s2mm_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_s2mm_bvalid : in STD_LOGIC;
    m_axi_s2mm_bready : out STD_LOGIC;
    s_axis_s2mm_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_axis_s2mm_tkeep : in STD_LOGIC_VECTOR ( 15 downto 0 );
    s_axis_s2mm_tlast : in STD_LOGIC;
    s_axis_s2mm_tvalid : in STD_LOGIC;
    s_axis_s2mm_tready : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_axi_datamover_1_0 : entity is "ps_axi_datamover_1_0,axi_datamover,{}";
  attribute core_generation_info : string;
  attribute core_generation_info of ps_axi_datamover_1_0 : entity is "ps_axi_datamover_1_0,axi_datamover,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=axi_datamover,x_ipVersion=5.1,x_ipCoreRevision=37,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_INCLUDE_MM2S=0,C_M_AXI_MM2S_ARID=0,C_M_AXI_MM2S_ID_WIDTH=4,C_M_AXI_MM2S_ADDR_WIDTH=32,C_M_AXI_MM2S_DATA_WIDTH=32,C_M_AXIS_MM2S_TDATA_WIDTH=32,C_INCLUDE_MM2S_STSFIFO=0,C_MM2S_STSCMD_FIFO_DEPTH=4,C_MM2S_STSCMD_IS_ASYNC=0,C_INCLUDE_MM2S_DRE=0,C_MM2S_BURST_SIZE=16,C_MM2S_BTT_USED=16,C_MM2S_ADDR_PIPE_DEPTH=3,C_INCLUDE_S2MM=1,C_M_AXI_S2MM_AWID=0,C_M_AXI_S2MM_ID_WIDTH=1,C_M_AXI_S2MM_ADDR_WIDTH=32,C_M_AXI_S2MM_DATA_WIDTH=128,C_S_AXIS_S2MM_TDATA_WIDTH=128,C_INCLUDE_S2MM_STSFIFO=1,C_S2MM_STSCMD_FIFO_DEPTH=4,C_S2MM_STSCMD_IS_ASYNC=0,C_INCLUDE_S2MM_DRE=0,C_S2MM_BURST_SIZE=64,C_S2MM_BTT_USED=16,C_S2MM_SUPPORT_INDET_BTT=0,C_S2MM_ADDR_PIPE_DEPTH=4,C_FAMILY=zynquplus,C_MM2S_INCLUDE_SF=0,C_S2MM_INCLUDE_SF=0,C_ENABLE_CACHE_USER=0,C_ENABLE_MM2S_TKEEP=1,C_ENABLE_S2MM_TKEEP=1,C_ENABLE_SKID_BUF=11111,C_ENABLE_S2MM_ADV_SIG=0,C_ENABLE_MM2S_ADV_SIG=0,C_CMD_WIDTH=72}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of ps_axi_datamover_1_0 : entity is "yes";
end ps_axi_datamover_1_0;

architecture stub of ps_axi_datamover_1_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "m_axi_s2mm_aclk,m_axi_s2mm_aresetn,s2mm_err,m_axis_s2mm_cmdsts_awclk,m_axis_s2mm_cmdsts_aresetn,s_axis_s2mm_cmd_tvalid,s_axis_s2mm_cmd_tready,s_axis_s2mm_cmd_tdata[71:0],m_axis_s2mm_sts_tvalid,m_axis_s2mm_sts_tready,m_axis_s2mm_sts_tdata[7:0],m_axis_s2mm_sts_tkeep[0:0],m_axis_s2mm_sts_tlast,m_axi_s2mm_awaddr[31:0],m_axi_s2mm_awlen[7:0],m_axi_s2mm_awsize[2:0],m_axi_s2mm_awburst[1:0],m_axi_s2mm_awprot[2:0],m_axi_s2mm_awcache[3:0],m_axi_s2mm_awuser[3:0],m_axi_s2mm_awvalid,m_axi_s2mm_awready,m_axi_s2mm_wdata[127:0],m_axi_s2mm_wstrb[15:0],m_axi_s2mm_wlast,m_axi_s2mm_wvalid,m_axi_s2mm_wready,m_axi_s2mm_bresp[1:0],m_axi_s2mm_bvalid,m_axi_s2mm_bready,s_axis_s2mm_tdata[127:0],s_axis_s2mm_tkeep[15:0],s_axis_s2mm_tlast,s_axis_s2mm_tvalid,s_axis_s2mm_tready";
  attribute x_interface_info : string;
  attribute x_interface_info of m_axi_s2mm_aclk : signal is "xilinx.com:signal:clock:1.0 M_AXI_S2MM_ACLK CLK";
  attribute x_interface_mode : string;
  attribute x_interface_mode of m_axi_s2mm_aclk : signal is "slave M_AXI_S2MM_ACLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of m_axi_s2mm_aclk : signal is "XIL_INTERFACENAME M_AXI_S2MM_ACLK, ASSOCIATED_BUSIF M_AXI_S2MM:S_AXIS_S2MM, ASSOCIATED_RESET m_axi_s2mm_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXI_S2MM_ARESETN RST";
  attribute x_interface_mode of m_axi_s2mm_aresetn : signal is "slave M_AXI_S2MM_ARESETN";
  attribute x_interface_parameter of m_axi_s2mm_aresetn : signal is "XIL_INTERFACENAME M_AXI_S2MM_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_cmdsts_awclk : signal is "xilinx.com:signal:clock:1.0 M_AXIS_S2MM_CMDSTS_AWCLK CLK";
  attribute x_interface_mode of m_axis_s2mm_cmdsts_awclk : signal is "slave M_AXIS_S2MM_CMDSTS_AWCLK";
  attribute x_interface_parameter of m_axis_s2mm_cmdsts_awclk : signal is "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_AWCLK, ASSOCIATED_BUSIF S_AXIS_S2MM_CMD:M_AXIS_S2MM_STS, ASSOCIATED_RESET m_axis_s2mm_cmdsts_aresetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_cmdsts_aresetn : signal is "xilinx.com:signal:reset:1.0 M_AXIS_S2MM_CMDSTS_ARESETN RST";
  attribute x_interface_mode of m_axis_s2mm_cmdsts_aresetn : signal is "slave M_AXIS_S2MM_CMDSTS_ARESETN";
  attribute x_interface_parameter of m_axis_s2mm_cmdsts_aresetn : signal is "XIL_INTERFACENAME M_AXIS_S2MM_CMDSTS_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_cmd_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TVALID";
  attribute x_interface_mode of s_axis_s2mm_cmd_tvalid : signal is "slave S_AXIS_S2MM_CMD";
  attribute x_interface_parameter of s_axis_s2mm_cmd_tvalid : signal is "XIL_INTERFACENAME S_AXIS_S2MM_CMD, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_cmd_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TREADY";
  attribute x_interface_info of s_axis_s2mm_cmd_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM_CMD TDATA";
  attribute x_interface_info of m_axis_s2mm_sts_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TVALID";
  attribute x_interface_mode of m_axis_s2mm_sts_tvalid : signal is "master M_AXIS_S2MM_STS";
  attribute x_interface_parameter of m_axis_s2mm_sts_tvalid : signal is "XIL_INTERFACENAME M_AXIS_S2MM_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of m_axis_s2mm_sts_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TREADY";
  attribute x_interface_info of m_axis_s2mm_sts_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TDATA";
  attribute x_interface_info of m_axis_s2mm_sts_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TKEEP";
  attribute x_interface_info of m_axis_s2mm_sts_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_S2MM_STS TLAST";
  attribute x_interface_info of m_axi_s2mm_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWADDR";
  attribute x_interface_mode of m_axi_s2mm_awaddr : signal is "master M_AXI_S2MM";
  attribute x_interface_parameter of m_axi_s2mm_awaddr : signal is "XIL_INTERFACENAME M_AXI_S2MM, NUM_WRITE_OUTSTANDING 2, DATA_WIDTH 128, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 4, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, MAX_BURST_LENGTH 64, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of m_axi_s2mm_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWLEN";
  attribute x_interface_info of m_axi_s2mm_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWSIZE";
  attribute x_interface_info of m_axi_s2mm_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWBURST";
  attribute x_interface_info of m_axi_s2mm_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWPROT";
  attribute x_interface_info of m_axi_s2mm_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWCACHE";
  attribute x_interface_info of m_axi_s2mm_awuser : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWUSER";
  attribute x_interface_info of m_axi_s2mm_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWVALID";
  attribute x_interface_info of m_axi_s2mm_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM AWREADY";
  attribute x_interface_info of m_axi_s2mm_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WDATA";
  attribute x_interface_info of m_axi_s2mm_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WSTRB";
  attribute x_interface_info of m_axi_s2mm_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WLAST";
  attribute x_interface_info of m_axi_s2mm_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WVALID";
  attribute x_interface_info of m_axi_s2mm_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM WREADY";
  attribute x_interface_info of m_axi_s2mm_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BRESP";
  attribute x_interface_info of m_axi_s2mm_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BVALID";
  attribute x_interface_info of m_axi_s2mm_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI_S2MM BREADY";
  attribute x_interface_info of s_axis_s2mm_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TDATA";
  attribute x_interface_mode of s_axis_s2mm_tdata : signal is "slave S_AXIS_S2MM";
  attribute x_interface_parameter of s_axis_s2mm_tdata : signal is "XIL_INTERFACENAME S_AXIS_S2MM, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute x_interface_info of s_axis_s2mm_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TKEEP";
  attribute x_interface_info of s_axis_s2mm_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TLAST";
  attribute x_interface_info of s_axis_s2mm_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TVALID";
  attribute x_interface_info of s_axis_s2mm_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS_S2MM TREADY";
  attribute x_core_info : string;
  attribute x_core_info of stub : architecture is "axi_datamover,Vivado 2025.1";
begin
end;
