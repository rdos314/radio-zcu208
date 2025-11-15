// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov 15 00:25:13 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_doa_high_189_0_0/ps_doa_high_189_0_0_sim_netlist.v
// Design      : ps_doa_high_189_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_doa_high_189_0_0,doa_high_189,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "doa_high_189,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_doa_high_189_0_0
   (clk,
    reset,
    fifo_valid,
    fifo_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input fifo_valid;
  input [111:0]fifo_data;

  wire clk;
  wire [111:0]fifo_data;
  wire fifo_valid;
  wire reset;

  ps_doa_high_189_0_0_doa_high_189 inst
       (.clk(clk),
        .fifo_data({fifo_data[111:28],1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .fifo_valid(fifo_valid),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "doa_high_189" *) (* keep_hierarchy = "soft" *) 
module ps_doa_high_189_0_0_doa_high_189
   (clk,
    reset,
    fifo_valid,
    fifo_data);
  input clk;
  input reset;
  input fifo_valid;
  input [111:0]fifo_data;

  (* MARK_DEBUG *) wire [13:0]E0;
  (* MARK_DEBUG *) wire [13:0]E1;
  (* MARK_DEBUG *) wire [13:0]N0;
  (* MARK_DEBUG *) wire [13:0]N1;
  wire [31:0]W;
  (* MARK_DEBUG *) wire [13:0]W0;
  (* MARK_DEBUG *) wire [13:0]W1;
  wire clk;
  wire [111:0]fifo_data;
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
  FDRE \deci_high.E0_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[56]),
        .Q(E0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[66]),
        .Q(E0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[67]),
        .Q(E0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[68]),
        .Q(E0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[69]),
        .Q(E0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[57]),
        .Q(E0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[58]),
        .Q(E0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[59]),
        .Q(E0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[60]),
        .Q(E0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[61]),
        .Q(E0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[62]),
        .Q(E0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[63]),
        .Q(E0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[64]),
        .Q(E0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E0_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[65]),
        .Q(E0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[70]),
        .Q(E1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[80]),
        .Q(E1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[81]),
        .Q(E1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[82]),
        .Q(E1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[83]),
        .Q(E1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[71]),
        .Q(E1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[72]),
        .Q(E1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[73]),
        .Q(E1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[74]),
        .Q(E1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[75]),
        .Q(E1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[76]),
        .Q(E1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[77]),
        .Q(E1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[78]),
        .Q(E1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.E1_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[79]),
        .Q(E1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[28]),
        .Q(N0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[38]),
        .Q(N0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[39]),
        .Q(N0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[40]),
        .Q(N0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[41]),
        .Q(N0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[29]),
        .Q(N0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[30]),
        .Q(N0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[31]),
        .Q(N0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[32]),
        .Q(N0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[33]),
        .Q(N0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[34]),
        .Q(N0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[35]),
        .Q(N0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[36]),
        .Q(N0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N0_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[37]),
        .Q(N0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[42]),
        .Q(N1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[52]),
        .Q(N1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[53]),
        .Q(N1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[54]),
        .Q(N1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[55]),
        .Q(N1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[43]),
        .Q(N1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[44]),
        .Q(N1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[45]),
        .Q(N1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[46]),
        .Q(N1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[47]),
        .Q(N1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[48]),
        .Q(N1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[49]),
        .Q(N1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[50]),
        .Q(N1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.N1_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[51]),
        .Q(N1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[84]),
        .Q(W0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[94]),
        .Q(W0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[95]),
        .Q(W0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[96]),
        .Q(W0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[97]),
        .Q(W0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[85]),
        .Q(W0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[86]),
        .Q(W0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[87]),
        .Q(W0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[88]),
        .Q(W0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[89]),
        .Q(W0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[90]),
        .Q(W0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[91]),
        .Q(W0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[92]),
        .Q(W0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W0_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[93]),
        .Q(W0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[0] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[98]),
        .Q(W1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[10] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[108]),
        .Q(W1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[11] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[109]),
        .Q(W1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[12] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[110]),
        .Q(W1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[13] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[111]),
        .Q(W1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[1] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[99]),
        .Q(W1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[2] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[100]),
        .Q(W1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[3] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[101]),
        .Q(W1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[4] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[102]),
        .Q(W1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[5] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[103]),
        .Q(W1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[6] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[104]),
        .Q(W1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[7] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[105]),
        .Q(W1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[8] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[106]),
        .Q(W1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \deci_high.W1_reg[9] 
       (.C(clk),
        .CE(fifo_valid),
        .D(fifo_data[107]),
        .Q(W1[9]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_high_189_0_0_fir_doa_high_im_189 fir_doa_low_im_E_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_E),
        .m_axis_data_tvalid(valid_im_E),
        .s_axis_data_tdata({E1,E0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_data_tready(NLW_fir_doa_low_im_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_high_189_0_0_fir_doa_high_im_189 fir_doa_low_im_N_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_N),
        .m_axis_data_tvalid(valid_im_N),
        .s_axis_data_tdata({N1,N0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_data_tready(NLW_fir_doa_low_im_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_high_189_0_0_fir_doa_high_im_189_HD1 fir_doa_low_im_W_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_im_W),
        .m_axis_data_tvalid(valid_im_W),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_doa_low_im_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_high_189_0_0_fir_doa_high_re_189 fir_doa_low_re_E_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_E),
        .m_axis_data_tvalid(valid_re_E),
        .s_axis_data_tdata({E1,E0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_data_tready(NLW_fir_doa_low_re_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_high_189_0_0_fir_doa_high_re_189 fir_doa_low_re_N_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_N),
        .m_axis_data_tvalid(valid_re_N),
        .s_axis_data_tdata({N1,N0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_data_tready(NLW_fir_doa_low_re_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  LUT1 #(
    .INIT(2'h1)) 
    fir_doa_low_re_N_i_i_1
       (.I0(reset),
        .O(fir_doa_low_re_N_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_doa_high_189_0_0_fir_doa_high_re_189_HD2 fir_doa_low_re_W_i
       (.aclk(clk),
        .aresetn(fir_doa_low_re_N_i_i_1_n_0),
        .m_axis_data_tdata(fir_re_W),
        .m_axis_data_tvalid(valid_re_W),
        .s_axis_data_tdata(W),
        .s_axis_data_tready(NLW_fir_doa_low_re_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(fifo_valid));
  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_doa_high_189_0_0_ila_2 ila_2_i
       (.clk(clk),
        .probe0(N0),
        .probe1(N1),
        .probe10(valid_im_E),
        .probe11(fir_im_E[39:24]),
        .probe12(W0),
        .probe13(W1),
        .probe14(valid_re_W),
        .probe15(fir_re_W[39:24]),
        .probe16(valid_im_W),
        .probe17(fir_im_W[39:24]),
        .probe18(fifo_valid),
        .probe2(valid_re_N),
        .probe3(fir_re_N[39:24]),
        .probe4(valid_im_N),
        .probe5(fir_im_N[39:24]),
        .probe6(E0),
        .probe7(E1),
        .probe8(valid_re_E),
        .probe9(fir_re_E[39:24]));
endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_im_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_high_189_0_0_fir_doa_high_im_189
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_im_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_im_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_high_189_0_0_fir_doa_high_im_189_HD1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_re_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_high_189_0_0_fir_doa_high_re_189
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_doa_high_re_189,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_doa_high_re_189" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_doa_high_189_0_0_fir_doa_high_re_189_HD2
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [39:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [31:0]s_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_2" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_doa_high_189_0_0_ila_2
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
    probe15,
    probe16,
    probe17,
    probe18);
  (* syn_isclock = "1" *) input clk;
  input [13:0]probe0;
  input [13:0]probe1;
  input [0:0]probe2;
  input [15:0]probe3;
  input [0:0]probe4;
  input [15:0]probe5;
  input [13:0]probe6;
  input [13:0]probe7;
  input [0:0]probe8;
  input [15:0]probe9;
  input [0:0]probe10;
  input [15:0]probe11;
  input [13:0]probe12;
  input [13:0]probe13;
  input [0:0]probe14;
  input [15:0]probe15;
  input [0:0]probe16;
  input [15:0]probe17;
  input [0:0]probe18;


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
