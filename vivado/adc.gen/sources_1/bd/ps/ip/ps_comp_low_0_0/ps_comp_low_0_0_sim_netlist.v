// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Tue Nov 11 22:18:02 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_low_0_0/ps_comp_low_0_0_sim_netlist.v
// Design      : ps_comp_low_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_comp_low_0_0,comp_low,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "comp_low,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_comp_low_0_0
   (clk,
    reset,
    active,
    fifo);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input active;
  input [195:0]fifo;

  wire active;
  wire clk;
  wire [195:0]fifo;

  ps_comp_low_0_0_comp_low inst
       (.active(active),
        .clk(clk),
        .fifo(fifo),
        .reset(1'b0));
endmodule

(* ORIG_REF_NAME = "comp_low" *) (* keep_hierarchy = "soft" *) 
module ps_comp_low_0_0_comp_low
   (clk,
    reset,
    active,
    fifo);
  input clk;
  input reset;
  input active;
  input [195:0]fifo;

  (* MARK_DEBUG *) wire [13:0]E0;
  (* MARK_DEBUG *) wire [13:0]E1;
  (* MARK_DEBUG *) wire [13:0]E2;
  (* MARK_DEBUG *) wire [13:0]E3;
  (* MARK_DEBUG *) wire [13:0]N0;
  (* MARK_DEBUG *) wire [13:0]N1;
  (* MARK_DEBUG *) wire [13:0]N2;
  (* MARK_DEBUG *) wire [13:0]N3;
  (* MARK_DEBUG *) wire [13:0]W0;
  (* MARK_DEBUG *) wire [13:0]W1;
  (* MARK_DEBUG *) wire [13:0]W2;
  (* MARK_DEBUG *) wire [13:0]W3;
  (* MARK_DEBUG *) wire active;
  wire clk;
  (* MARK_DEBUG *) wire [27:0]counter;
  wire [195:0]fifo;

  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[84]),
        .Q(E0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[94]),
        .Q(E0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[95]),
        .Q(E0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[96]),
        .Q(E0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[97]),
        .Q(E0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[85]),
        .Q(E0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[86]),
        .Q(E0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[87]),
        .Q(E0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[88]),
        .Q(E0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[89]),
        .Q(E0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[90]),
        .Q(E0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[91]),
        .Q(E0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[92]),
        .Q(E0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E0_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[93]),
        .Q(E0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[98]),
        .Q(E1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[108]),
        .Q(E1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[109]),
        .Q(E1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[110]),
        .Q(E1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[111]),
        .Q(E1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[99]),
        .Q(E1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[100]),
        .Q(E1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[101]),
        .Q(E1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[102]),
        .Q(E1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[103]),
        .Q(E1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[104]),
        .Q(E1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[105]),
        .Q(E1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[106]),
        .Q(E1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E1_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[107]),
        .Q(E1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[112]),
        .Q(E2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[122]),
        .Q(E2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[123]),
        .Q(E2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[124]),
        .Q(E2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[125]),
        .Q(E2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[113]),
        .Q(E2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[114]),
        .Q(E2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[115]),
        .Q(E2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[116]),
        .Q(E2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[117]),
        .Q(E2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[118]),
        .Q(E2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[119]),
        .Q(E2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[120]),
        .Q(E2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E2_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[121]),
        .Q(E2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[126]),
        .Q(E3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[136]),
        .Q(E3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[137]),
        .Q(E3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[138]),
        .Q(E3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[139]),
        .Q(E3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[127]),
        .Q(E3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[128]),
        .Q(E3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[129]),
        .Q(E3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[130]),
        .Q(E3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[131]),
        .Q(E3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[132]),
        .Q(E3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[133]),
        .Q(E3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[134]),
        .Q(E3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.E3_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[135]),
        .Q(E3[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[28]),
        .Q(N0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[38]),
        .Q(N0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[39]),
        .Q(N0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[40]),
        .Q(N0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[41]),
        .Q(N0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[29]),
        .Q(N0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[30]),
        .Q(N0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[31]),
        .Q(N0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[32]),
        .Q(N0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[33]),
        .Q(N0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[34]),
        .Q(N0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[35]),
        .Q(N0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[36]),
        .Q(N0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N0_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[37]),
        .Q(N0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[42]),
        .Q(N1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[52]),
        .Q(N1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[53]),
        .Q(N1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[54]),
        .Q(N1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[55]),
        .Q(N1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[43]),
        .Q(N1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[44]),
        .Q(N1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[45]),
        .Q(N1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[46]),
        .Q(N1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[47]),
        .Q(N1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[48]),
        .Q(N1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[49]),
        .Q(N1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[50]),
        .Q(N1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N1_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[51]),
        .Q(N1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[56]),
        .Q(N2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[66]),
        .Q(N2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[67]),
        .Q(N2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[68]),
        .Q(N2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[69]),
        .Q(N2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[57]),
        .Q(N2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[58]),
        .Q(N2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[59]),
        .Q(N2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[60]),
        .Q(N2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[61]),
        .Q(N2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[62]),
        .Q(N2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[63]),
        .Q(N2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[64]),
        .Q(N2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N2_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[65]),
        .Q(N2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[70]),
        .Q(N3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[80]),
        .Q(N3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[81]),
        .Q(N3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[82]),
        .Q(N3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[83]),
        .Q(N3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[71]),
        .Q(N3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[72]),
        .Q(N3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[73]),
        .Q(N3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[74]),
        .Q(N3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[75]),
        .Q(N3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[76]),
        .Q(N3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[77]),
        .Q(N3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[78]),
        .Q(N3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.N3_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[79]),
        .Q(N3[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[140]),
        .Q(W0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[150]),
        .Q(W0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[151]),
        .Q(W0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[152]),
        .Q(W0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[153]),
        .Q(W0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[141]),
        .Q(W0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[142]),
        .Q(W0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[143]),
        .Q(W0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[144]),
        .Q(W0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[145]),
        .Q(W0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[146]),
        .Q(W0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[147]),
        .Q(W0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[148]),
        .Q(W0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W0_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[149]),
        .Q(W0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[154]),
        .Q(W1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[164]),
        .Q(W1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[165]),
        .Q(W1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[166]),
        .Q(W1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[167]),
        .Q(W1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[155]),
        .Q(W1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[156]),
        .Q(W1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[157]),
        .Q(W1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[158]),
        .Q(W1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[159]),
        .Q(W1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[160]),
        .Q(W1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[161]),
        .Q(W1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[162]),
        .Q(W1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W1_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[163]),
        .Q(W1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[168]),
        .Q(W2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[178]),
        .Q(W2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[179]),
        .Q(W2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[180]),
        .Q(W2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[181]),
        .Q(W2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[169]),
        .Q(W2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[170]),
        .Q(W2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[171]),
        .Q(W2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[172]),
        .Q(W2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[173]),
        .Q(W2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[174]),
        .Q(W2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[175]),
        .Q(W2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[176]),
        .Q(W2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W2_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[177]),
        .Q(W2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[182]),
        .Q(W3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[192]),
        .Q(W3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[193]),
        .Q(W3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[194]),
        .Q(W3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[195]),
        .Q(W3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[183]),
        .Q(W3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[184]),
        .Q(W3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[185]),
        .Q(W3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[186]),
        .Q(W3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[187]),
        .Q(W3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[188]),
        .Q(W3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[189]),
        .Q(W3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[190]),
        .Q(W3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.W3_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[191]),
        .Q(W3[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[0] 
       (.C(clk),
        .CE(active),
        .D(fifo[0]),
        .Q(counter[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[10] 
       (.C(clk),
        .CE(active),
        .D(fifo[10]),
        .Q(counter[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[11] 
       (.C(clk),
        .CE(active),
        .D(fifo[11]),
        .Q(counter[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[12] 
       (.C(clk),
        .CE(active),
        .D(fifo[12]),
        .Q(counter[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[13] 
       (.C(clk),
        .CE(active),
        .D(fifo[13]),
        .Q(counter[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[14] 
       (.C(clk),
        .CE(active),
        .D(fifo[14]),
        .Q(counter[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[15] 
       (.C(clk),
        .CE(active),
        .D(fifo[15]),
        .Q(counter[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[16] 
       (.C(clk),
        .CE(active),
        .D(fifo[16]),
        .Q(counter[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[17] 
       (.C(clk),
        .CE(active),
        .D(fifo[17]),
        .Q(counter[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[18] 
       (.C(clk),
        .CE(active),
        .D(fifo[18]),
        .Q(counter[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[19] 
       (.C(clk),
        .CE(active),
        .D(fifo[19]),
        .Q(counter[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[1] 
       (.C(clk),
        .CE(active),
        .D(fifo[1]),
        .Q(counter[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[20] 
       (.C(clk),
        .CE(active),
        .D(fifo[20]),
        .Q(counter[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[21] 
       (.C(clk),
        .CE(active),
        .D(fifo[21]),
        .Q(counter[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[22] 
       (.C(clk),
        .CE(active),
        .D(fifo[22]),
        .Q(counter[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[23] 
       (.C(clk),
        .CE(active),
        .D(fifo[23]),
        .Q(counter[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[24] 
       (.C(clk),
        .CE(active),
        .D(fifo[24]),
        .Q(counter[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[25] 
       (.C(clk),
        .CE(active),
        .D(fifo[25]),
        .Q(counter[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[26] 
       (.C(clk),
        .CE(active),
        .D(fifo[26]),
        .Q(counter[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[27] 
       (.C(clk),
        .CE(active),
        .D(fifo[27]),
        .Q(counter[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[2] 
       (.C(clk),
        .CE(active),
        .D(fifo[2]),
        .Q(counter[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[3] 
       (.C(clk),
        .CE(active),
        .D(fifo[3]),
        .Q(counter[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[4] 
       (.C(clk),
        .CE(active),
        .D(fifo[4]),
        .Q(counter[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[5] 
       (.C(clk),
        .CE(active),
        .D(fifo[5]),
        .Q(counter[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[6] 
       (.C(clk),
        .CE(active),
        .D(fifo[6]),
        .Q(counter[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[7] 
       (.C(clk),
        .CE(active),
        .D(fifo[7]),
        .Q(counter[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[8] 
       (.C(clk),
        .CE(active),
        .D(fifo[8]),
        .Q(counter[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \composite.counter_reg[9] 
       (.C(clk),
        .CE(active),
        .D(fifo[9]),
        .Q(counter[9]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_3 ila_E
       (.clk(clk),
        .probe0(E0),
        .probe1(E1),
        .probe2(E2),
        .probe3(E3),
        .probe4(active),
        .probe5(counter));
  (* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_3 ila_N
       (.clk(clk),
        .probe0(N0),
        .probe1(N1),
        .probe2(N2),
        .probe3(N3),
        .probe4(active),
        .probe5(counter));
  (* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_3_HD1 ila_W
       (.clk(clk),
        .probe0(W0),
        .probe1(W1),
        .probe2(W2),
        .probe3(W3),
        .probe4(active),
        .probe5(counter));
endmodule

(* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_3" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_low_0_0_ila_3
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5);
  (* syn_isclock = "1" *) input clk;
  input [13:0]probe0;
  input [13:0]probe1;
  input [13:0]probe2;
  input [13:0]probe3;
  input [0:0]probe4;
  input [27:0]probe5;


endmodule

(* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_3" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_low_0_0_ila_3_HD1
   (clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5);
  (* syn_isclock = "1" *) input clk;
  input [13:0]probe0;
  input [13:0]probe1;
  input [13:0]probe2;
  input [13:0]probe3;
  input [0:0]probe4;
  input [27:0]probe5;


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
