-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:08:35 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_tdd_module_i_0/rfdc_ex_tdd_module_i_0_stub.vhdl
-- Design      : rfdc_ex_tdd_module_i_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity rfdc_ex_tdd_module_i_0 is
  Port ( 
    dac0_clk : in STD_LOGIC;
    dac1_clk : in STD_LOGIC;
    dac2_clk : in STD_LOGIC;
    dac3_clk : in STD_LOGIC;
    adc0_clk : in STD_LOGIC;
    adc1_clk : in STD_LOGIC;
    adc2_clk : in STD_LOGIC;
    adc3_clk : in STD_LOGIC;
    dac00_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac01_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac02_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac03_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac10_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac11_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac12_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac13_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac20_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac21_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac22_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac23_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac30_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac31_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac32_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    dac33_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc00_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc01_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc02_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc03_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc10_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc11_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc12_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc13_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc20_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc21_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc22_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc23_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc30_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc31_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc32_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    adc33_tdd_mode : out STD_LOGIC_VECTOR ( 0 to 0 );
    hw_trigger_en_0 : out STD_LOGIC;
    trigger_0 : out STD_LOGIC;
    hw_trigger_en_1 : out STD_LOGIC;
    trigger_1 : out STD_LOGIC;
    hw_trigger_en_2 : out STD_LOGIC;
    trigger_2 : out STD_LOGIC;
    hw_trigger_en_3 : out STD_LOGIC;
    trigger_3 : out STD_LOGIC;
    trigger_ext : out STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rfdc_ex_tdd_module_i_0 : entity is "rfdc_ex_tdd_module_i_0,exdes_tddrtsctrl,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of rfdc_ex_tdd_module_i_0 : entity is "rfdc_ex_tdd_module_i_0,exdes_tddrtsctrl,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=exdes_tddrtsctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_COUNT_WIDTH=19,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=7}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_tdd_module_i_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rfdc_ex_tdd_module_i_0 : entity is "module_ref";
end rfdc_ex_tdd_module_i_0;

architecture stub of rfdc_ex_tdd_module_i_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "dac0_clk,dac1_clk,dac2_clk,dac3_clk,adc0_clk,adc1_clk,adc2_clk,adc3_clk,dac00_tdd_mode[0:0],dac01_tdd_mode[0:0],dac02_tdd_mode[0:0],dac03_tdd_mode[0:0],dac10_tdd_mode[0:0],dac11_tdd_mode[0:0],dac12_tdd_mode[0:0],dac13_tdd_mode[0:0],dac20_tdd_mode[0:0],dac21_tdd_mode[0:0],dac22_tdd_mode[0:0],dac23_tdd_mode[0:0],dac30_tdd_mode[0:0],dac31_tdd_mode[0:0],dac32_tdd_mode[0:0],dac33_tdd_mode[0:0],adc00_tdd_mode[0:0],adc01_tdd_mode[0:0],adc02_tdd_mode[0:0],adc03_tdd_mode[0:0],adc10_tdd_mode[0:0],adc11_tdd_mode[0:0],adc12_tdd_mode[0:0],adc13_tdd_mode[0:0],adc20_tdd_mode[0:0],adc21_tdd_mode[0:0],adc22_tdd_mode[0:0],adc23_tdd_mode[0:0],adc30_tdd_mode[0:0],adc31_tdd_mode[0:0],adc32_tdd_mode[0:0],adc33_tdd_mode[0:0],hw_trigger_en_0,trigger_0,hw_trigger_en_1,trigger_1,hw_trigger_en_2,trigger_2,hw_trigger_en_3,trigger_3,trigger_ext,s_axi_awaddr[6:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_wstrb[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[6:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_aclk,s_axi_aresetn";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of dac0_clk : signal is "xilinx.com:signal:clock:1.0 dac0_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of dac0_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of dac0_clk : signal is "XIL_INTERFACENAME dac0_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac1_clk : signal is "xilinx.com:signal:clock:1.0 dac1_clk CLK";
  attribute X_INTERFACE_MODE of dac1_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of dac1_clk : signal is "XIL_INTERFACENAME dac1_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac2_clk : signal is "xilinx.com:signal:clock:1.0 dac2_clk CLK";
  attribute X_INTERFACE_MODE of dac2_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of dac2_clk : signal is "XIL_INTERFACENAME dac2_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of dac3_clk : signal is "xilinx.com:signal:clock:1.0 dac3_clk CLK";
  attribute X_INTERFACE_MODE of dac3_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of dac3_clk : signal is "XIL_INTERFACENAME dac3_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc0_clk : signal is "xilinx.com:signal:clock:1.0 adc0_clk CLK";
  attribute X_INTERFACE_MODE of adc0_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc0_clk : signal is "XIL_INTERFACENAME adc0_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc1_clk : signal is "xilinx.com:signal:clock:1.0 adc1_clk CLK";
  attribute X_INTERFACE_MODE of adc1_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc1_clk : signal is "XIL_INTERFACENAME adc1_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc2_clk : signal is "xilinx.com:signal:clock:1.0 adc2_clk CLK";
  attribute X_INTERFACE_MODE of adc2_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc2_clk : signal is "XIL_INTERFACENAME adc2_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of adc3_clk : signal is "xilinx.com:signal:clock:1.0 adc3_clk CLK";
  attribute X_INTERFACE_MODE of adc3_clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of adc3_clk : signal is "XIL_INTERFACENAME adc3_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute X_INTERFACE_MODE of s_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 57500000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s_axi AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s_axi ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute X_INTERFACE_INFO of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 57500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axi_aresetn : signal is "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "exdes_tddrtsctrl,Vivado 2025.1";
begin
end;
