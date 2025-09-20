// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:08:35 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_tdd_module_i_0/rfdc_ex_tdd_module_i_0_stub.v
// Design      : rfdc_ex_tdd_module_i_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "rfdc_ex_tdd_module_i_0,exdes_tddrtsctrl,{}" *) (* CORE_GENERATION_INFO = "rfdc_ex_tdd_module_i_0,exdes_tddrtsctrl,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=exdes_tddrtsctrl,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,C_COUNT_WIDTH=19,C_S_AXI_DATA_WIDTH=32,C_S_AXI_ADDR_WIDTH=7}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "exdes_tddrtsctrl,Vivado 2025.1" *) 
module rfdc_ex_tdd_module_i_0(dac0_clk, dac1_clk, dac2_clk, dac3_clk, adc0_clk, 
  adc1_clk, adc2_clk, adc3_clk, dac00_tdd_mode, dac01_tdd_mode, dac02_tdd_mode, dac03_tdd_mode, 
  dac10_tdd_mode, dac11_tdd_mode, dac12_tdd_mode, dac13_tdd_mode, dac20_tdd_mode, 
  dac21_tdd_mode, dac22_tdd_mode, dac23_tdd_mode, dac30_tdd_mode, dac31_tdd_mode, 
  dac32_tdd_mode, dac33_tdd_mode, adc00_tdd_mode, adc01_tdd_mode, adc02_tdd_mode, 
  adc03_tdd_mode, adc10_tdd_mode, adc11_tdd_mode, adc12_tdd_mode, adc13_tdd_mode, 
  adc20_tdd_mode, adc21_tdd_mode, adc22_tdd_mode, adc23_tdd_mode, adc30_tdd_mode, 
  adc31_tdd_mode, adc32_tdd_mode, adc33_tdd_mode, hw_trigger_en_0, trigger_0, 
  hw_trigger_en_1, trigger_1, hw_trigger_en_2, trigger_2, hw_trigger_en_3, trigger_3, 
  trigger_ext, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, 
  s_axi_wvalid, s_axi_wready, s_axi_wstrb, s_axi_bresp, s_axi_bvalid, s_axi_bready, 
  s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, 
  s_axi_rvalid, s_axi_rready, s_axi_aclk, s_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="dac1_clk,dac2_clk,dac3_clk,dac00_tdd_mode[0:0],dac01_tdd_mode[0:0],dac02_tdd_mode[0:0],dac03_tdd_mode[0:0],dac10_tdd_mode[0:0],dac11_tdd_mode[0:0],dac12_tdd_mode[0:0],dac13_tdd_mode[0:0],dac20_tdd_mode[0:0],dac21_tdd_mode[0:0],dac22_tdd_mode[0:0],dac23_tdd_mode[0:0],dac30_tdd_mode[0:0],dac31_tdd_mode[0:0],dac32_tdd_mode[0:0],dac33_tdd_mode[0:0],adc00_tdd_mode[0:0],adc01_tdd_mode[0:0],adc02_tdd_mode[0:0],adc03_tdd_mode[0:0],adc10_tdd_mode[0:0],adc11_tdd_mode[0:0],adc12_tdd_mode[0:0],adc13_tdd_mode[0:0],adc20_tdd_mode[0:0],adc21_tdd_mode[0:0],adc22_tdd_mode[0:0],adc23_tdd_mode[0:0],adc30_tdd_mode[0:0],adc31_tdd_mode[0:0],adc32_tdd_mode[0:0],adc33_tdd_mode[0:0],hw_trigger_en_0,trigger_0,hw_trigger_en_1,trigger_1,hw_trigger_en_2,trigger_2,hw_trigger_en_3,trigger_3,trigger_ext,s_axi_awaddr[6:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_wstrb[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[6:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_aresetn" */
/* synthesis syn_force_seq_prim="dac0_clk" */
/* synthesis syn_force_seq_prim="adc0_clk" */
/* synthesis syn_force_seq_prim="adc1_clk" */
/* synthesis syn_force_seq_prim="adc2_clk" */
/* synthesis syn_force_seq_prim="adc3_clk" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac0_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac0_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, INSERT_VIP 0" *) input dac0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac1_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac1_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, INSERT_VIP 0" *) input dac1_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac2_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac2_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, INSERT_VIP 0" *) input dac2_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 dac3_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac3_clk, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, INSERT_VIP 0" *) input dac3_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc0_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc0_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0" *) input adc0_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc1_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc1_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0" *) input adc1_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc2_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc2_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, INSERT_VIP 0" *) input adc2_clk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 adc3_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc3_clk, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, INSERT_VIP 0" *) input adc3_clk /* synthesis syn_isclock = 1 */;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 57500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, INSERT_VIP 0" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
endmodule
