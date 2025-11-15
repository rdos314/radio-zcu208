// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov 15 00:25:13 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_low_0_0/ps_doa_low_0_0_sim_netlist.v
// Design      : ps_doa_low_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_doa_low_0_0,doa_low,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "doa_low,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_doa_low_0_0
   (clk,
    reset,
    fifo_valid,
    fifo_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input fifo_valid;
  input [69:0]fifo_data;

  wire clk;
  wire [69:0]fifo_data;
  wire fifo_valid;
  wire reset;

  ps_doa_low_0_0_doa_low inst
       (.clk(clk),
        .fifo_data({fifo_data[69:28],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fifo_valid(fifo_valid),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "doa_low" *) (* keep_hierarchy = "soft" *) 
module ps_doa_low_0_0_doa_low
   (clk,
    reset,
    fifo_valid,
    fifo_data);
  input clk;
  input reset;
  input fifo_valid;
  input [69:0]fifo_data;

  (* MARK_DEBUG *) wire [15:0]E;
  (* MARK_DEBUG *) wire [15:0]N;
  (* MARK_DEBUG *) wire [15:0]W;
  wire clk;
  wire [69:0]fifo_data;
  (* MARK_DEBUG *) wire fifo_valid;
  wire fir_doa_low_re_N_i_i_1_n_0;
  (* MARK_DEBUG *) wire [39:0]fir_im_E;
  (* MARK_DEBUG *) wire [39:0]fir_im_N;
  (* MARK_DEBUG *) wire [39:0]fir_im_W;
  (* MARK_DEBUG *) wire [39:0]fir_re_E;
  (* MARK_DEBUG *) wire [39:0]fir_re_N;
  (* MARK_DEBUG *) wire [39:0]fir_re_W;
  wire reset;
  (* MARK_DEBUG *) wire valid_im_E;
  (* MARK_DEBUG *) wire valid_im_N;
  (* MARK_DEBUG *) wire valid_im_W;
  (* MARK_DEBUG *) wire valid_re_E;
  (* MARK_DEBUG *) wire valid_re_N;
  (* MARK_DEBUG *) wire valid_re_W;
  wire NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED;
  wire NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED;

  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(1'b0),
        .Q(E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[50]),
        .Q(E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[51]),
        .Q(E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[52]),
        .Q(E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[53]),
        .Q(E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[54]),
        .Q(E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[55]),
        .Q(E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(1'b0),
        .Q(E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[42]),
        .Q(E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[43]),
        .Q(E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[44]),
        .Q(E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[45]),
        .Q(E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[46]),
        .Q(E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[47]),
        .Q(E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[48]),
        .Q(E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.E_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[49]),
        .Q(E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(1'b0),
        .Q(N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[36]),
        .Q(N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[37]),
        .Q(N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[38]),
        .Q(N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[39]),
        .Q(N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[40]),
        .Q(N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[41]),
        .Q(N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(1'b0),
        .Q(N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[28]),
        .Q(N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[29]),
        .Q(N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[30]),
        .Q(N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[31]),
        .Q(N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[32]),
        .Q(N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[33]),
        .Q(N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[34]),
        .Q(N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.N_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[35]),
        .Q(N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(1'b0),
        .Q(W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[64]),
        .Q(W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[65]),
        .Q(W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[66]),
        .Q(W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[67]),
        .Q(W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[14] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[68]),
        .Q(W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[15] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[69]),
        .Q(W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(1'b0),
        .Q(W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[56]),
        .Q(W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[57]),
        .Q(W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[58]),
        .Q(W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[59]),
        .Q(W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[60]),
        .Q(W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[61]),
        .Q(W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[62]),
        .Q(W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_low.W_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[63]),
        .Q(W[9]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_im fir_doa_low_im_E_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_E),
        .m_axis_data_tvalid(valid_im_E),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_im fir_doa_low_im_N_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_N),
        .m_axis_data_tvalid(valid_im_N),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_im_HD1 fir_doa_low_im_W_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_W),
        .m_axis_data_tvalid(valid_im_W),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_re fir_doa_low_re_E_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_E),
        .m_axis_data_tvalid(valid_re_E),
        .s_axis_data_tdata(E),
        .s_axis_data_tready(NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_re fir_doa_low_re_N_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_N),
        .m_axis_data_tvalid(valid_re_N),
        .s_axis_data_tdata(N),
        .s_axis_data_tready(NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  LUT1 #(
    .INIT(2'h1)) 
    fir_doa_low_re_N_i_i_1
       (.I0(reset),
        .O(fir_doa_low_re_N_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_low_0_0_fir_doa_low_re_HD2 fir_doa_low_re_W_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_W),
        .m_axis_data_tvalid(valid_re_W),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_doa_low_0_0_ila_0 ila_0_i
       (.clk(clk),
        .probe0(N[15:2]),
        .probe1(valid_re_N),
        .probe10(W[15:2]),
        .probe11(valid_re_W),
        .probe12(fir_re_W[39:24]),
        .probe13(valid_im_W),
        .probe14(fir_im_W[39:24]),
        .probe15(fifo_valid),
        .probe2(fir_re_N[39:24]),
        .probe3(valid_im_N),
        .probe4(fir_im_N[39:24]),
        .probe5(E[15:2]),
        .probe6(valid_re_E),
        .probe7(fir_re_E[39:24]),
        .probe8(valid_im_E),
        .probe9(fir_im_E[39:24]));
endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_im" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_im
   (aresetn,
    aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_im,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_im" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_im_HD1
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_re" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_re
   (aresetn,
    aclk,
    s_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tdata,
    m_axis_data_tvalid,
    m_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_low_re,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_low_re" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_low_0_0_fir_doa_low_re_HD2
   (aclk,
    aresetn,
    m_axis_data_tvalid,
    s_axis_data_tready,
    s_axis_data_tvalid,
    m_axis_data_tdata,
    s_axis_data_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_DATA:S_AXIS_RELOAD, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn_intf RST" *) (* X_INTERFACE_MODE = "slave aresetn_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn_intf, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [15:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "ila_0,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_0" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_doa_low_0_0_ila_0
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
    probe10,
    probe11,
    probe12,
    probe13,
    probe14,
    probe15);
  (* syn_isclock = "1" *) input clk;
  input [13:0]probe0;
  input [0:0]probe1;
  input [15:0]probe2;
  input [0:0]probe3;
  input [15:0]probe4;
  input [13:0]probe5;
  input [0:0]probe6;
  input [15:0]probe7;
  input [0:0]probe8;
  input [15:0]probe9;
  input [13:0]probe10;
  input [0:0]probe11;
  input [15:0]probe12;
  input [0:0]probe13;
  input [15:0]probe14;
  input [0:0]probe15;


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
