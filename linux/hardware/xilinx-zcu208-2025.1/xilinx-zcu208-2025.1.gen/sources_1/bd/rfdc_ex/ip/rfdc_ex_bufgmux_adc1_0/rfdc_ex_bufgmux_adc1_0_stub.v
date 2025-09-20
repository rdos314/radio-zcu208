// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu May 22 09:33:11 2025
// Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_bufgmux_adc1_0/rfdc_ex_bufgmux_adc1_0_stub.v
// Design      : rfdc_ex_bufgmux_adc1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "rfdc_ex_bufgmux_adc1_0,bufgmux,{}" *) (* CORE_GENERATION_INFO = "rfdc_ex_bufgmux_adc1_0,bufgmux,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=bufgmux,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "bufgmux,Vivado 2025.1" *) 
module rfdc_ex_bufgmux_adc1_0(I0, I1, S, O)
/* synthesis syn_black_box black_box_pad_pin="S" */
/* synthesis syn_force_seq_prim="I0" */
/* synthesis syn_force_seq_prim="I1" */
/* synthesis syn_force_seq_prim="O" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I0 CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I0, FREQ_HZ 368640000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc0, INSERT_VIP 0" *) input I0 /* synthesis syn_isclock = 1 */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 I1 CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME I1, FREQ_HZ 368640000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_adc1, INSERT_VIP 0" *) input I1 /* synthesis syn_isclock = 1 */;
  input S;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 O CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME O, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_bufgmux_adc1_0_O, INSERT_VIP 0" *) output O /* synthesis syn_isclock = 1 */;
endmodule
