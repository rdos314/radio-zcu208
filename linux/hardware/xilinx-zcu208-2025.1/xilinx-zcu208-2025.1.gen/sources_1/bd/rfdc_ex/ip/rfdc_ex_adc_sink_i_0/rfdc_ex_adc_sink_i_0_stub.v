// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:10:10 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_adc_sink_i_0/rfdc_ex_adc_sink_i_0_stub.v
// Design      : rfdc_ex_adc_sink_i_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "rfdc_ex_adc_sink_i_0,exdes_rfadc_data_bram_capture,{}" *) (* CORE_GENERATION_INFO = "rfdc_ex_adc_sink_i_0,exdes_rfadc_data_bram_capture,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=exdes_rfadc_data_bram_capture,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,mem_size=262144,axi_addr_top=19,use_div2_clk_0=0,use_div2_clk_1=0,use_div2_clk_2=0,use_div2_clk_3=0}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "exdes_rfadc_data_bram_capture,Vivado 2025.1" *) 
module rfdc_ex_adc_sink_i_0(s_axi_awaddr, s_axi_awvalid, s_axi_awready, 
  s_axi_wdata, s_axi_wvalid, s_axi_wready, s_axi_wstrb, s_axi_bresp, s_axi_bvalid, 
  s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, 
  s_axi_rvalid, s_axi_rready, s00_tdata, s00_tvalid, m00_tdata, m00_tvalid, m00_tready, 
  s01_tdata, s01_tvalid, m01_tdata, m01_tvalid, m01_tready, s02_tdata, s02_tvalid, m02_tdata, 
  m02_tvalid, m02_tready, s03_tdata, s03_tvalid, m03_tdata, m03_tvalid, m03_tready, s10_tdata, 
  s10_tvalid, m10_tdata, m10_tvalid, m10_tready, s11_tdata, s11_tvalid, m11_tdata, m11_tvalid, 
  m11_tready, s12_tdata, s12_tvalid, m12_tdata, m12_tvalid, m12_tready, s13_tdata, s13_tvalid, 
  m13_tdata, m13_tvalid, m13_tready, s20_tdata, s20_tvalid, m20_tdata, m20_tvalid, m20_tready, 
  s21_tdata, s21_tvalid, m21_tdata, m21_tvalid, m21_tready, s22_tdata, s22_tvalid, m22_tdata, 
  m22_tvalid, m22_tready, s23_tdata, s23_tvalid, m23_tdata, m23_tvalid, m23_tready, s30_tdata, 
  s30_tvalid, m30_tdata, m30_tvalid, m30_tready, s31_tdata, s31_tvalid, m31_tdata, m31_tvalid, 
  m31_tready, s32_tdata, s32_tvalid, m32_tdata, m32_tvalid, m32_tready, s33_tdata, s33_tvalid, 
  m33_tdata, m33_tvalid, m33_tready, s0_axis_clock, s0_div2_axis_clock, s1_axis_clock, 
  s1_div2_axis_clock, s2_axis_clock, s2_div2_axis_clock, s3_axis_clock, s3_div2_axis_clock, 
  hw_trigger_0, hw_trigger_en_0, hw_trigger_1, hw_trigger_en_1, hw_trigger_2, 
  hw_trigger_en_2, hw_trigger_3, hw_trigger_en_3, s_axi_aclk, s_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_axi_awaddr[19:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_wstrb[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[19:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s00_tdata[191:0],s00_tvalid,m00_tdata[191:0],m00_tvalid,m00_tready,s01_tdata[191:0],s01_tvalid,m01_tdata[191:0],m01_tvalid,m01_tready,s02_tdata[191:0],s02_tvalid,m02_tdata[191:0],m02_tvalid,m02_tready,s03_tdata[191:0],s03_tvalid,m03_tdata[191:0],m03_tvalid,m03_tready,s10_tdata[191:0],s10_tvalid,m10_tdata[191:0],m10_tvalid,m10_tready,s11_tdata[191:0],s11_tvalid,m11_tdata[191:0],m11_tvalid,m11_tready,s12_tdata[191:0],s12_tvalid,m12_tdata[191:0],m12_tvalid,m12_tready,s13_tdata[191:0],s13_tvalid,m13_tdata[191:0],m13_tvalid,m13_tready,s20_tdata[191:0],s20_tvalid,m20_tdata[191:0],m20_tvalid,m20_tready,s21_tdata[191:0],s21_tvalid,m21_tdata[191:0],m21_tvalid,m21_tready,s22_tdata[191:0],s22_tvalid,m22_tdata[191:0],m22_tvalid,m22_tready,s23_tdata[191:0],s23_tvalid,m23_tdata[191:0],m23_tvalid,m23_tready,s30_tdata[191:0],s30_tvalid,m30_tdata[191:0],m30_tvalid,m30_tready,s31_tdata[191:0],s31_tvalid,m31_tdata[191:0],m31_tvalid,m31_tready,s32_tdata[191:0],s32_tvalid,m32_tdata[191:0],m32_tvalid,m32_tready,s33_tdata[191:0],s33_tvalid,m33_tdata[191:0],m33_tvalid,m33_tready,s0_div2_axis_clock,s1_div2_axis_clock,s2_div2_axis_clock,s3_div2_axis_clock,hw_trigger_0,hw_trigger_en_0,hw_trigger_1,hw_trigger_en_1,hw_trigger_2,hw_trigger_en_2,hw_trigger_3,hw_trigger_en_3,s_axi_aresetn" */
/* synthesis syn_force_seq_prim="s0_axis_clock" */
/* synthesis syn_force_seq_prim="s1_axis_clock" */
/* synthesis syn_force_seq_prim="s2_axis_clock" */
/* synthesis syn_force_seq_prim="s3_axis_clock" */
/* synthesis syn_force_seq_prim="s_axi_aclk" */;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWADDR" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 57500000, ID_WIDTH 0, ADDR_WIDTH 20, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [19:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WDATA" *) input [31:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi WSTRB" *) input [3:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARADDR" *) input [19:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RDATA" *) output [31:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 s_axi RREADY" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s00_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s00_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m00_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TVALID" *) output m00_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TREADY" *) input m00_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s01_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s01_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m01_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TVALID" *) output m01_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TREADY" *) input m01_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s02, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s02_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s02_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m02, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m02_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TVALID" *) output m02_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TREADY" *) input m02_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s03, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s03_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s03_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m03, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m03_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TVALID" *) output m03_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TREADY" *) input m03_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s10, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s10_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s10_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m10, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m10_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TVALID" *) output m10_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TREADY" *) input m10_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s11, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s11_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s11_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m11, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m11_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TVALID" *) output m11_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TREADY" *) input m11_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s12, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s12_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s12_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m12, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m12_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TVALID" *) output m12_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TREADY" *) input m12_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s13, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s13_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s13_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m13, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m13_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TVALID" *) output m13_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TREADY" *) input m13_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s20, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s20_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s20_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m20, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m20_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TVALID" *) output m20_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TREADY" *) input m20_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s21, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s21_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s21_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m21, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m21_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TVALID" *) output m21_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TREADY" *) input m21_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s22, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s22_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s22_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m22, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m22_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TVALID" *) output m22_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TREADY" *) input m22_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s23, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s23_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s23_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m23, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m23_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TVALID" *) output m23_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TREADY" *) input m23_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s30, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s30_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s30_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m30, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m30_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TVALID" *) output m30_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TREADY" *) input m30_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s31, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s31_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s31_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m31, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m31_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TVALID" *) output m31_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TREADY" *) input m31_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s32, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s32_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s32_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m32, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m32_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TVALID" *) output m32_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TREADY" *) input m32_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TDATA" *) (* X_INTERFACE_MODE = "monitor slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s33, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [191:0]s33_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TVALID" *) (* X_INTERFACE_MODE = "monitor" *) input s33_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m33, TDATA_NUM_BYTES 24, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 409600000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [191:0]m33_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TVALID" *) output m33_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TREADY" *) input m33_tready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s0_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_axis_clock, ASSOCIATED_BUSIF s00:m00:s01:m01:s02:m02:s03:m03, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0" *) input s0_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s0_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s0_div2_axis_clock, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0" *) input s0_div2_axis_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s1_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_axis_clock, ASSOCIATED_BUSIF s10:m10:s11:m11:s12:m12:s13:m13, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0" *) input s1_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s1_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s1_div2_axis_clock, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0" *) input s1_div2_axis_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s2_axis_clock, ASSOCIATED_BUSIF s20:m20:s21:m21:s22:m22:s23:m23, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, INSERT_VIP 0" *) input s2_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s2_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s2_div2_axis_clock, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc2, INSERT_VIP 0" *) input s2_div2_axis_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s3_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s3_axis_clock, ASSOCIATED_BUSIF s30:m30:s31:m31:s32:m32:s33:m33, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, INSERT_VIP 0" *) input s3_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s3_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s3_div2_axis_clock, FREQ_HZ 409600000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc3, INSERT_VIP 0" *) input s3_div2_axis_clock;
  input hw_trigger_0;
  input hw_trigger_en_0;
  input hw_trigger_1;
  input hw_trigger_en_1;
  input hw_trigger_2;
  input hw_trigger_en_2;
  input hw_trigger_3;
  input hw_trigger_en_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 s_axi_aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 57500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_s_axi_aclk, INSERT_VIP 0" *) input s_axi_aclk /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 s_axi_aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_axi_aresetn;
endmodule
