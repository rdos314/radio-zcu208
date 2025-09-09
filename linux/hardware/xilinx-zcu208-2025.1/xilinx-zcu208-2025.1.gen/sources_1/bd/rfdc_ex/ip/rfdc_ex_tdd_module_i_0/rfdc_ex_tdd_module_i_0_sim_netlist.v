// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:08:35 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode funcsim
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_tdd_module_i_0/rfdc_ex_tdd_module_i_0_sim_netlist.v
// Design      : rfdc_ex_tdd_module_i_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rfdc_ex_tdd_module_i_0,exdes_tddrtsctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "exdes_tddrtsctrl,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module rfdc_ex_tdd_module_i_0
   (dac0_clk,
    dac1_clk,
    dac2_clk,
    dac3_clk,
    adc0_clk,
    adc1_clk,
    adc2_clk,
    adc3_clk,
    dac00_tdd_mode,
    dac01_tdd_mode,
    dac02_tdd_mode,
    dac03_tdd_mode,
    dac10_tdd_mode,
    dac11_tdd_mode,
    dac12_tdd_mode,
    dac13_tdd_mode,
    dac20_tdd_mode,
    dac21_tdd_mode,
    dac22_tdd_mode,
    dac23_tdd_mode,
    dac30_tdd_mode,
    dac31_tdd_mode,
    dac32_tdd_mode,
    dac33_tdd_mode,
    adc00_tdd_mode,
    adc01_tdd_mode,
    adc02_tdd_mode,
    adc03_tdd_mode,
    adc10_tdd_mode,
    adc11_tdd_mode,
    adc12_tdd_mode,
    adc13_tdd_mode,
    adc20_tdd_mode,
    adc21_tdd_mode,
    adc22_tdd_mode,
    adc23_tdd_mode,
    adc30_tdd_mode,
    adc31_tdd_mode,
    adc32_tdd_mode,
    adc33_tdd_mode,
    hw_trigger_en_0,
    trigger_0,
    hw_trigger_en_1,
    trigger_1,
    hw_trigger_en_2,
    trigger_2,
    hw_trigger_en_3,
    trigger_3,
    trigger_ext,
    s_axi_awaddr,
    s_axi_awprot,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_wstrb,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_araddr,
    s_axi_arprot,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_aclk,
    s_axi_aresetn);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac0_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac0_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, INSERT_VIP 0" *) input dac0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac1_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac1_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, INSERT_VIP 0" *) input dac1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac2_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac2_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, INSERT_VIP 0" *) input dac2_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac3_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac3_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, INSERT_VIP 0" *) input dac3_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc0_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc0_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0" *) input adc0_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc1_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc1_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0" *) input adc1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc2_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc2_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, INSERT_VIP 0" *) input adc2_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc3_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc3_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, INSERT_VIP 0" *) input adc3_clk;
  output [0:0]dac00_tdd_mode;
  output [0:0]dac01_tdd_mode;
  output [0:0]dac02_tdd_mode;
  output [0:0]dac03_tdd_mode;
  output [0:0]dac10_tdd_mode;
  output [0:0]dac11_tdd_mode;
  output [0:0]dac12_tdd_mode;
  output [0:0]dac13_tdd_mode;
  output [0:0]dac20_tdd_mode;
  output [0:0]dac21_tdd_mode;
  output [0:0]dac22_tdd_mode;
  output [0:0]dac23_tdd_mode;
  output [0:0]dac30_tdd_mode;
  output [0:0]dac31_tdd_mode;
  output [0:0]dac32_tdd_mode;
  output [0:0]dac33_tdd_mode;
  output [0:0]adc00_tdd_mode;
  output [0:0]adc01_tdd_mode;
  output [0:0]adc02_tdd_mode;
  output [0:0]adc03_tdd_mode;
  output [0:0]adc10_tdd_mode;
  output [0:0]adc11_tdd_mode;
  output [0:0]adc12_tdd_mode;
  output [0:0]adc13_tdd_mode;
  output [0:0]adc20_tdd_mode;
  output [0:0]adc21_tdd_mode;
  output [0:0]adc22_tdd_mode;
  output [0:0]adc23_tdd_mode;
  output [0:0]adc30_tdd_mode;
  output [0:0]adc31_tdd_mode;
  output [0:0]adc32_tdd_mode;
  output [0:0]adc33_tdd_mode;
  output hw_trigger_en_0;
  output trigger_0;
  output hw_trigger_en_1;
  output trigger_1;
  output hw_trigger_en_2;
  output trigger_2;
  output hw_trigger_en_3;
  output trigger_3;
  output trigger_ext;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 57500000, ID_WIDTH 0, ADDR_WIDTH 7, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [6:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [6:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 57500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, INSERT_VIP 0" *) input s_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;

  wire \<const0> ;
  wire [0:0]adc00_tdd_mode;
  wire [0:0]adc01_tdd_mode;
  wire [0:0]adc02_tdd_mode;
  wire [0:0]adc03_tdd_mode;
  wire adc0_clk;
  wire [0:0]adc10_tdd_mode;
  wire [0:0]adc11_tdd_mode;
  wire [0:0]adc12_tdd_mode;
  wire [0:0]adc13_tdd_mode;
  wire adc1_clk;
  wire [0:0]adc20_tdd_mode;
  wire [0:0]adc21_tdd_mode;
  wire [0:0]adc22_tdd_mode;
  wire [0:0]adc23_tdd_mode;
  wire adc2_clk;
  wire [0:0]adc30_tdd_mode;
  wire [0:0]adc31_tdd_mode;
  wire [0:0]adc32_tdd_mode;
  wire [0:0]adc33_tdd_mode;
  wire adc3_clk;
  wire [0:0]dac00_tdd_mode;
  wire [0:0]dac01_tdd_mode;
  wire [0:0]dac02_tdd_mode;
  wire [0:0]dac03_tdd_mode;
  wire dac0_clk;
  wire [0:0]dac10_tdd_mode;
  wire [0:0]dac11_tdd_mode;
  wire [0:0]dac12_tdd_mode;
  wire [0:0]dac13_tdd_mode;
  wire [0:0]dac20_tdd_mode;
  wire [0:0]dac21_tdd_mode;
  wire [0:0]dac22_tdd_mode;
  wire [0:0]dac23_tdd_mode;
  wire [0:0]dac30_tdd_mode;
  wire [0:0]dac31_tdd_mode;
  wire [0:0]dac32_tdd_mode;
  wire [0:0]dac33_tdd_mode;
  wire hw_trigger_en_0;
  wire hw_trigger_en_1;
  wire hw_trigger_en_2;
  wire hw_trigger_en_3;
  wire s_axi_aclk;
  wire [6:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arready;
  wire s_axi_arvalid;
  wire [6:0]s_axi_awaddr;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire trigger_0;
  wire trigger_1;
  wire trigger_2;
  wire trigger_3;
  wire trigger_ext;

  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl inst
       (.S_AXI_ARREADY(s_axi_arready),
        .S_AXI_AWREADY(s_axi_awready),
        .S_AXI_WREADY(s_axi_wready),
        .adc00_tdd_mode(adc00_tdd_mode),
        .adc01_tdd_mode(adc01_tdd_mode),
        .adc02_tdd_mode(adc02_tdd_mode),
        .adc03_tdd_mode(adc03_tdd_mode),
        .adc0_clk(adc0_clk),
        .adc10_tdd_mode(adc10_tdd_mode),
        .adc11_tdd_mode(adc11_tdd_mode),
        .adc12_tdd_mode(adc12_tdd_mode),
        .adc13_tdd_mode(adc13_tdd_mode),
        .adc1_clk(adc1_clk),
        .adc20_tdd_mode(adc20_tdd_mode),
        .adc21_tdd_mode(adc21_tdd_mode),
        .adc22_tdd_mode(adc22_tdd_mode),
        .adc23_tdd_mode(adc23_tdd_mode),
        .adc2_clk(adc2_clk),
        .adc30_tdd_mode(adc30_tdd_mode),
        .adc31_tdd_mode(adc31_tdd_mode),
        .adc32_tdd_mode(adc32_tdd_mode),
        .adc33_tdd_mode(adc33_tdd_mode),
        .adc3_clk(adc3_clk),
        .dac00_tdd_mode(dac00_tdd_mode),
        .dac01_tdd_mode(dac01_tdd_mode),
        .dac02_tdd_mode(dac02_tdd_mode),
        .dac03_tdd_mode(dac03_tdd_mode),
        .dac0_clk(dac0_clk),
        .dac10_tdd_mode(dac10_tdd_mode),
        .dac11_tdd_mode(dac11_tdd_mode),
        .dac12_tdd_mode(dac12_tdd_mode),
        .dac13_tdd_mode(dac13_tdd_mode),
        .dac20_tdd_mode(dac20_tdd_mode),
        .dac21_tdd_mode(dac21_tdd_mode),
        .dac22_tdd_mode(dac22_tdd_mode),
        .dac23_tdd_mode(dac23_tdd_mode),
        .dac30_tdd_mode(dac30_tdd_mode),
        .dac31_tdd_mode(dac31_tdd_mode),
        .dac32_tdd_mode(dac32_tdd_mode),
        .dac33_tdd_mode(dac33_tdd_mode),
        .hw_trigger_en_0(hw_trigger_en_0),
        .hw_trigger_en_1(hw_trigger_en_1),
        .hw_trigger_en_2(hw_trigger_en_2),
        .hw_trigger_en_3(hw_trigger_en_3),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr[6:2]),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[6:2]),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .trigger_0(trigger_0),
        .trigger_1(trigger_1),
        .trigger_2(trigger_2),
        .trigger_3(trigger_3),
        .trigger_ext(trigger_ext));
endmodule

(* ORIG_REF_NAME = "exdes_tddrtsctrl" *) 
module rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s_axi_rdata,
    s_axi_rvalid,
    s_axi_bvalid,
    trigger_0,
    trigger_1,
    trigger_2,
    trigger_3,
    trigger_ext,
    dac00_tdd_mode,
    dac01_tdd_mode,
    dac02_tdd_mode,
    dac03_tdd_mode,
    dac10_tdd_mode,
    dac11_tdd_mode,
    dac12_tdd_mode,
    dac13_tdd_mode,
    dac20_tdd_mode,
    dac21_tdd_mode,
    dac22_tdd_mode,
    dac23_tdd_mode,
    dac30_tdd_mode,
    dac31_tdd_mode,
    dac32_tdd_mode,
    dac33_tdd_mode,
    adc00_tdd_mode,
    adc01_tdd_mode,
    adc02_tdd_mode,
    adc03_tdd_mode,
    adc10_tdd_mode,
    adc11_tdd_mode,
    adc12_tdd_mode,
    adc13_tdd_mode,
    adc20_tdd_mode,
    adc21_tdd_mode,
    adc22_tdd_mode,
    adc23_tdd_mode,
    adc30_tdd_mode,
    adc31_tdd_mode,
    adc32_tdd_mode,
    adc33_tdd_mode,
    hw_trigger_en_0,
    hw_trigger_en_1,
    hw_trigger_en_2,
    hw_trigger_en_3,
    s_axi_aclk,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wstrb,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid,
    s_axi_aresetn,
    s_axi_bready,
    s_axi_rready,
    adc0_clk,
    adc1_clk,
    adc2_clk,
    adc3_clk,
    dac0_clk);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s_axi_rdata;
  output s_axi_rvalid;
  output s_axi_bvalid;
  output trigger_0;
  output trigger_1;
  output trigger_2;
  output trigger_3;
  output trigger_ext;
  output [0:0]dac00_tdd_mode;
  output [0:0]dac01_tdd_mode;
  output [0:0]dac02_tdd_mode;
  output [0:0]dac03_tdd_mode;
  output [0:0]dac10_tdd_mode;
  output [0:0]dac11_tdd_mode;
  output [0:0]dac12_tdd_mode;
  output [0:0]dac13_tdd_mode;
  output [0:0]dac20_tdd_mode;
  output [0:0]dac21_tdd_mode;
  output [0:0]dac22_tdd_mode;
  output [0:0]dac23_tdd_mode;
  output [0:0]dac30_tdd_mode;
  output [0:0]dac31_tdd_mode;
  output [0:0]dac32_tdd_mode;
  output [0:0]dac33_tdd_mode;
  output [0:0]adc00_tdd_mode;
  output [0:0]adc01_tdd_mode;
  output [0:0]adc02_tdd_mode;
  output [0:0]adc03_tdd_mode;
  output [0:0]adc10_tdd_mode;
  output [0:0]adc11_tdd_mode;
  output [0:0]adc12_tdd_mode;
  output [0:0]adc13_tdd_mode;
  output [0:0]adc20_tdd_mode;
  output [0:0]adc21_tdd_mode;
  output [0:0]adc22_tdd_mode;
  output [0:0]adc23_tdd_mode;
  output [0:0]adc30_tdd_mode;
  output [0:0]adc31_tdd_mode;
  output [0:0]adc32_tdd_mode;
  output [0:0]adc33_tdd_mode;
  output hw_trigger_en_0;
  output hw_trigger_en_1;
  output hw_trigger_en_2;
  output hw_trigger_en_3;
  input s_axi_aclk;
  input [4:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [4:0]s_axi_araddr;
  input [3:0]s_axi_wstrb;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;
  input s_axi_aresetn;
  input s_axi_bready;
  input s_axi_rready;
  input adc0_clk;
  input adc1_clk;
  input adc2_clk;
  input adc3_clk;
  input dac0_clk;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [0:0]adc00_tdd_mode;
  wire adc00_tdd_mode0;
  wire [0:0]adc01_tdd_mode;
  wire [0:0]adc02_tdd_mode;
  wire [0:0]adc03_tdd_mode;
  wire adc0_clk;
  wire [3:0]adc0_tdd_mode_sig;
  wire [0:0]adc10_tdd_mode;
  wire [0:0]adc11_tdd_mode;
  wire [0:0]adc12_tdd_mode;
  wire [0:0]adc13_tdd_mode;
  wire adc1_clk;
  wire [3:0]adc1_tdd_mode_sig;
  wire [0:0]adc20_tdd_mode;
  wire [0:0]adc21_tdd_mode;
  wire [0:0]adc22_tdd_mode;
  wire [0:0]adc23_tdd_mode;
  wire adc2_clk;
  wire [3:0]adc2_tdd_mode_sig;
  wire [0:0]adc30_tdd_mode;
  wire [0:0]adc31_tdd_mode;
  wire [0:0]adc32_tdd_mode;
  wire [0:0]adc33_tdd_mode;
  wire adc3_clk;
  wire [3:0]adc3_tdd_mode_sig;
  wire auto_trig;
  wire auto_trig1;
  wire \auto_trig1_inferred__0/i__carry_n_3 ;
  wire \auto_trig1_inferred__0/i__carry_n_4 ;
  wire \auto_trig1_inferred__0/i__carry_n_5 ;
  wire \auto_trig1_inferred__0/i__carry_n_6 ;
  wire \auto_trig1_inferred__0/i__carry_n_7 ;
  wire aw_en_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire [0:0]dac00_tdd_mode;
  wire dac00_tdd_mode0;
  wire [0:0]dac01_tdd_mode;
  wire [0:0]dac02_tdd_mode;
  wire [0:0]dac03_tdd_mode;
  wire dac0_clk;
  wire [3:0]dac0_tdd_mode_sig;
  wire [0:0]dac10_tdd_mode;
  wire [0:0]dac11_tdd_mode;
  wire [0:0]dac12_tdd_mode;
  wire [0:0]dac13_tdd_mode;
  wire [3:0]dac1_tdd_mode_sig;
  wire [0:0]dac20_tdd_mode;
  wire [0:0]dac21_tdd_mode;
  wire [0:0]dac22_tdd_mode;
  wire [0:0]dac23_tdd_mode;
  wire [3:0]dac2_tdd_mode_sig;
  wire [0:0]dac30_tdd_mode;
  wire [0:0]dac31_tdd_mode;
  wire [0:0]dac32_tdd_mode;
  wire [0:0]dac33_tdd_mode;
  wire [3:0]dac3_tdd_mode_sig;
  wire [3:0]enable;
  (* async_reg = "true" *) wire enablehwtrig_tile0_meta;
  (* async_reg = "true" *) wire enablehwtrig_tile0_sync;
  (* async_reg = "true" *) wire enablehwtrig_tile1_meta;
  (* async_reg = "true" *) wire enablehwtrig_tile1_sync;
  (* async_reg = "true" *) wire enablehwtrig_tile2_meta;
  (* async_reg = "true" *) wire enablehwtrig_tile2_sync;
  (* async_reg = "true" *) wire enablehwtrig_tile3_meta;
  (* async_reg = "true" *) wire enablehwtrig_tile3_sync;
  wire exdes_tddrtsctrl_S_AXI_inst_n_11;
  wire exdes_tddrtsctrl_S_AXI_inst_n_12;
  wire exdes_tddrtsctrl_S_AXI_inst_n_13;
  wire exdes_tddrtsctrl_S_AXI_inst_n_14;
  wire exdes_tddrtsctrl_S_AXI_inst_n_15;
  wire exdes_tddrtsctrl_S_AXI_inst_n_16;
  wire exdes_tddrtsctrl_S_AXI_inst_n_17;
  wire exdes_tddrtsctrl_S_AXI_inst_n_18;
  wire exdes_tddrtsctrl_S_AXI_inst_n_19;
  wire exdes_tddrtsctrl_S_AXI_inst_n_20;
  wire exdes_tddrtsctrl_S_AXI_inst_n_21;
  wire exdes_tddrtsctrl_S_AXI_inst_n_22;
  wire exdes_tddrtsctrl_S_AXI_inst_n_23;
  wire exdes_tddrtsctrl_S_AXI_inst_n_24;
  wire exdes_tddrtsctrl_S_AXI_inst_n_25;
  wire exdes_tddrtsctrl_S_AXI_inst_n_26;
  wire exdes_tddrtsctrl_S_AXI_inst_n_27;
  wire exdes_tddrtsctrl_S_AXI_inst_n_28;
  wire exdes_tddrtsctrl_S_AXI_inst_n_29;
  wire exdes_tddrtsctrl_S_AXI_inst_n_30;
  wire exdes_tddrtsctrl_S_AXI_inst_n_31;
  wire exdes_tddrtsctrl_S_AXI_inst_n_32;
  wire exdes_tddrtsctrl_S_AXI_inst_n_33;
  wire exdes_tddrtsctrl_S_AXI_inst_n_34;
  wire exdes_tddrtsctrl_S_AXI_inst_n_35;
  wire exdes_tddrtsctrl_S_AXI_inst_n_36;
  wire exdes_tddrtsctrl_S_AXI_inst_n_37;
  wire exdes_tddrtsctrl_S_AXI_inst_n_38;
  wire exdes_tddrtsctrl_S_AXI_inst_n_39;
  wire exdes_tddrtsctrl_S_AXI_inst_n_4;
  wire exdes_tddrtsctrl_S_AXI_inst_n_40;
  wire exdes_tddrtsctrl_S_AXI_inst_n_41;
  wire exdes_tddrtsctrl_S_AXI_inst_n_6;
  wire exdes_tddrtsctrl_S_AXI_inst_n_7;
  wire guard_active;
  wire guard_active0_carry__0_n_7;
  wire guard_active0_carry_n_0;
  wire guard_active0_carry_n_1;
  wire guard_active0_carry_n_2;
  wire guard_active0_carry_n_3;
  wire guard_active0_carry_n_4;
  wire guard_active0_carry_n_5;
  wire guard_active0_carry_n_6;
  wire guard_active0_carry_n_7;
  wire hw_trigger_en_0;
  wire hw_trigger_en_1;
  wire hw_trigger_en_2;
  wire hw_trigger_en_3;
  wire [3:0]ofdm_count;
  wire \ofdm_count[0]_i_1_n_0 ;
  wire \ofdm_count[1]_i_1_n_0 ;
  wire \ofdm_count[2]_i_1_n_0 ;
  wire \ofdm_count[3]_i_1_n_0 ;
  wire p_0_in;
  wire rst_cnt;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_aresetn;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire symbol_count0;
  wire symbol_count0_carry_n_3;
  wire symbol_count0_carry_n_4;
  wire symbol_count0_carry_n_5;
  wire symbol_count0_carry_n_6;
  wire symbol_count0_carry_n_7;
  wire \symbol_count[0]_i_3_n_0 ;
  wire [16:0]symbol_count_reg;
  wire \symbol_count_reg[0]_i_2_n_0 ;
  wire \symbol_count_reg[0]_i_2_n_1 ;
  wire \symbol_count_reg[0]_i_2_n_10 ;
  wire \symbol_count_reg[0]_i_2_n_11 ;
  wire \symbol_count_reg[0]_i_2_n_12 ;
  wire \symbol_count_reg[0]_i_2_n_13 ;
  wire \symbol_count_reg[0]_i_2_n_14 ;
  wire \symbol_count_reg[0]_i_2_n_15 ;
  wire \symbol_count_reg[0]_i_2_n_2 ;
  wire \symbol_count_reg[0]_i_2_n_3 ;
  wire \symbol_count_reg[0]_i_2_n_4 ;
  wire \symbol_count_reg[0]_i_2_n_5 ;
  wire \symbol_count_reg[0]_i_2_n_6 ;
  wire \symbol_count_reg[0]_i_2_n_7 ;
  wire \symbol_count_reg[0]_i_2_n_8 ;
  wire \symbol_count_reg[0]_i_2_n_9 ;
  wire \symbol_count_reg[16]_i_1_n_15 ;
  wire \symbol_count_reg[8]_i_1_n_0 ;
  wire \symbol_count_reg[8]_i_1_n_1 ;
  wire \symbol_count_reg[8]_i_1_n_10 ;
  wire \symbol_count_reg[8]_i_1_n_11 ;
  wire \symbol_count_reg[8]_i_1_n_12 ;
  wire \symbol_count_reg[8]_i_1_n_13 ;
  wire \symbol_count_reg[8]_i_1_n_14 ;
  wire \symbol_count_reg[8]_i_1_n_15 ;
  wire \symbol_count_reg[8]_i_1_n_2 ;
  wire \symbol_count_reg[8]_i_1_n_3 ;
  wire \symbol_count_reg[8]_i_1_n_4 ;
  wire \symbol_count_reg[8]_i_1_n_5 ;
  wire \symbol_count_reg[8]_i_1_n_6 ;
  wire \symbol_count_reg[8]_i_1_n_7 ;
  wire \symbol_count_reg[8]_i_1_n_8 ;
  wire \symbol_count_reg[8]_i_1_n_9 ;
  wire symbol_inc;
  wire [19:0]tile0_trig_delay;
  wire [19:0]tile1_trig_delay;
  wire [19:0]tile2_trig_delay;
  wire [19:0]tile3_trig_delay;
  wire trigger_0;
  wire trigger_1;
  wire trigger_2;
  wire trigger_3;
  wire trigger_ext;
  wire [7:6]\NLW_auto_trig1_inferred__0/i__carry_CO_UNCONNECTED ;
  wire [7:0]\NLW_auto_trig1_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:0]NLW_guard_active0_carry_O_UNCONNECTED;
  wire [7:1]NLW_guard_active0_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_guard_active0_carry__0_O_UNCONNECTED;
  wire [7:6]NLW_symbol_count0_carry_CO_UNCONNECTED;
  wire [7:0]NLW_symbol_count0_carry_O_UNCONNECTED;
  wire [7:0]\NLW_symbol_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_symbol_count_reg[16]_i_1_O_UNCONNECTED ;

  FDRE \adc00_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc0_tdd_mode_sig[0]),
        .Q(adc00_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc01_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc0_tdd_mode_sig[1]),
        .Q(adc01_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc02_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc0_tdd_mode_sig[2]),
        .Q(adc02_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc03_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc0_tdd_mode_sig[3]),
        .Q(adc03_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc10_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc1_tdd_mode_sig[0]),
        .Q(adc10_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc11_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc1_tdd_mode_sig[1]),
        .Q(adc11_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc12_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc1_tdd_mode_sig[2]),
        .Q(adc12_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc13_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc1_tdd_mode_sig[3]),
        .Q(adc13_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc20_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc2_tdd_mode_sig[0]),
        .Q(adc20_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc21_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc2_tdd_mode_sig[1]),
        .Q(adc21_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc22_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc2_tdd_mode_sig[2]),
        .Q(adc22_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc23_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc2_tdd_mode_sig[3]),
        .Q(adc23_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc30_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc3_tdd_mode_sig[0]),
        .Q(adc30_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc31_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc3_tdd_mode_sig[1]),
        .Q(adc31_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc32_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc3_tdd_mode_sig[2]),
        .Q(adc32_tdd_mode),
        .R(adc00_tdd_mode0));
  FDRE \adc33_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(adc3_tdd_mode_sig[3]),
        .Q(adc33_tdd_mode),
        .R(adc00_tdd_mode0));
  CARRY8 \auto_trig1_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_auto_trig1_inferred__0/i__carry_CO_UNCONNECTED [7:6],auto_trig1,\auto_trig1_inferred__0/i__carry_n_3 ,\auto_trig1_inferred__0/i__carry_n_4 ,\auto_trig1_inferred__0/i__carry_n_5 ,\auto_trig1_inferred__0/i__carry_n_6 ,\auto_trig1_inferred__0/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_auto_trig1_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,exdes_tddrtsctrl_S_AXI_inst_n_33,exdes_tddrtsctrl_S_AXI_inst_n_34,exdes_tddrtsctrl_S_AXI_inst_n_35,exdes_tddrtsctrl_S_AXI_inst_n_36,exdes_tddrtsctrl_S_AXI_inst_n_37,exdes_tddrtsctrl_S_AXI_inst_n_38}));
  FDRE auto_trig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(exdes_tddrtsctrl_S_AXI_inst_n_40),
        .Q(auto_trig),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF8F8F8F808F8F8F8)) 
    aw_en_i_1
       (.I0(s_axi_bvalid),
        .I1(s_axi_bready),
        .I2(exdes_tddrtsctrl_S_AXI_inst_n_4),
        .I3(s_axi_wvalid),
        .I4(s_axi_awvalid),
        .I5(S_AXI_AWREADY),
        .O(aw_en_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s_axi_aresetn),
        .O(p_0_in));
  LUT6 #(
    .INIT(64'h55555555C0000000)) 
    axi_bvalid_i_1
       (.I0(s_axi_bready),
        .I1(S_AXI_WREADY),
        .I2(s_axi_awvalid),
        .I3(s_axi_wvalid),
        .I4(S_AXI_AWREADY),
        .I5(s_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .I2(s_axi_rvalid),
        .I3(s_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE \dac00_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac0_tdd_mode_sig[0]),
        .Q(dac00_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac01_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac0_tdd_mode_sig[1]),
        .Q(dac01_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac02_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac0_tdd_mode_sig[2]),
        .Q(dac02_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac03_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac0_tdd_mode_sig[3]),
        .Q(dac03_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac10_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac1_tdd_mode_sig[0]),
        .Q(dac10_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac11_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac1_tdd_mode_sig[1]),
        .Q(dac11_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac12_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac1_tdd_mode_sig[2]),
        .Q(dac12_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac13_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac1_tdd_mode_sig[3]),
        .Q(dac13_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac20_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac2_tdd_mode_sig[0]),
        .Q(dac20_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac21_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac2_tdd_mode_sig[1]),
        .Q(dac21_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac22_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac2_tdd_mode_sig[2]),
        .Q(dac22_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac23_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac2_tdd_mode_sig[3]),
        .Q(dac23_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac30_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac3_tdd_mode_sig[0]),
        .Q(dac30_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac31_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac3_tdd_mode_sig[1]),
        .Q(dac31_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac32_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac3_tdd_mode_sig[2]),
        .Q(dac32_tdd_mode),
        .R(dac00_tdd_mode0));
  FDRE \dac33_tdd_mode_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(dac3_tdd_mode_sig[3]),
        .Q(dac33_tdd_mode),
        .R(dac00_tdd_mode0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile0_meta_reg
       (.C(adc0_clk),
        .CE(1'b1),
        .D(enable[0]),
        .Q(enablehwtrig_tile0_meta),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile0_sync_reg
       (.C(adc0_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile0_meta),
        .Q(enablehwtrig_tile0_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile1_meta_reg
       (.C(adc1_clk),
        .CE(1'b1),
        .D(enable[1]),
        .Q(enablehwtrig_tile1_meta),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile1_sync_reg
       (.C(adc1_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile1_meta),
        .Q(enablehwtrig_tile1_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile2_meta_reg
       (.C(adc2_clk),
        .CE(1'b1),
        .D(enable[2]),
        .Q(enablehwtrig_tile2_meta),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile2_sync_reg
       (.C(adc2_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile2_meta),
        .Q(enablehwtrig_tile2_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile3_meta_reg
       (.C(adc3_clk),
        .CE(1'b1),
        .D(enable[3]),
        .Q(enablehwtrig_tile3_meta),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enablehwtrig_tile3_sync_reg
       (.C(adc3_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile3_meta),
        .Q(enablehwtrig_tile3_sync),
        .R(1'b0));
  rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_S_AXI exdes_tddrtsctrl_S_AXI_inst
       (.CO(symbol_count0),
        .DI(exdes_tddrtsctrl_S_AXI_inst_n_6),
        .Q(rst_cnt),
        .S({exdes_tddrtsctrl_S_AXI_inst_n_11,exdes_tddrtsctrl_S_AXI_inst_n_12,exdes_tddrtsctrl_S_AXI_inst_n_13,exdes_tddrtsctrl_S_AXI_inst_n_14,exdes_tddrtsctrl_S_AXI_inst_n_15,exdes_tddrtsctrl_S_AXI_inst_n_16}),
        .SR(p_0_in),
        .adc00_tdd_mode0(adc00_tdd_mode0),
        .auto_trig(auto_trig),
        .auto_trig_reg(ofdm_count),
        .auto_trig_reg_0(auto_trig1),
        .aw_en_reg_0(exdes_tddrtsctrl_S_AXI_inst_n_4),
        .aw_en_reg_1(aw_en_i_1_n_0),
        .axi_arready_reg_0(S_AXI_ARREADY),
        .axi_awready_reg_0(S_AXI_AWREADY),
        .axi_bvalid_reg_0(axi_bvalid_i_1_n_0),
        .axi_rvalid_reg_0(axi_rvalid_i_1_n_0),
        .axi_wready_reg_0(S_AXI_WREADY),
        .dac00_tdd_mode0(dac00_tdd_mode0),
        .guard_active(guard_active),
        .out(symbol_count_reg),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .\slv_reg0_reg[15]_0 ({dac3_tdd_mode_sig,dac2_tdd_mode_sig,dac1_tdd_mode_sig,dac0_tdd_mode_sig}),
        .\slv_reg12_reg[19]_0 (tile0_trig_delay),
        .\slv_reg13_reg[19]_0 (tile1_trig_delay),
        .\slv_reg14_reg[19]_0 (tile2_trig_delay),
        .\slv_reg15_reg[19]_0 (tile3_trig_delay),
        .\slv_reg18_reg[14]_0 ({exdes_tddrtsctrl_S_AXI_inst_n_17,exdes_tddrtsctrl_S_AXI_inst_n_18,exdes_tddrtsctrl_S_AXI_inst_n_19,exdes_tddrtsctrl_S_AXI_inst_n_20,exdes_tddrtsctrl_S_AXI_inst_n_21,exdes_tddrtsctrl_S_AXI_inst_n_22,exdes_tddrtsctrl_S_AXI_inst_n_23,exdes_tddrtsctrl_S_AXI_inst_n_24}),
        .\slv_reg18_reg[14]_1 ({exdes_tddrtsctrl_S_AXI_inst_n_25,exdes_tddrtsctrl_S_AXI_inst_n_26,exdes_tddrtsctrl_S_AXI_inst_n_27,exdes_tddrtsctrl_S_AXI_inst_n_28,exdes_tddrtsctrl_S_AXI_inst_n_29,exdes_tddrtsctrl_S_AXI_inst_n_30,exdes_tddrtsctrl_S_AXI_inst_n_31,exdes_tddrtsctrl_S_AXI_inst_n_32}),
        .\slv_reg1_reg[15]_0 ({adc3_tdd_mode_sig,adc2_tdd_mode_sig,adc1_tdd_mode_sig,adc0_tdd_mode_sig}),
        .\slv_reg2_reg[0]_0 (exdes_tddrtsctrl_S_AXI_inst_n_7),
        .\slv_reg2_reg[0]_1 (exdes_tddrtsctrl_S_AXI_inst_n_41),
        .\slv_reg3_reg[3]_0 (enable),
        .\slv_reg6_reg[0]_0 (exdes_tddrtsctrl_S_AXI_inst_n_40),
        .\symbol_count_reg[15] ({exdes_tddrtsctrl_S_AXI_inst_n_33,exdes_tddrtsctrl_S_AXI_inst_n_34,exdes_tddrtsctrl_S_AXI_inst_n_35,exdes_tddrtsctrl_S_AXI_inst_n_36,exdes_tddrtsctrl_S_AXI_inst_n_37,exdes_tddrtsctrl_S_AXI_inst_n_38}),
        .\symbol_count_reg[16] (exdes_tddrtsctrl_S_AXI_inst_n_39));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 guard_active0_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({guard_active0_carry_n_0,guard_active0_carry_n_1,guard_active0_carry_n_2,guard_active0_carry_n_3,guard_active0_carry_n_4,guard_active0_carry_n_5,guard_active0_carry_n_6,guard_active0_carry_n_7}),
        .DI({exdes_tddrtsctrl_S_AXI_inst_n_25,exdes_tddrtsctrl_S_AXI_inst_n_26,exdes_tddrtsctrl_S_AXI_inst_n_27,exdes_tddrtsctrl_S_AXI_inst_n_28,exdes_tddrtsctrl_S_AXI_inst_n_29,exdes_tddrtsctrl_S_AXI_inst_n_30,exdes_tddrtsctrl_S_AXI_inst_n_31,exdes_tddrtsctrl_S_AXI_inst_n_32}),
        .O(NLW_guard_active0_carry_O_UNCONNECTED[7:0]),
        .S({exdes_tddrtsctrl_S_AXI_inst_n_17,exdes_tddrtsctrl_S_AXI_inst_n_18,exdes_tddrtsctrl_S_AXI_inst_n_19,exdes_tddrtsctrl_S_AXI_inst_n_20,exdes_tddrtsctrl_S_AXI_inst_n_21,exdes_tddrtsctrl_S_AXI_inst_n_22,exdes_tddrtsctrl_S_AXI_inst_n_23,exdes_tddrtsctrl_S_AXI_inst_n_24}));
  (* COMPARATOR_THRESHOLD = "14" *) 
  CARRY8 guard_active0_carry__0
       (.CI(guard_active0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_guard_active0_carry__0_CO_UNCONNECTED[7:1],guard_active0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,exdes_tddrtsctrl_S_AXI_inst_n_6}),
        .O(NLW_guard_active0_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,exdes_tddrtsctrl_S_AXI_inst_n_39}));
  FDRE guard_active_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(guard_active0_carry__0_n_7),
        .Q(guard_active),
        .R(1'b0));
  FDRE hw_trigger_en_0_reg
       (.C(adc0_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile0_sync),
        .Q(hw_trigger_en_0),
        .R(1'b0));
  FDRE hw_trigger_en_1_reg
       (.C(adc1_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile1_sync),
        .Q(hw_trigger_en_1),
        .R(1'b0));
  FDRE hw_trigger_en_2_reg
       (.C(adc2_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile2_sync),
        .Q(hw_trigger_en_2),
        .R(1'b0));
  FDRE hw_trigger_en_3_reg
       (.C(adc3_clk),
        .CE(1'b1),
        .D(enablehwtrig_tile3_sync),
        .Q(hw_trigger_en_3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \ofdm_count[0]_i_1 
       (.I0(ofdm_count[0]),
        .O(\ofdm_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2C3C)) 
    \ofdm_count[1]_i_1 
       (.I0(ofdm_count[2]),
        .I1(ofdm_count[1]),
        .I2(ofdm_count[0]),
        .I3(ofdm_count[3]),
        .O(\ofdm_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \ofdm_count[2]_i_1 
       (.I0(ofdm_count[2]),
        .I1(ofdm_count[1]),
        .I2(ofdm_count[0]),
        .O(\ofdm_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h6F80)) 
    \ofdm_count[3]_i_1 
       (.I0(ofdm_count[2]),
        .I1(ofdm_count[1]),
        .I2(ofdm_count[0]),
        .I3(ofdm_count[3]),
        .O(\ofdm_count[3]_i_1_n_0 ));
  FDRE \ofdm_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(symbol_inc),
        .D(\ofdm_count[0]_i_1_n_0 ),
        .Q(ofdm_count[0]),
        .R(rst_cnt));
  FDRE \ofdm_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(symbol_inc),
        .D(\ofdm_count[1]_i_1_n_0 ),
        .Q(ofdm_count[1]),
        .R(rst_cnt));
  FDRE \ofdm_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(symbol_inc),
        .D(\ofdm_count[2]_i_1_n_0 ),
        .Q(ofdm_count[2]),
        .R(rst_cnt));
  FDRE \ofdm_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(symbol_inc),
        .D(\ofdm_count[3]_i_1_n_0 ),
        .Q(ofdm_count[3]),
        .R(rst_cnt));
  CARRY8 symbol_count0_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_symbol_count0_carry_CO_UNCONNECTED[7:6],symbol_count0,symbol_count0_carry_n_3,symbol_count0_carry_n_4,symbol_count0_carry_n_5,symbol_count0_carry_n_6,symbol_count0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_symbol_count0_carry_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,exdes_tddrtsctrl_S_AXI_inst_n_11,exdes_tddrtsctrl_S_AXI_inst_n_12,exdes_tddrtsctrl_S_AXI_inst_n_13,exdes_tddrtsctrl_S_AXI_inst_n_14,exdes_tddrtsctrl_S_AXI_inst_n_15,exdes_tddrtsctrl_S_AXI_inst_n_16}));
  LUT1 #(
    .INIT(2'h1)) 
    \symbol_count[0]_i_3 
       (.I0(symbol_count_reg[0]),
        .O(\symbol_count[0]_i_3_n_0 ));
  FDRE \symbol_count_reg[0] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_15 ),
        .Q(symbol_count_reg[0]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \symbol_count_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\symbol_count_reg[0]_i_2_n_0 ,\symbol_count_reg[0]_i_2_n_1 ,\symbol_count_reg[0]_i_2_n_2 ,\symbol_count_reg[0]_i_2_n_3 ,\symbol_count_reg[0]_i_2_n_4 ,\symbol_count_reg[0]_i_2_n_5 ,\symbol_count_reg[0]_i_2_n_6 ,\symbol_count_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\symbol_count_reg[0]_i_2_n_8 ,\symbol_count_reg[0]_i_2_n_9 ,\symbol_count_reg[0]_i_2_n_10 ,\symbol_count_reg[0]_i_2_n_11 ,\symbol_count_reg[0]_i_2_n_12 ,\symbol_count_reg[0]_i_2_n_13 ,\symbol_count_reg[0]_i_2_n_14 ,\symbol_count_reg[0]_i_2_n_15 }),
        .S({symbol_count_reg[7:1],\symbol_count[0]_i_3_n_0 }));
  FDRE \symbol_count_reg[10] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_13 ),
        .Q(symbol_count_reg[10]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[11] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_12 ),
        .Q(symbol_count_reg[11]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[12] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_11 ),
        .Q(symbol_count_reg[12]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[13] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_10 ),
        .Q(symbol_count_reg[13]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[14] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_9 ),
        .Q(symbol_count_reg[14]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[15] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_8 ),
        .Q(symbol_count_reg[15]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[16] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[16]_i_1_n_15 ),
        .Q(symbol_count_reg[16]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \symbol_count_reg[16]_i_1 
       (.CI(\symbol_count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_symbol_count_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_symbol_count_reg[16]_i_1_O_UNCONNECTED [7:1],\symbol_count_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,symbol_count_reg[16]}));
  FDRE \symbol_count_reg[1] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_14 ),
        .Q(symbol_count_reg[1]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[2] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_13 ),
        .Q(symbol_count_reg[2]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[3] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_12 ),
        .Q(symbol_count_reg[3]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[4] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_11 ),
        .Q(symbol_count_reg[4]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[5] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_10 ),
        .Q(symbol_count_reg[5]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[6] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_9 ),
        .Q(symbol_count_reg[6]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[7] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[0]_i_2_n_8 ),
        .Q(symbol_count_reg[7]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE \symbol_count_reg[8] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_15 ),
        .Q(symbol_count_reg[8]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \symbol_count_reg[8]_i_1 
       (.CI(\symbol_count_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\symbol_count_reg[8]_i_1_n_0 ,\symbol_count_reg[8]_i_1_n_1 ,\symbol_count_reg[8]_i_1_n_2 ,\symbol_count_reg[8]_i_1_n_3 ,\symbol_count_reg[8]_i_1_n_4 ,\symbol_count_reg[8]_i_1_n_5 ,\symbol_count_reg[8]_i_1_n_6 ,\symbol_count_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\symbol_count_reg[8]_i_1_n_8 ,\symbol_count_reg[8]_i_1_n_9 ,\symbol_count_reg[8]_i_1_n_10 ,\symbol_count_reg[8]_i_1_n_11 ,\symbol_count_reg[8]_i_1_n_12 ,\symbol_count_reg[8]_i_1_n_13 ,\symbol_count_reg[8]_i_1_n_14 ,\symbol_count_reg[8]_i_1_n_15 }),
        .S(symbol_count_reg[15:8]));
  FDRE \symbol_count_reg[9] 
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(\symbol_count_reg[8]_i_1_n_14 ),
        .Q(symbol_count_reg[9]),
        .R(exdes_tddrtsctrl_S_AXI_inst_n_7));
  FDRE symbol_inc_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(exdes_tddrtsctrl_S_AXI_inst_n_41),
        .Q(symbol_inc),
        .R(1'b0));
  rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count trigger0_count
       (.adc0_clk(adc0_clk),
        .auto_trig(auto_trig),
        .enable_sig_reg_0(tile0_trig_delay),
        .s_axi_aclk(s_axi_aclk),
        .trigger_0(trigger_0));
  rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_0 trigger1_count
       (.adc1_clk(adc1_clk),
        .auto_trig(auto_trig),
        .enable_sig_reg_0(tile1_trig_delay),
        .s_axi_aclk(s_axi_aclk),
        .trigger_1(trigger_1));
  rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_1 trigger2_count
       (.adc2_clk(adc2_clk),
        .auto_trig(auto_trig),
        .enable_sig_reg_0(tile2_trig_delay),
        .s_axi_aclk(s_axi_aclk),
        .trigger_2(trigger_2));
  rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_2 trigger3_count
       (.adc3_clk(adc3_clk),
        .auto_trig(auto_trig),
        .enable_sig_reg_0(tile3_trig_delay),
        .s_axi_aclk(s_axi_aclk),
        .trigger_3(trigger_3));
  rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_3 trigger_ext_count
       (.auto_trig(auto_trig),
        .dac0_clk(dac0_clk),
        .enable_sig_reg_0(tile0_trig_delay),
        .s_axi_aclk(s_axi_aclk),
        .trigger_ext(trigger_ext));
endmodule

(* ORIG_REF_NAME = "exdes_tddrtsctrl_S_AXI" *) 
module rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_S_AXI
   (axi_awready_reg_0,
    axi_wready_reg_0,
    axi_arready_reg_0,
    s_axi_bvalid,
    aw_en_reg_0,
    s_axi_rvalid,
    DI,
    \slv_reg2_reg[0]_0 ,
    Q,
    dac00_tdd_mode0,
    adc00_tdd_mode0,
    S,
    \slv_reg18_reg[14]_0 ,
    \slv_reg18_reg[14]_1 ,
    \symbol_count_reg[15] ,
    \symbol_count_reg[16] ,
    \slv_reg6_reg[0]_0 ,
    \slv_reg2_reg[0]_1 ,
    \slv_reg0_reg[15]_0 ,
    \slv_reg1_reg[15]_0 ,
    \slv_reg12_reg[19]_0 ,
    \slv_reg13_reg[19]_0 ,
    \slv_reg14_reg[19]_0 ,
    \slv_reg15_reg[19]_0 ,
    \slv_reg3_reg[3]_0 ,
    s_axi_rdata,
    SR,
    s_axi_aclk,
    axi_bvalid_reg_0,
    aw_en_reg_1,
    axi_rvalid_reg_0,
    out,
    CO,
    guard_active,
    auto_trig_reg,
    auto_trig_reg_0,
    auto_trig,
    s_axi_awaddr,
    s_axi_wdata,
    s_axi_araddr,
    s_axi_wstrb,
    s_axi_awvalid,
    s_axi_wvalid,
    s_axi_arvalid);
  output axi_awready_reg_0;
  output axi_wready_reg_0;
  output axi_arready_reg_0;
  output s_axi_bvalid;
  output aw_en_reg_0;
  output s_axi_rvalid;
  output [0:0]DI;
  output \slv_reg2_reg[0]_0 ;
  output [0:0]Q;
  output dac00_tdd_mode0;
  output adc00_tdd_mode0;
  output [5:0]S;
  output [7:0]\slv_reg18_reg[14]_0 ;
  output [7:0]\slv_reg18_reg[14]_1 ;
  output [5:0]\symbol_count_reg[15] ;
  output [0:0]\symbol_count_reg[16] ;
  output \slv_reg6_reg[0]_0 ;
  output \slv_reg2_reg[0]_1 ;
  output [15:0]\slv_reg0_reg[15]_0 ;
  output [15:0]\slv_reg1_reg[15]_0 ;
  output [19:0]\slv_reg12_reg[19]_0 ;
  output [19:0]\slv_reg13_reg[19]_0 ;
  output [19:0]\slv_reg14_reg[19]_0 ;
  output [19:0]\slv_reg15_reg[19]_0 ;
  output [3:0]\slv_reg3_reg[3]_0 ;
  output [31:0]s_axi_rdata;
  input [0:0]SR;
  input s_axi_aclk;
  input axi_bvalid_reg_0;
  input aw_en_reg_1;
  input axi_rvalid_reg_0;
  input [16:0]out;
  input [0:0]CO;
  input guard_active;
  input [3:0]auto_trig_reg;
  input [0:0]auto_trig_reg_0;
  input auto_trig;
  input [4:0]s_axi_awaddr;
  input [31:0]s_axi_wdata;
  input [4:0]s_axi_araddr;
  input [3:0]s_axi_wstrb;
  input s_axi_awvalid;
  input s_axi_wvalid;
  input s_axi_arvalid;

  wire [0:0]CO;
  wire [0:0]DI;
  wire [0:0]Q;
  wire [5:0]S;
  wire [0:0]SR;
  wire adc00_tdd_mode0;
  wire auto_trig;
  wire auto_trig_i_2_n_0;
  wire [3:0]auto_trig_reg;
  wire [0:0]auto_trig_reg_0;
  wire aw_en_reg_0;
  wire aw_en_reg_1;
  wire \axi_araddr_reg[2]_rep_n_0 ;
  wire \axi_araddr_reg[3]_rep_n_0 ;
  wire axi_arready0;
  wire axi_arready_reg_0;
  wire axi_awready0;
  wire axi_awready_reg_0;
  wire axi_bvalid_reg_0;
  wire \axi_rdata[0]_i_2_n_0 ;
  wire \axi_rdata[0]_i_5_n_0 ;
  wire \axi_rdata[0]_i_6_n_0 ;
  wire \axi_rdata[0]_i_7_n_0 ;
  wire \axi_rdata[0]_i_8_n_0 ;
  wire \axi_rdata[0]_i_9_n_0 ;
  wire \axi_rdata[10]_i_2_n_0 ;
  wire \axi_rdata[10]_i_5_n_0 ;
  wire \axi_rdata[10]_i_6_n_0 ;
  wire \axi_rdata[10]_i_7_n_0 ;
  wire \axi_rdata[10]_i_8_n_0 ;
  wire \axi_rdata[10]_i_9_n_0 ;
  wire \axi_rdata[11]_i_2_n_0 ;
  wire \axi_rdata[11]_i_5_n_0 ;
  wire \axi_rdata[11]_i_6_n_0 ;
  wire \axi_rdata[11]_i_7_n_0 ;
  wire \axi_rdata[11]_i_8_n_0 ;
  wire \axi_rdata[11]_i_9_n_0 ;
  wire \axi_rdata[12]_i_2_n_0 ;
  wire \axi_rdata[12]_i_5_n_0 ;
  wire \axi_rdata[12]_i_6_n_0 ;
  wire \axi_rdata[12]_i_7_n_0 ;
  wire \axi_rdata[12]_i_8_n_0 ;
  wire \axi_rdata[12]_i_9_n_0 ;
  wire \axi_rdata[13]_i_2_n_0 ;
  wire \axi_rdata[13]_i_5_n_0 ;
  wire \axi_rdata[13]_i_6_n_0 ;
  wire \axi_rdata[13]_i_7_n_0 ;
  wire \axi_rdata[13]_i_8_n_0 ;
  wire \axi_rdata[13]_i_9_n_0 ;
  wire \axi_rdata[14]_i_2_n_0 ;
  wire \axi_rdata[14]_i_5_n_0 ;
  wire \axi_rdata[14]_i_6_n_0 ;
  wire \axi_rdata[14]_i_7_n_0 ;
  wire \axi_rdata[14]_i_8_n_0 ;
  wire \axi_rdata[14]_i_9_n_0 ;
  wire \axi_rdata[15]_i_2_n_0 ;
  wire \axi_rdata[15]_i_5_n_0 ;
  wire \axi_rdata[15]_i_6_n_0 ;
  wire \axi_rdata[15]_i_7_n_0 ;
  wire \axi_rdata[15]_i_8_n_0 ;
  wire \axi_rdata[15]_i_9_n_0 ;
  wire \axi_rdata[16]_i_2_n_0 ;
  wire \axi_rdata[16]_i_5_n_0 ;
  wire \axi_rdata[16]_i_6_n_0 ;
  wire \axi_rdata[16]_i_7_n_0 ;
  wire \axi_rdata[16]_i_8_n_0 ;
  wire \axi_rdata[16]_i_9_n_0 ;
  wire \axi_rdata[17]_i_2_n_0 ;
  wire \axi_rdata[17]_i_5_n_0 ;
  wire \axi_rdata[17]_i_6_n_0 ;
  wire \axi_rdata[17]_i_7_n_0 ;
  wire \axi_rdata[17]_i_8_n_0 ;
  wire \axi_rdata[17]_i_9_n_0 ;
  wire \axi_rdata[18]_i_2_n_0 ;
  wire \axi_rdata[18]_i_5_n_0 ;
  wire \axi_rdata[18]_i_6_n_0 ;
  wire \axi_rdata[18]_i_7_n_0 ;
  wire \axi_rdata[18]_i_8_n_0 ;
  wire \axi_rdata[18]_i_9_n_0 ;
  wire \axi_rdata[19]_i_2_n_0 ;
  wire \axi_rdata[19]_i_5_n_0 ;
  wire \axi_rdata[19]_i_6_n_0 ;
  wire \axi_rdata[19]_i_7_n_0 ;
  wire \axi_rdata[19]_i_8_n_0 ;
  wire \axi_rdata[19]_i_9_n_0 ;
  wire \axi_rdata[1]_i_2_n_0 ;
  wire \axi_rdata[1]_i_5_n_0 ;
  wire \axi_rdata[1]_i_6_n_0 ;
  wire \axi_rdata[1]_i_7_n_0 ;
  wire \axi_rdata[1]_i_8_n_0 ;
  wire \axi_rdata[1]_i_9_n_0 ;
  wire \axi_rdata[20]_i_2_n_0 ;
  wire \axi_rdata[20]_i_5_n_0 ;
  wire \axi_rdata[20]_i_6_n_0 ;
  wire \axi_rdata[20]_i_7_n_0 ;
  wire \axi_rdata[20]_i_8_n_0 ;
  wire \axi_rdata[20]_i_9_n_0 ;
  wire \axi_rdata[21]_i_2_n_0 ;
  wire \axi_rdata[21]_i_5_n_0 ;
  wire \axi_rdata[21]_i_6_n_0 ;
  wire \axi_rdata[21]_i_7_n_0 ;
  wire \axi_rdata[21]_i_8_n_0 ;
  wire \axi_rdata[21]_i_9_n_0 ;
  wire \axi_rdata[22]_i_2_n_0 ;
  wire \axi_rdata[22]_i_5_n_0 ;
  wire \axi_rdata[22]_i_6_n_0 ;
  wire \axi_rdata[22]_i_7_n_0 ;
  wire \axi_rdata[22]_i_8_n_0 ;
  wire \axi_rdata[22]_i_9_n_0 ;
  wire \axi_rdata[23]_i_2_n_0 ;
  wire \axi_rdata[23]_i_5_n_0 ;
  wire \axi_rdata[23]_i_6_n_0 ;
  wire \axi_rdata[23]_i_7_n_0 ;
  wire \axi_rdata[23]_i_8_n_0 ;
  wire \axi_rdata[23]_i_9_n_0 ;
  wire \axi_rdata[24]_i_2_n_0 ;
  wire \axi_rdata[24]_i_5_n_0 ;
  wire \axi_rdata[24]_i_6_n_0 ;
  wire \axi_rdata[24]_i_7_n_0 ;
  wire \axi_rdata[24]_i_8_n_0 ;
  wire \axi_rdata[24]_i_9_n_0 ;
  wire \axi_rdata[25]_i_2_n_0 ;
  wire \axi_rdata[25]_i_5_n_0 ;
  wire \axi_rdata[25]_i_6_n_0 ;
  wire \axi_rdata[25]_i_7_n_0 ;
  wire \axi_rdata[25]_i_8_n_0 ;
  wire \axi_rdata[25]_i_9_n_0 ;
  wire \axi_rdata[26]_i_2_n_0 ;
  wire \axi_rdata[26]_i_5_n_0 ;
  wire \axi_rdata[26]_i_6_n_0 ;
  wire \axi_rdata[26]_i_7_n_0 ;
  wire \axi_rdata[26]_i_8_n_0 ;
  wire \axi_rdata[26]_i_9_n_0 ;
  wire \axi_rdata[27]_i_2_n_0 ;
  wire \axi_rdata[27]_i_5_n_0 ;
  wire \axi_rdata[27]_i_6_n_0 ;
  wire \axi_rdata[27]_i_7_n_0 ;
  wire \axi_rdata[27]_i_8_n_0 ;
  wire \axi_rdata[27]_i_9_n_0 ;
  wire \axi_rdata[28]_i_2_n_0 ;
  wire \axi_rdata[28]_i_5_n_0 ;
  wire \axi_rdata[28]_i_6_n_0 ;
  wire \axi_rdata[28]_i_7_n_0 ;
  wire \axi_rdata[28]_i_8_n_0 ;
  wire \axi_rdata[28]_i_9_n_0 ;
  wire \axi_rdata[29]_i_2_n_0 ;
  wire \axi_rdata[29]_i_5_n_0 ;
  wire \axi_rdata[29]_i_6_n_0 ;
  wire \axi_rdata[29]_i_7_n_0 ;
  wire \axi_rdata[29]_i_8_n_0 ;
  wire \axi_rdata[29]_i_9_n_0 ;
  wire \axi_rdata[2]_i_2_n_0 ;
  wire \axi_rdata[2]_i_5_n_0 ;
  wire \axi_rdata[2]_i_6_n_0 ;
  wire \axi_rdata[2]_i_7_n_0 ;
  wire \axi_rdata[2]_i_8_n_0 ;
  wire \axi_rdata[2]_i_9_n_0 ;
  wire \axi_rdata[30]_i_2_n_0 ;
  wire \axi_rdata[30]_i_5_n_0 ;
  wire \axi_rdata[30]_i_6_n_0 ;
  wire \axi_rdata[30]_i_7_n_0 ;
  wire \axi_rdata[30]_i_8_n_0 ;
  wire \axi_rdata[30]_i_9_n_0 ;
  wire \axi_rdata[31]_i_10_n_0 ;
  wire \axi_rdata[31]_i_3_n_0 ;
  wire \axi_rdata[31]_i_6_n_0 ;
  wire \axi_rdata[31]_i_7_n_0 ;
  wire \axi_rdata[31]_i_8_n_0 ;
  wire \axi_rdata[31]_i_9_n_0 ;
  wire \axi_rdata[3]_i_2_n_0 ;
  wire \axi_rdata[3]_i_5_n_0 ;
  wire \axi_rdata[3]_i_6_n_0 ;
  wire \axi_rdata[3]_i_7_n_0 ;
  wire \axi_rdata[3]_i_8_n_0 ;
  wire \axi_rdata[3]_i_9_n_0 ;
  wire \axi_rdata[4]_i_2_n_0 ;
  wire \axi_rdata[4]_i_5_n_0 ;
  wire \axi_rdata[4]_i_6_n_0 ;
  wire \axi_rdata[4]_i_7_n_0 ;
  wire \axi_rdata[4]_i_8_n_0 ;
  wire \axi_rdata[4]_i_9_n_0 ;
  wire \axi_rdata[5]_i_2_n_0 ;
  wire \axi_rdata[5]_i_5_n_0 ;
  wire \axi_rdata[5]_i_6_n_0 ;
  wire \axi_rdata[5]_i_7_n_0 ;
  wire \axi_rdata[5]_i_8_n_0 ;
  wire \axi_rdata[5]_i_9_n_0 ;
  wire \axi_rdata[6]_i_2_n_0 ;
  wire \axi_rdata[6]_i_5_n_0 ;
  wire \axi_rdata[6]_i_6_n_0 ;
  wire \axi_rdata[6]_i_7_n_0 ;
  wire \axi_rdata[6]_i_8_n_0 ;
  wire \axi_rdata[6]_i_9_n_0 ;
  wire \axi_rdata[7]_i_2_n_0 ;
  wire \axi_rdata[7]_i_5_n_0 ;
  wire \axi_rdata[7]_i_6_n_0 ;
  wire \axi_rdata[7]_i_7_n_0 ;
  wire \axi_rdata[7]_i_8_n_0 ;
  wire \axi_rdata[7]_i_9_n_0 ;
  wire \axi_rdata[8]_i_2_n_0 ;
  wire \axi_rdata[8]_i_5_n_0 ;
  wire \axi_rdata[8]_i_6_n_0 ;
  wire \axi_rdata[8]_i_7_n_0 ;
  wire \axi_rdata[8]_i_8_n_0 ;
  wire \axi_rdata[8]_i_9_n_0 ;
  wire \axi_rdata[9]_i_2_n_0 ;
  wire \axi_rdata[9]_i_5_n_0 ;
  wire \axi_rdata[9]_i_6_n_0 ;
  wire \axi_rdata[9]_i_7_n_0 ;
  wire \axi_rdata[9]_i_8_n_0 ;
  wire \axi_rdata[9]_i_9_n_0 ;
  wire \axi_rdata_reg[0]_i_3_n_0 ;
  wire \axi_rdata_reg[0]_i_4_n_0 ;
  wire \axi_rdata_reg[10]_i_3_n_0 ;
  wire \axi_rdata_reg[10]_i_4_n_0 ;
  wire \axi_rdata_reg[11]_i_3_n_0 ;
  wire \axi_rdata_reg[11]_i_4_n_0 ;
  wire \axi_rdata_reg[12]_i_3_n_0 ;
  wire \axi_rdata_reg[12]_i_4_n_0 ;
  wire \axi_rdata_reg[13]_i_3_n_0 ;
  wire \axi_rdata_reg[13]_i_4_n_0 ;
  wire \axi_rdata_reg[14]_i_3_n_0 ;
  wire \axi_rdata_reg[14]_i_4_n_0 ;
  wire \axi_rdata_reg[15]_i_3_n_0 ;
  wire \axi_rdata_reg[15]_i_4_n_0 ;
  wire \axi_rdata_reg[16]_i_3_n_0 ;
  wire \axi_rdata_reg[16]_i_4_n_0 ;
  wire \axi_rdata_reg[17]_i_3_n_0 ;
  wire \axi_rdata_reg[17]_i_4_n_0 ;
  wire \axi_rdata_reg[18]_i_3_n_0 ;
  wire \axi_rdata_reg[18]_i_4_n_0 ;
  wire \axi_rdata_reg[19]_i_3_n_0 ;
  wire \axi_rdata_reg[19]_i_4_n_0 ;
  wire \axi_rdata_reg[1]_i_3_n_0 ;
  wire \axi_rdata_reg[1]_i_4_n_0 ;
  wire \axi_rdata_reg[20]_i_3_n_0 ;
  wire \axi_rdata_reg[20]_i_4_n_0 ;
  wire \axi_rdata_reg[21]_i_3_n_0 ;
  wire \axi_rdata_reg[21]_i_4_n_0 ;
  wire \axi_rdata_reg[22]_i_3_n_0 ;
  wire \axi_rdata_reg[22]_i_4_n_0 ;
  wire \axi_rdata_reg[23]_i_3_n_0 ;
  wire \axi_rdata_reg[23]_i_4_n_0 ;
  wire \axi_rdata_reg[24]_i_3_n_0 ;
  wire \axi_rdata_reg[24]_i_4_n_0 ;
  wire \axi_rdata_reg[25]_i_3_n_0 ;
  wire \axi_rdata_reg[25]_i_4_n_0 ;
  wire \axi_rdata_reg[26]_i_3_n_0 ;
  wire \axi_rdata_reg[26]_i_4_n_0 ;
  wire \axi_rdata_reg[27]_i_3_n_0 ;
  wire \axi_rdata_reg[27]_i_4_n_0 ;
  wire \axi_rdata_reg[28]_i_3_n_0 ;
  wire \axi_rdata_reg[28]_i_4_n_0 ;
  wire \axi_rdata_reg[29]_i_3_n_0 ;
  wire \axi_rdata_reg[29]_i_4_n_0 ;
  wire \axi_rdata_reg[2]_i_3_n_0 ;
  wire \axi_rdata_reg[2]_i_4_n_0 ;
  wire \axi_rdata_reg[30]_i_3_n_0 ;
  wire \axi_rdata_reg[30]_i_4_n_0 ;
  wire \axi_rdata_reg[31]_i_4_n_0 ;
  wire \axi_rdata_reg[31]_i_5_n_0 ;
  wire \axi_rdata_reg[3]_i_3_n_0 ;
  wire \axi_rdata_reg[3]_i_4_n_0 ;
  wire \axi_rdata_reg[4]_i_3_n_0 ;
  wire \axi_rdata_reg[4]_i_4_n_0 ;
  wire \axi_rdata_reg[5]_i_3_n_0 ;
  wire \axi_rdata_reg[5]_i_4_n_0 ;
  wire \axi_rdata_reg[6]_i_3_n_0 ;
  wire \axi_rdata_reg[6]_i_4_n_0 ;
  wire \axi_rdata_reg[7]_i_3_n_0 ;
  wire \axi_rdata_reg[7]_i_4_n_0 ;
  wire \axi_rdata_reg[8]_i_3_n_0 ;
  wire \axi_rdata_reg[8]_i_4_n_0 ;
  wire \axi_rdata_reg[9]_i_3_n_0 ;
  wire \axi_rdata_reg[9]_i_4_n_0 ;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire axi_wready_reg_0;
  wire dac00_tdd_mode0;
  wire \dac00_tdd_mode[0]_i_3_n_0 ;
  wire \dac00_tdd_mode[0]_i_4_n_0 ;
  wire \dac00_tdd_mode_reg[0]_i_2_n_0 ;
  wire guard_active;
  wire [16:0]guard_length;
  wire [4:0]loc_w_addr;
  wire [16:0]out;
  wire [31:0]p_1_in;
  wire [31:0]reg_data_out;
  wire s_axi_aclk;
  wire [4:0]s_axi_araddr;
  wire s_axi_arvalid;
  wire [4:0]s_axi_awaddr;
  wire s_axi_awvalid;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [4:0]sel0;
  wire [31:16]slv_reg0;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire [15:0]\slv_reg0_reg[15]_0 ;
  wire [31:16]slv_reg1;
  wire [31:0]slv_reg10;
  wire \slv_reg10[15]_i_1_n_0 ;
  wire \slv_reg10[23]_i_1_n_0 ;
  wire \slv_reg10[31]_i_1_n_0 ;
  wire \slv_reg10[7]_i_1_n_0 ;
  wire [31:0]slv_reg11;
  wire \slv_reg11[15]_i_1_n_0 ;
  wire \slv_reg11[23]_i_1_n_0 ;
  wire \slv_reg11[31]_i_1_n_0 ;
  wire \slv_reg11[7]_i_1_n_0 ;
  wire [31:20]slv_reg12;
  wire \slv_reg12[15]_i_1_n_0 ;
  wire \slv_reg12[23]_i_1_n_0 ;
  wire \slv_reg12[31]_i_1_n_0 ;
  wire \slv_reg12[7]_i_1_n_0 ;
  wire [19:0]\slv_reg12_reg[19]_0 ;
  wire [31:20]slv_reg13;
  wire \slv_reg13[15]_i_1_n_0 ;
  wire \slv_reg13[23]_i_1_n_0 ;
  wire \slv_reg13[31]_i_1_n_0 ;
  wire \slv_reg13[7]_i_1_n_0 ;
  wire [19:0]\slv_reg13_reg[19]_0 ;
  wire [31:20]slv_reg14;
  wire \slv_reg14[15]_i_1_n_0 ;
  wire \slv_reg14[23]_i_1_n_0 ;
  wire \slv_reg14[31]_i_1_n_0 ;
  wire \slv_reg14[7]_i_1_n_0 ;
  wire [19:0]\slv_reg14_reg[19]_0 ;
  wire [31:20]slv_reg15;
  wire \slv_reg15[15]_i_1_n_0 ;
  wire \slv_reg15[23]_i_1_n_0 ;
  wire \slv_reg15[31]_i_1_n_0 ;
  wire \slv_reg15[7]_i_1_n_0 ;
  wire [19:0]\slv_reg15_reg[19]_0 ;
  wire [31:0]slv_reg16;
  wire \slv_reg16[15]_i_1_n_0 ;
  wire \slv_reg16[23]_i_1_n_0 ;
  wire \slv_reg16[31]_i_1_n_0 ;
  wire \slv_reg16[7]_i_1_n_0 ;
  wire [31:17]slv_reg17;
  wire \slv_reg17[15]_i_1_n_0 ;
  wire \slv_reg17[23]_i_1_n_0 ;
  wire \slv_reg17[31]_i_1_n_0 ;
  wire \slv_reg17[31]_i_2_n_0 ;
  wire \slv_reg17[7]_i_1_n_0 ;
  wire \slv_reg17_reg_n_0_[0] ;
  wire \slv_reg17_reg_n_0_[10] ;
  wire \slv_reg17_reg_n_0_[11] ;
  wire \slv_reg17_reg_n_0_[12] ;
  wire \slv_reg17_reg_n_0_[13] ;
  wire \slv_reg17_reg_n_0_[14] ;
  wire \slv_reg17_reg_n_0_[15] ;
  wire \slv_reg17_reg_n_0_[16] ;
  wire \slv_reg17_reg_n_0_[1] ;
  wire \slv_reg17_reg_n_0_[2] ;
  wire \slv_reg17_reg_n_0_[3] ;
  wire \slv_reg17_reg_n_0_[4] ;
  wire \slv_reg17_reg_n_0_[5] ;
  wire \slv_reg17_reg_n_0_[6] ;
  wire \slv_reg17_reg_n_0_[7] ;
  wire \slv_reg17_reg_n_0_[8] ;
  wire \slv_reg17_reg_n_0_[9] ;
  wire [31:17]slv_reg18;
  wire \slv_reg18[15]_i_1_n_0 ;
  wire \slv_reg18[23]_i_1_n_0 ;
  wire \slv_reg18[31]_i_1_n_0 ;
  wire \slv_reg18[7]_i_1_n_0 ;
  wire [7:0]\slv_reg18_reg[14]_0 ;
  wire [7:0]\slv_reg18_reg[14]_1 ;
  wire [31:17]slv_reg19;
  wire \slv_reg19[15]_i_1_n_0 ;
  wire \slv_reg19[23]_i_1_n_0 ;
  wire \slv_reg19[31]_i_1_n_0 ;
  wire \slv_reg19[7]_i_1_n_0 ;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [15:0]\slv_reg1_reg[15]_0 ;
  wire [31:1]slv_reg2;
  wire [31:10]slv_reg20;
  wire \slv_reg20[15]_i_1_n_0 ;
  wire \slv_reg20[23]_i_1_n_0 ;
  wire \slv_reg20[31]_i_1_n_0 ;
  wire \slv_reg20[7]_i_1_n_0 ;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire \slv_reg2_reg[0]_0 ;
  wire \slv_reg2_reg[0]_1 ;
  wire [31:4]slv_reg3;
  wire \slv_reg3[15]_i_1_n_0 ;
  wire \slv_reg3[23]_i_1_n_0 ;
  wire \slv_reg3[31]_i_1_n_0 ;
  wire \slv_reg3[7]_i_1_n_0 ;
  wire [3:0]\slv_reg3_reg[3]_0 ;
  wire [31:17]slv_reg4;
  wire \slv_reg4[15]_i_1_n_0 ;
  wire \slv_reg4[23]_i_1_n_0 ;
  wire \slv_reg4[31]_i_1_n_0 ;
  wire \slv_reg4[7]_i_1_n_0 ;
  wire [31:4]slv_reg5;
  wire \slv_reg5[15]_i_1_n_0 ;
  wire \slv_reg5[23]_i_1_n_0 ;
  wire \slv_reg5[31]_i_1_n_0 ;
  wire \slv_reg5[7]_i_1_n_0 ;
  wire [31:1]slv_reg6;
  wire \slv_reg6[15]_i_1_n_0 ;
  wire \slv_reg6[23]_i_1_n_0 ;
  wire \slv_reg6[31]_i_1_n_0 ;
  wire \slv_reg6[7]_i_1_n_0 ;
  wire \slv_reg6_reg[0]_0 ;
  wire [31:0]slv_reg7;
  wire \slv_reg7[15]_i_1_n_0 ;
  wire \slv_reg7[23]_i_1_n_0 ;
  wire \slv_reg7[31]_i_1_n_0 ;
  wire \slv_reg7[7]_i_1_n_0 ;
  wire [31:0]slv_reg8;
  wire \slv_reg8[15]_i_1_n_0 ;
  wire \slv_reg8[23]_i_1_n_0 ;
  wire \slv_reg8[31]_i_1_n_0 ;
  wire \slv_reg8[7]_i_1_n_0 ;
  wire [31:0]slv_reg9;
  wire \slv_reg9[15]_i_1_n_0 ;
  wire \slv_reg9[23]_i_1_n_0 ;
  wire \slv_reg9[31]_i_1_n_0 ;
  wire \slv_reg9[7]_i_1_n_0 ;
  wire slv_reg_rden;
  wire [5:0]\symbol_count_reg[15] ;
  wire [0:0]\symbol_count_reg[16] ;
  wire [16:0]symbol_length;
  wire [9:0]symbol_type;
  wire trig;
  wire [3:0]trig_ofdm;
  wire [16:0]trig_symbol;

  LUT6 #(
    .INIT(64'hFFFFFFFFEEE222E2)) 
    \adc00_tdd_mode[0]_i_1 
       (.I0(\dac00_tdd_mode_reg[0]_i_2_n_0 ),
        .I1(auto_trig_reg[3]),
        .I2(symbol_type[8]),
        .I3(auto_trig_reg[0]),
        .I4(symbol_type[9]),
        .I5(guard_active),
        .O(adc00_tdd_mode0));
  LUT6 #(
    .INIT(64'hBFFFFFBF80000080)) 
    auto_trig_i_1
       (.I0(trig),
        .I1(auto_trig_reg_0),
        .I2(auto_trig_i_2_n_0),
        .I3(trig_ofdm[3]),
        .I4(auto_trig_reg[3]),
        .I5(auto_trig),
        .O(\slv_reg6_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    auto_trig_i_2
       (.I0(auto_trig_reg[0]),
        .I1(trig_ofdm[0]),
        .I2(trig_ofdm[2]),
        .I3(auto_trig_reg[2]),
        .I4(trig_ofdm[1]),
        .I5(auto_trig_reg[1]),
        .O(auto_trig_i_2_n_0));
  FDSE aw_en_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(aw_en_reg_1),
        .Q(aw_en_reg_0),
        .S(SR));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDSE \axi_araddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[0]),
        .Q(sel0[0]),
        .S(SR));
  (* ORIG_CELL_NAME = "axi_araddr_reg[2]" *) 
  FDSE \axi_araddr_reg[2]_rep 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[0]),
        .Q(\axi_araddr_reg[2]_rep_n_0 ),
        .S(SR));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDSE \axi_araddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(sel0[1]),
        .S(SR));
  (* ORIG_CELL_NAME = "axi_araddr_reg[3]" *) 
  FDSE \axi_araddr_reg[3]_rep 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[1]),
        .Q(\axi_araddr_reg[3]_rep_n_0 ),
        .S(SR));
  FDSE \axi_araddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[2]),
        .Q(sel0[2]),
        .S(SR));
  FDSE \axi_araddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[3]),
        .Q(sel0[3]),
        .S(SR));
  FDSE \axi_araddr_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_arready0),
        .D(s_axi_araddr[4]),
        .Q(sel0[4]),
        .S(SR));
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s_axi_arvalid),
        .I1(axi_arready_reg_0),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(axi_arready_reg_0),
        .R(SR));
  FDRE \axi_awaddr_reg[2] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[0]),
        .Q(loc_w_addr[0]),
        .R(SR));
  FDRE \axi_awaddr_reg[3] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[1]),
        .Q(loc_w_addr[1]),
        .R(SR));
  FDRE \axi_awaddr_reg[4] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[2]),
        .Q(loc_w_addr[2]),
        .R(SR));
  FDRE \axi_awaddr_reg[5] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[3]),
        .Q(loc_w_addr[3]),
        .R(SR));
  FDRE \axi_awaddr_reg[6] 
       (.C(s_axi_aclk),
        .CE(axi_awready0),
        .D(s_axi_awaddr[4]),
        .Q(loc_w_addr[4]),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_awready_i_2
       (.I0(aw_en_reg_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(axi_awready_reg_0),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(axi_awready_reg_0),
        .R(SR));
  FDRE axi_bvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_reg_0),
        .Q(s_axi_bvalid),
        .R(SR));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[0]_i_1 
       (.I0(\axi_rdata[0]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[0]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[0]_i_4_n_0 ),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[0]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[0]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[0]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_5 
       (.I0(symbol_length[0]),
        .I1(guard_length[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[0] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[0]),
        .O(\axi_rdata[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_6 
       (.I0(slv_reg11[0]),
        .I1(slv_reg10[0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[0]),
        .O(\axi_rdata[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [0]),
        .I1(\slv_reg14_reg[19]_0 [0]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [0]),
        .O(\axi_rdata[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_8 
       (.I0(\slv_reg3_reg[3]_0 [0]),
        .I1(Q),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [0]),
        .O(\axi_rdata[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[0]_i_9 
       (.I0(slv_reg7[0]),
        .I1(trig),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(trig_ofdm[0]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[0]),
        .O(\axi_rdata[0]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[10]_i_1 
       (.I0(\axi_rdata[10]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[10]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[10]_i_4_n_0 ),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[10]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[10]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[10]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_5 
       (.I0(symbol_length[10]),
        .I1(guard_length[10]),
        .I2(sel0[1]),
        .I3(\slv_reg17_reg_n_0_[10] ),
        .I4(sel0[0]),
        .I5(slv_reg16[10]),
        .O(\axi_rdata[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_6 
       (.I0(slv_reg11[10]),
        .I1(slv_reg10[10]),
        .I2(sel0[1]),
        .I3(slv_reg9[10]),
        .I4(sel0[0]),
        .I5(slv_reg8[10]),
        .O(\axi_rdata[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [10]),
        .I1(\slv_reg14_reg[19]_0 [10]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [10]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [10]),
        .O(\axi_rdata[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_8 
       (.I0(slv_reg3[10]),
        .I1(slv_reg2[10]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[15]_0 [10]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[15]_0 [10]),
        .O(\axi_rdata[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[10]_i_9 
       (.I0(slv_reg7[10]),
        .I1(slv_reg6[10]),
        .I2(sel0[1]),
        .I3(slv_reg5[10]),
        .I4(sel0[0]),
        .I5(trig_symbol[10]),
        .O(\axi_rdata[10]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[11]_i_1 
       (.I0(\axi_rdata[11]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[11]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[11]_i_4_n_0 ),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[11]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[11]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[11]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_5 
       (.I0(symbol_length[11]),
        .I1(guard_length[11]),
        .I2(sel0[1]),
        .I3(\slv_reg17_reg_n_0_[11] ),
        .I4(sel0[0]),
        .I5(slv_reg16[11]),
        .O(\axi_rdata[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_6 
       (.I0(slv_reg11[11]),
        .I1(slv_reg10[11]),
        .I2(sel0[1]),
        .I3(slv_reg9[11]),
        .I4(sel0[0]),
        .I5(slv_reg8[11]),
        .O(\axi_rdata[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [11]),
        .I1(\slv_reg14_reg[19]_0 [11]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [11]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [11]),
        .O(\axi_rdata[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_8 
       (.I0(slv_reg3[11]),
        .I1(slv_reg2[11]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[15]_0 [11]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[15]_0 [11]),
        .O(\axi_rdata[11]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[11]_i_9 
       (.I0(slv_reg7[11]),
        .I1(slv_reg6[11]),
        .I2(sel0[1]),
        .I3(slv_reg5[11]),
        .I4(sel0[0]),
        .I5(trig_symbol[11]),
        .O(\axi_rdata[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[12]_i_1 
       (.I0(\axi_rdata[12]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[12]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[12]_i_4_n_0 ),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[12]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[12]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[12]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_5 
       (.I0(symbol_length[12]),
        .I1(guard_length[12]),
        .I2(sel0[1]),
        .I3(\slv_reg17_reg_n_0_[12] ),
        .I4(sel0[0]),
        .I5(slv_reg16[12]),
        .O(\axi_rdata[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_6 
       (.I0(slv_reg11[12]),
        .I1(slv_reg10[12]),
        .I2(sel0[1]),
        .I3(slv_reg9[12]),
        .I4(sel0[0]),
        .I5(slv_reg8[12]),
        .O(\axi_rdata[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [12]),
        .I1(\slv_reg14_reg[19]_0 [12]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [12]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [12]),
        .O(\axi_rdata[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_8 
       (.I0(slv_reg3[12]),
        .I1(slv_reg2[12]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[15]_0 [12]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[15]_0 [12]),
        .O(\axi_rdata[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[12]_i_9 
       (.I0(slv_reg7[12]),
        .I1(slv_reg6[12]),
        .I2(sel0[1]),
        .I3(slv_reg5[12]),
        .I4(sel0[0]),
        .I5(trig_symbol[12]),
        .O(\axi_rdata[12]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[13]_i_1 
       (.I0(\axi_rdata[13]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[13]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[13]_i_4_n_0 ),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[13]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[13]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[13]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_5 
       (.I0(symbol_length[13]),
        .I1(guard_length[13]),
        .I2(sel0[1]),
        .I3(\slv_reg17_reg_n_0_[13] ),
        .I4(sel0[0]),
        .I5(slv_reg16[13]),
        .O(\axi_rdata[13]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_6 
       (.I0(slv_reg11[13]),
        .I1(slv_reg10[13]),
        .I2(sel0[1]),
        .I3(slv_reg9[13]),
        .I4(sel0[0]),
        .I5(slv_reg8[13]),
        .O(\axi_rdata[13]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [13]),
        .I1(\slv_reg14_reg[19]_0 [13]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [13]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [13]),
        .O(\axi_rdata[13]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_8 
       (.I0(slv_reg3[13]),
        .I1(slv_reg2[13]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[15]_0 [13]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[15]_0 [13]),
        .O(\axi_rdata[13]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[13]_i_9 
       (.I0(slv_reg7[13]),
        .I1(slv_reg6[13]),
        .I2(sel0[1]),
        .I3(slv_reg5[13]),
        .I4(sel0[0]),
        .I5(trig_symbol[13]),
        .O(\axi_rdata[13]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[14]_i_1 
       (.I0(\axi_rdata[14]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[14]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[14]_i_4_n_0 ),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[14]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[14]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[14]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_5 
       (.I0(symbol_length[14]),
        .I1(guard_length[14]),
        .I2(sel0[1]),
        .I3(\slv_reg17_reg_n_0_[14] ),
        .I4(sel0[0]),
        .I5(slv_reg16[14]),
        .O(\axi_rdata[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_6 
       (.I0(slv_reg11[14]),
        .I1(slv_reg10[14]),
        .I2(sel0[1]),
        .I3(slv_reg9[14]),
        .I4(sel0[0]),
        .I5(slv_reg8[14]),
        .O(\axi_rdata[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [14]),
        .I1(\slv_reg14_reg[19]_0 [14]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [14]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [14]),
        .O(\axi_rdata[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_8 
       (.I0(slv_reg3[14]),
        .I1(slv_reg2[14]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[15]_0 [14]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[15]_0 [14]),
        .O(\axi_rdata[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[14]_i_9 
       (.I0(slv_reg7[14]),
        .I1(slv_reg6[14]),
        .I2(sel0[1]),
        .I3(slv_reg5[14]),
        .I4(sel0[0]),
        .I5(trig_symbol[14]),
        .O(\axi_rdata[14]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[15]_i_1 
       (.I0(\axi_rdata[15]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[15]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[15]_i_4_n_0 ),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[15]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[15]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[15]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_5 
       (.I0(symbol_length[15]),
        .I1(guard_length[15]),
        .I2(sel0[1]),
        .I3(\slv_reg17_reg_n_0_[15] ),
        .I4(sel0[0]),
        .I5(slv_reg16[15]),
        .O(\axi_rdata[15]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_6 
       (.I0(slv_reg11[15]),
        .I1(slv_reg10[15]),
        .I2(sel0[1]),
        .I3(slv_reg9[15]),
        .I4(sel0[0]),
        .I5(slv_reg8[15]),
        .O(\axi_rdata[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [15]),
        .I1(\slv_reg14_reg[19]_0 [15]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [15]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [15]),
        .O(\axi_rdata[15]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_8 
       (.I0(slv_reg3[15]),
        .I1(slv_reg2[15]),
        .I2(sel0[1]),
        .I3(\slv_reg1_reg[15]_0 [15]),
        .I4(sel0[0]),
        .I5(\slv_reg0_reg[15]_0 [15]),
        .O(\axi_rdata[15]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[15]_i_9 
       (.I0(slv_reg7[15]),
        .I1(slv_reg6[15]),
        .I2(sel0[1]),
        .I3(slv_reg5[15]),
        .I4(sel0[0]),
        .I5(trig_symbol[15]),
        .O(\axi_rdata[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[16]_i_1 
       (.I0(\axi_rdata[16]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[16]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[16]_i_4_n_0 ),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[16]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[16]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[16]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_5 
       (.I0(symbol_length[16]),
        .I1(guard_length[16]),
        .I2(sel0[1]),
        .I3(\slv_reg17_reg_n_0_[16] ),
        .I4(sel0[0]),
        .I5(slv_reg16[16]),
        .O(\axi_rdata[16]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_6 
       (.I0(slv_reg11[16]),
        .I1(slv_reg10[16]),
        .I2(sel0[1]),
        .I3(slv_reg9[16]),
        .I4(sel0[0]),
        .I5(slv_reg8[16]),
        .O(\axi_rdata[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [16]),
        .I1(\slv_reg14_reg[19]_0 [16]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [16]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [16]),
        .O(\axi_rdata[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_8 
       (.I0(slv_reg3[16]),
        .I1(slv_reg2[16]),
        .I2(sel0[1]),
        .I3(slv_reg1[16]),
        .I4(sel0[0]),
        .I5(slv_reg0[16]),
        .O(\axi_rdata[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[16]_i_9 
       (.I0(slv_reg7[16]),
        .I1(slv_reg6[16]),
        .I2(sel0[1]),
        .I3(slv_reg5[16]),
        .I4(sel0[0]),
        .I5(trig_symbol[16]),
        .O(\axi_rdata[16]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[17]_i_1 
       (.I0(\axi_rdata[17]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[17]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[17]_i_4_n_0 ),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[17]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[17]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[17]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_5 
       (.I0(slv_reg19[17]),
        .I1(slv_reg18[17]),
        .I2(sel0[1]),
        .I3(slv_reg17[17]),
        .I4(sel0[0]),
        .I5(slv_reg16[17]),
        .O(\axi_rdata[17]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_6 
       (.I0(slv_reg11[17]),
        .I1(slv_reg10[17]),
        .I2(sel0[1]),
        .I3(slv_reg9[17]),
        .I4(sel0[0]),
        .I5(slv_reg8[17]),
        .O(\axi_rdata[17]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [17]),
        .I1(\slv_reg14_reg[19]_0 [17]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [17]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [17]),
        .O(\axi_rdata[17]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_8 
       (.I0(slv_reg3[17]),
        .I1(slv_reg2[17]),
        .I2(sel0[1]),
        .I3(slv_reg1[17]),
        .I4(sel0[0]),
        .I5(slv_reg0[17]),
        .O(\axi_rdata[17]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[17]_i_9 
       (.I0(slv_reg7[17]),
        .I1(slv_reg6[17]),
        .I2(sel0[1]),
        .I3(slv_reg5[17]),
        .I4(sel0[0]),
        .I5(slv_reg4[17]),
        .O(\axi_rdata[17]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[18]_i_1 
       (.I0(\axi_rdata[18]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[18]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[18]_i_4_n_0 ),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[18]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[18]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[18]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_5 
       (.I0(slv_reg19[18]),
        .I1(slv_reg18[18]),
        .I2(sel0[1]),
        .I3(slv_reg17[18]),
        .I4(sel0[0]),
        .I5(slv_reg16[18]),
        .O(\axi_rdata[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_6 
       (.I0(slv_reg11[18]),
        .I1(slv_reg10[18]),
        .I2(sel0[1]),
        .I3(slv_reg9[18]),
        .I4(sel0[0]),
        .I5(slv_reg8[18]),
        .O(\axi_rdata[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [18]),
        .I1(\slv_reg14_reg[19]_0 [18]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [18]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [18]),
        .O(\axi_rdata[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_8 
       (.I0(slv_reg3[18]),
        .I1(slv_reg2[18]),
        .I2(sel0[1]),
        .I3(slv_reg1[18]),
        .I4(sel0[0]),
        .I5(slv_reg0[18]),
        .O(\axi_rdata[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[18]_i_9 
       (.I0(slv_reg7[18]),
        .I1(slv_reg6[18]),
        .I2(sel0[1]),
        .I3(slv_reg5[18]),
        .I4(sel0[0]),
        .I5(slv_reg4[18]),
        .O(\axi_rdata[18]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[19]_i_1 
       (.I0(\axi_rdata[19]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[19]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[19]_i_4_n_0 ),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[19]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[19]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[19]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_5 
       (.I0(slv_reg19[19]),
        .I1(slv_reg18[19]),
        .I2(sel0[1]),
        .I3(slv_reg17[19]),
        .I4(sel0[0]),
        .I5(slv_reg16[19]),
        .O(\axi_rdata[19]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_6 
       (.I0(slv_reg11[19]),
        .I1(slv_reg10[19]),
        .I2(sel0[1]),
        .I3(slv_reg9[19]),
        .I4(sel0[0]),
        .I5(slv_reg8[19]),
        .O(\axi_rdata[19]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [19]),
        .I1(\slv_reg14_reg[19]_0 [19]),
        .I2(sel0[1]),
        .I3(\slv_reg13_reg[19]_0 [19]),
        .I4(sel0[0]),
        .I5(\slv_reg12_reg[19]_0 [19]),
        .O(\axi_rdata[19]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_8 
       (.I0(slv_reg3[19]),
        .I1(slv_reg2[19]),
        .I2(sel0[1]),
        .I3(slv_reg1[19]),
        .I4(sel0[0]),
        .I5(slv_reg0[19]),
        .O(\axi_rdata[19]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[19]_i_9 
       (.I0(slv_reg7[19]),
        .I1(slv_reg6[19]),
        .I2(sel0[1]),
        .I3(slv_reg5[19]),
        .I4(sel0[0]),
        .I5(slv_reg4[19]),
        .O(\axi_rdata[19]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[1]_i_1 
       (.I0(\axi_rdata[1]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[1]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[1]_i_4_n_0 ),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[1]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[1]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[1]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_5 
       (.I0(symbol_length[1]),
        .I1(guard_length[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[1] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[1]),
        .O(\axi_rdata[1]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_6 
       (.I0(slv_reg11[1]),
        .I1(slv_reg10[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[1]),
        .O(\axi_rdata[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [1]),
        .I1(\slv_reg14_reg[19]_0 [1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [1]),
        .O(\axi_rdata[1]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_8 
       (.I0(\slv_reg3_reg[3]_0 [1]),
        .I1(slv_reg2[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [1]),
        .O(\axi_rdata[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[1]_i_9 
       (.I0(slv_reg7[1]),
        .I1(slv_reg6[1]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(trig_ofdm[1]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[1]),
        .O(\axi_rdata[1]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[20]_i_1 
       (.I0(\axi_rdata[20]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[20]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[20]_i_4_n_0 ),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[20]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[20]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[20]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_5 
       (.I0(slv_reg19[20]),
        .I1(slv_reg18[20]),
        .I2(sel0[1]),
        .I3(slv_reg17[20]),
        .I4(sel0[0]),
        .I5(slv_reg16[20]),
        .O(\axi_rdata[20]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_6 
       (.I0(slv_reg11[20]),
        .I1(slv_reg10[20]),
        .I2(sel0[1]),
        .I3(slv_reg9[20]),
        .I4(sel0[0]),
        .I5(slv_reg8[20]),
        .O(\axi_rdata[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_7 
       (.I0(slv_reg15[20]),
        .I1(slv_reg14[20]),
        .I2(sel0[1]),
        .I3(slv_reg13[20]),
        .I4(sel0[0]),
        .I5(slv_reg12[20]),
        .O(\axi_rdata[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_8 
       (.I0(slv_reg3[20]),
        .I1(slv_reg2[20]),
        .I2(sel0[1]),
        .I3(slv_reg1[20]),
        .I4(sel0[0]),
        .I5(slv_reg0[20]),
        .O(\axi_rdata[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[20]_i_9 
       (.I0(slv_reg7[20]),
        .I1(slv_reg6[20]),
        .I2(sel0[1]),
        .I3(slv_reg5[20]),
        .I4(sel0[0]),
        .I5(slv_reg4[20]),
        .O(\axi_rdata[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[21]_i_1 
       (.I0(\axi_rdata[21]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[21]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[21]_i_4_n_0 ),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[21]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[21]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[21]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_5 
       (.I0(slv_reg19[21]),
        .I1(slv_reg18[21]),
        .I2(sel0[1]),
        .I3(slv_reg17[21]),
        .I4(sel0[0]),
        .I5(slv_reg16[21]),
        .O(\axi_rdata[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_6 
       (.I0(slv_reg11[21]),
        .I1(slv_reg10[21]),
        .I2(sel0[1]),
        .I3(slv_reg9[21]),
        .I4(sel0[0]),
        .I5(slv_reg8[21]),
        .O(\axi_rdata[21]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_7 
       (.I0(slv_reg15[21]),
        .I1(slv_reg14[21]),
        .I2(sel0[1]),
        .I3(slv_reg13[21]),
        .I4(sel0[0]),
        .I5(slv_reg12[21]),
        .O(\axi_rdata[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_8 
       (.I0(slv_reg3[21]),
        .I1(slv_reg2[21]),
        .I2(sel0[1]),
        .I3(slv_reg1[21]),
        .I4(sel0[0]),
        .I5(slv_reg0[21]),
        .O(\axi_rdata[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[21]_i_9 
       (.I0(slv_reg7[21]),
        .I1(slv_reg6[21]),
        .I2(sel0[1]),
        .I3(slv_reg5[21]),
        .I4(sel0[0]),
        .I5(slv_reg4[21]),
        .O(\axi_rdata[21]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[22]_i_1 
       (.I0(\axi_rdata[22]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[22]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[22]_i_4_n_0 ),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[22]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[22]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[22]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_5 
       (.I0(slv_reg19[22]),
        .I1(slv_reg18[22]),
        .I2(sel0[1]),
        .I3(slv_reg17[22]),
        .I4(sel0[0]),
        .I5(slv_reg16[22]),
        .O(\axi_rdata[22]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_6 
       (.I0(slv_reg11[22]),
        .I1(slv_reg10[22]),
        .I2(sel0[1]),
        .I3(slv_reg9[22]),
        .I4(sel0[0]),
        .I5(slv_reg8[22]),
        .O(\axi_rdata[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_7 
       (.I0(slv_reg15[22]),
        .I1(slv_reg14[22]),
        .I2(sel0[1]),
        .I3(slv_reg13[22]),
        .I4(sel0[0]),
        .I5(slv_reg12[22]),
        .O(\axi_rdata[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_8 
       (.I0(slv_reg3[22]),
        .I1(slv_reg2[22]),
        .I2(sel0[1]),
        .I3(slv_reg1[22]),
        .I4(sel0[0]),
        .I5(slv_reg0[22]),
        .O(\axi_rdata[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[22]_i_9 
       (.I0(slv_reg7[22]),
        .I1(slv_reg6[22]),
        .I2(sel0[1]),
        .I3(slv_reg5[22]),
        .I4(sel0[0]),
        .I5(slv_reg4[22]),
        .O(\axi_rdata[22]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[23]_i_1 
       (.I0(\axi_rdata[23]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[23]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[23]_i_4_n_0 ),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[23]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[23]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[23]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_5 
       (.I0(slv_reg19[23]),
        .I1(slv_reg18[23]),
        .I2(sel0[1]),
        .I3(slv_reg17[23]),
        .I4(sel0[0]),
        .I5(slv_reg16[23]),
        .O(\axi_rdata[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_6 
       (.I0(slv_reg11[23]),
        .I1(slv_reg10[23]),
        .I2(sel0[1]),
        .I3(slv_reg9[23]),
        .I4(sel0[0]),
        .I5(slv_reg8[23]),
        .O(\axi_rdata[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_7 
       (.I0(slv_reg15[23]),
        .I1(slv_reg14[23]),
        .I2(sel0[1]),
        .I3(slv_reg13[23]),
        .I4(sel0[0]),
        .I5(slv_reg12[23]),
        .O(\axi_rdata[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_8 
       (.I0(slv_reg3[23]),
        .I1(slv_reg2[23]),
        .I2(sel0[1]),
        .I3(slv_reg1[23]),
        .I4(sel0[0]),
        .I5(slv_reg0[23]),
        .O(\axi_rdata[23]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[23]_i_9 
       (.I0(slv_reg7[23]),
        .I1(slv_reg6[23]),
        .I2(sel0[1]),
        .I3(slv_reg5[23]),
        .I4(sel0[0]),
        .I5(slv_reg4[23]),
        .O(\axi_rdata[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[24]_i_1 
       (.I0(\axi_rdata[24]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[24]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[24]_i_4_n_0 ),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[24]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[24]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[24]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_5 
       (.I0(slv_reg19[24]),
        .I1(slv_reg18[24]),
        .I2(sel0[1]),
        .I3(slv_reg17[24]),
        .I4(sel0[0]),
        .I5(slv_reg16[24]),
        .O(\axi_rdata[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_6 
       (.I0(slv_reg11[24]),
        .I1(slv_reg10[24]),
        .I2(sel0[1]),
        .I3(slv_reg9[24]),
        .I4(sel0[0]),
        .I5(slv_reg8[24]),
        .O(\axi_rdata[24]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_7 
       (.I0(slv_reg15[24]),
        .I1(slv_reg14[24]),
        .I2(sel0[1]),
        .I3(slv_reg13[24]),
        .I4(sel0[0]),
        .I5(slv_reg12[24]),
        .O(\axi_rdata[24]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_8 
       (.I0(slv_reg3[24]),
        .I1(slv_reg2[24]),
        .I2(sel0[1]),
        .I3(slv_reg1[24]),
        .I4(sel0[0]),
        .I5(slv_reg0[24]),
        .O(\axi_rdata[24]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[24]_i_9 
       (.I0(slv_reg7[24]),
        .I1(slv_reg6[24]),
        .I2(sel0[1]),
        .I3(slv_reg5[24]),
        .I4(sel0[0]),
        .I5(slv_reg4[24]),
        .O(\axi_rdata[24]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[25]_i_1 
       (.I0(\axi_rdata[25]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[25]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[25]_i_4_n_0 ),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[25]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[25]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[25]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[25]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_5 
       (.I0(slv_reg19[25]),
        .I1(slv_reg18[25]),
        .I2(sel0[1]),
        .I3(slv_reg17[25]),
        .I4(sel0[0]),
        .I5(slv_reg16[25]),
        .O(\axi_rdata[25]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_6 
       (.I0(slv_reg11[25]),
        .I1(slv_reg10[25]),
        .I2(sel0[1]),
        .I3(slv_reg9[25]),
        .I4(sel0[0]),
        .I5(slv_reg8[25]),
        .O(\axi_rdata[25]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_7 
       (.I0(slv_reg15[25]),
        .I1(slv_reg14[25]),
        .I2(sel0[1]),
        .I3(slv_reg13[25]),
        .I4(sel0[0]),
        .I5(slv_reg12[25]),
        .O(\axi_rdata[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_8 
       (.I0(slv_reg3[25]),
        .I1(slv_reg2[25]),
        .I2(sel0[1]),
        .I3(slv_reg1[25]),
        .I4(sel0[0]),
        .I5(slv_reg0[25]),
        .O(\axi_rdata[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[25]_i_9 
       (.I0(slv_reg7[25]),
        .I1(slv_reg6[25]),
        .I2(sel0[1]),
        .I3(slv_reg5[25]),
        .I4(sel0[0]),
        .I5(slv_reg4[25]),
        .O(\axi_rdata[25]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[26]_i_1 
       (.I0(\axi_rdata[26]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[26]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[26]_i_4_n_0 ),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[26]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[26]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[26]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[26]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_5 
       (.I0(slv_reg19[26]),
        .I1(slv_reg18[26]),
        .I2(sel0[1]),
        .I3(slv_reg17[26]),
        .I4(sel0[0]),
        .I5(slv_reg16[26]),
        .O(\axi_rdata[26]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_6 
       (.I0(slv_reg11[26]),
        .I1(slv_reg10[26]),
        .I2(sel0[1]),
        .I3(slv_reg9[26]),
        .I4(sel0[0]),
        .I5(slv_reg8[26]),
        .O(\axi_rdata[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_7 
       (.I0(slv_reg15[26]),
        .I1(slv_reg14[26]),
        .I2(sel0[1]),
        .I3(slv_reg13[26]),
        .I4(sel0[0]),
        .I5(slv_reg12[26]),
        .O(\axi_rdata[26]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_8 
       (.I0(slv_reg3[26]),
        .I1(slv_reg2[26]),
        .I2(sel0[1]),
        .I3(slv_reg1[26]),
        .I4(sel0[0]),
        .I5(slv_reg0[26]),
        .O(\axi_rdata[26]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[26]_i_9 
       (.I0(slv_reg7[26]),
        .I1(slv_reg6[26]),
        .I2(sel0[1]),
        .I3(slv_reg5[26]),
        .I4(sel0[0]),
        .I5(slv_reg4[26]),
        .O(\axi_rdata[26]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[27]_i_1 
       (.I0(\axi_rdata[27]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[27]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[27]_i_4_n_0 ),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[27]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[27]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[27]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[27]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_5 
       (.I0(slv_reg19[27]),
        .I1(slv_reg18[27]),
        .I2(sel0[1]),
        .I3(slv_reg17[27]),
        .I4(sel0[0]),
        .I5(slv_reg16[27]),
        .O(\axi_rdata[27]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_6 
       (.I0(slv_reg11[27]),
        .I1(slv_reg10[27]),
        .I2(sel0[1]),
        .I3(slv_reg9[27]),
        .I4(sel0[0]),
        .I5(slv_reg8[27]),
        .O(\axi_rdata[27]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_7 
       (.I0(slv_reg15[27]),
        .I1(slv_reg14[27]),
        .I2(sel0[1]),
        .I3(slv_reg13[27]),
        .I4(sel0[0]),
        .I5(slv_reg12[27]),
        .O(\axi_rdata[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_8 
       (.I0(slv_reg3[27]),
        .I1(slv_reg2[27]),
        .I2(sel0[1]),
        .I3(slv_reg1[27]),
        .I4(sel0[0]),
        .I5(slv_reg0[27]),
        .O(\axi_rdata[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[27]_i_9 
       (.I0(slv_reg7[27]),
        .I1(slv_reg6[27]),
        .I2(sel0[1]),
        .I3(slv_reg5[27]),
        .I4(sel0[0]),
        .I5(slv_reg4[27]),
        .O(\axi_rdata[27]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[28]_i_1 
       (.I0(\axi_rdata[28]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[28]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[28]_i_4_n_0 ),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[28]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[28]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[28]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[28]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_5 
       (.I0(slv_reg19[28]),
        .I1(slv_reg18[28]),
        .I2(sel0[1]),
        .I3(slv_reg17[28]),
        .I4(sel0[0]),
        .I5(slv_reg16[28]),
        .O(\axi_rdata[28]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_6 
       (.I0(slv_reg11[28]),
        .I1(slv_reg10[28]),
        .I2(sel0[1]),
        .I3(slv_reg9[28]),
        .I4(sel0[0]),
        .I5(slv_reg8[28]),
        .O(\axi_rdata[28]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_7 
       (.I0(slv_reg15[28]),
        .I1(slv_reg14[28]),
        .I2(sel0[1]),
        .I3(slv_reg13[28]),
        .I4(sel0[0]),
        .I5(slv_reg12[28]),
        .O(\axi_rdata[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_8 
       (.I0(slv_reg3[28]),
        .I1(slv_reg2[28]),
        .I2(sel0[1]),
        .I3(slv_reg1[28]),
        .I4(sel0[0]),
        .I5(slv_reg0[28]),
        .O(\axi_rdata[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[28]_i_9 
       (.I0(slv_reg7[28]),
        .I1(slv_reg6[28]),
        .I2(sel0[1]),
        .I3(slv_reg5[28]),
        .I4(sel0[0]),
        .I5(slv_reg4[28]),
        .O(\axi_rdata[28]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[29]_i_1 
       (.I0(\axi_rdata[29]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[29]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[29]_i_4_n_0 ),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[29]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[29]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[29]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[29]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_5 
       (.I0(slv_reg19[29]),
        .I1(slv_reg18[29]),
        .I2(sel0[1]),
        .I3(slv_reg17[29]),
        .I4(sel0[0]),
        .I5(slv_reg16[29]),
        .O(\axi_rdata[29]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_6 
       (.I0(slv_reg11[29]),
        .I1(slv_reg10[29]),
        .I2(sel0[1]),
        .I3(slv_reg9[29]),
        .I4(sel0[0]),
        .I5(slv_reg8[29]),
        .O(\axi_rdata[29]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_7 
       (.I0(slv_reg15[29]),
        .I1(slv_reg14[29]),
        .I2(sel0[1]),
        .I3(slv_reg13[29]),
        .I4(sel0[0]),
        .I5(slv_reg12[29]),
        .O(\axi_rdata[29]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_8 
       (.I0(slv_reg3[29]),
        .I1(slv_reg2[29]),
        .I2(sel0[1]),
        .I3(slv_reg1[29]),
        .I4(sel0[0]),
        .I5(slv_reg0[29]),
        .O(\axi_rdata[29]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[29]_i_9 
       (.I0(slv_reg7[29]),
        .I1(slv_reg6[29]),
        .I2(sel0[1]),
        .I3(slv_reg5[29]),
        .I4(sel0[0]),
        .I5(slv_reg4[29]),
        .O(\axi_rdata[29]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[2]_i_1 
       (.I0(\axi_rdata[2]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[2]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[2]_i_4_n_0 ),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[2]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[2]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[2]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_5 
       (.I0(symbol_length[2]),
        .I1(guard_length[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[2] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[2]),
        .O(\axi_rdata[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_6 
       (.I0(slv_reg11[2]),
        .I1(slv_reg10[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[2]),
        .O(\axi_rdata[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [2]),
        .I1(\slv_reg14_reg[19]_0 [2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [2]),
        .O(\axi_rdata[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_8 
       (.I0(\slv_reg3_reg[3]_0 [2]),
        .I1(slv_reg2[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [2]),
        .O(\axi_rdata[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[2]_i_9 
       (.I0(slv_reg7[2]),
        .I1(slv_reg6[2]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(trig_ofdm[2]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[2]),
        .O(\axi_rdata[2]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[30]_i_1 
       (.I0(\axi_rdata[30]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[30]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[30]_i_4_n_0 ),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[30]_i_2 
       (.I0(sel0[0]),
        .I1(slv_reg20[30]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[30]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_5 
       (.I0(slv_reg19[30]),
        .I1(slv_reg18[30]),
        .I2(sel0[1]),
        .I3(slv_reg17[30]),
        .I4(sel0[0]),
        .I5(slv_reg16[30]),
        .O(\axi_rdata[30]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_6 
       (.I0(slv_reg11[30]),
        .I1(slv_reg10[30]),
        .I2(sel0[1]),
        .I3(slv_reg9[30]),
        .I4(sel0[0]),
        .I5(slv_reg8[30]),
        .O(\axi_rdata[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_7 
       (.I0(slv_reg15[30]),
        .I1(slv_reg14[30]),
        .I2(sel0[1]),
        .I3(slv_reg13[30]),
        .I4(sel0[0]),
        .I5(slv_reg12[30]),
        .O(\axi_rdata[30]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_8 
       (.I0(slv_reg3[30]),
        .I1(slv_reg2[30]),
        .I2(sel0[1]),
        .I3(slv_reg1[30]),
        .I4(sel0[0]),
        .I5(slv_reg0[30]),
        .O(\axi_rdata[30]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[30]_i_9 
       (.I0(slv_reg7[30]),
        .I1(slv_reg6[30]),
        .I2(sel0[1]),
        .I3(slv_reg5[30]),
        .I4(sel0[0]),
        .I5(slv_reg4[30]),
        .O(\axi_rdata[30]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \axi_rdata[31]_i_1 
       (.I0(axi_arready_reg_0),
        .I1(s_axi_arvalid),
        .I2(s_axi_rvalid),
        .O(slv_reg_rden));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_10 
       (.I0(slv_reg7[31]),
        .I1(slv_reg6[31]),
        .I2(sel0[1]),
        .I3(slv_reg5[31]),
        .I4(sel0[0]),
        .I5(slv_reg4[31]),
        .O(\axi_rdata[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[31]_i_2 
       (.I0(\axi_rdata[31]_i_3_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[31]_i_4_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[31]_i_5_n_0 ),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[31]_i_3 
       (.I0(sel0[0]),
        .I1(slv_reg20[31]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .I4(\axi_rdata[31]_i_6_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_6 
       (.I0(slv_reg19[31]),
        .I1(slv_reg18[31]),
        .I2(sel0[1]),
        .I3(slv_reg17[31]),
        .I4(sel0[0]),
        .I5(slv_reg16[31]),
        .O(\axi_rdata[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_7 
       (.I0(slv_reg11[31]),
        .I1(slv_reg10[31]),
        .I2(sel0[1]),
        .I3(slv_reg9[31]),
        .I4(sel0[0]),
        .I5(slv_reg8[31]),
        .O(\axi_rdata[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_8 
       (.I0(slv_reg15[31]),
        .I1(slv_reg14[31]),
        .I2(sel0[1]),
        .I3(slv_reg13[31]),
        .I4(sel0[0]),
        .I5(slv_reg12[31]),
        .O(\axi_rdata[31]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[31]_i_9 
       (.I0(slv_reg3[31]),
        .I1(slv_reg2[31]),
        .I2(sel0[1]),
        .I3(slv_reg1[31]),
        .I4(sel0[0]),
        .I5(slv_reg0[31]),
        .O(\axi_rdata[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[3]_i_1 
       (.I0(\axi_rdata[3]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[3]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[3]_i_4_n_0 ),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[3]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[3]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[3]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_5 
       (.I0(symbol_length[3]),
        .I1(guard_length[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[3] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[3]),
        .O(\axi_rdata[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_6 
       (.I0(slv_reg11[3]),
        .I1(slv_reg10[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[3]),
        .O(\axi_rdata[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [3]),
        .I1(\slv_reg14_reg[19]_0 [3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [3]),
        .O(\axi_rdata[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_8 
       (.I0(\slv_reg3_reg[3]_0 [3]),
        .I1(slv_reg2[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [3]),
        .O(\axi_rdata[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[3]_i_9 
       (.I0(slv_reg7[3]),
        .I1(slv_reg6[3]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(trig_ofdm[3]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[3]),
        .O(\axi_rdata[3]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[4]_i_1 
       (.I0(\axi_rdata[4]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[4]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[4]_i_4_n_0 ),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[4]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[4]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[4]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_5 
       (.I0(symbol_length[4]),
        .I1(guard_length[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[4] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[4]),
        .O(\axi_rdata[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_6 
       (.I0(slv_reg11[4]),
        .I1(slv_reg10[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[4]),
        .O(\axi_rdata[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [4]),
        .I1(\slv_reg14_reg[19]_0 [4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [4]),
        .O(\axi_rdata[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_8 
       (.I0(slv_reg3[4]),
        .I1(slv_reg2[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [4]),
        .O(\axi_rdata[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[4]_i_9 
       (.I0(slv_reg7[4]),
        .I1(slv_reg6[4]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg5[4]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[4]),
        .O(\axi_rdata[4]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[5]_i_1 
       (.I0(\axi_rdata[5]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[5]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[5]_i_4_n_0 ),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[5]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[5]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[5]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_5 
       (.I0(symbol_length[5]),
        .I1(guard_length[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[5] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[5]),
        .O(\axi_rdata[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_6 
       (.I0(slv_reg11[5]),
        .I1(slv_reg10[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[5]),
        .O(\axi_rdata[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [5]),
        .I1(\slv_reg14_reg[19]_0 [5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [5]),
        .O(\axi_rdata[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_8 
       (.I0(slv_reg3[5]),
        .I1(slv_reg2[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [5]),
        .O(\axi_rdata[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[5]_i_9 
       (.I0(slv_reg7[5]),
        .I1(slv_reg6[5]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg5[5]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[5]),
        .O(\axi_rdata[5]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[6]_i_1 
       (.I0(\axi_rdata[6]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[6]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[6]_i_4_n_0 ),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[6]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[6]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[6]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_5 
       (.I0(symbol_length[6]),
        .I1(guard_length[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[6] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[6]),
        .O(\axi_rdata[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_6 
       (.I0(slv_reg11[6]),
        .I1(slv_reg10[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[6]),
        .O(\axi_rdata[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [6]),
        .I1(\slv_reg14_reg[19]_0 [6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [6]),
        .O(\axi_rdata[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_8 
       (.I0(slv_reg3[6]),
        .I1(slv_reg2[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [6]),
        .O(\axi_rdata[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[6]_i_9 
       (.I0(slv_reg7[6]),
        .I1(slv_reg6[6]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg5[6]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[6]),
        .O(\axi_rdata[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[7]_i_1 
       (.I0(\axi_rdata[7]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[7]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[7]_i_4_n_0 ),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[7]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[7]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[7]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_5 
       (.I0(symbol_length[7]),
        .I1(guard_length[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[7] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[7]),
        .O(\axi_rdata[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_6 
       (.I0(slv_reg11[7]),
        .I1(slv_reg10[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[7]),
        .O(\axi_rdata[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [7]),
        .I1(\slv_reg14_reg[19]_0 [7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [7]),
        .O(\axi_rdata[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_8 
       (.I0(slv_reg3[7]),
        .I1(slv_reg2[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [7]),
        .O(\axi_rdata[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[7]_i_9 
       (.I0(slv_reg7[7]),
        .I1(slv_reg6[7]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg5[7]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[7]),
        .O(\axi_rdata[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[8]_i_1 
       (.I0(\axi_rdata[8]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[8]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[8]_i_4_n_0 ),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[8]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[8]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[8]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_5 
       (.I0(symbol_length[8]),
        .I1(guard_length[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[8] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[8]),
        .O(\axi_rdata[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_6 
       (.I0(slv_reg11[8]),
        .I1(slv_reg10[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[8]),
        .O(\axi_rdata[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [8]),
        .I1(\slv_reg14_reg[19]_0 [8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [8]),
        .O(\axi_rdata[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_8 
       (.I0(slv_reg3[8]),
        .I1(slv_reg2[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [8]),
        .O(\axi_rdata[8]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[8]_i_9 
       (.I0(slv_reg7[8]),
        .I1(slv_reg6[8]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg5[8]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[8]),
        .O(\axi_rdata[8]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \axi_rdata[9]_i_1 
       (.I0(\axi_rdata[9]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_rdata_reg[9]_i_3_n_0 ),
        .I3(sel0[3]),
        .I4(\axi_rdata_reg[9]_i_4_n_0 ),
        .O(reg_data_out[9]));
  LUT6 #(
    .INIT(64'h000000000F4F0040)) 
    \axi_rdata[9]_i_2 
       (.I0(\axi_araddr_reg[2]_rep_n_0 ),
        .I1(symbol_type[9]),
        .I2(sel0[2]),
        .I3(\axi_araddr_reg[3]_rep_n_0 ),
        .I4(\axi_rdata[9]_i_5_n_0 ),
        .I5(sel0[3]),
        .O(\axi_rdata[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_5 
       (.I0(symbol_length[9]),
        .I1(guard_length[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg17_reg_n_0_[9] ),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg16[9]),
        .O(\axi_rdata[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_6 
       (.I0(slv_reg11[9]),
        .I1(slv_reg10[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg9[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(slv_reg8[9]),
        .O(\axi_rdata[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_7 
       (.I0(\slv_reg15_reg[19]_0 [9]),
        .I1(\slv_reg14_reg[19]_0 [9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg13_reg[19]_0 [9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg12_reg[19]_0 [9]),
        .O(\axi_rdata[9]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_8 
       (.I0(slv_reg3[9]),
        .I1(slv_reg2[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(\slv_reg1_reg[15]_0 [9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(\slv_reg0_reg[15]_0 [9]),
        .O(\axi_rdata[9]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \axi_rdata[9]_i_9 
       (.I0(slv_reg7[9]),
        .I1(slv_reg6[9]),
        .I2(\axi_araddr_reg[3]_rep_n_0 ),
        .I3(slv_reg5[9]),
        .I4(\axi_araddr_reg[2]_rep_n_0 ),
        .I5(trig_symbol[9]),
        .O(\axi_rdata[9]_i_9_n_0 ));
  FDRE \axi_rdata_reg[0] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[0]),
        .Q(s_axi_rdata[0]),
        .R(SR));
  MUXF7 \axi_rdata_reg[0]_i_3 
       (.I0(\axi_rdata[0]_i_6_n_0 ),
        .I1(\axi_rdata[0]_i_7_n_0 ),
        .O(\axi_rdata_reg[0]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[0]_i_4 
       (.I0(\axi_rdata[0]_i_8_n_0 ),
        .I1(\axi_rdata[0]_i_9_n_0 ),
        .O(\axi_rdata_reg[0]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[10] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[10]),
        .Q(s_axi_rdata[10]),
        .R(SR));
  MUXF7 \axi_rdata_reg[10]_i_3 
       (.I0(\axi_rdata[10]_i_6_n_0 ),
        .I1(\axi_rdata[10]_i_7_n_0 ),
        .O(\axi_rdata_reg[10]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[10]_i_4 
       (.I0(\axi_rdata[10]_i_8_n_0 ),
        .I1(\axi_rdata[10]_i_9_n_0 ),
        .O(\axi_rdata_reg[10]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[11] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[11]),
        .Q(s_axi_rdata[11]),
        .R(SR));
  MUXF7 \axi_rdata_reg[11]_i_3 
       (.I0(\axi_rdata[11]_i_6_n_0 ),
        .I1(\axi_rdata[11]_i_7_n_0 ),
        .O(\axi_rdata_reg[11]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[11]_i_4 
       (.I0(\axi_rdata[11]_i_8_n_0 ),
        .I1(\axi_rdata[11]_i_9_n_0 ),
        .O(\axi_rdata_reg[11]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[12] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[12]),
        .Q(s_axi_rdata[12]),
        .R(SR));
  MUXF7 \axi_rdata_reg[12]_i_3 
       (.I0(\axi_rdata[12]_i_6_n_0 ),
        .I1(\axi_rdata[12]_i_7_n_0 ),
        .O(\axi_rdata_reg[12]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[12]_i_4 
       (.I0(\axi_rdata[12]_i_8_n_0 ),
        .I1(\axi_rdata[12]_i_9_n_0 ),
        .O(\axi_rdata_reg[12]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[13] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[13]),
        .Q(s_axi_rdata[13]),
        .R(SR));
  MUXF7 \axi_rdata_reg[13]_i_3 
       (.I0(\axi_rdata[13]_i_6_n_0 ),
        .I1(\axi_rdata[13]_i_7_n_0 ),
        .O(\axi_rdata_reg[13]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[13]_i_4 
       (.I0(\axi_rdata[13]_i_8_n_0 ),
        .I1(\axi_rdata[13]_i_9_n_0 ),
        .O(\axi_rdata_reg[13]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[14] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[14]),
        .Q(s_axi_rdata[14]),
        .R(SR));
  MUXF7 \axi_rdata_reg[14]_i_3 
       (.I0(\axi_rdata[14]_i_6_n_0 ),
        .I1(\axi_rdata[14]_i_7_n_0 ),
        .O(\axi_rdata_reg[14]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[14]_i_4 
       (.I0(\axi_rdata[14]_i_8_n_0 ),
        .I1(\axi_rdata[14]_i_9_n_0 ),
        .O(\axi_rdata_reg[14]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[15] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[15]),
        .Q(s_axi_rdata[15]),
        .R(SR));
  MUXF7 \axi_rdata_reg[15]_i_3 
       (.I0(\axi_rdata[15]_i_6_n_0 ),
        .I1(\axi_rdata[15]_i_7_n_0 ),
        .O(\axi_rdata_reg[15]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[15]_i_4 
       (.I0(\axi_rdata[15]_i_8_n_0 ),
        .I1(\axi_rdata[15]_i_9_n_0 ),
        .O(\axi_rdata_reg[15]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[16] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[16]),
        .Q(s_axi_rdata[16]),
        .R(SR));
  MUXF7 \axi_rdata_reg[16]_i_3 
       (.I0(\axi_rdata[16]_i_6_n_0 ),
        .I1(\axi_rdata[16]_i_7_n_0 ),
        .O(\axi_rdata_reg[16]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[16]_i_4 
       (.I0(\axi_rdata[16]_i_8_n_0 ),
        .I1(\axi_rdata[16]_i_9_n_0 ),
        .O(\axi_rdata_reg[16]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[17] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[17]),
        .Q(s_axi_rdata[17]),
        .R(SR));
  MUXF7 \axi_rdata_reg[17]_i_3 
       (.I0(\axi_rdata[17]_i_6_n_0 ),
        .I1(\axi_rdata[17]_i_7_n_0 ),
        .O(\axi_rdata_reg[17]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[17]_i_4 
       (.I0(\axi_rdata[17]_i_8_n_0 ),
        .I1(\axi_rdata[17]_i_9_n_0 ),
        .O(\axi_rdata_reg[17]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[18] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[18]),
        .Q(s_axi_rdata[18]),
        .R(SR));
  MUXF7 \axi_rdata_reg[18]_i_3 
       (.I0(\axi_rdata[18]_i_6_n_0 ),
        .I1(\axi_rdata[18]_i_7_n_0 ),
        .O(\axi_rdata_reg[18]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[18]_i_4 
       (.I0(\axi_rdata[18]_i_8_n_0 ),
        .I1(\axi_rdata[18]_i_9_n_0 ),
        .O(\axi_rdata_reg[18]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[19] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[19]),
        .Q(s_axi_rdata[19]),
        .R(SR));
  MUXF7 \axi_rdata_reg[19]_i_3 
       (.I0(\axi_rdata[19]_i_6_n_0 ),
        .I1(\axi_rdata[19]_i_7_n_0 ),
        .O(\axi_rdata_reg[19]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[19]_i_4 
       (.I0(\axi_rdata[19]_i_8_n_0 ),
        .I1(\axi_rdata[19]_i_9_n_0 ),
        .O(\axi_rdata_reg[19]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[1] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[1]),
        .Q(s_axi_rdata[1]),
        .R(SR));
  MUXF7 \axi_rdata_reg[1]_i_3 
       (.I0(\axi_rdata[1]_i_6_n_0 ),
        .I1(\axi_rdata[1]_i_7_n_0 ),
        .O(\axi_rdata_reg[1]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[1]_i_4 
       (.I0(\axi_rdata[1]_i_8_n_0 ),
        .I1(\axi_rdata[1]_i_9_n_0 ),
        .O(\axi_rdata_reg[1]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[20] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[20]),
        .Q(s_axi_rdata[20]),
        .R(SR));
  MUXF7 \axi_rdata_reg[20]_i_3 
       (.I0(\axi_rdata[20]_i_6_n_0 ),
        .I1(\axi_rdata[20]_i_7_n_0 ),
        .O(\axi_rdata_reg[20]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[20]_i_4 
       (.I0(\axi_rdata[20]_i_8_n_0 ),
        .I1(\axi_rdata[20]_i_9_n_0 ),
        .O(\axi_rdata_reg[20]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[21] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[21]),
        .Q(s_axi_rdata[21]),
        .R(SR));
  MUXF7 \axi_rdata_reg[21]_i_3 
       (.I0(\axi_rdata[21]_i_6_n_0 ),
        .I1(\axi_rdata[21]_i_7_n_0 ),
        .O(\axi_rdata_reg[21]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[21]_i_4 
       (.I0(\axi_rdata[21]_i_8_n_0 ),
        .I1(\axi_rdata[21]_i_9_n_0 ),
        .O(\axi_rdata_reg[21]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[22] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[22]),
        .Q(s_axi_rdata[22]),
        .R(SR));
  MUXF7 \axi_rdata_reg[22]_i_3 
       (.I0(\axi_rdata[22]_i_6_n_0 ),
        .I1(\axi_rdata[22]_i_7_n_0 ),
        .O(\axi_rdata_reg[22]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[22]_i_4 
       (.I0(\axi_rdata[22]_i_8_n_0 ),
        .I1(\axi_rdata[22]_i_9_n_0 ),
        .O(\axi_rdata_reg[22]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[23] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[23]),
        .Q(s_axi_rdata[23]),
        .R(SR));
  MUXF7 \axi_rdata_reg[23]_i_3 
       (.I0(\axi_rdata[23]_i_6_n_0 ),
        .I1(\axi_rdata[23]_i_7_n_0 ),
        .O(\axi_rdata_reg[23]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[23]_i_4 
       (.I0(\axi_rdata[23]_i_8_n_0 ),
        .I1(\axi_rdata[23]_i_9_n_0 ),
        .O(\axi_rdata_reg[23]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[24] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[24]),
        .Q(s_axi_rdata[24]),
        .R(SR));
  MUXF7 \axi_rdata_reg[24]_i_3 
       (.I0(\axi_rdata[24]_i_6_n_0 ),
        .I1(\axi_rdata[24]_i_7_n_0 ),
        .O(\axi_rdata_reg[24]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[24]_i_4 
       (.I0(\axi_rdata[24]_i_8_n_0 ),
        .I1(\axi_rdata[24]_i_9_n_0 ),
        .O(\axi_rdata_reg[24]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[25] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[25]),
        .Q(s_axi_rdata[25]),
        .R(SR));
  MUXF7 \axi_rdata_reg[25]_i_3 
       (.I0(\axi_rdata[25]_i_6_n_0 ),
        .I1(\axi_rdata[25]_i_7_n_0 ),
        .O(\axi_rdata_reg[25]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[25]_i_4 
       (.I0(\axi_rdata[25]_i_8_n_0 ),
        .I1(\axi_rdata[25]_i_9_n_0 ),
        .O(\axi_rdata_reg[25]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[26] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[26]),
        .Q(s_axi_rdata[26]),
        .R(SR));
  MUXF7 \axi_rdata_reg[26]_i_3 
       (.I0(\axi_rdata[26]_i_6_n_0 ),
        .I1(\axi_rdata[26]_i_7_n_0 ),
        .O(\axi_rdata_reg[26]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[26]_i_4 
       (.I0(\axi_rdata[26]_i_8_n_0 ),
        .I1(\axi_rdata[26]_i_9_n_0 ),
        .O(\axi_rdata_reg[26]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[27] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[27]),
        .Q(s_axi_rdata[27]),
        .R(SR));
  MUXF7 \axi_rdata_reg[27]_i_3 
       (.I0(\axi_rdata[27]_i_6_n_0 ),
        .I1(\axi_rdata[27]_i_7_n_0 ),
        .O(\axi_rdata_reg[27]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[27]_i_4 
       (.I0(\axi_rdata[27]_i_8_n_0 ),
        .I1(\axi_rdata[27]_i_9_n_0 ),
        .O(\axi_rdata_reg[27]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[28] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[28]),
        .Q(s_axi_rdata[28]),
        .R(SR));
  MUXF7 \axi_rdata_reg[28]_i_3 
       (.I0(\axi_rdata[28]_i_6_n_0 ),
        .I1(\axi_rdata[28]_i_7_n_0 ),
        .O(\axi_rdata_reg[28]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[28]_i_4 
       (.I0(\axi_rdata[28]_i_8_n_0 ),
        .I1(\axi_rdata[28]_i_9_n_0 ),
        .O(\axi_rdata_reg[28]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[29] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[29]),
        .Q(s_axi_rdata[29]),
        .R(SR));
  MUXF7 \axi_rdata_reg[29]_i_3 
       (.I0(\axi_rdata[29]_i_6_n_0 ),
        .I1(\axi_rdata[29]_i_7_n_0 ),
        .O(\axi_rdata_reg[29]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[29]_i_4 
       (.I0(\axi_rdata[29]_i_8_n_0 ),
        .I1(\axi_rdata[29]_i_9_n_0 ),
        .O(\axi_rdata_reg[29]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[2] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[2]),
        .Q(s_axi_rdata[2]),
        .R(SR));
  MUXF7 \axi_rdata_reg[2]_i_3 
       (.I0(\axi_rdata[2]_i_6_n_0 ),
        .I1(\axi_rdata[2]_i_7_n_0 ),
        .O(\axi_rdata_reg[2]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[2]_i_4 
       (.I0(\axi_rdata[2]_i_8_n_0 ),
        .I1(\axi_rdata[2]_i_9_n_0 ),
        .O(\axi_rdata_reg[2]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[30] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[30]),
        .Q(s_axi_rdata[30]),
        .R(SR));
  MUXF7 \axi_rdata_reg[30]_i_3 
       (.I0(\axi_rdata[30]_i_6_n_0 ),
        .I1(\axi_rdata[30]_i_7_n_0 ),
        .O(\axi_rdata_reg[30]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[30]_i_4 
       (.I0(\axi_rdata[30]_i_8_n_0 ),
        .I1(\axi_rdata[30]_i_9_n_0 ),
        .O(\axi_rdata_reg[30]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[31] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[31]),
        .Q(s_axi_rdata[31]),
        .R(SR));
  MUXF7 \axi_rdata_reg[31]_i_4 
       (.I0(\axi_rdata[31]_i_7_n_0 ),
        .I1(\axi_rdata[31]_i_8_n_0 ),
        .O(\axi_rdata_reg[31]_i_4_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[31]_i_5 
       (.I0(\axi_rdata[31]_i_9_n_0 ),
        .I1(\axi_rdata[31]_i_10_n_0 ),
        .O(\axi_rdata_reg[31]_i_5_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[3] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[3]),
        .Q(s_axi_rdata[3]),
        .R(SR));
  MUXF7 \axi_rdata_reg[3]_i_3 
       (.I0(\axi_rdata[3]_i_6_n_0 ),
        .I1(\axi_rdata[3]_i_7_n_0 ),
        .O(\axi_rdata_reg[3]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[3]_i_4 
       (.I0(\axi_rdata[3]_i_8_n_0 ),
        .I1(\axi_rdata[3]_i_9_n_0 ),
        .O(\axi_rdata_reg[3]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[4] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[4]),
        .Q(s_axi_rdata[4]),
        .R(SR));
  MUXF7 \axi_rdata_reg[4]_i_3 
       (.I0(\axi_rdata[4]_i_6_n_0 ),
        .I1(\axi_rdata[4]_i_7_n_0 ),
        .O(\axi_rdata_reg[4]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[4]_i_4 
       (.I0(\axi_rdata[4]_i_8_n_0 ),
        .I1(\axi_rdata[4]_i_9_n_0 ),
        .O(\axi_rdata_reg[4]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[5] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[5]),
        .Q(s_axi_rdata[5]),
        .R(SR));
  MUXF7 \axi_rdata_reg[5]_i_3 
       (.I0(\axi_rdata[5]_i_6_n_0 ),
        .I1(\axi_rdata[5]_i_7_n_0 ),
        .O(\axi_rdata_reg[5]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[5]_i_4 
       (.I0(\axi_rdata[5]_i_8_n_0 ),
        .I1(\axi_rdata[5]_i_9_n_0 ),
        .O(\axi_rdata_reg[5]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[6] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[6]),
        .Q(s_axi_rdata[6]),
        .R(SR));
  MUXF7 \axi_rdata_reg[6]_i_3 
       (.I0(\axi_rdata[6]_i_6_n_0 ),
        .I1(\axi_rdata[6]_i_7_n_0 ),
        .O(\axi_rdata_reg[6]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[6]_i_4 
       (.I0(\axi_rdata[6]_i_8_n_0 ),
        .I1(\axi_rdata[6]_i_9_n_0 ),
        .O(\axi_rdata_reg[6]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[7] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[7]),
        .Q(s_axi_rdata[7]),
        .R(SR));
  MUXF7 \axi_rdata_reg[7]_i_3 
       (.I0(\axi_rdata[7]_i_6_n_0 ),
        .I1(\axi_rdata[7]_i_7_n_0 ),
        .O(\axi_rdata_reg[7]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[7]_i_4 
       (.I0(\axi_rdata[7]_i_8_n_0 ),
        .I1(\axi_rdata[7]_i_9_n_0 ),
        .O(\axi_rdata_reg[7]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[8] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[8]),
        .Q(s_axi_rdata[8]),
        .R(SR));
  MUXF7 \axi_rdata_reg[8]_i_3 
       (.I0(\axi_rdata[8]_i_6_n_0 ),
        .I1(\axi_rdata[8]_i_7_n_0 ),
        .O(\axi_rdata_reg[8]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[8]_i_4 
       (.I0(\axi_rdata[8]_i_8_n_0 ),
        .I1(\axi_rdata[8]_i_9_n_0 ),
        .O(\axi_rdata_reg[8]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE \axi_rdata_reg[9] 
       (.C(s_axi_aclk),
        .CE(slv_reg_rden),
        .D(reg_data_out[9]),
        .Q(s_axi_rdata[9]),
        .R(SR));
  MUXF7 \axi_rdata_reg[9]_i_3 
       (.I0(\axi_rdata[9]_i_6_n_0 ),
        .I1(\axi_rdata[9]_i_7_n_0 ),
        .O(\axi_rdata_reg[9]_i_3_n_0 ),
        .S(sel0[2]));
  MUXF7 \axi_rdata_reg[9]_i_4 
       (.I0(\axi_rdata[9]_i_8_n_0 ),
        .I1(\axi_rdata[9]_i_9_n_0 ),
        .O(\axi_rdata_reg[9]_i_4_n_0 ),
        .S(sel0[2]));
  FDRE axi_rvalid_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_reg_0),
        .Q(s_axi_rvalid),
        .R(SR));
  LUT4 #(
    .INIT(16'h0080)) 
    axi_wready_i_1
       (.I0(aw_en_reg_0),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(axi_wready_reg_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(axi_wready_reg_0),
        .R(SR));
  LUT6 #(
    .INIT(64'hABABABFBFBFBABFB)) 
    \dac00_tdd_mode[0]_i_1 
       (.I0(guard_active),
        .I1(\dac00_tdd_mode_reg[0]_i_2_n_0 ),
        .I2(auto_trig_reg[3]),
        .I3(symbol_type[8]),
        .I4(auto_trig_reg[0]),
        .I5(symbol_type[9]),
        .O(dac00_tdd_mode0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dac00_tdd_mode[0]_i_3 
       (.I0(symbol_type[3]),
        .I1(symbol_type[2]),
        .I2(auto_trig_reg[1]),
        .I3(symbol_type[1]),
        .I4(auto_trig_reg[0]),
        .I5(symbol_type[0]),
        .O(\dac00_tdd_mode[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \dac00_tdd_mode[0]_i_4 
       (.I0(symbol_type[7]),
        .I1(symbol_type[6]),
        .I2(auto_trig_reg[1]),
        .I3(symbol_type[5]),
        .I4(auto_trig_reg[0]),
        .I5(symbol_type[4]),
        .O(\dac00_tdd_mode[0]_i_4_n_0 ));
  MUXF7 \dac00_tdd_mode_reg[0]_i_2 
       (.I0(\dac00_tdd_mode[0]_i_3_n_0 ),
        .I1(\dac00_tdd_mode[0]_i_4_n_0 ),
        .O(\dac00_tdd_mode_reg[0]_i_2_n_0 ),
        .S(auto_trig_reg[2]));
  LUT2 #(
    .INIT(4'h2)) 
    guard_active0_carry__0_i_1
       (.I0(guard_length[16]),
        .I1(out[16]),
        .O(DI));
  LUT2 #(
    .INIT(4'h9)) 
    guard_active0_carry__0_i_2
       (.I0(out[16]),
        .I1(guard_length[16]),
        .O(\symbol_count_reg[16] ));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_1
       (.I0(guard_length[14]),
        .I1(out[14]),
        .I2(out[15]),
        .I3(guard_length[15]),
        .O(\slv_reg18_reg[14]_1 [7]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_10
       (.I0(guard_length[12]),
        .I1(out[12]),
        .I2(guard_length[13]),
        .I3(out[13]),
        .O(\slv_reg18_reg[14]_0 [6]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_11
       (.I0(guard_length[10]),
        .I1(out[10]),
        .I2(guard_length[11]),
        .I3(out[11]),
        .O(\slv_reg18_reg[14]_0 [5]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_12
       (.I0(guard_length[8]),
        .I1(out[8]),
        .I2(guard_length[9]),
        .I3(out[9]),
        .O(\slv_reg18_reg[14]_0 [4]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_13
       (.I0(guard_length[6]),
        .I1(out[6]),
        .I2(guard_length[7]),
        .I3(out[7]),
        .O(\slv_reg18_reg[14]_0 [3]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_14
       (.I0(guard_length[4]),
        .I1(out[4]),
        .I2(guard_length[5]),
        .I3(out[5]),
        .O(\slv_reg18_reg[14]_0 [2]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_15
       (.I0(guard_length[2]),
        .I1(out[2]),
        .I2(guard_length[3]),
        .I3(out[3]),
        .O(\slv_reg18_reg[14]_0 [1]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_16
       (.I0(guard_length[0]),
        .I1(out[0]),
        .I2(guard_length[1]),
        .I3(out[1]),
        .O(\slv_reg18_reg[14]_0 [0]));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_2
       (.I0(guard_length[12]),
        .I1(out[12]),
        .I2(out[13]),
        .I3(guard_length[13]),
        .O(\slv_reg18_reg[14]_1 [6]));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_3
       (.I0(guard_length[10]),
        .I1(out[10]),
        .I2(out[11]),
        .I3(guard_length[11]),
        .O(\slv_reg18_reg[14]_1 [5]));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_4
       (.I0(guard_length[8]),
        .I1(out[8]),
        .I2(out[9]),
        .I3(guard_length[9]),
        .O(\slv_reg18_reg[14]_1 [4]));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_5
       (.I0(guard_length[6]),
        .I1(out[6]),
        .I2(out[7]),
        .I3(guard_length[7]),
        .O(\slv_reg18_reg[14]_1 [3]));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_6
       (.I0(guard_length[4]),
        .I1(out[4]),
        .I2(out[5]),
        .I3(guard_length[5]),
        .O(\slv_reg18_reg[14]_1 [2]));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_7
       (.I0(guard_length[2]),
        .I1(out[2]),
        .I2(out[3]),
        .I3(guard_length[3]),
        .O(\slv_reg18_reg[14]_1 [1]));
  LUT4 #(
    .INIT(16'h2F02)) 
    guard_active0_carry_i_8
       (.I0(guard_length[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(guard_length[1]),
        .O(\slv_reg18_reg[14]_1 [0]));
  LUT4 #(
    .INIT(16'h9009)) 
    guard_active0_carry_i_9
       (.I0(guard_length[14]),
        .I1(out[14]),
        .I2(guard_length[15]),
        .I3(out[15]),
        .O(\slv_reg18_reg[14]_0 [7]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_1
       (.I0(out[15]),
        .I1(trig_symbol[15]),
        .I2(out[16]),
        .I3(trig_symbol[16]),
        .O(\symbol_count_reg[15] [5]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_2
       (.I0(out[12]),
        .I1(trig_symbol[12]),
        .I2(trig_symbol[14]),
        .I3(out[14]),
        .I4(trig_symbol[13]),
        .I5(out[13]),
        .O(\symbol_count_reg[15] [4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_3
       (.I0(out[9]),
        .I1(trig_symbol[9]),
        .I2(trig_symbol[11]),
        .I3(out[11]),
        .I4(trig_symbol[10]),
        .I5(out[10]),
        .O(\symbol_count_reg[15] [3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_4
       (.I0(out[6]),
        .I1(trig_symbol[6]),
        .I2(trig_symbol[8]),
        .I3(out[8]),
        .I4(trig_symbol[7]),
        .I5(out[7]),
        .O(\symbol_count_reg[15] [2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_5
       (.I0(out[3]),
        .I1(trig_symbol[3]),
        .I2(trig_symbol[5]),
        .I3(out[5]),
        .I4(trig_symbol[4]),
        .I5(out[4]),
        .O(\symbol_count_reg[15] [1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    i__carry_i_6
       (.I0(out[0]),
        .I1(trig_symbol[0]),
        .I2(trig_symbol[2]),
        .I3(out[2]),
        .I4(trig_symbol[1]),
        .I5(out[1]),
        .O(\symbol_count_reg[15] [0]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg0[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg0[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(p_1_in[23]));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg0[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(p_1_in[31]));
  LUT5 #(
    .INIT(32'h00008000)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(axi_awready_reg_0),
        .I4(loc_w_addr[4]),
        .O(\slv_reg0[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg0[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(p_1_in[0]));
  FDRE \slv_reg0_reg[0] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg0_reg[15]_0 [0]),
        .R(SR));
  FDRE \slv_reg0_reg[10] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg0_reg[15]_0 [10]),
        .R(SR));
  FDRE \slv_reg0_reg[11] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg0_reg[15]_0 [11]),
        .R(SR));
  FDRE \slv_reg0_reg[12] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg0_reg[15]_0 [12]),
        .R(SR));
  FDRE \slv_reg0_reg[13] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg0_reg[15]_0 [13]),
        .R(SR));
  FDRE \slv_reg0_reg[14] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg0_reg[15]_0 [14]),
        .R(SR));
  FDRE \slv_reg0_reg[15] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg0_reg[15]_0 [15]),
        .R(SR));
  FDRE \slv_reg0_reg[16] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[16]),
        .Q(slv_reg0[16]),
        .R(SR));
  FDRE \slv_reg0_reg[17] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[17]),
        .Q(slv_reg0[17]),
        .R(SR));
  FDRE \slv_reg0_reg[18] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[18]),
        .Q(slv_reg0[18]),
        .R(SR));
  FDRE \slv_reg0_reg[19] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[19]),
        .Q(slv_reg0[19]),
        .R(SR));
  FDRE \slv_reg0_reg[1] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg0_reg[15]_0 [1]),
        .R(SR));
  FDRE \slv_reg0_reg[20] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[20]),
        .Q(slv_reg0[20]),
        .R(SR));
  FDRE \slv_reg0_reg[21] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[21]),
        .Q(slv_reg0[21]),
        .R(SR));
  FDRE \slv_reg0_reg[22] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[22]),
        .Q(slv_reg0[22]),
        .R(SR));
  FDRE \slv_reg0_reg[23] 
       (.C(s_axi_aclk),
        .CE(p_1_in[23]),
        .D(s_axi_wdata[23]),
        .Q(slv_reg0[23]),
        .R(SR));
  FDRE \slv_reg0_reg[24] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[24]),
        .Q(slv_reg0[24]),
        .R(SR));
  FDRE \slv_reg0_reg[25] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[25]),
        .Q(slv_reg0[25]),
        .R(SR));
  FDRE \slv_reg0_reg[26] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[26]),
        .Q(slv_reg0[26]),
        .R(SR));
  FDRE \slv_reg0_reg[27] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[27]),
        .Q(slv_reg0[27]),
        .R(SR));
  FDRE \slv_reg0_reg[28] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[28]),
        .Q(slv_reg0[28]),
        .R(SR));
  FDRE \slv_reg0_reg[29] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[29]),
        .Q(slv_reg0[29]),
        .R(SR));
  FDRE \slv_reg0_reg[2] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg0_reg[15]_0 [2]),
        .R(SR));
  FDRE \slv_reg0_reg[30] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[30]),
        .Q(slv_reg0[30]),
        .R(SR));
  FDRE \slv_reg0_reg[31] 
       (.C(s_axi_aclk),
        .CE(p_1_in[31]),
        .D(s_axi_wdata[31]),
        .Q(slv_reg0[31]),
        .R(SR));
  FDRE \slv_reg0_reg[3] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg0_reg[15]_0 [3]),
        .R(SR));
  FDRE \slv_reg0_reg[4] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg0_reg[15]_0 [4]),
        .R(SR));
  FDRE \slv_reg0_reg[5] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg0_reg[15]_0 [5]),
        .R(SR));
  FDRE \slv_reg0_reg[6] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg0_reg[15]_0 [6]),
        .R(SR));
  FDRE \slv_reg0_reg[7] 
       (.C(s_axi_aclk),
        .CE(p_1_in[0]),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg0_reg[15]_0 [7]),
        .R(SR));
  FDRE \slv_reg0_reg[8] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg0_reg[15]_0 [8]),
        .R(SR));
  FDRE \slv_reg0_reg[9] 
       (.C(s_axi_aclk),
        .CE(p_1_in[8]),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg0_reg[15]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg10[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg10[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg10[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg10[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg10[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg10[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \slv_reg10[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg10[7]_i_1_n_0 ));
  FDRE \slv_reg10_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg10[0]),
        .R(SR));
  FDRE \slv_reg10_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg10[10]),
        .R(SR));
  FDRE \slv_reg10_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg10[11]),
        .R(SR));
  FDRE \slv_reg10_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg10[12]),
        .R(SR));
  FDRE \slv_reg10_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg10[13]),
        .R(SR));
  FDRE \slv_reg10_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg10[14]),
        .R(SR));
  FDRE \slv_reg10_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg10[15]),
        .R(SR));
  FDRE \slv_reg10_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg10[16]),
        .R(SR));
  FDRE \slv_reg10_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg10[17]),
        .R(SR));
  FDRE \slv_reg10_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg10[18]),
        .R(SR));
  FDRE \slv_reg10_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg10[19]),
        .R(SR));
  FDRE \slv_reg10_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg10[1]),
        .R(SR));
  FDRE \slv_reg10_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg10[20]),
        .R(SR));
  FDRE \slv_reg10_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg10[21]),
        .R(SR));
  FDRE \slv_reg10_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg10[22]),
        .R(SR));
  FDRE \slv_reg10_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg10[23]),
        .R(SR));
  FDRE \slv_reg10_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg10[24]),
        .R(SR));
  FDRE \slv_reg10_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg10[25]),
        .R(SR));
  FDRE \slv_reg10_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg10[26]),
        .R(SR));
  FDRE \slv_reg10_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg10[27]),
        .R(SR));
  FDRE \slv_reg10_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg10[28]),
        .R(SR));
  FDRE \slv_reg10_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg10[29]),
        .R(SR));
  FDRE \slv_reg10_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg10[2]),
        .R(SR));
  FDRE \slv_reg10_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg10[30]),
        .R(SR));
  FDRE \slv_reg10_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg10[31]),
        .R(SR));
  FDRE \slv_reg10_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg10[3]),
        .R(SR));
  FDRE \slv_reg10_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg10[4]),
        .R(SR));
  FDRE \slv_reg10_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg10[5]),
        .R(SR));
  FDRE \slv_reg10_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg10[6]),
        .R(SR));
  FDRE \slv_reg10_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg10[7]),
        .R(SR));
  FDRE \slv_reg10_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg10[8]),
        .R(SR));
  FDRE \slv_reg10_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg10[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg10[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg11[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg11[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg11[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg11[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg11[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg11[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \slv_reg11[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg11[7]_i_1_n_0 ));
  FDRE \slv_reg11_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg11[0]),
        .R(SR));
  FDRE \slv_reg11_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg11[10]),
        .R(SR));
  FDRE \slv_reg11_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg11[11]),
        .R(SR));
  FDRE \slv_reg11_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg11[12]),
        .R(SR));
  FDRE \slv_reg11_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg11[13]),
        .R(SR));
  FDRE \slv_reg11_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg11[14]),
        .R(SR));
  FDRE \slv_reg11_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg11[15]),
        .R(SR));
  FDRE \slv_reg11_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg11[16]),
        .R(SR));
  FDRE \slv_reg11_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg11[17]),
        .R(SR));
  FDRE \slv_reg11_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg11[18]),
        .R(SR));
  FDRE \slv_reg11_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg11[19]),
        .R(SR));
  FDRE \slv_reg11_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg11[1]),
        .R(SR));
  FDRE \slv_reg11_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg11[20]),
        .R(SR));
  FDRE \slv_reg11_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg11[21]),
        .R(SR));
  FDRE \slv_reg11_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg11[22]),
        .R(SR));
  FDRE \slv_reg11_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg11[23]),
        .R(SR));
  FDRE \slv_reg11_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg11[24]),
        .R(SR));
  FDRE \slv_reg11_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg11[25]),
        .R(SR));
  FDRE \slv_reg11_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg11[26]),
        .R(SR));
  FDRE \slv_reg11_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg11[27]),
        .R(SR));
  FDRE \slv_reg11_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg11[28]),
        .R(SR));
  FDRE \slv_reg11_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg11[29]),
        .R(SR));
  FDRE \slv_reg11_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg11[2]),
        .R(SR));
  FDRE \slv_reg11_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg11[30]),
        .R(SR));
  FDRE \slv_reg11_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg11[31]),
        .R(SR));
  FDRE \slv_reg11_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg11[3]),
        .R(SR));
  FDRE \slv_reg11_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg11[4]),
        .R(SR));
  FDRE \slv_reg11_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg11[5]),
        .R(SR));
  FDRE \slv_reg11_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg11[6]),
        .R(SR));
  FDRE \slv_reg11_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg11[7]),
        .R(SR));
  FDRE \slv_reg11_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg11[8]),
        .R(SR));
  FDRE \slv_reg11_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg11[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg11[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg12[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg12[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg12[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg12[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg12[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg12[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \slv_reg12[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg12[7]_i_1_n_0 ));
  FDRE \slv_reg12_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg12_reg[19]_0 [0]),
        .R(SR));
  FDRE \slv_reg12_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg12_reg[19]_0 [10]),
        .R(SR));
  FDRE \slv_reg12_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg12_reg[19]_0 [11]),
        .R(SR));
  FDRE \slv_reg12_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg12_reg[19]_0 [12]),
        .R(SR));
  FDRE \slv_reg12_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg12_reg[19]_0 [13]),
        .R(SR));
  FDRE \slv_reg12_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg12_reg[19]_0 [14]),
        .R(SR));
  FDRE \slv_reg12_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg12_reg[19]_0 [15]),
        .R(SR));
  FDRE \slv_reg12_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg12_reg[19]_0 [16]),
        .R(SR));
  FDRE \slv_reg12_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg12_reg[19]_0 [17]),
        .R(SR));
  FDRE \slv_reg12_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg12_reg[19]_0 [18]),
        .R(SR));
  FDRE \slv_reg12_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg12_reg[19]_0 [19]),
        .R(SR));
  FDRE \slv_reg12_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg12_reg[19]_0 [1]),
        .R(SR));
  FDRE \slv_reg12_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg12[20]),
        .R(SR));
  FDRE \slv_reg12_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg12[21]),
        .R(SR));
  FDRE \slv_reg12_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg12[22]),
        .R(SR));
  FDRE \slv_reg12_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg12[23]),
        .R(SR));
  FDRE \slv_reg12_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg12[24]),
        .R(SR));
  FDRE \slv_reg12_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg12[25]),
        .R(SR));
  FDRE \slv_reg12_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg12[26]),
        .R(SR));
  FDRE \slv_reg12_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg12[27]),
        .R(SR));
  FDRE \slv_reg12_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg12[28]),
        .R(SR));
  FDRE \slv_reg12_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg12[29]),
        .R(SR));
  FDRE \slv_reg12_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg12_reg[19]_0 [2]),
        .R(SR));
  FDRE \slv_reg12_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg12[30]),
        .R(SR));
  FDRE \slv_reg12_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg12[31]),
        .R(SR));
  FDRE \slv_reg12_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg12_reg[19]_0 [3]),
        .R(SR));
  FDRE \slv_reg12_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg12_reg[19]_0 [4]),
        .R(SR));
  FDRE \slv_reg12_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg12_reg[19]_0 [5]),
        .R(SR));
  FDRE \slv_reg12_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg12_reg[19]_0 [6]),
        .R(SR));
  FDRE \slv_reg12_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg12_reg[19]_0 [7]),
        .R(SR));
  FDRE \slv_reg12_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg12_reg[19]_0 [8]),
        .R(SR));
  FDRE \slv_reg12_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg12[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg12_reg[19]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg13[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg13[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg13[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \slv_reg13[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg13[7]_i_1_n_0 ));
  FDRE \slv_reg13_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg13_reg[19]_0 [0]),
        .R(SR));
  FDRE \slv_reg13_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg13_reg[19]_0 [10]),
        .R(SR));
  FDRE \slv_reg13_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg13_reg[19]_0 [11]),
        .R(SR));
  FDRE \slv_reg13_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg13_reg[19]_0 [12]),
        .R(SR));
  FDRE \slv_reg13_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg13_reg[19]_0 [13]),
        .R(SR));
  FDRE \slv_reg13_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg13_reg[19]_0 [14]),
        .R(SR));
  FDRE \slv_reg13_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg13_reg[19]_0 [15]),
        .R(SR));
  FDRE \slv_reg13_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg13_reg[19]_0 [16]),
        .R(SR));
  FDRE \slv_reg13_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg13_reg[19]_0 [17]),
        .R(SR));
  FDRE \slv_reg13_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg13_reg[19]_0 [18]),
        .R(SR));
  FDRE \slv_reg13_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg13_reg[19]_0 [19]),
        .R(SR));
  FDRE \slv_reg13_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg13_reg[19]_0 [1]),
        .R(SR));
  FDRE \slv_reg13_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg13[20]),
        .R(SR));
  FDRE \slv_reg13_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg13[21]),
        .R(SR));
  FDRE \slv_reg13_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg13[22]),
        .R(SR));
  FDRE \slv_reg13_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg13[23]),
        .R(SR));
  FDRE \slv_reg13_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg13[24]),
        .R(SR));
  FDRE \slv_reg13_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg13[25]),
        .R(SR));
  FDRE \slv_reg13_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg13[26]),
        .R(SR));
  FDRE \slv_reg13_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg13[27]),
        .R(SR));
  FDRE \slv_reg13_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg13[28]),
        .R(SR));
  FDRE \slv_reg13_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg13[29]),
        .R(SR));
  FDRE \slv_reg13_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg13_reg[19]_0 [2]),
        .R(SR));
  FDRE \slv_reg13_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg13[30]),
        .R(SR));
  FDRE \slv_reg13_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg13[31]),
        .R(SR));
  FDRE \slv_reg13_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg13_reg[19]_0 [3]),
        .R(SR));
  FDRE \slv_reg13_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg13_reg[19]_0 [4]),
        .R(SR));
  FDRE \slv_reg13_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg13_reg[19]_0 [5]),
        .R(SR));
  FDRE \slv_reg13_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg13_reg[19]_0 [6]),
        .R(SR));
  FDRE \slv_reg13_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg13_reg[19]_0 [7]),
        .R(SR));
  FDRE \slv_reg13_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg13_reg[19]_0 [8]),
        .R(SR));
  FDRE \slv_reg13_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg13[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg13_reg[19]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg14[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg14[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg14[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg14[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg14[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg14[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \slv_reg14[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg14[7]_i_1_n_0 ));
  FDRE \slv_reg14_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg14_reg[19]_0 [0]),
        .R(SR));
  FDRE \slv_reg14_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg14_reg[19]_0 [10]),
        .R(SR));
  FDRE \slv_reg14_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg14_reg[19]_0 [11]),
        .R(SR));
  FDRE \slv_reg14_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg14_reg[19]_0 [12]),
        .R(SR));
  FDRE \slv_reg14_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg14_reg[19]_0 [13]),
        .R(SR));
  FDRE \slv_reg14_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg14_reg[19]_0 [14]),
        .R(SR));
  FDRE \slv_reg14_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg14_reg[19]_0 [15]),
        .R(SR));
  FDRE \slv_reg14_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg14_reg[19]_0 [16]),
        .R(SR));
  FDRE \slv_reg14_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg14_reg[19]_0 [17]),
        .R(SR));
  FDRE \slv_reg14_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg14_reg[19]_0 [18]),
        .R(SR));
  FDRE \slv_reg14_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg14_reg[19]_0 [19]),
        .R(SR));
  FDRE \slv_reg14_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg14_reg[19]_0 [1]),
        .R(SR));
  FDRE \slv_reg14_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg14[20]),
        .R(SR));
  FDRE \slv_reg14_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg14[21]),
        .R(SR));
  FDRE \slv_reg14_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg14[22]),
        .R(SR));
  FDRE \slv_reg14_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg14[23]),
        .R(SR));
  FDRE \slv_reg14_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg14[24]),
        .R(SR));
  FDRE \slv_reg14_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg14[25]),
        .R(SR));
  FDRE \slv_reg14_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg14[26]),
        .R(SR));
  FDRE \slv_reg14_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg14[27]),
        .R(SR));
  FDRE \slv_reg14_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg14[28]),
        .R(SR));
  FDRE \slv_reg14_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg14[29]),
        .R(SR));
  FDRE \slv_reg14_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg14_reg[19]_0 [2]),
        .R(SR));
  FDRE \slv_reg14_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg14[30]),
        .R(SR));
  FDRE \slv_reg14_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg14[31]),
        .R(SR));
  FDRE \slv_reg14_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg14_reg[19]_0 [3]),
        .R(SR));
  FDRE \slv_reg14_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg14_reg[19]_0 [4]),
        .R(SR));
  FDRE \slv_reg14_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg14_reg[19]_0 [5]),
        .R(SR));
  FDRE \slv_reg14_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg14_reg[19]_0 [6]),
        .R(SR));
  FDRE \slv_reg14_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg14_reg[19]_0 [7]),
        .R(SR));
  FDRE \slv_reg14_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg14_reg[19]_0 [8]),
        .R(SR));
  FDRE \slv_reg14_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg14[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg14_reg[19]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg15[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg15[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg15[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \slv_reg15[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg15[7]_i_1_n_0 ));
  FDRE \slv_reg15_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg15_reg[19]_0 [0]),
        .R(SR));
  FDRE \slv_reg15_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg15_reg[19]_0 [10]),
        .R(SR));
  FDRE \slv_reg15_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg15_reg[19]_0 [11]),
        .R(SR));
  FDRE \slv_reg15_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg15_reg[19]_0 [12]),
        .R(SR));
  FDRE \slv_reg15_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg15_reg[19]_0 [13]),
        .R(SR));
  FDRE \slv_reg15_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg15_reg[19]_0 [14]),
        .R(SR));
  FDRE \slv_reg15_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg15_reg[19]_0 [15]),
        .R(SR));
  FDRE \slv_reg15_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg15_reg[19]_0 [16]),
        .R(SR));
  FDRE \slv_reg15_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(\slv_reg15_reg[19]_0 [17]),
        .R(SR));
  FDRE \slv_reg15_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(\slv_reg15_reg[19]_0 [18]),
        .R(SR));
  FDRE \slv_reg15_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(\slv_reg15_reg[19]_0 [19]),
        .R(SR));
  FDRE \slv_reg15_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg15_reg[19]_0 [1]),
        .R(SR));
  FDRE \slv_reg15_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg15[20]),
        .R(SR));
  FDRE \slv_reg15_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg15[21]),
        .R(SR));
  FDRE \slv_reg15_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg15[22]),
        .R(SR));
  FDRE \slv_reg15_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg15[23]),
        .R(SR));
  FDRE \slv_reg15_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg15[24]),
        .R(SR));
  FDRE \slv_reg15_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg15[25]),
        .R(SR));
  FDRE \slv_reg15_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg15[26]),
        .R(SR));
  FDRE \slv_reg15_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg15[27]),
        .R(SR));
  FDRE \slv_reg15_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg15[28]),
        .R(SR));
  FDRE \slv_reg15_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg15[29]),
        .R(SR));
  FDRE \slv_reg15_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg15_reg[19]_0 [2]),
        .R(SR));
  FDRE \slv_reg15_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg15[30]),
        .R(SR));
  FDRE \slv_reg15_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg15[31]),
        .R(SR));
  FDRE \slv_reg15_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg15_reg[19]_0 [3]),
        .R(SR));
  FDRE \slv_reg15_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg15_reg[19]_0 [4]),
        .R(SR));
  FDRE \slv_reg15_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg15_reg[19]_0 [5]),
        .R(SR));
  FDRE \slv_reg15_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg15_reg[19]_0 [6]),
        .R(SR));
  FDRE \slv_reg15_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg15_reg[19]_0 [7]),
        .R(SR));
  FDRE \slv_reg15_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg15_reg[19]_0 [8]),
        .R(SR));
  FDRE \slv_reg15_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg15[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg15_reg[19]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg16[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg16[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg16[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg16[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg16[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg16[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \slv_reg16[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg16[7]_i_1_n_0 ));
  FDRE \slv_reg16_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg16[0]),
        .R(SR));
  FDRE \slv_reg16_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg16[10]),
        .R(SR));
  FDRE \slv_reg16_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg16[11]),
        .R(SR));
  FDRE \slv_reg16_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg16[12]),
        .R(SR));
  FDRE \slv_reg16_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg16[13]),
        .R(SR));
  FDRE \slv_reg16_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg16[14]),
        .R(SR));
  FDRE \slv_reg16_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg16[15]),
        .R(SR));
  FDRE \slv_reg16_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg16[16]),
        .R(SR));
  FDRE \slv_reg16_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg16[17]),
        .R(SR));
  FDRE \slv_reg16_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg16[18]),
        .R(SR));
  FDRE \slv_reg16_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg16[19]),
        .R(SR));
  FDRE \slv_reg16_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg16[1]),
        .R(SR));
  FDRE \slv_reg16_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg16[20]),
        .R(SR));
  FDRE \slv_reg16_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg16[21]),
        .R(SR));
  FDRE \slv_reg16_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg16[22]),
        .R(SR));
  FDRE \slv_reg16_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg16[23]),
        .R(SR));
  FDRE \slv_reg16_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg16[24]),
        .R(SR));
  FDRE \slv_reg16_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg16[25]),
        .R(SR));
  FDRE \slv_reg16_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg16[26]),
        .R(SR));
  FDRE \slv_reg16_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg16[27]),
        .R(SR));
  FDRE \slv_reg16_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg16[28]),
        .R(SR));
  FDRE \slv_reg16_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg16[29]),
        .R(SR));
  FDRE \slv_reg16_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg16[2]),
        .R(SR));
  FDRE \slv_reg16_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg16[30]),
        .R(SR));
  FDRE \slv_reg16_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg16[31]),
        .R(SR));
  FDRE \slv_reg16_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg16[3]),
        .R(SR));
  FDRE \slv_reg16_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg16[4]),
        .R(SR));
  FDRE \slv_reg16_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg16[5]),
        .R(SR));
  FDRE \slv_reg16_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg16[6]),
        .R(SR));
  FDRE \slv_reg16_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg16[7]),
        .R(SR));
  FDRE \slv_reg16_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg16[8]),
        .R(SR));
  FDRE \slv_reg16_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg16[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg16[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg17[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg17[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg17[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg17[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg17[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg17[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \slv_reg17[31]_i_2 
       (.I0(axi_wready_reg_0),
        .I1(s_axi_awvalid),
        .I2(s_axi_wvalid),
        .I3(axi_awready_reg_0),
        .I4(loc_w_addr[4]),
        .O(\slv_reg17[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg17[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg17[7]_i_1_n_0 ));
  FDRE \slv_reg17_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg17_reg_n_0_[0] ),
        .R(SR));
  FDRE \slv_reg17_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg17_reg_n_0_[10] ),
        .R(SR));
  FDRE \slv_reg17_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg17_reg_n_0_[11] ),
        .R(SR));
  FDRE \slv_reg17_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg17_reg_n_0_[12] ),
        .R(SR));
  FDRE \slv_reg17_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg17_reg_n_0_[13] ),
        .R(SR));
  FDRE \slv_reg17_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg17_reg_n_0_[14] ),
        .R(SR));
  FDRE \slv_reg17_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg17_reg_n_0_[15] ),
        .R(SR));
  FDRE \slv_reg17_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(\slv_reg17_reg_n_0_[16] ),
        .R(SR));
  FDRE \slv_reg17_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg17[17]),
        .R(SR));
  FDRE \slv_reg17_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg17[18]),
        .R(SR));
  FDRE \slv_reg17_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg17[19]),
        .R(SR));
  FDRE \slv_reg17_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg17_reg_n_0_[1] ),
        .R(SR));
  FDRE \slv_reg17_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg17[20]),
        .R(SR));
  FDRE \slv_reg17_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg17[21]),
        .R(SR));
  FDRE \slv_reg17_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg17[22]),
        .R(SR));
  FDRE \slv_reg17_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg17[23]),
        .R(SR));
  FDRE \slv_reg17_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg17[24]),
        .R(SR));
  FDRE \slv_reg17_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg17[25]),
        .R(SR));
  FDRE \slv_reg17_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg17[26]),
        .R(SR));
  FDRE \slv_reg17_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg17[27]),
        .R(SR));
  FDRE \slv_reg17_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg17[28]),
        .R(SR));
  FDRE \slv_reg17_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg17[29]),
        .R(SR));
  FDRE \slv_reg17_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg17_reg_n_0_[2] ),
        .R(SR));
  FDRE \slv_reg17_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg17[30]),
        .R(SR));
  FDRE \slv_reg17_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg17[31]),
        .R(SR));
  FDRE \slv_reg17_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg17_reg_n_0_[3] ),
        .R(SR));
  FDRE \slv_reg17_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg17_reg_n_0_[4] ),
        .R(SR));
  FDRE \slv_reg17_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg17_reg_n_0_[5] ),
        .R(SR));
  FDRE \slv_reg17_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg17_reg_n_0_[6] ),
        .R(SR));
  FDRE \slv_reg17_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg17_reg_n_0_[7] ),
        .R(SR));
  FDRE \slv_reg17_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg17_reg_n_0_[8] ),
        .R(SR));
  FDRE \slv_reg17_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg17[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg17_reg_n_0_[9] ),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg18[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg18[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg18[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg18[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg18[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg18[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg18[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg18[7]_i_1_n_0 ));
  FDRE \slv_reg18_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(guard_length[0]),
        .R(SR));
  FDRE \slv_reg18_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(guard_length[10]),
        .R(SR));
  FDRE \slv_reg18_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(guard_length[11]),
        .R(SR));
  FDRE \slv_reg18_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(guard_length[12]),
        .R(SR));
  FDRE \slv_reg18_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(guard_length[13]),
        .R(SR));
  FDRE \slv_reg18_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(guard_length[14]),
        .R(SR));
  FDRE \slv_reg18_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(guard_length[15]),
        .R(SR));
  FDRE \slv_reg18_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(guard_length[16]),
        .R(SR));
  FDRE \slv_reg18_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg18[17]),
        .R(SR));
  FDRE \slv_reg18_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg18[18]),
        .R(SR));
  FDRE \slv_reg18_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg18[19]),
        .R(SR));
  FDRE \slv_reg18_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(guard_length[1]),
        .R(SR));
  FDRE \slv_reg18_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg18[20]),
        .R(SR));
  FDRE \slv_reg18_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg18[21]),
        .R(SR));
  FDRE \slv_reg18_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg18[22]),
        .R(SR));
  FDRE \slv_reg18_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg18[23]),
        .R(SR));
  FDRE \slv_reg18_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg18[24]),
        .R(SR));
  FDRE \slv_reg18_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg18[25]),
        .R(SR));
  FDRE \slv_reg18_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg18[26]),
        .R(SR));
  FDRE \slv_reg18_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg18[27]),
        .R(SR));
  FDRE \slv_reg18_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg18[28]),
        .R(SR));
  FDRE \slv_reg18_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg18[29]),
        .R(SR));
  FDRE \slv_reg18_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(guard_length[2]),
        .R(SR));
  FDRE \slv_reg18_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg18[30]),
        .R(SR));
  FDRE \slv_reg18_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg18[31]),
        .R(SR));
  FDRE \slv_reg18_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(guard_length[3]),
        .R(SR));
  FDRE \slv_reg18_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(guard_length[4]),
        .R(SR));
  FDRE \slv_reg18_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(guard_length[5]),
        .R(SR));
  FDRE \slv_reg18_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(guard_length[6]),
        .R(SR));
  FDRE \slv_reg18_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(guard_length[7]),
        .R(SR));
  FDRE \slv_reg18_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(guard_length[8]),
        .R(SR));
  FDRE \slv_reg18_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg18[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(guard_length[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg19[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg19[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg19[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg19[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg19[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg19[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg19[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg19[7]_i_1_n_0 ));
  FDRE \slv_reg19_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(symbol_length[0]),
        .R(SR));
  FDRE \slv_reg19_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(symbol_length[10]),
        .R(SR));
  FDRE \slv_reg19_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(symbol_length[11]),
        .R(SR));
  FDRE \slv_reg19_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(symbol_length[12]),
        .R(SR));
  FDRE \slv_reg19_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(symbol_length[13]),
        .R(SR));
  FDRE \slv_reg19_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(symbol_length[14]),
        .R(SR));
  FDRE \slv_reg19_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(symbol_length[15]),
        .R(SR));
  FDRE \slv_reg19_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(symbol_length[16]),
        .R(SR));
  FDRE \slv_reg19_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg19[17]),
        .R(SR));
  FDRE \slv_reg19_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg19[18]),
        .R(SR));
  FDRE \slv_reg19_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg19[19]),
        .R(SR));
  FDRE \slv_reg19_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(symbol_length[1]),
        .R(SR));
  FDRE \slv_reg19_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg19[20]),
        .R(SR));
  FDRE \slv_reg19_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg19[21]),
        .R(SR));
  FDRE \slv_reg19_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg19[22]),
        .R(SR));
  FDRE \slv_reg19_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg19[23]),
        .R(SR));
  FDRE \slv_reg19_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg19[24]),
        .R(SR));
  FDRE \slv_reg19_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg19[25]),
        .R(SR));
  FDRE \slv_reg19_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg19[26]),
        .R(SR));
  FDRE \slv_reg19_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg19[27]),
        .R(SR));
  FDRE \slv_reg19_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg19[28]),
        .R(SR));
  FDRE \slv_reg19_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg19[29]),
        .R(SR));
  FDRE \slv_reg19_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(symbol_length[2]),
        .R(SR));
  FDRE \slv_reg19_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg19[30]),
        .R(SR));
  FDRE \slv_reg19_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg19[31]),
        .R(SR));
  FDRE \slv_reg19_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(symbol_length[3]),
        .R(SR));
  FDRE \slv_reg19_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(symbol_length[4]),
        .R(SR));
  FDRE \slv_reg19_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(symbol_length[5]),
        .R(SR));
  FDRE \slv_reg19_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(symbol_length[6]),
        .R(SR));
  FDRE \slv_reg19_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(symbol_length[7]),
        .R(SR));
  FDRE \slv_reg19_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(symbol_length[8]),
        .R(SR));
  FDRE \slv_reg19_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg19[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(symbol_length[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg1[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg1[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg1[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \slv_reg1[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg1_reg[15]_0 [0]),
        .R(SR));
  FDRE \slv_reg1_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(\slv_reg1_reg[15]_0 [10]),
        .R(SR));
  FDRE \slv_reg1_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(\slv_reg1_reg[15]_0 [11]),
        .R(SR));
  FDRE \slv_reg1_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(\slv_reg1_reg[15]_0 [12]),
        .R(SR));
  FDRE \slv_reg1_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(\slv_reg1_reg[15]_0 [13]),
        .R(SR));
  FDRE \slv_reg1_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(\slv_reg1_reg[15]_0 [14]),
        .R(SR));
  FDRE \slv_reg1_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(\slv_reg1_reg[15]_0 [15]),
        .R(SR));
  FDRE \slv_reg1_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(SR));
  FDRE \slv_reg1_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(SR));
  FDRE \slv_reg1_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(SR));
  FDRE \slv_reg1_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(SR));
  FDRE \slv_reg1_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg1_reg[15]_0 [1]),
        .R(SR));
  FDRE \slv_reg1_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(SR));
  FDRE \slv_reg1_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(SR));
  FDRE \slv_reg1_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(SR));
  FDRE \slv_reg1_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(SR));
  FDRE \slv_reg1_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(SR));
  FDRE \slv_reg1_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(SR));
  FDRE \slv_reg1_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(SR));
  FDRE \slv_reg1_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(SR));
  FDRE \slv_reg1_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(SR));
  FDRE \slv_reg1_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(SR));
  FDRE \slv_reg1_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg1_reg[15]_0 [2]),
        .R(SR));
  FDRE \slv_reg1_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(SR));
  FDRE \slv_reg1_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(SR));
  FDRE \slv_reg1_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg1_reg[15]_0 [3]),
        .R(SR));
  FDRE \slv_reg1_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(\slv_reg1_reg[15]_0 [4]),
        .R(SR));
  FDRE \slv_reg1_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(\slv_reg1_reg[15]_0 [5]),
        .R(SR));
  FDRE \slv_reg1_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(\slv_reg1_reg[15]_0 [6]),
        .R(SR));
  FDRE \slv_reg1_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(\slv_reg1_reg[15]_0 [7]),
        .R(SR));
  FDRE \slv_reg1_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(\slv_reg1_reg[15]_0 [8]),
        .R(SR));
  FDRE \slv_reg1_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(\slv_reg1_reg[15]_0 [9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg20[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg20[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg20[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg20[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg20[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg20[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg20[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg17[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg20[7]_i_1_n_0 ));
  FDRE \slv_reg20_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(symbol_type[0]),
        .R(SR));
  FDRE \slv_reg20_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg20[10]),
        .R(SR));
  FDRE \slv_reg20_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg20[11]),
        .R(SR));
  FDRE \slv_reg20_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg20[12]),
        .R(SR));
  FDRE \slv_reg20_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg20[13]),
        .R(SR));
  FDRE \slv_reg20_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg20[14]),
        .R(SR));
  FDRE \slv_reg20_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg20[15]),
        .R(SR));
  FDRE \slv_reg20_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg20[16]),
        .R(SR));
  FDRE \slv_reg20_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg20[17]),
        .R(SR));
  FDRE \slv_reg20_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg20[18]),
        .R(SR));
  FDRE \slv_reg20_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg20[19]),
        .R(SR));
  FDRE \slv_reg20_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(symbol_type[1]),
        .R(SR));
  FDRE \slv_reg20_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg20[20]),
        .R(SR));
  FDRE \slv_reg20_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg20[21]),
        .R(SR));
  FDRE \slv_reg20_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg20[22]),
        .R(SR));
  FDRE \slv_reg20_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg20[23]),
        .R(SR));
  FDRE \slv_reg20_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg20[24]),
        .R(SR));
  FDRE \slv_reg20_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg20[25]),
        .R(SR));
  FDRE \slv_reg20_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg20[26]),
        .R(SR));
  FDRE \slv_reg20_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg20[27]),
        .R(SR));
  FDRE \slv_reg20_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg20[28]),
        .R(SR));
  FDRE \slv_reg20_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg20[29]),
        .R(SR));
  FDRE \slv_reg20_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(symbol_type[2]),
        .R(SR));
  FDRE \slv_reg20_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg20[30]),
        .R(SR));
  FDRE \slv_reg20_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg20[31]),
        .R(SR));
  FDRE \slv_reg20_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(symbol_type[3]),
        .R(SR));
  FDRE \slv_reg20_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(symbol_type[4]),
        .R(SR));
  FDRE \slv_reg20_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(symbol_type[5]),
        .R(SR));
  FDRE \slv_reg20_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(symbol_type[6]),
        .R(SR));
  FDRE \slv_reg20_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(symbol_type[7]),
        .R(SR));
  FDRE \slv_reg20_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(symbol_type[8]),
        .R(SR));
  FDRE \slv_reg20_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg20[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(symbol_type[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg2[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg2[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg2[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \slv_reg2[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(Q),
        .R(SR));
  FDRE \slv_reg2_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(SR));
  FDRE \slv_reg2_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(SR));
  FDRE \slv_reg2_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(SR));
  FDRE \slv_reg2_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(SR));
  FDRE \slv_reg2_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(SR));
  FDRE \slv_reg2_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(SR));
  FDRE \slv_reg2_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(SR));
  FDRE \slv_reg2_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(SR));
  FDRE \slv_reg2_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(SR));
  FDRE \slv_reg2_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(SR));
  FDSE \slv_reg2_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .S(SR));
  FDRE \slv_reg2_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(SR));
  FDRE \slv_reg2_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(SR));
  FDRE \slv_reg2_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(SR));
  FDRE \slv_reg2_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(SR));
  FDRE \slv_reg2_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(SR));
  FDRE \slv_reg2_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(SR));
  FDRE \slv_reg2_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(SR));
  FDRE \slv_reg2_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(SR));
  FDRE \slv_reg2_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(SR));
  FDRE \slv_reg2_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(SR));
  FDRE \slv_reg2_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(SR));
  FDRE \slv_reg2_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(SR));
  FDRE \slv_reg2_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(SR));
  FDRE \slv_reg2_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(SR));
  FDRE \slv_reg2_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(SR));
  FDRE \slv_reg2_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(SR));
  FDRE \slv_reg2_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(SR));
  FDRE \slv_reg2_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(SR));
  FDRE \slv_reg2_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(SR));
  FDRE \slv_reg2_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg3[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg3[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg3[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \slv_reg3[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg3[7]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(\slv_reg3_reg[3]_0 [0]),
        .R(SR));
  FDRE \slv_reg3_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(SR));
  FDRE \slv_reg3_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(SR));
  FDRE \slv_reg3_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(SR));
  FDRE \slv_reg3_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(SR));
  FDRE \slv_reg3_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(SR));
  FDRE \slv_reg3_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(SR));
  FDRE \slv_reg3_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(SR));
  FDRE \slv_reg3_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(SR));
  FDRE \slv_reg3_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(SR));
  FDRE \slv_reg3_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(SR));
  FDRE \slv_reg3_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(\slv_reg3_reg[3]_0 [1]),
        .R(SR));
  FDRE \slv_reg3_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(SR));
  FDRE \slv_reg3_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(SR));
  FDRE \slv_reg3_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(SR));
  FDRE \slv_reg3_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(SR));
  FDRE \slv_reg3_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(SR));
  FDRE \slv_reg3_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(SR));
  FDRE \slv_reg3_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(SR));
  FDRE \slv_reg3_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(SR));
  FDRE \slv_reg3_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(SR));
  FDRE \slv_reg3_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(SR));
  FDRE \slv_reg3_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(\slv_reg3_reg[3]_0 [2]),
        .R(SR));
  FDRE \slv_reg3_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(SR));
  FDRE \slv_reg3_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(SR));
  FDRE \slv_reg3_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(\slv_reg3_reg[3]_0 [3]),
        .R(SR));
  FDRE \slv_reg3_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(SR));
  FDRE \slv_reg3_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(SR));
  FDRE \slv_reg3_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(SR));
  FDRE \slv_reg3_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(SR));
  FDRE \slv_reg3_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(SR));
  FDRE \slv_reg3_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg3[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg4[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg4[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg4[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg4[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg4[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg4[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \slv_reg4[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg4[7]_i_1_n_0 ));
  FDRE \slv_reg4_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(trig_symbol[0]),
        .R(SR));
  FDRE \slv_reg4_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(trig_symbol[10]),
        .R(SR));
  FDRE \slv_reg4_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(trig_symbol[11]),
        .R(SR));
  FDRE \slv_reg4_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(trig_symbol[12]),
        .R(SR));
  FDRE \slv_reg4_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(trig_symbol[13]),
        .R(SR));
  FDRE \slv_reg4_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(trig_symbol[14]),
        .R(SR));
  FDRE \slv_reg4_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(trig_symbol[15]),
        .R(SR));
  FDRE \slv_reg4_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(trig_symbol[16]),
        .R(SR));
  FDRE \slv_reg4_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg4[17]),
        .R(SR));
  FDRE \slv_reg4_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg4[18]),
        .R(SR));
  FDRE \slv_reg4_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg4[19]),
        .R(SR));
  FDRE \slv_reg4_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(trig_symbol[1]),
        .R(SR));
  FDRE \slv_reg4_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg4[20]),
        .R(SR));
  FDRE \slv_reg4_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg4[21]),
        .R(SR));
  FDRE \slv_reg4_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg4[22]),
        .R(SR));
  FDRE \slv_reg4_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg4[23]),
        .R(SR));
  FDRE \slv_reg4_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg4[24]),
        .R(SR));
  FDRE \slv_reg4_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg4[25]),
        .R(SR));
  FDRE \slv_reg4_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg4[26]),
        .R(SR));
  FDRE \slv_reg4_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg4[27]),
        .R(SR));
  FDRE \slv_reg4_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg4[28]),
        .R(SR));
  FDRE \slv_reg4_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg4[29]),
        .R(SR));
  FDRE \slv_reg4_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(trig_symbol[2]),
        .R(SR));
  FDRE \slv_reg4_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg4[30]),
        .R(SR));
  FDRE \slv_reg4_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg4[31]),
        .R(SR));
  FDRE \slv_reg4_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(trig_symbol[3]),
        .R(SR));
  FDRE \slv_reg4_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(trig_symbol[4]),
        .R(SR));
  FDRE \slv_reg4_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(trig_symbol[5]),
        .R(SR));
  FDRE \slv_reg4_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(trig_symbol[6]),
        .R(SR));
  FDRE \slv_reg4_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(trig_symbol[7]),
        .R(SR));
  FDRE \slv_reg4_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(trig_symbol[8]),
        .R(SR));
  FDRE \slv_reg4_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg4[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(trig_symbol[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg5[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg5[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg5[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg5[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg5[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg5[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \slv_reg5[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg5[7]_i_1_n_0 ));
  FDRE \slv_reg5_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(trig_ofdm[0]),
        .R(SR));
  FDRE \slv_reg5_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg5[10]),
        .R(SR));
  FDRE \slv_reg5_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg5[11]),
        .R(SR));
  FDRE \slv_reg5_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg5[12]),
        .R(SR));
  FDRE \slv_reg5_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg5[13]),
        .R(SR));
  FDRE \slv_reg5_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg5[14]),
        .R(SR));
  FDRE \slv_reg5_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg5[15]),
        .R(SR));
  FDRE \slv_reg5_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg5[16]),
        .R(SR));
  FDRE \slv_reg5_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg5[17]),
        .R(SR));
  FDRE \slv_reg5_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg5[18]),
        .R(SR));
  FDRE \slv_reg5_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg5[19]),
        .R(SR));
  FDRE \slv_reg5_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(trig_ofdm[1]),
        .R(SR));
  FDRE \slv_reg5_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg5[20]),
        .R(SR));
  FDRE \slv_reg5_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg5[21]),
        .R(SR));
  FDRE \slv_reg5_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg5[22]),
        .R(SR));
  FDRE \slv_reg5_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg5[23]),
        .R(SR));
  FDRE \slv_reg5_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg5[24]),
        .R(SR));
  FDRE \slv_reg5_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg5[25]),
        .R(SR));
  FDRE \slv_reg5_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg5[26]),
        .R(SR));
  FDRE \slv_reg5_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg5[27]),
        .R(SR));
  FDRE \slv_reg5_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg5[28]),
        .R(SR));
  FDRE \slv_reg5_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg5[29]),
        .R(SR));
  FDRE \slv_reg5_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(trig_ofdm[2]),
        .R(SR));
  FDRE \slv_reg5_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg5[30]),
        .R(SR));
  FDRE \slv_reg5_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg5[31]),
        .R(SR));
  FDRE \slv_reg5_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(trig_ofdm[3]),
        .R(SR));
  FDRE \slv_reg5_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg5[4]),
        .R(SR));
  FDRE \slv_reg5_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg5[5]),
        .R(SR));
  FDRE \slv_reg5_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg5[6]),
        .R(SR));
  FDRE \slv_reg5_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg5[7]),
        .R(SR));
  FDRE \slv_reg5_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg5[8]),
        .R(SR));
  FDRE \slv_reg5_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg5[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg5[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg6[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg6[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg6[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg6[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg6[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg6[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \slv_reg6[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg6[7]_i_1_n_0 ));
  FDRE \slv_reg6_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(trig),
        .R(SR));
  FDRE \slv_reg6_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg6[10]),
        .R(SR));
  FDRE \slv_reg6_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg6[11]),
        .R(SR));
  FDRE \slv_reg6_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg6[12]),
        .R(SR));
  FDRE \slv_reg6_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg6[13]),
        .R(SR));
  FDRE \slv_reg6_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg6[14]),
        .R(SR));
  FDRE \slv_reg6_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg6[15]),
        .R(SR));
  FDRE \slv_reg6_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg6[16]),
        .R(SR));
  FDRE \slv_reg6_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg6[17]),
        .R(SR));
  FDRE \slv_reg6_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg6[18]),
        .R(SR));
  FDRE \slv_reg6_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg6[19]),
        .R(SR));
  FDRE \slv_reg6_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg6[1]),
        .R(SR));
  FDRE \slv_reg6_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg6[20]),
        .R(SR));
  FDRE \slv_reg6_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg6[21]),
        .R(SR));
  FDRE \slv_reg6_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg6[22]),
        .R(SR));
  FDRE \slv_reg6_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg6[23]),
        .R(SR));
  FDRE \slv_reg6_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg6[24]),
        .R(SR));
  FDRE \slv_reg6_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg6[25]),
        .R(SR));
  FDRE \slv_reg6_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg6[26]),
        .R(SR));
  FDRE \slv_reg6_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg6[27]),
        .R(SR));
  FDRE \slv_reg6_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg6[28]),
        .R(SR));
  FDRE \slv_reg6_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg6[29]),
        .R(SR));
  FDRE \slv_reg6_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg6[2]),
        .R(SR));
  FDRE \slv_reg6_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg6[30]),
        .R(SR));
  FDRE \slv_reg6_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg6[31]),
        .R(SR));
  FDRE \slv_reg6_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg6[3]),
        .R(SR));
  FDRE \slv_reg6_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg6[4]),
        .R(SR));
  FDRE \slv_reg6_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg6[5]),
        .R(SR));
  FDRE \slv_reg6_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg6[6]),
        .R(SR));
  FDRE \slv_reg6_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg6[7]),
        .R(SR));
  FDRE \slv_reg6_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg6[8]),
        .R(SR));
  FDRE \slv_reg6_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg6[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg6[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \slv_reg7[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg7[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \slv_reg7[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg7[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \slv_reg7[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg7[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \slv_reg7[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg7[7]_i_1_n_0 ));
  FDRE \slv_reg7_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg7[0]),
        .R(SR));
  FDRE \slv_reg7_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg7[10]),
        .R(SR));
  FDRE \slv_reg7_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg7[11]),
        .R(SR));
  FDRE \slv_reg7_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg7[12]),
        .R(SR));
  FDRE \slv_reg7_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg7[13]),
        .R(SR));
  FDRE \slv_reg7_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg7[14]),
        .R(SR));
  FDRE \slv_reg7_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg7[15]),
        .R(SR));
  FDRE \slv_reg7_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg7[16]),
        .R(SR));
  FDRE \slv_reg7_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg7[17]),
        .R(SR));
  FDRE \slv_reg7_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg7[18]),
        .R(SR));
  FDRE \slv_reg7_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg7[19]),
        .R(SR));
  FDRE \slv_reg7_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg7[1]),
        .R(SR));
  FDRE \slv_reg7_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg7[20]),
        .R(SR));
  FDRE \slv_reg7_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg7[21]),
        .R(SR));
  FDRE \slv_reg7_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg7[22]),
        .R(SR));
  FDRE \slv_reg7_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg7[23]),
        .R(SR));
  FDRE \slv_reg7_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg7[24]),
        .R(SR));
  FDRE \slv_reg7_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg7[25]),
        .R(SR));
  FDRE \slv_reg7_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg7[26]),
        .R(SR));
  FDRE \slv_reg7_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg7[27]),
        .R(SR));
  FDRE \slv_reg7_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg7[28]),
        .R(SR));
  FDRE \slv_reg7_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg7[29]),
        .R(SR));
  FDRE \slv_reg7_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg7[2]),
        .R(SR));
  FDRE \slv_reg7_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg7[30]),
        .R(SR));
  FDRE \slv_reg7_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg7[31]),
        .R(SR));
  FDRE \slv_reg7_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg7[3]),
        .R(SR));
  FDRE \slv_reg7_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg7[4]),
        .R(SR));
  FDRE \slv_reg7_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg7[5]),
        .R(SR));
  FDRE \slv_reg7_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg7[6]),
        .R(SR));
  FDRE \slv_reg7_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg7[7]),
        .R(SR));
  FDRE \slv_reg7_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg7[8]),
        .R(SR));
  FDRE \slv_reg7_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg7[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg7[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg8[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg8[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg8[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg8[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg8[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg8[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \slv_reg8[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg8[7]_i_1_n_0 ));
  FDRE \slv_reg8_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg8[0]),
        .R(SR));
  FDRE \slv_reg8_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg8[10]),
        .R(SR));
  FDRE \slv_reg8_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg8[11]),
        .R(SR));
  FDRE \slv_reg8_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg8[12]),
        .R(SR));
  FDRE \slv_reg8_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg8[13]),
        .R(SR));
  FDRE \slv_reg8_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg8[14]),
        .R(SR));
  FDRE \slv_reg8_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg8[15]),
        .R(SR));
  FDRE \slv_reg8_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg8[16]),
        .R(SR));
  FDRE \slv_reg8_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg8[17]),
        .R(SR));
  FDRE \slv_reg8_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg8[18]),
        .R(SR));
  FDRE \slv_reg8_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg8[19]),
        .R(SR));
  FDRE \slv_reg8_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg8[1]),
        .R(SR));
  FDRE \slv_reg8_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg8[20]),
        .R(SR));
  FDRE \slv_reg8_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg8[21]),
        .R(SR));
  FDRE \slv_reg8_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg8[22]),
        .R(SR));
  FDRE \slv_reg8_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg8[23]),
        .R(SR));
  FDRE \slv_reg8_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg8[24]),
        .R(SR));
  FDRE \slv_reg8_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg8[25]),
        .R(SR));
  FDRE \slv_reg8_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg8[26]),
        .R(SR));
  FDRE \slv_reg8_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg8[27]),
        .R(SR));
  FDRE \slv_reg8_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg8[28]),
        .R(SR));
  FDRE \slv_reg8_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg8[29]),
        .R(SR));
  FDRE \slv_reg8_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg8[2]),
        .R(SR));
  FDRE \slv_reg8_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg8[30]),
        .R(SR));
  FDRE \slv_reg8_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg8[31]),
        .R(SR));
  FDRE \slv_reg8_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg8[3]),
        .R(SR));
  FDRE \slv_reg8_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg8[4]),
        .R(SR));
  FDRE \slv_reg8_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg8[5]),
        .R(SR));
  FDRE \slv_reg8_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg8[6]),
        .R(SR));
  FDRE \slv_reg8_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg8[7]),
        .R(SR));
  FDRE \slv_reg8_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg8[8]),
        .R(SR));
  FDRE \slv_reg8_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg8[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg8[9]),
        .R(SR));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[15]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[1]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg9[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[23]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[2]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg9[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[31]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[3]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg9[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    \slv_reg9[7]_i_1 
       (.I0(loc_w_addr[0]),
        .I1(loc_w_addr[3]),
        .I2(\slv_reg0[31]_i_2_n_0 ),
        .I3(s_axi_wstrb[0]),
        .I4(loc_w_addr[2]),
        .I5(loc_w_addr[1]),
        .O(\slv_reg9[7]_i_1_n_0 ));
  FDRE \slv_reg9_reg[0] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[0]),
        .Q(slv_reg9[0]),
        .R(SR));
  FDRE \slv_reg9_reg[10] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[10]),
        .Q(slv_reg9[10]),
        .R(SR));
  FDRE \slv_reg9_reg[11] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[11]),
        .Q(slv_reg9[11]),
        .R(SR));
  FDRE \slv_reg9_reg[12] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[12]),
        .Q(slv_reg9[12]),
        .R(SR));
  FDRE \slv_reg9_reg[13] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[13]),
        .Q(slv_reg9[13]),
        .R(SR));
  FDRE \slv_reg9_reg[14] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[14]),
        .Q(slv_reg9[14]),
        .R(SR));
  FDRE \slv_reg9_reg[15] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[15]),
        .Q(slv_reg9[15]),
        .R(SR));
  FDRE \slv_reg9_reg[16] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[16]),
        .Q(slv_reg9[16]),
        .R(SR));
  FDRE \slv_reg9_reg[17] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[17]),
        .Q(slv_reg9[17]),
        .R(SR));
  FDRE \slv_reg9_reg[18] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[18]),
        .Q(slv_reg9[18]),
        .R(SR));
  FDRE \slv_reg9_reg[19] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[19]),
        .Q(slv_reg9[19]),
        .R(SR));
  FDRE \slv_reg9_reg[1] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[1]),
        .Q(slv_reg9[1]),
        .R(SR));
  FDRE \slv_reg9_reg[20] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[20]),
        .Q(slv_reg9[20]),
        .R(SR));
  FDRE \slv_reg9_reg[21] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[21]),
        .Q(slv_reg9[21]),
        .R(SR));
  FDRE \slv_reg9_reg[22] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[22]),
        .Q(slv_reg9[22]),
        .R(SR));
  FDRE \slv_reg9_reg[23] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[23]_i_1_n_0 ),
        .D(s_axi_wdata[23]),
        .Q(slv_reg9[23]),
        .R(SR));
  FDRE \slv_reg9_reg[24] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[24]),
        .Q(slv_reg9[24]),
        .R(SR));
  FDRE \slv_reg9_reg[25] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[25]),
        .Q(slv_reg9[25]),
        .R(SR));
  FDRE \slv_reg9_reg[26] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[26]),
        .Q(slv_reg9[26]),
        .R(SR));
  FDRE \slv_reg9_reg[27] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[27]),
        .Q(slv_reg9[27]),
        .R(SR));
  FDRE \slv_reg9_reg[28] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[28]),
        .Q(slv_reg9[28]),
        .R(SR));
  FDRE \slv_reg9_reg[29] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[29]),
        .Q(slv_reg9[29]),
        .R(SR));
  FDRE \slv_reg9_reg[2] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[2]),
        .Q(slv_reg9[2]),
        .R(SR));
  FDRE \slv_reg9_reg[30] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[30]),
        .Q(slv_reg9[30]),
        .R(SR));
  FDRE \slv_reg9_reg[31] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[31]_i_1_n_0 ),
        .D(s_axi_wdata[31]),
        .Q(slv_reg9[31]),
        .R(SR));
  FDRE \slv_reg9_reg[3] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[3]),
        .Q(slv_reg9[3]),
        .R(SR));
  FDRE \slv_reg9_reg[4] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[4]),
        .Q(slv_reg9[4]),
        .R(SR));
  FDRE \slv_reg9_reg[5] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[5]),
        .Q(slv_reg9[5]),
        .R(SR));
  FDRE \slv_reg9_reg[6] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[6]),
        .Q(slv_reg9[6]),
        .R(SR));
  FDRE \slv_reg9_reg[7] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[7]_i_1_n_0 ),
        .D(s_axi_wdata[7]),
        .Q(slv_reg9[7]),
        .R(SR));
  FDRE \slv_reg9_reg[8] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[8]),
        .Q(slv_reg9[8]),
        .R(SR));
  FDRE \slv_reg9_reg[9] 
       (.C(s_axi_aclk),
        .CE(\slv_reg9[15]_i_1_n_0 ),
        .D(s_axi_wdata[9]),
        .Q(slv_reg9[9]),
        .R(SR));
  LUT4 #(
    .INIT(16'h9009)) 
    symbol_count0_carry_i_1
       (.I0(out[15]),
        .I1(symbol_length[15]),
        .I2(out[16]),
        .I3(symbol_length[16]),
        .O(S[5]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    symbol_count0_carry_i_2
       (.I0(out[12]),
        .I1(symbol_length[12]),
        .I2(symbol_length[14]),
        .I3(out[14]),
        .I4(symbol_length[13]),
        .I5(out[13]),
        .O(S[4]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    symbol_count0_carry_i_3
       (.I0(out[9]),
        .I1(symbol_length[9]),
        .I2(symbol_length[11]),
        .I3(out[11]),
        .I4(symbol_length[10]),
        .I5(out[10]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    symbol_count0_carry_i_4
       (.I0(out[6]),
        .I1(symbol_length[6]),
        .I2(symbol_length[8]),
        .I3(out[8]),
        .I4(symbol_length[7]),
        .I5(out[7]),
        .O(S[2]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    symbol_count0_carry_i_5
       (.I0(out[3]),
        .I1(symbol_length[3]),
        .I2(symbol_length[5]),
        .I3(out[5]),
        .I4(symbol_length[4]),
        .I5(out[4]),
        .O(S[1]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    symbol_count0_carry_i_6
       (.I0(out[0]),
        .I1(symbol_length[0]),
        .I2(symbol_length[2]),
        .I3(out[2]),
        .I4(symbol_length[1]),
        .I5(out[1]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \symbol_count[0]_i_1 
       (.I0(Q),
        .I1(CO),
        .O(\slv_reg2_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    symbol_inc_i_1
       (.I0(CO),
        .I1(Q),
        .O(\slv_reg2_reg[0]_1 ));
endmodule

(* ORIG_REF_NAME = "exdes_tddrtsctrl_count" *) 
module rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count
   (trigger_0,
    auto_trig,
    s_axi_aclk,
    adc0_clk,
    enable_sig_reg_0);
  output trigger_0;
  input auto_trig;
  input s_axi_aclk;
  input adc0_clk;
  input [19:0]enable_sig_reg_0;

  wire adc0_clk;
  wire auto_trig;
  wire count1_carry_i_1_n_0;
  wire count1_carry_i_2_n_0;
  wire count1_carry_i_3_n_0;
  wire count1_carry_i_4_n_0;
  wire count1_carry_i_5_n_0;
  wire count1_carry_i_6_n_0;
  wire count1_carry_i_7_n_0;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire count1_carry_n_4;
  wire count1_carry_n_5;
  wire count1_carry_n_6;
  wire count1_carry_n_7;
  wire \count[0]_i_2_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_1 ;
  wire \count_reg[0]_i_1_n_10 ;
  wire \count_reg[0]_i_1_n_11 ;
  wire \count_reg[0]_i_1_n_12 ;
  wire \count_reg[0]_i_1_n_13 ;
  wire \count_reg[0]_i_1_n_14 ;
  wire \count_reg[0]_i_1_n_15 ;
  wire \count_reg[0]_i_1_n_2 ;
  wire \count_reg[0]_i_1_n_3 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[0]_i_1_n_8 ;
  wire \count_reg[0]_i_1_n_9 ;
  wire \count_reg[16]_i_1_n_12 ;
  wire \count_reg[16]_i_1_n_13 ;
  wire \count_reg[16]_i_1_n_14 ;
  wire \count_reg[16]_i_1_n_15 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_1 ;
  wire \count_reg[8]_i_1_n_10 ;
  wire \count_reg[8]_i_1_n_11 ;
  wire \count_reg[8]_i_1_n_12 ;
  wire \count_reg[8]_i_1_n_13 ;
  wire \count_reg[8]_i_1_n_14 ;
  wire \count_reg[8]_i_1_n_15 ;
  wire \count_reg[8]_i_1_n_2 ;
  wire \count_reg[8]_i_1_n_3 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_8 ;
  wire \count_reg[8]_i_1_n_9 ;
  (* async_reg = "true" *) wire enable_meta;
  wire enable_sig;
  wire [19:0]enable_sig_reg_0;
  (* async_reg = "true" *) wire enable_sync;
  wire p_0_in;
  wire s_axi_aclk;
  wire sel;
  wire trigger_0;
  wire [7:7]NLW_count1_carry_CO_UNCONNECTED;
  wire [6:0]NLW_count1_carry_O_UNCONNECTED;
  wire [7:3]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;

  CARRY8 count1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_count1_carry_CO_UNCONNECTED[7],p_0_in,count1_carry_n_2,count1_carry_n_3,count1_carry_n_4,count1_carry_n_5,count1_carry_n_6,count1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({sel,NLW_count1_carry_O_UNCONNECTED[6:0]}),
        .S({1'b1,count1_carry_i_1_n_0,count1_carry_i_2_n_0,count1_carry_i_3_n_0,count1_carry_i_4_n_0,count1_carry_i_5_n_0,count1_carry_i_6_n_0,count1_carry_i_7_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count1_carry_i_1
       (.I0(count_reg[18]),
        .I1(enable_sig_reg_0[18]),
        .I2(count_reg[19]),
        .I3(enable_sig_reg_0[19]),
        .O(count1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_2
       (.I0(count_reg[15]),
        .I1(enable_sig_reg_0[15]),
        .I2(enable_sig_reg_0[17]),
        .I3(count_reg[17]),
        .I4(enable_sig_reg_0[16]),
        .I5(count_reg[16]),
        .O(count1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_3
       (.I0(count_reg[12]),
        .I1(enable_sig_reg_0[12]),
        .I2(enable_sig_reg_0[14]),
        .I3(count_reg[14]),
        .I4(enable_sig_reg_0[13]),
        .I5(count_reg[13]),
        .O(count1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_4
       (.I0(count_reg[9]),
        .I1(enable_sig_reg_0[9]),
        .I2(enable_sig_reg_0[11]),
        .I3(count_reg[11]),
        .I4(enable_sig_reg_0[10]),
        .I5(count_reg[10]),
        .O(count1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_5
       (.I0(count_reg[6]),
        .I1(enable_sig_reg_0[6]),
        .I2(enable_sig_reg_0[8]),
        .I3(count_reg[8]),
        .I4(enable_sig_reg_0[7]),
        .I5(count_reg[7]),
        .O(count1_carry_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_6
       (.I0(count_reg[3]),
        .I1(enable_sig_reg_0[3]),
        .I2(enable_sig_reg_0[5]),
        .I3(count_reg[5]),
        .I4(enable_sig_reg_0[4]),
        .I5(count_reg[4]),
        .O(count1_carry_i_6_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_7
       (.I0(count_reg[0]),
        .I1(enable_sig_reg_0[0]),
        .I2(enable_sig_reg_0[2]),
        .I3(count_reg[2]),
        .I4(enable_sig_reg_0[1]),
        .I5(count_reg[1]),
        .O(count1_carry_i_7_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_15 ),
        .Q(count_reg[0]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\count_reg[0]_i_1_n_1 ,\count_reg[0]_i_1_n_2 ,\count_reg[0]_i_1_n_3 ,\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_8 ,\count_reg[0]_i_1_n_9 ,\count_reg[0]_i_1_n_10 ,\count_reg[0]_i_1_n_11 ,\count_reg[0]_i_1_n_12 ,\count_reg[0]_i_1_n_13 ,\count_reg[0]_i_1_n_14 ,\count_reg[0]_i_1_n_15 }),
        .S({count_reg[7:1],\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_13 ),
        .Q(count_reg[10]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_12 ),
        .Q(count_reg[11]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_11 ),
        .Q(count_reg[12]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_10 ),
        .Q(count_reg[13]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_9 ),
        .Q(count_reg[14]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_8 ),
        .Q(count_reg[15]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_15 ),
        .Q(count_reg[16]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[16]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[16]_i_1_CO_UNCONNECTED [7:3],\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [7:4],\count_reg[16]_i_1_n_12 ,\count_reg[16]_i_1_n_13 ,\count_reg[16]_i_1_n_14 ,\count_reg[16]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,count_reg[19:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_14 ),
        .Q(count_reg[17]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_13 ),
        .Q(count_reg[18]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[16]_i_1_n_12 ),
        .Q(count_reg[19]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_14 ),
        .Q(count_reg[1]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_13 ),
        .Q(count_reg[2]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_12 ),
        .Q(count_reg[3]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_11 ),
        .Q(count_reg[4]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_10 ),
        .Q(count_reg[5]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_9 ),
        .Q(count_reg[6]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[0]_i_1_n_8 ),
        .Q(count_reg[7]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_15 ),
        .Q(count_reg[8]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[8]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_reg[8]_i_1_n_0 ,\count_reg[8]_i_1_n_1 ,\count_reg[8]_i_1_n_2 ,\count_reg[8]_i_1_n_3 ,\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_8 ,\count_reg[8]_i_1_n_9 ,\count_reg[8]_i_1_n_10 ,\count_reg[8]_i_1_n_11 ,\count_reg[8]_i_1_n_12 ,\count_reg[8]_i_1_n_13 ,\count_reg[8]_i_1_n_14 ,\count_reg[8]_i_1_n_15 }),
        .S(count_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_axi_aclk),
        .CE(sel),
        .D(\count_reg[8]_i_1_n_14 ),
        .Q(count_reg[9]),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_meta_reg
       (.C(adc0_clk),
        .CE(1'b1),
        .D(enable_sig),
        .Q(enable_meta),
        .R(1'b0));
  FDRE enable_reg
       (.C(adc0_clk),
        .CE(1'b1),
        .D(enable_sync),
        .Q(trigger_0),
        .R(1'b0));
  FDRE enable_sig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(enable_sig),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_sync_reg
       (.C(adc0_clk),
        .CE(1'b1),
        .D(enable_meta),
        .Q(enable_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "exdes_tddrtsctrl_count" *) 
module rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_0
   (trigger_1,
    auto_trig,
    s_axi_aclk,
    adc1_clk,
    enable_sig_reg_0);
  output trigger_1;
  input auto_trig;
  input s_axi_aclk;
  input adc1_clk;
  input [19:0]enable_sig_reg_0;

  wire adc1_clk;
  wire auto_trig;
  wire count1_carry_i_1__0_n_0;
  wire count1_carry_i_2__0_n_0;
  wire count1_carry_i_3__0_n_0;
  wire count1_carry_i_4__0_n_0;
  wire count1_carry_i_5__0_n_0;
  wire count1_carry_i_6__0_n_0;
  wire count1_carry_i_7__0_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire count1_carry_n_4;
  wire count1_carry_n_5;
  wire count1_carry_n_6;
  wire count1_carry_n_7;
  wire count1_carry_n_8;
  wire \count[0]_i_2__0_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_1__0_n_0 ;
  wire \count_reg[0]_i_1__0_n_1 ;
  wire \count_reg[0]_i_1__0_n_10 ;
  wire \count_reg[0]_i_1__0_n_11 ;
  wire \count_reg[0]_i_1__0_n_12 ;
  wire \count_reg[0]_i_1__0_n_13 ;
  wire \count_reg[0]_i_1__0_n_14 ;
  wire \count_reg[0]_i_1__0_n_15 ;
  wire \count_reg[0]_i_1__0_n_2 ;
  wire \count_reg[0]_i_1__0_n_3 ;
  wire \count_reg[0]_i_1__0_n_4 ;
  wire \count_reg[0]_i_1__0_n_5 ;
  wire \count_reg[0]_i_1__0_n_6 ;
  wire \count_reg[0]_i_1__0_n_7 ;
  wire \count_reg[0]_i_1__0_n_8 ;
  wire \count_reg[0]_i_1__0_n_9 ;
  wire \count_reg[16]_i_1__0_n_12 ;
  wire \count_reg[16]_i_1__0_n_13 ;
  wire \count_reg[16]_i_1__0_n_14 ;
  wire \count_reg[16]_i_1__0_n_15 ;
  wire \count_reg[16]_i_1__0_n_5 ;
  wire \count_reg[16]_i_1__0_n_6 ;
  wire \count_reg[16]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_0 ;
  wire \count_reg[8]_i_1__0_n_1 ;
  wire \count_reg[8]_i_1__0_n_10 ;
  wire \count_reg[8]_i_1__0_n_11 ;
  wire \count_reg[8]_i_1__0_n_12 ;
  wire \count_reg[8]_i_1__0_n_13 ;
  wire \count_reg[8]_i_1__0_n_14 ;
  wire \count_reg[8]_i_1__0_n_15 ;
  wire \count_reg[8]_i_1__0_n_2 ;
  wire \count_reg[8]_i_1__0_n_3 ;
  wire \count_reg[8]_i_1__0_n_4 ;
  wire \count_reg[8]_i_1__0_n_5 ;
  wire \count_reg[8]_i_1__0_n_6 ;
  wire \count_reg[8]_i_1__0_n_7 ;
  wire \count_reg[8]_i_1__0_n_8 ;
  wire \count_reg[8]_i_1__0_n_9 ;
  (* async_reg = "true" *) wire enable_meta;
  wire enable_sig;
  wire [19:0]enable_sig_reg_0;
  (* async_reg = "true" *) wire enable_sync;
  wire s_axi_aclk;
  wire trigger_1;
  wire [7:7]NLW_count1_carry_CO_UNCONNECTED;
  wire [6:0]NLW_count1_carry_O_UNCONNECTED;
  wire [7:3]\NLW_count_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[16]_i_1__0_O_UNCONNECTED ;

  CARRY8 count1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_count1_carry_CO_UNCONNECTED[7],count1_carry_n_1,count1_carry_n_2,count1_carry_n_3,count1_carry_n_4,count1_carry_n_5,count1_carry_n_6,count1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({count1_carry_n_8,NLW_count1_carry_O_UNCONNECTED[6:0]}),
        .S({1'b1,count1_carry_i_1__0_n_0,count1_carry_i_2__0_n_0,count1_carry_i_3__0_n_0,count1_carry_i_4__0_n_0,count1_carry_i_5__0_n_0,count1_carry_i_6__0_n_0,count1_carry_i_7__0_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count1_carry_i_1__0
       (.I0(count_reg[18]),
        .I1(enable_sig_reg_0[18]),
        .I2(count_reg[19]),
        .I3(enable_sig_reg_0[19]),
        .O(count1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_2__0
       (.I0(count_reg[15]),
        .I1(enable_sig_reg_0[15]),
        .I2(enable_sig_reg_0[17]),
        .I3(count_reg[17]),
        .I4(enable_sig_reg_0[16]),
        .I5(count_reg[16]),
        .O(count1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_3__0
       (.I0(count_reg[12]),
        .I1(enable_sig_reg_0[12]),
        .I2(enable_sig_reg_0[14]),
        .I3(count_reg[14]),
        .I4(enable_sig_reg_0[13]),
        .I5(count_reg[13]),
        .O(count1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_4__0
       (.I0(count_reg[9]),
        .I1(enable_sig_reg_0[9]),
        .I2(enable_sig_reg_0[11]),
        .I3(count_reg[11]),
        .I4(enable_sig_reg_0[10]),
        .I5(count_reg[10]),
        .O(count1_carry_i_4__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_5__0
       (.I0(count_reg[6]),
        .I1(enable_sig_reg_0[6]),
        .I2(enable_sig_reg_0[8]),
        .I3(count_reg[8]),
        .I4(enable_sig_reg_0[7]),
        .I5(count_reg[7]),
        .O(count1_carry_i_5__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_6__0
       (.I0(count_reg[3]),
        .I1(enable_sig_reg_0[3]),
        .I2(enable_sig_reg_0[5]),
        .I3(count_reg[5]),
        .I4(enable_sig_reg_0[4]),
        .I5(count_reg[4]),
        .O(count1_carry_i_6__0_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_7__0
       (.I0(count_reg[0]),
        .I1(enable_sig_reg_0[0]),
        .I2(enable_sig_reg_0[2]),
        .I3(count_reg[2]),
        .I4(enable_sig_reg_0[1]),
        .I5(count_reg[1]),
        .O(count1_carry_i_7__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2__0 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_15 ),
        .Q(count_reg[0]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[0]_i_1__0 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_reg[0]_i_1__0_n_0 ,\count_reg[0]_i_1__0_n_1 ,\count_reg[0]_i_1__0_n_2 ,\count_reg[0]_i_1__0_n_3 ,\count_reg[0]_i_1__0_n_4 ,\count_reg[0]_i_1__0_n_5 ,\count_reg[0]_i_1__0_n_6 ,\count_reg[0]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1__0_n_8 ,\count_reg[0]_i_1__0_n_9 ,\count_reg[0]_i_1__0_n_10 ,\count_reg[0]_i_1__0_n_11 ,\count_reg[0]_i_1__0_n_12 ,\count_reg[0]_i_1__0_n_13 ,\count_reg[0]_i_1__0_n_14 ,\count_reg[0]_i_1__0_n_15 }),
        .S({count_reg[7:1],\count[0]_i_2__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_13 ),
        .Q(count_reg[10]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_12 ),
        .Q(count_reg[11]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_11 ),
        .Q(count_reg[12]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_10 ),
        .Q(count_reg[13]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_9 ),
        .Q(count_reg[14]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_8 ),
        .Q(count_reg[15]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__0_n_15 ),
        .Q(count_reg[16]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[16]_i_1__0 
       (.CI(\count_reg[8]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[16]_i_1__0_CO_UNCONNECTED [7:3],\count_reg[16]_i_1__0_n_5 ,\count_reg[16]_i_1__0_n_6 ,\count_reg[16]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1__0_O_UNCONNECTED [7:4],\count_reg[16]_i_1__0_n_12 ,\count_reg[16]_i_1__0_n_13 ,\count_reg[16]_i_1__0_n_14 ,\count_reg[16]_i_1__0_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,count_reg[19:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__0_n_14 ),
        .Q(count_reg[17]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__0_n_13 ),
        .Q(count_reg[18]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__0_n_12 ),
        .Q(count_reg[19]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_14 ),
        .Q(count_reg[1]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_13 ),
        .Q(count_reg[2]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_12 ),
        .Q(count_reg[3]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_11 ),
        .Q(count_reg[4]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_10 ),
        .Q(count_reg[5]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_9 ),
        .Q(count_reg[6]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__0_n_8 ),
        .Q(count_reg[7]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_15 ),
        .Q(count_reg[8]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[8]_i_1__0 
       (.CI(\count_reg[0]_i_1__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_reg[8]_i_1__0_n_0 ,\count_reg[8]_i_1__0_n_1 ,\count_reg[8]_i_1__0_n_2 ,\count_reg[8]_i_1__0_n_3 ,\count_reg[8]_i_1__0_n_4 ,\count_reg[8]_i_1__0_n_5 ,\count_reg[8]_i_1__0_n_6 ,\count_reg[8]_i_1__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__0_n_8 ,\count_reg[8]_i_1__0_n_9 ,\count_reg[8]_i_1__0_n_10 ,\count_reg[8]_i_1__0_n_11 ,\count_reg[8]_i_1__0_n_12 ,\count_reg[8]_i_1__0_n_13 ,\count_reg[8]_i_1__0_n_14 ,\count_reg[8]_i_1__0_n_15 }),
        .S(count_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__0_n_14 ),
        .Q(count_reg[9]),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_meta_reg
       (.C(adc1_clk),
        .CE(1'b1),
        .D(enable_sig),
        .Q(enable_meta),
        .R(1'b0));
  FDRE enable_reg
       (.C(adc1_clk),
        .CE(1'b1),
        .D(enable_sync),
        .Q(trigger_1),
        .R(1'b0));
  FDRE enable_sig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(count1_carry_n_1),
        .Q(enable_sig),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_sync_reg
       (.C(adc1_clk),
        .CE(1'b1),
        .D(enable_meta),
        .Q(enable_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "exdes_tddrtsctrl_count" *) 
module rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_1
   (trigger_2,
    auto_trig,
    s_axi_aclk,
    adc2_clk,
    enable_sig_reg_0);
  output trigger_2;
  input auto_trig;
  input s_axi_aclk;
  input adc2_clk;
  input [19:0]enable_sig_reg_0;

  wire adc2_clk;
  wire auto_trig;
  wire count1_carry_i_1__1_n_0;
  wire count1_carry_i_2__1_n_0;
  wire count1_carry_i_3__1_n_0;
  wire count1_carry_i_4__1_n_0;
  wire count1_carry_i_5__1_n_0;
  wire count1_carry_i_6__1_n_0;
  wire count1_carry_i_7__1_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire count1_carry_n_4;
  wire count1_carry_n_5;
  wire count1_carry_n_6;
  wire count1_carry_n_7;
  wire count1_carry_n_8;
  wire \count[0]_i_2__1_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_1__1_n_0 ;
  wire \count_reg[0]_i_1__1_n_1 ;
  wire \count_reg[0]_i_1__1_n_10 ;
  wire \count_reg[0]_i_1__1_n_11 ;
  wire \count_reg[0]_i_1__1_n_12 ;
  wire \count_reg[0]_i_1__1_n_13 ;
  wire \count_reg[0]_i_1__1_n_14 ;
  wire \count_reg[0]_i_1__1_n_15 ;
  wire \count_reg[0]_i_1__1_n_2 ;
  wire \count_reg[0]_i_1__1_n_3 ;
  wire \count_reg[0]_i_1__1_n_4 ;
  wire \count_reg[0]_i_1__1_n_5 ;
  wire \count_reg[0]_i_1__1_n_6 ;
  wire \count_reg[0]_i_1__1_n_7 ;
  wire \count_reg[0]_i_1__1_n_8 ;
  wire \count_reg[0]_i_1__1_n_9 ;
  wire \count_reg[16]_i_1__1_n_12 ;
  wire \count_reg[16]_i_1__1_n_13 ;
  wire \count_reg[16]_i_1__1_n_14 ;
  wire \count_reg[16]_i_1__1_n_15 ;
  wire \count_reg[16]_i_1__1_n_5 ;
  wire \count_reg[16]_i_1__1_n_6 ;
  wire \count_reg[16]_i_1__1_n_7 ;
  wire \count_reg[8]_i_1__1_n_0 ;
  wire \count_reg[8]_i_1__1_n_1 ;
  wire \count_reg[8]_i_1__1_n_10 ;
  wire \count_reg[8]_i_1__1_n_11 ;
  wire \count_reg[8]_i_1__1_n_12 ;
  wire \count_reg[8]_i_1__1_n_13 ;
  wire \count_reg[8]_i_1__1_n_14 ;
  wire \count_reg[8]_i_1__1_n_15 ;
  wire \count_reg[8]_i_1__1_n_2 ;
  wire \count_reg[8]_i_1__1_n_3 ;
  wire \count_reg[8]_i_1__1_n_4 ;
  wire \count_reg[8]_i_1__1_n_5 ;
  wire \count_reg[8]_i_1__1_n_6 ;
  wire \count_reg[8]_i_1__1_n_7 ;
  wire \count_reg[8]_i_1__1_n_8 ;
  wire \count_reg[8]_i_1__1_n_9 ;
  (* async_reg = "true" *) wire enable_meta;
  wire enable_sig;
  wire [19:0]enable_sig_reg_0;
  (* async_reg = "true" *) wire enable_sync;
  wire s_axi_aclk;
  wire trigger_2;
  wire [7:7]NLW_count1_carry_CO_UNCONNECTED;
  wire [6:0]NLW_count1_carry_O_UNCONNECTED;
  wire [7:3]\NLW_count_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[16]_i_1__1_O_UNCONNECTED ;

  CARRY8 count1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_count1_carry_CO_UNCONNECTED[7],count1_carry_n_1,count1_carry_n_2,count1_carry_n_3,count1_carry_n_4,count1_carry_n_5,count1_carry_n_6,count1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({count1_carry_n_8,NLW_count1_carry_O_UNCONNECTED[6:0]}),
        .S({1'b1,count1_carry_i_1__1_n_0,count1_carry_i_2__1_n_0,count1_carry_i_3__1_n_0,count1_carry_i_4__1_n_0,count1_carry_i_5__1_n_0,count1_carry_i_6__1_n_0,count1_carry_i_7__1_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count1_carry_i_1__1
       (.I0(count_reg[18]),
        .I1(enable_sig_reg_0[18]),
        .I2(count_reg[19]),
        .I3(enable_sig_reg_0[19]),
        .O(count1_carry_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_2__1
       (.I0(count_reg[15]),
        .I1(enable_sig_reg_0[15]),
        .I2(enable_sig_reg_0[17]),
        .I3(count_reg[17]),
        .I4(enable_sig_reg_0[16]),
        .I5(count_reg[16]),
        .O(count1_carry_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_3__1
       (.I0(count_reg[12]),
        .I1(enable_sig_reg_0[12]),
        .I2(enable_sig_reg_0[14]),
        .I3(count_reg[14]),
        .I4(enable_sig_reg_0[13]),
        .I5(count_reg[13]),
        .O(count1_carry_i_3__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_4__1
       (.I0(count_reg[9]),
        .I1(enable_sig_reg_0[9]),
        .I2(enable_sig_reg_0[11]),
        .I3(count_reg[11]),
        .I4(enable_sig_reg_0[10]),
        .I5(count_reg[10]),
        .O(count1_carry_i_4__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_5__1
       (.I0(count_reg[6]),
        .I1(enable_sig_reg_0[6]),
        .I2(enable_sig_reg_0[8]),
        .I3(count_reg[8]),
        .I4(enable_sig_reg_0[7]),
        .I5(count_reg[7]),
        .O(count1_carry_i_5__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_6__1
       (.I0(count_reg[3]),
        .I1(enable_sig_reg_0[3]),
        .I2(enable_sig_reg_0[5]),
        .I3(count_reg[5]),
        .I4(enable_sig_reg_0[4]),
        .I5(count_reg[4]),
        .O(count1_carry_i_6__1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_7__1
       (.I0(count_reg[0]),
        .I1(enable_sig_reg_0[0]),
        .I2(enable_sig_reg_0[2]),
        .I3(count_reg[2]),
        .I4(enable_sig_reg_0[1]),
        .I5(count_reg[1]),
        .O(count1_carry_i_7__1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2__1 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_15 ),
        .Q(count_reg[0]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[0]_i_1__1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_reg[0]_i_1__1_n_0 ,\count_reg[0]_i_1__1_n_1 ,\count_reg[0]_i_1__1_n_2 ,\count_reg[0]_i_1__1_n_3 ,\count_reg[0]_i_1__1_n_4 ,\count_reg[0]_i_1__1_n_5 ,\count_reg[0]_i_1__1_n_6 ,\count_reg[0]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1__1_n_8 ,\count_reg[0]_i_1__1_n_9 ,\count_reg[0]_i_1__1_n_10 ,\count_reg[0]_i_1__1_n_11 ,\count_reg[0]_i_1__1_n_12 ,\count_reg[0]_i_1__1_n_13 ,\count_reg[0]_i_1__1_n_14 ,\count_reg[0]_i_1__1_n_15 }),
        .S({count_reg[7:1],\count[0]_i_2__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_13 ),
        .Q(count_reg[10]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_12 ),
        .Q(count_reg[11]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_11 ),
        .Q(count_reg[12]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_10 ),
        .Q(count_reg[13]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_9 ),
        .Q(count_reg[14]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_8 ),
        .Q(count_reg[15]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__1_n_15 ),
        .Q(count_reg[16]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[16]_i_1__1 
       (.CI(\count_reg[8]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[16]_i_1__1_CO_UNCONNECTED [7:3],\count_reg[16]_i_1__1_n_5 ,\count_reg[16]_i_1__1_n_6 ,\count_reg[16]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1__1_O_UNCONNECTED [7:4],\count_reg[16]_i_1__1_n_12 ,\count_reg[16]_i_1__1_n_13 ,\count_reg[16]_i_1__1_n_14 ,\count_reg[16]_i_1__1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,count_reg[19:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__1_n_14 ),
        .Q(count_reg[17]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__1_n_13 ),
        .Q(count_reg[18]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__1_n_12 ),
        .Q(count_reg[19]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_14 ),
        .Q(count_reg[1]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_13 ),
        .Q(count_reg[2]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_12 ),
        .Q(count_reg[3]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_11 ),
        .Q(count_reg[4]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_10 ),
        .Q(count_reg[5]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_9 ),
        .Q(count_reg[6]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__1_n_8 ),
        .Q(count_reg[7]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_15 ),
        .Q(count_reg[8]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[8]_i_1__1 
       (.CI(\count_reg[0]_i_1__1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_reg[8]_i_1__1_n_0 ,\count_reg[8]_i_1__1_n_1 ,\count_reg[8]_i_1__1_n_2 ,\count_reg[8]_i_1__1_n_3 ,\count_reg[8]_i_1__1_n_4 ,\count_reg[8]_i_1__1_n_5 ,\count_reg[8]_i_1__1_n_6 ,\count_reg[8]_i_1__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__1_n_8 ,\count_reg[8]_i_1__1_n_9 ,\count_reg[8]_i_1__1_n_10 ,\count_reg[8]_i_1__1_n_11 ,\count_reg[8]_i_1__1_n_12 ,\count_reg[8]_i_1__1_n_13 ,\count_reg[8]_i_1__1_n_14 ,\count_reg[8]_i_1__1_n_15 }),
        .S(count_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__1_n_14 ),
        .Q(count_reg[9]),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_meta_reg
       (.C(adc2_clk),
        .CE(1'b1),
        .D(enable_sig),
        .Q(enable_meta),
        .R(1'b0));
  FDRE enable_reg
       (.C(adc2_clk),
        .CE(1'b1),
        .D(enable_sync),
        .Q(trigger_2),
        .R(1'b0));
  FDRE enable_sig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(count1_carry_n_1),
        .Q(enable_sig),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_sync_reg
       (.C(adc2_clk),
        .CE(1'b1),
        .D(enable_meta),
        .Q(enable_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "exdes_tddrtsctrl_count" *) 
module rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_2
   (trigger_3,
    auto_trig,
    s_axi_aclk,
    adc3_clk,
    enable_sig_reg_0);
  output trigger_3;
  input auto_trig;
  input s_axi_aclk;
  input adc3_clk;
  input [19:0]enable_sig_reg_0;

  wire adc3_clk;
  wire auto_trig;
  wire count1_carry_i_1__2_n_0;
  wire count1_carry_i_2__2_n_0;
  wire count1_carry_i_3__2_n_0;
  wire count1_carry_i_4__2_n_0;
  wire count1_carry_i_5__2_n_0;
  wire count1_carry_i_6__2_n_0;
  wire count1_carry_i_7__2_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire count1_carry_n_4;
  wire count1_carry_n_5;
  wire count1_carry_n_6;
  wire count1_carry_n_7;
  wire count1_carry_n_8;
  wire \count[0]_i_2__2_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_1__2_n_0 ;
  wire \count_reg[0]_i_1__2_n_1 ;
  wire \count_reg[0]_i_1__2_n_10 ;
  wire \count_reg[0]_i_1__2_n_11 ;
  wire \count_reg[0]_i_1__2_n_12 ;
  wire \count_reg[0]_i_1__2_n_13 ;
  wire \count_reg[0]_i_1__2_n_14 ;
  wire \count_reg[0]_i_1__2_n_15 ;
  wire \count_reg[0]_i_1__2_n_2 ;
  wire \count_reg[0]_i_1__2_n_3 ;
  wire \count_reg[0]_i_1__2_n_4 ;
  wire \count_reg[0]_i_1__2_n_5 ;
  wire \count_reg[0]_i_1__2_n_6 ;
  wire \count_reg[0]_i_1__2_n_7 ;
  wire \count_reg[0]_i_1__2_n_8 ;
  wire \count_reg[0]_i_1__2_n_9 ;
  wire \count_reg[16]_i_1__2_n_12 ;
  wire \count_reg[16]_i_1__2_n_13 ;
  wire \count_reg[16]_i_1__2_n_14 ;
  wire \count_reg[16]_i_1__2_n_15 ;
  wire \count_reg[16]_i_1__2_n_5 ;
  wire \count_reg[16]_i_1__2_n_6 ;
  wire \count_reg[16]_i_1__2_n_7 ;
  wire \count_reg[8]_i_1__2_n_0 ;
  wire \count_reg[8]_i_1__2_n_1 ;
  wire \count_reg[8]_i_1__2_n_10 ;
  wire \count_reg[8]_i_1__2_n_11 ;
  wire \count_reg[8]_i_1__2_n_12 ;
  wire \count_reg[8]_i_1__2_n_13 ;
  wire \count_reg[8]_i_1__2_n_14 ;
  wire \count_reg[8]_i_1__2_n_15 ;
  wire \count_reg[8]_i_1__2_n_2 ;
  wire \count_reg[8]_i_1__2_n_3 ;
  wire \count_reg[8]_i_1__2_n_4 ;
  wire \count_reg[8]_i_1__2_n_5 ;
  wire \count_reg[8]_i_1__2_n_6 ;
  wire \count_reg[8]_i_1__2_n_7 ;
  wire \count_reg[8]_i_1__2_n_8 ;
  wire \count_reg[8]_i_1__2_n_9 ;
  (* async_reg = "true" *) wire enable_meta;
  wire enable_sig;
  wire [19:0]enable_sig_reg_0;
  (* async_reg = "true" *) wire enable_sync;
  wire s_axi_aclk;
  wire trigger_3;
  wire [7:7]NLW_count1_carry_CO_UNCONNECTED;
  wire [6:0]NLW_count1_carry_O_UNCONNECTED;
  wire [7:3]\NLW_count_reg[16]_i_1__2_CO_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[16]_i_1__2_O_UNCONNECTED ;

  CARRY8 count1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_count1_carry_CO_UNCONNECTED[7],count1_carry_n_1,count1_carry_n_2,count1_carry_n_3,count1_carry_n_4,count1_carry_n_5,count1_carry_n_6,count1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({count1_carry_n_8,NLW_count1_carry_O_UNCONNECTED[6:0]}),
        .S({1'b1,count1_carry_i_1__2_n_0,count1_carry_i_2__2_n_0,count1_carry_i_3__2_n_0,count1_carry_i_4__2_n_0,count1_carry_i_5__2_n_0,count1_carry_i_6__2_n_0,count1_carry_i_7__2_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count1_carry_i_1__2
       (.I0(count_reg[18]),
        .I1(enable_sig_reg_0[18]),
        .I2(count_reg[19]),
        .I3(enable_sig_reg_0[19]),
        .O(count1_carry_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_2__2
       (.I0(count_reg[15]),
        .I1(enable_sig_reg_0[15]),
        .I2(enable_sig_reg_0[17]),
        .I3(count_reg[17]),
        .I4(enable_sig_reg_0[16]),
        .I5(count_reg[16]),
        .O(count1_carry_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_3__2
       (.I0(count_reg[12]),
        .I1(enable_sig_reg_0[12]),
        .I2(enable_sig_reg_0[14]),
        .I3(count_reg[14]),
        .I4(enable_sig_reg_0[13]),
        .I5(count_reg[13]),
        .O(count1_carry_i_3__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_4__2
       (.I0(count_reg[9]),
        .I1(enable_sig_reg_0[9]),
        .I2(enable_sig_reg_0[11]),
        .I3(count_reg[11]),
        .I4(enable_sig_reg_0[10]),
        .I5(count_reg[10]),
        .O(count1_carry_i_4__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_5__2
       (.I0(count_reg[6]),
        .I1(enable_sig_reg_0[6]),
        .I2(enable_sig_reg_0[8]),
        .I3(count_reg[8]),
        .I4(enable_sig_reg_0[7]),
        .I5(count_reg[7]),
        .O(count1_carry_i_5__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_6__2
       (.I0(count_reg[3]),
        .I1(enable_sig_reg_0[3]),
        .I2(enable_sig_reg_0[5]),
        .I3(count_reg[5]),
        .I4(enable_sig_reg_0[4]),
        .I5(count_reg[4]),
        .O(count1_carry_i_6__2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_7__2
       (.I0(count_reg[0]),
        .I1(enable_sig_reg_0[0]),
        .I2(enable_sig_reg_0[2]),
        .I3(count_reg[2]),
        .I4(enable_sig_reg_0[1]),
        .I5(count_reg[1]),
        .O(count1_carry_i_7__2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2__2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_15 ),
        .Q(count_reg[0]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[0]_i_1__2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_reg[0]_i_1__2_n_0 ,\count_reg[0]_i_1__2_n_1 ,\count_reg[0]_i_1__2_n_2 ,\count_reg[0]_i_1__2_n_3 ,\count_reg[0]_i_1__2_n_4 ,\count_reg[0]_i_1__2_n_5 ,\count_reg[0]_i_1__2_n_6 ,\count_reg[0]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1__2_n_8 ,\count_reg[0]_i_1__2_n_9 ,\count_reg[0]_i_1__2_n_10 ,\count_reg[0]_i_1__2_n_11 ,\count_reg[0]_i_1__2_n_12 ,\count_reg[0]_i_1__2_n_13 ,\count_reg[0]_i_1__2_n_14 ,\count_reg[0]_i_1__2_n_15 }),
        .S({count_reg[7:1],\count[0]_i_2__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_13 ),
        .Q(count_reg[10]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_12 ),
        .Q(count_reg[11]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_11 ),
        .Q(count_reg[12]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_10 ),
        .Q(count_reg[13]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_9 ),
        .Q(count_reg[14]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_8 ),
        .Q(count_reg[15]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__2_n_15 ),
        .Q(count_reg[16]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[16]_i_1__2 
       (.CI(\count_reg[8]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[16]_i_1__2_CO_UNCONNECTED [7:3],\count_reg[16]_i_1__2_n_5 ,\count_reg[16]_i_1__2_n_6 ,\count_reg[16]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1__2_O_UNCONNECTED [7:4],\count_reg[16]_i_1__2_n_12 ,\count_reg[16]_i_1__2_n_13 ,\count_reg[16]_i_1__2_n_14 ,\count_reg[16]_i_1__2_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,count_reg[19:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__2_n_14 ),
        .Q(count_reg[17]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__2_n_13 ),
        .Q(count_reg[18]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__2_n_12 ),
        .Q(count_reg[19]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_14 ),
        .Q(count_reg[1]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_13 ),
        .Q(count_reg[2]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_12 ),
        .Q(count_reg[3]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_11 ),
        .Q(count_reg[4]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_10 ),
        .Q(count_reg[5]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_9 ),
        .Q(count_reg[6]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__2_n_8 ),
        .Q(count_reg[7]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_15 ),
        .Q(count_reg[8]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[8]_i_1__2 
       (.CI(\count_reg[0]_i_1__2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_reg[8]_i_1__2_n_0 ,\count_reg[8]_i_1__2_n_1 ,\count_reg[8]_i_1__2_n_2 ,\count_reg[8]_i_1__2_n_3 ,\count_reg[8]_i_1__2_n_4 ,\count_reg[8]_i_1__2_n_5 ,\count_reg[8]_i_1__2_n_6 ,\count_reg[8]_i_1__2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__2_n_8 ,\count_reg[8]_i_1__2_n_9 ,\count_reg[8]_i_1__2_n_10 ,\count_reg[8]_i_1__2_n_11 ,\count_reg[8]_i_1__2_n_12 ,\count_reg[8]_i_1__2_n_13 ,\count_reg[8]_i_1__2_n_14 ,\count_reg[8]_i_1__2_n_15 }),
        .S(count_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__2_n_14 ),
        .Q(count_reg[9]),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_meta_reg
       (.C(adc3_clk),
        .CE(1'b1),
        .D(enable_sig),
        .Q(enable_meta),
        .R(1'b0));
  FDRE enable_reg
       (.C(adc3_clk),
        .CE(1'b1),
        .D(enable_sync),
        .Q(trigger_3),
        .R(1'b0));
  FDRE enable_sig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(count1_carry_n_1),
        .Q(enable_sig),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_sync_reg
       (.C(adc3_clk),
        .CE(1'b1),
        .D(enable_meta),
        .Q(enable_sync),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "exdes_tddrtsctrl_count" *) 
module rfdc_ex_tdd_module_i_0_exdes_tddrtsctrl_count_3
   (trigger_ext,
    auto_trig,
    s_axi_aclk,
    dac0_clk,
    enable_sig_reg_0);
  output trigger_ext;
  input auto_trig;
  input s_axi_aclk;
  input dac0_clk;
  input [19:0]enable_sig_reg_0;

  wire auto_trig;
  wire count1_carry_i_1__3_n_0;
  wire count1_carry_i_2__3_n_0;
  wire count1_carry_i_3__3_n_0;
  wire count1_carry_i_4__3_n_0;
  wire count1_carry_i_5__3_n_0;
  wire count1_carry_i_6__3_n_0;
  wire count1_carry_i_7__3_n_0;
  wire count1_carry_n_1;
  wire count1_carry_n_2;
  wire count1_carry_n_3;
  wire count1_carry_n_4;
  wire count1_carry_n_5;
  wire count1_carry_n_6;
  wire count1_carry_n_7;
  wire count1_carry_n_8;
  wire \count[0]_i_2__3_n_0 ;
  wire [19:0]count_reg;
  wire \count_reg[0]_i_1__3_n_0 ;
  wire \count_reg[0]_i_1__3_n_1 ;
  wire \count_reg[0]_i_1__3_n_10 ;
  wire \count_reg[0]_i_1__3_n_11 ;
  wire \count_reg[0]_i_1__3_n_12 ;
  wire \count_reg[0]_i_1__3_n_13 ;
  wire \count_reg[0]_i_1__3_n_14 ;
  wire \count_reg[0]_i_1__3_n_15 ;
  wire \count_reg[0]_i_1__3_n_2 ;
  wire \count_reg[0]_i_1__3_n_3 ;
  wire \count_reg[0]_i_1__3_n_4 ;
  wire \count_reg[0]_i_1__3_n_5 ;
  wire \count_reg[0]_i_1__3_n_6 ;
  wire \count_reg[0]_i_1__3_n_7 ;
  wire \count_reg[0]_i_1__3_n_8 ;
  wire \count_reg[0]_i_1__3_n_9 ;
  wire \count_reg[16]_i_1__3_n_12 ;
  wire \count_reg[16]_i_1__3_n_13 ;
  wire \count_reg[16]_i_1__3_n_14 ;
  wire \count_reg[16]_i_1__3_n_15 ;
  wire \count_reg[16]_i_1__3_n_5 ;
  wire \count_reg[16]_i_1__3_n_6 ;
  wire \count_reg[16]_i_1__3_n_7 ;
  wire \count_reg[8]_i_1__3_n_0 ;
  wire \count_reg[8]_i_1__3_n_1 ;
  wire \count_reg[8]_i_1__3_n_10 ;
  wire \count_reg[8]_i_1__3_n_11 ;
  wire \count_reg[8]_i_1__3_n_12 ;
  wire \count_reg[8]_i_1__3_n_13 ;
  wire \count_reg[8]_i_1__3_n_14 ;
  wire \count_reg[8]_i_1__3_n_15 ;
  wire \count_reg[8]_i_1__3_n_2 ;
  wire \count_reg[8]_i_1__3_n_3 ;
  wire \count_reg[8]_i_1__3_n_4 ;
  wire \count_reg[8]_i_1__3_n_5 ;
  wire \count_reg[8]_i_1__3_n_6 ;
  wire \count_reg[8]_i_1__3_n_7 ;
  wire \count_reg[8]_i_1__3_n_8 ;
  wire \count_reg[8]_i_1__3_n_9 ;
  wire dac0_clk;
  (* async_reg = "true" *) wire enable_meta;
  wire enable_sig;
  wire [19:0]enable_sig_reg_0;
  (* async_reg = "true" *) wire enable_sync;
  wire s_axi_aclk;
  wire trigger_ext;
  wire [7:7]NLW_count1_carry_CO_UNCONNECTED;
  wire [6:0]NLW_count1_carry_O_UNCONNECTED;
  wire [7:3]\NLW_count_reg[16]_i_1__3_CO_UNCONNECTED ;
  wire [7:4]\NLW_count_reg[16]_i_1__3_O_UNCONNECTED ;

  CARRY8 count1_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({NLW_count1_carry_CO_UNCONNECTED[7],count1_carry_n_1,count1_carry_n_2,count1_carry_n_3,count1_carry_n_4,count1_carry_n_5,count1_carry_n_6,count1_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({count1_carry_n_8,NLW_count1_carry_O_UNCONNECTED[6:0]}),
        .S({1'b1,count1_carry_i_1__3_n_0,count1_carry_i_2__3_n_0,count1_carry_i_3__3_n_0,count1_carry_i_4__3_n_0,count1_carry_i_5__3_n_0,count1_carry_i_6__3_n_0,count1_carry_i_7__3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    count1_carry_i_1__3
       (.I0(count_reg[18]),
        .I1(enable_sig_reg_0[18]),
        .I2(count_reg[19]),
        .I3(enable_sig_reg_0[19]),
        .O(count1_carry_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_2__3
       (.I0(count_reg[15]),
        .I1(enable_sig_reg_0[15]),
        .I2(enable_sig_reg_0[17]),
        .I3(count_reg[17]),
        .I4(enable_sig_reg_0[16]),
        .I5(count_reg[16]),
        .O(count1_carry_i_2__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_3__3
       (.I0(count_reg[12]),
        .I1(enable_sig_reg_0[12]),
        .I2(enable_sig_reg_0[14]),
        .I3(count_reg[14]),
        .I4(enable_sig_reg_0[13]),
        .I5(count_reg[13]),
        .O(count1_carry_i_3__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_4__3
       (.I0(count_reg[9]),
        .I1(enable_sig_reg_0[9]),
        .I2(enable_sig_reg_0[11]),
        .I3(count_reg[11]),
        .I4(enable_sig_reg_0[10]),
        .I5(count_reg[10]),
        .O(count1_carry_i_4__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_5__3
       (.I0(count_reg[6]),
        .I1(enable_sig_reg_0[6]),
        .I2(enable_sig_reg_0[8]),
        .I3(count_reg[8]),
        .I4(enable_sig_reg_0[7]),
        .I5(count_reg[7]),
        .O(count1_carry_i_5__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_6__3
       (.I0(count_reg[3]),
        .I1(enable_sig_reg_0[3]),
        .I2(enable_sig_reg_0[5]),
        .I3(count_reg[5]),
        .I4(enable_sig_reg_0[4]),
        .I5(count_reg[4]),
        .O(count1_carry_i_6__3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    count1_carry_i_7__3
       (.I0(count_reg[0]),
        .I1(enable_sig_reg_0[0]),
        .I2(enable_sig_reg_0[2]),
        .I3(count_reg[2]),
        .I4(enable_sig_reg_0[1]),
        .I5(count_reg[1]),
        .O(count1_carry_i_7__3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2__3 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_15 ),
        .Q(count_reg[0]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[0]_i_1__3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\count_reg[0]_i_1__3_n_0 ,\count_reg[0]_i_1__3_n_1 ,\count_reg[0]_i_1__3_n_2 ,\count_reg[0]_i_1__3_n_3 ,\count_reg[0]_i_1__3_n_4 ,\count_reg[0]_i_1__3_n_5 ,\count_reg[0]_i_1__3_n_6 ,\count_reg[0]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1__3_n_8 ,\count_reg[0]_i_1__3_n_9 ,\count_reg[0]_i_1__3_n_10 ,\count_reg[0]_i_1__3_n_11 ,\count_reg[0]_i_1__3_n_12 ,\count_reg[0]_i_1__3_n_13 ,\count_reg[0]_i_1__3_n_14 ,\count_reg[0]_i_1__3_n_15 }),
        .S({count_reg[7:1],\count[0]_i_2__3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_13 ),
        .Q(count_reg[10]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_12 ),
        .Q(count_reg[11]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_11 ),
        .Q(count_reg[12]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_10 ),
        .Q(count_reg[13]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_9 ),
        .Q(count_reg[14]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_8 ),
        .Q(count_reg[15]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__3_n_15 ),
        .Q(count_reg[16]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[16]_i_1__3 
       (.CI(\count_reg[8]_i_1__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_count_reg[16]_i_1__3_CO_UNCONNECTED [7:3],\count_reg[16]_i_1__3_n_5 ,\count_reg[16]_i_1__3_n_6 ,\count_reg[16]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1__3_O_UNCONNECTED [7:4],\count_reg[16]_i_1__3_n_12 ,\count_reg[16]_i_1__3_n_13 ,\count_reg[16]_i_1__3_n_14 ,\count_reg[16]_i_1__3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,count_reg[19:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__3_n_14 ),
        .Q(count_reg[17]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__3_n_13 ),
        .Q(count_reg[18]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[16]_i_1__3_n_12 ),
        .Q(count_reg[19]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_14 ),
        .Q(count_reg[1]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_13 ),
        .Q(count_reg[2]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_12 ),
        .Q(count_reg[3]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_11 ),
        .Q(count_reg[4]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_10 ),
        .Q(count_reg[5]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_9 ),
        .Q(count_reg[6]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[0]_i_1__3_n_8 ),
        .Q(count_reg[7]),
        .R(auto_trig));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_15 ),
        .Q(count_reg[8]),
        .R(auto_trig));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \count_reg[8]_i_1__3 
       (.CI(\count_reg[0]_i_1__3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\count_reg[8]_i_1__3_n_0 ,\count_reg[8]_i_1__3_n_1 ,\count_reg[8]_i_1__3_n_2 ,\count_reg[8]_i_1__3_n_3 ,\count_reg[8]_i_1__3_n_4 ,\count_reg[8]_i_1__3_n_5 ,\count_reg[8]_i_1__3_n_6 ,\count_reg[8]_i_1__3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1__3_n_8 ,\count_reg[8]_i_1__3_n_9 ,\count_reg[8]_i_1__3_n_10 ,\count_reg[8]_i_1__3_n_11 ,\count_reg[8]_i_1__3_n_12 ,\count_reg[8]_i_1__3_n_13 ,\count_reg[8]_i_1__3_n_14 ,\count_reg[8]_i_1__3_n_15 }),
        .S(count_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(s_axi_aclk),
        .CE(count1_carry_n_8),
        .D(\count_reg[8]_i_1__3_n_14 ),
        .Q(count_reg[9]),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_meta_reg
       (.C(dac0_clk),
        .CE(1'b1),
        .D(enable_sig),
        .Q(enable_meta),
        .R(1'b0));
  FDRE enable_reg
       (.C(dac0_clk),
        .CE(1'b1),
        .D(enable_sync),
        .Q(trigger_ext),
        .R(1'b0));
  FDRE enable_sig_reg
       (.C(s_axi_aclk),
        .CE(1'b1),
        .D(count1_carry_n_1),
        .Q(enable_sig),
        .R(auto_trig));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE enable_sync_reg
       (.C(dac0_clk),
        .CE(1'b1),
        .D(enable_meta),
        .Q(enable_sync),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
