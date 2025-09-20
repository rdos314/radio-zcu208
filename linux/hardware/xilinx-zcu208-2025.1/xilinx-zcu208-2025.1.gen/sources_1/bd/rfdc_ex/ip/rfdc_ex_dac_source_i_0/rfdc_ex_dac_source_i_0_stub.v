// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:08:58 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_dac_source_i_0/rfdc_ex_dac_source_i_0_stub.v
// Design      : rfdc_ex_dac_source_i_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "rfdc_ex_dac_source_i_0,exdes_rfdac_data_bram_stim,{}" *) (* CORE_GENERATION_INFO = "rfdc_ex_dac_source_i_0,exdes_rfdac_data_bram_stim,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=exdes_rfdac_data_bram_stim,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,mem_size=262144,axi_addr_top=19,use_div2_clk_0=0,use_div2_clk_1=0,use_div2_clk_2=0,use_div2_clk_3=0}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "exdes_rfdac_data_bram_stim,Vivado 2025.1" *) 
module rfdc_ex_dac_source_i_0(s_axi_awaddr, s_axi_awvalid, s_axi_awready, 
  s_axi_wdata, s_axi_wvalid, s_axi_wready, s_axi_wstrb, s_axi_bresp, s_axi_bvalid, 
  s_axi_bready, s_axi_araddr, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, 
  s_axi_rvalid, s_axi_rready, m00_tdata, m00_tvalid, m00_tready, s00_user_tdata, 
  s00_user_tvalid, s00_user_tready, user_select_00, m01_tdata, m01_tvalid, m01_tready, 
  s01_user_tdata, s01_user_tvalid, s01_user_tready, user_select_01, m02_tdata, m02_tvalid, 
  m02_tready, s02_user_tdata, s02_user_tvalid, s02_user_tready, user_select_02, m03_tdata, 
  m03_tvalid, m03_tready, s03_user_tdata, s03_user_tvalid, s03_user_tready, user_select_03, 
  m10_tdata, m10_tvalid, m10_tready, s10_user_tdata, s10_user_tvalid, s10_user_tready, 
  user_select_10, m11_tdata, m11_tvalid, m11_tready, s11_user_tdata, s11_user_tvalid, 
  s11_user_tready, user_select_11, m12_tdata, m12_tvalid, m12_tready, s12_user_tdata, 
  s12_user_tvalid, s12_user_tready, user_select_12, m13_tdata, m13_tvalid, m13_tready, 
  s13_user_tdata, s13_user_tvalid, s13_user_tready, user_select_13, m20_tdata, m20_tvalid, 
  m20_tready, s20_user_tdata, s20_user_tvalid, s20_user_tready, user_select_20, m21_tdata, 
  m21_tvalid, m21_tready, s21_user_tdata, s21_user_tvalid, s21_user_tready, user_select_21, 
  m22_tdata, m22_tvalid, m22_tready, s22_user_tdata, s22_user_tvalid, s22_user_tready, 
  user_select_22, m23_tdata, m23_tvalid, m23_tready, s23_user_tdata, s23_user_tvalid, 
  s23_user_tready, user_select_23, m30_tdata, m30_tvalid, m30_tready, s30_user_tdata, 
  s30_user_tvalid, s30_user_tready, user_select_30, m31_tdata, m31_tvalid, m31_tready, 
  s31_user_tdata, s31_user_tvalid, s31_user_tready, user_select_31, m32_tdata, m32_tvalid, 
  m32_tready, s32_user_tdata, s32_user_tvalid, s32_user_tready, user_select_32, m33_tdata, 
  m33_tvalid, m33_tready, s33_user_tdata, s33_user_tvalid, s33_user_tready, user_select_33, 
  m0_axis_clock, m0_div2_axis_clock, m1_axis_clock, m1_div2_axis_clock, m2_axis_clock, 
  m2_div2_axis_clock, m3_axis_clock, m3_div2_axis_clock, hw_trigger_0, hw_trigger_en_0, 
  hw_trigger_1, hw_trigger_en_1, hw_trigger_2, hw_trigger_en_2, hw_trigger_3, 
  hw_trigger_en_3, s_axi_aclk, s_axi_aresetn)
/* synthesis syn_black_box black_box_pad_pin="s_axi_awaddr[19:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wvalid,s_axi_wready,s_axi_wstrb[3:0],s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[19:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,m00_tdata[255:0],m00_tvalid,m00_tready,s00_user_tdata[255:0],s00_user_tvalid,s00_user_tready,user_select_00,m01_tdata[255:0],m01_tvalid,m01_tready,s01_user_tdata[255:0],s01_user_tvalid,s01_user_tready,user_select_01,m02_tdata[255:0],m02_tvalid,m02_tready,s02_user_tdata[255:0],s02_user_tvalid,s02_user_tready,user_select_02,m03_tdata[255:0],m03_tvalid,m03_tready,s03_user_tdata[255:0],s03_user_tvalid,s03_user_tready,user_select_03,m10_tdata[255:0],m10_tvalid,m10_tready,s10_user_tdata[255:0],s10_user_tvalid,s10_user_tready,user_select_10,m11_tdata[255:0],m11_tvalid,m11_tready,s11_user_tdata[255:0],s11_user_tvalid,s11_user_tready,user_select_11,m12_tdata[255:0],m12_tvalid,m12_tready,s12_user_tdata[255:0],s12_user_tvalid,s12_user_tready,user_select_12,m13_tdata[255:0],m13_tvalid,m13_tready,s13_user_tdata[255:0],s13_user_tvalid,s13_user_tready,user_select_13,m20_tdata[255:0],m20_tvalid,m20_tready,s20_user_tdata[255:0],s20_user_tvalid,s20_user_tready,user_select_20,m21_tdata[255:0],m21_tvalid,m21_tready,s21_user_tdata[255:0],s21_user_tvalid,s21_user_tready,user_select_21,m22_tdata[255:0],m22_tvalid,m22_tready,s22_user_tdata[255:0],s22_user_tvalid,s22_user_tready,user_select_22,m23_tdata[255:0],m23_tvalid,m23_tready,s23_user_tdata[255:0],s23_user_tvalid,s23_user_tready,user_select_23,m30_tdata[255:0],m30_tvalid,m30_tready,s30_user_tdata[255:0],s30_user_tvalid,s30_user_tready,user_select_30,m31_tdata[255:0],m31_tvalid,m31_tready,s31_user_tdata[255:0],s31_user_tvalid,s31_user_tready,user_select_31,m32_tdata[255:0],m32_tvalid,m32_tready,s32_user_tdata[255:0],s32_user_tvalid,s32_user_tready,user_select_32,m33_tdata[255:0],m33_tvalid,m33_tready,s33_user_tdata[255:0],s33_user_tvalid,s33_user_tready,user_select_33,m0_div2_axis_clock,m1_div2_axis_clock,m2_div2_axis_clock,m3_div2_axis_clock,hw_trigger_0,hw_trigger_en_0,hw_trigger_1,hw_trigger_en_1,hw_trigger_2,hw_trigger_en_2,hw_trigger_3,hw_trigger_en_3,s_axi_aresetn" */
/* synthesis syn_force_seq_prim="m0_axis_clock" */
/* synthesis syn_force_seq_prim="m1_axis_clock" */
/* synthesis syn_force_seq_prim="m2_axis_clock" */
/* synthesis syn_force_seq_prim="m3_axis_clock" */
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m00_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TVALID" *) output m00_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00 TREADY" *) input m00_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s00_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TVALID" *) input s00_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00 TREADY" *) output s00_user_tready;
  input user_select_00;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m01_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TVALID" *) output m01_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01 TREADY" *) input m01_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s01_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TVALID" *) input s01_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01 TREADY" *) output s01_user_tready;
  input user_select_01;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m02, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m02_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TVALID" *) output m02_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02 TREADY" *) input m02_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s02, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s02_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TVALID" *) input s02_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02 TREADY" *) output s02_user_tready;
  input user_select_02;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m03, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m03_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TVALID" *) output m03_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03 TREADY" *) input m03_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s03, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s03_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TVALID" *) input s03_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03 TREADY" *) output s03_user_tready;
  input user_select_03;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m10, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m10_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TVALID" *) output m10_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m10 TREADY" *) input m10_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s10, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s10_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TVALID" *) input s10_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s10 TREADY" *) output s10_user_tready;
  input user_select_10;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m11, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m11_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TVALID" *) output m11_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m11 TREADY" *) input m11_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s11, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s11_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TVALID" *) input s11_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s11 TREADY" *) output s11_user_tready;
  input user_select_11;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m12, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m12_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TVALID" *) output m12_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m12 TREADY" *) input m12_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s12, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s12_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TVALID" *) input s12_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s12 TREADY" *) output s12_user_tready;
  input user_select_12;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m13, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m13_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TVALID" *) output m13_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m13 TREADY" *) input m13_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s13, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s13_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TVALID" *) input s13_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s13 TREADY" *) output s13_user_tready;
  input user_select_13;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m20, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m20_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TVALID" *) output m20_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m20 TREADY" *) input m20_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s20, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s20_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TVALID" *) input s20_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s20 TREADY" *) output s20_user_tready;
  input user_select_20;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m21, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m21_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TVALID" *) output m21_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m21 TREADY" *) input m21_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s21, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s21_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TVALID" *) input s21_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s21 TREADY" *) output s21_user_tready;
  input user_select_21;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m22, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m22_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TVALID" *) output m22_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m22 TREADY" *) input m22_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s22, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s22_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TVALID" *) input s22_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s22 TREADY" *) output s22_user_tready;
  input user_select_22;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m23, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m23_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TVALID" *) output m23_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m23 TREADY" *) input m23_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s23, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s23_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TVALID" *) input s23_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s23 TREADY" *) output s23_user_tready;
  input user_select_23;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m30, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m30_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TVALID" *) output m30_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m30 TREADY" *) input m30_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s30, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s30_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TVALID" *) input s30_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s30 TREADY" *) output s30_user_tready;
  input user_select_30;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m31, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m31_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TVALID" *) output m31_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m31 TREADY" *) input m31_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s31, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s31_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TVALID" *) input s31_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s31 TREADY" *) output s31_user_tready;
  input user_select_31;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m32, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m32_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TVALID" *) output m32_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m32 TREADY" *) input m32_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s32, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s32_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TVALID" *) input s32_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s32 TREADY" *) output s32_user_tready;
  input user_select_32;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m33, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m33_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TVALID" *) output m33_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m33 TREADY" *) input m33_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s33, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 307200000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s33_user_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TVALID" *) input s33_user_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s33 TREADY" *) output s33_user_tready;
  input user_select_33;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m0_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_axis_clock, ASSOCIATED_BUSIF m00:s00:m01:s01:m02:s02:m03:s03, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, INSERT_VIP 0" *) input m0_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m0_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m0_div2_axis_clock, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, INSERT_VIP 0" *) input m0_div2_axis_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m1_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m1_axis_clock, ASSOCIATED_BUSIF m10:s10:m11:s11:m12:s12:m13:s13, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, INSERT_VIP 0" *) input m1_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m1_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m1_div2_axis_clock, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac1, INSERT_VIP 0" *) input m1_div2_axis_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m2_axis_clock, ASSOCIATED_BUSIF m20:s20:m21:s21:m22:s22:m23:s23, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, INSERT_VIP 0" *) input m2_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m2_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m2_div2_axis_clock, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac2, INSERT_VIP 0" *) input m2_div2_axis_clock;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m3_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m3_axis_clock, ASSOCIATED_BUSIF m30:s30:m31:s31:m32:s32:m33:s33, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, INSERT_VIP 0" *) input m3_axis_clock /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m3_div2_axis_clock CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m3_div2_axis_clock, FREQ_HZ 307200000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac3, INSERT_VIP 0" *) input m3_div2_axis_clock;
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
