// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Dec 14 15:59:41 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_high_0_0/ps_comp_high_0_0_sim_netlist.v
// Design      : ps_comp_high_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_comp_high_0_0,comp_high,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "comp_high,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_comp_high_0_0
   (fifo_clk,
    fifo_wr,
    fifo_data,
    clk,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0" *) input fifo_clk;
  input fifo_wr;
  input [491:0]fifo_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire clk;
  wire fifo_clk;
  wire [491:0]fifo_data;
  wire fifo_wr;
  wire reset;

  ps_comp_high_0_0_comp_high inst
       (.clk(clk),
        .fifo_clk(fifo_clk),
        .fifo_data(fifo_data),
        .fifo_wr(fifo_wr),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "comp_high" *) 
module ps_comp_high_0_0_comp_high
   (fifo_clk,
    fifo_wr,
    fifo_data,
    clk,
    reset);
  input fifo_clk;
  input fifo_wr;
  input [491:0]fifo_data;
  input clk;
  input reset;

  wire clk;
  wire \comp_high.doa_rd_i_1_n_0 ;
  wire \comp_high.env_N[15]_i_1_n_0 ;
  wire \comp_high.fifo_rd_delay[1]_i_1_n_0 ;
  wire \comp_high.fifo_rd_delay[2]_i_1_n_0 ;
  wire \comp_high.fifo_rd_delay[3]_i_1_n_0 ;
  wire \comp_high.fifo_rd_delay[3]_i_2_n_0 ;
  wire [0:0]\comp_high.fifo_rd_delay_reg0 ;
  wire [491:0]doa_data;
  (* MARK_DEBUG *) wire doa_rd;
  (* MARK_DEBUG *) wire [15:0]env_E;
  (* MARK_DEBUG *) wire [15:0]env_N;
  (* MARK_DEBUG *) wire [15:0]env_W;
  wire fifo_clk;
  wire [491:0]fifo_data;
  (* MARK_DEBUG *) wire fifo_empty;
  (* MARK_DEBUG *) wire [3:0]fifo_rd_delay;
  wire fifo_wr;
  (* MARK_DEBUG *) wire [19:0]phase_E;
  (* MARK_DEBUG *) wire [19:0]phase_N;
  (* MARK_DEBUG *) wire [19:0]phase_W;
  (* MARK_DEBUG *) wire [15:0]raw_E0;
  (* MARK_DEBUG *) wire [15:0]raw_E1;
  (* MARK_DEBUG *) wire [15:0]raw_E2;
  (* MARK_DEBUG *) wire [15:0]raw_E3;
  (* MARK_DEBUG *) wire [15:0]raw_E4;
  (* MARK_DEBUG *) wire [15:0]raw_E5;
  (* MARK_DEBUG *) wire [15:0]raw_E6;
  (* MARK_DEBUG *) wire [15:0]raw_E7;
  (* MARK_DEBUG *) wire [15:0]raw_N0;
  (* MARK_DEBUG *) wire [15:0]raw_N1;
  (* MARK_DEBUG *) wire [15:0]raw_N2;
  (* MARK_DEBUG *) wire [15:0]raw_N3;
  (* MARK_DEBUG *) wire [15:0]raw_N4;
  (* MARK_DEBUG *) wire [15:0]raw_N5;
  (* MARK_DEBUG *) wire [15:0]raw_N6;
  (* MARK_DEBUG *) wire [15:0]raw_N7;
  (* MARK_DEBUG *) wire [15:0]raw_W0;
  (* MARK_DEBUG *) wire [15:0]raw_W1;
  (* MARK_DEBUG *) wire [15:0]raw_W2;
  (* MARK_DEBUG *) wire [15:0]raw_W3;
  (* MARK_DEBUG *) wire [15:0]raw_W4;
  (* MARK_DEBUG *) wire [15:0]raw_W5;
  (* MARK_DEBUG *) wire [15:0]raw_W6;
  (* MARK_DEBUG *) wire [15:0]raw_W7;
  wire reset;
  wire NLW_fifo_comp_i_full_UNCONNECTED;
  wire NLW_fifo_comp_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_comp_i_wr_rst_busy_UNCONNECTED;

  LUT5 #(
    .INIT(32'h00000001)) 
    \comp_high.doa_rd_i_1 
       (.I0(fifo_empty),
        .I1(fifo_rd_delay[2]),
        .I2(fifo_rd_delay[3]),
        .I3(fifo_rd_delay[0]),
        .I4(fifo_rd_delay[1]),
        .O(\comp_high.doa_rd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_high.doa_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_high.doa_rd_i_1_n_0 ),
        .Q(doa_rd),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[164]),
        .Q(env_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[174]),
        .Q(env_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[175]),
        .Q(env_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[176]),
        .Q(env_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[177]),
        .Q(env_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[178]),
        .Q(env_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[179]),
        .Q(env_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[165]),
        .Q(env_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[166]),
        .Q(env_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[167]),
        .Q(env_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[168]),
        .Q(env_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[169]),
        .Q(env_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[170]),
        .Q(env_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[171]),
        .Q(env_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[172]),
        .Q(env_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[173]),
        .Q(env_E[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_high.env_N[15]_i_1 
       (.I0(doa_rd),
        .I1(fifo_empty),
        .O(\comp_high.env_N[15]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[0]),
        .Q(env_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[10]),
        .Q(env_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[11]),
        .Q(env_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[12]),
        .Q(env_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[13]),
        .Q(env_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[14]),
        .Q(env_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[15]),
        .Q(env_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[1]),
        .Q(env_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[2]),
        .Q(env_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[3]),
        .Q(env_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[4]),
        .Q(env_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[5]),
        .Q(env_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[6]),
        .Q(env_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[7]),
        .Q(env_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[8]),
        .Q(env_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[9]),
        .Q(env_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[328]),
        .Q(env_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[338]),
        .Q(env_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[339]),
        .Q(env_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[340]),
        .Q(env_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[341]),
        .Q(env_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[342]),
        .Q(env_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[343]),
        .Q(env_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[329]),
        .Q(env_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[330]),
        .Q(env_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[331]),
        .Q(env_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[332]),
        .Q(env_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[333]),
        .Q(env_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[334]),
        .Q(env_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[335]),
        .Q(env_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[336]),
        .Q(env_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[337]),
        .Q(env_W[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_high.fifo_rd_delay[0]_i_1 
       (.I0(fifo_rd_delay[0]),
        .O(\comp_high.fifo_rd_delay_reg0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_high.fifo_rd_delay[1]_i_1 
       (.I0(fifo_rd_delay[0]),
        .I1(fifo_rd_delay[1]),
        .O(\comp_high.fifo_rd_delay[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_high.fifo_rd_delay[2]_i_1 
       (.I0(fifo_rd_delay[1]),
        .I1(fifo_rd_delay[0]),
        .I2(fifo_rd_delay[2]),
        .O(\comp_high.fifo_rd_delay[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_high.fifo_rd_delay[3]_i_1 
       (.I0(fifo_rd_delay[1]),
        .I1(fifo_rd_delay[0]),
        .I2(fifo_rd_delay[3]),
        .I3(fifo_rd_delay[2]),
        .O(\comp_high.fifo_rd_delay[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \comp_high.fifo_rd_delay[3]_i_2 
       (.I0(fifo_rd_delay[2]),
        .I1(fifo_rd_delay[0]),
        .I2(fifo_rd_delay[1]),
        .I3(fifo_rd_delay[3]),
        .O(\comp_high.fifo_rd_delay[3]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_rd_delay_reg[0] 
       (.C(clk),
        .CE(\comp_high.fifo_rd_delay[3]_i_1_n_0 ),
        .D(\comp_high.fifo_rd_delay_reg0 ),
        .Q(fifo_rd_delay[0]),
        .S(fifo_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_rd_delay_reg[1] 
       (.C(clk),
        .CE(\comp_high.fifo_rd_delay[3]_i_1_n_0 ),
        .D(\comp_high.fifo_rd_delay[1]_i_1_n_0 ),
        .Q(fifo_rd_delay[1]),
        .S(fifo_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_rd_delay_reg[2] 
       (.C(clk),
        .CE(\comp_high.fifo_rd_delay[3]_i_1_n_0 ),
        .D(\comp_high.fifo_rd_delay[2]_i_1_n_0 ),
        .Q(fifo_rd_delay[2]),
        .S(fifo_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.fifo_rd_delay_reg[3] 
       (.C(clk),
        .CE(\comp_high.fifo_rd_delay[3]_i_1_n_0 ),
        .D(\comp_high.fifo_rd_delay[3]_i_2_n_0 ),
        .Q(fifo_rd_delay[3]),
        .R(fifo_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[180]),
        .Q(phase_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[190]),
        .Q(phase_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[191]),
        .Q(phase_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[192]),
        .Q(phase_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[193]),
        .Q(phase_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[194]),
        .Q(phase_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[195]),
        .Q(phase_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[16] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[196]),
        .Q(phase_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[17] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[197]),
        .Q(phase_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[18] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[198]),
        .Q(phase_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[19] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[199]),
        .Q(phase_E[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[181]),
        .Q(phase_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[182]),
        .Q(phase_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[183]),
        .Q(phase_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[184]),
        .Q(phase_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[185]),
        .Q(phase_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[186]),
        .Q(phase_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[187]),
        .Q(phase_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[188]),
        .Q(phase_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[189]),
        .Q(phase_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[16]),
        .Q(phase_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[26]),
        .Q(phase_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[27]),
        .Q(phase_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[28]),
        .Q(phase_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[29]),
        .Q(phase_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[30]),
        .Q(phase_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[31]),
        .Q(phase_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[16] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[32]),
        .Q(phase_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[17] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[33]),
        .Q(phase_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[18] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[34]),
        .Q(phase_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[19] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[35]),
        .Q(phase_N[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[17]),
        .Q(phase_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[18]),
        .Q(phase_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[19]),
        .Q(phase_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[20]),
        .Q(phase_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[21]),
        .Q(phase_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[22]),
        .Q(phase_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[23]),
        .Q(phase_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[24]),
        .Q(phase_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[25]),
        .Q(phase_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[344]),
        .Q(phase_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[354]),
        .Q(phase_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[355]),
        .Q(phase_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[356]),
        .Q(phase_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[357]),
        .Q(phase_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[358]),
        .Q(phase_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[359]),
        .Q(phase_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[16] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[360]),
        .Q(phase_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[17] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[361]),
        .Q(phase_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[18] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[362]),
        .Q(phase_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[19] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[363]),
        .Q(phase_W[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[345]),
        .Q(phase_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[346]),
        .Q(phase_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[347]),
        .Q(phase_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[348]),
        .Q(phase_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[349]),
        .Q(phase_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[350]),
        .Q(phase_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[351]),
        .Q(phase_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[352]),
        .Q(phase_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[353]),
        .Q(phase_W[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[200]),
        .Q(raw_E0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[210]),
        .Q(raw_E0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[211]),
        .Q(raw_E0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[212]),
        .Q(raw_E0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[213]),
        .Q(raw_E0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[214]),
        .Q(raw_E0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[215]),
        .Q(raw_E0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[201]),
        .Q(raw_E0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[202]),
        .Q(raw_E0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[203]),
        .Q(raw_E0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[204]),
        .Q(raw_E0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[205]),
        .Q(raw_E0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[206]),
        .Q(raw_E0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[207]),
        .Q(raw_E0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[208]),
        .Q(raw_E0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[209]),
        .Q(raw_E0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[216]),
        .Q(raw_E1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[226]),
        .Q(raw_E1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[227]),
        .Q(raw_E1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[228]),
        .Q(raw_E1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[229]),
        .Q(raw_E1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[230]),
        .Q(raw_E1[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[231]),
        .Q(raw_E1[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[217]),
        .Q(raw_E1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[218]),
        .Q(raw_E1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[219]),
        .Q(raw_E1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[220]),
        .Q(raw_E1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[221]),
        .Q(raw_E1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[222]),
        .Q(raw_E1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[223]),
        .Q(raw_E1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[224]),
        .Q(raw_E1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E1_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[225]),
        .Q(raw_E1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[232]),
        .Q(raw_E2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[242]),
        .Q(raw_E2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[243]),
        .Q(raw_E2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[244]),
        .Q(raw_E2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[245]),
        .Q(raw_E2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[246]),
        .Q(raw_E2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[247]),
        .Q(raw_E2[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[233]),
        .Q(raw_E2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[234]),
        .Q(raw_E2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[235]),
        .Q(raw_E2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[236]),
        .Q(raw_E2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[237]),
        .Q(raw_E2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[238]),
        .Q(raw_E2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[239]),
        .Q(raw_E2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[240]),
        .Q(raw_E2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E2_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[241]),
        .Q(raw_E2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[248]),
        .Q(raw_E3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[258]),
        .Q(raw_E3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[259]),
        .Q(raw_E3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[260]),
        .Q(raw_E3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[261]),
        .Q(raw_E3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[262]),
        .Q(raw_E3[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[263]),
        .Q(raw_E3[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[249]),
        .Q(raw_E3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[250]),
        .Q(raw_E3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[251]),
        .Q(raw_E3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[252]),
        .Q(raw_E3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[253]),
        .Q(raw_E3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[254]),
        .Q(raw_E3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[255]),
        .Q(raw_E3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[256]),
        .Q(raw_E3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E3_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[257]),
        .Q(raw_E3[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[264]),
        .Q(raw_E4[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[274]),
        .Q(raw_E4[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[275]),
        .Q(raw_E4[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[276]),
        .Q(raw_E4[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[277]),
        .Q(raw_E4[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[278]),
        .Q(raw_E4[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[279]),
        .Q(raw_E4[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[265]),
        .Q(raw_E4[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[266]),
        .Q(raw_E4[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[267]),
        .Q(raw_E4[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[268]),
        .Q(raw_E4[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[269]),
        .Q(raw_E4[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[270]),
        .Q(raw_E4[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[271]),
        .Q(raw_E4[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[272]),
        .Q(raw_E4[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E4_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[273]),
        .Q(raw_E4[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[280]),
        .Q(raw_E5[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[290]),
        .Q(raw_E5[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[291]),
        .Q(raw_E5[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[292]),
        .Q(raw_E5[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[293]),
        .Q(raw_E5[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[294]),
        .Q(raw_E5[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[295]),
        .Q(raw_E5[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[281]),
        .Q(raw_E5[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[282]),
        .Q(raw_E5[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[283]),
        .Q(raw_E5[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[284]),
        .Q(raw_E5[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[285]),
        .Q(raw_E5[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[286]),
        .Q(raw_E5[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[287]),
        .Q(raw_E5[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[288]),
        .Q(raw_E5[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E5_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[289]),
        .Q(raw_E5[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[296]),
        .Q(raw_E6[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[306]),
        .Q(raw_E6[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[307]),
        .Q(raw_E6[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[308]),
        .Q(raw_E6[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[309]),
        .Q(raw_E6[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[310]),
        .Q(raw_E6[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[311]),
        .Q(raw_E6[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[297]),
        .Q(raw_E6[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[298]),
        .Q(raw_E6[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[299]),
        .Q(raw_E6[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[300]),
        .Q(raw_E6[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[301]),
        .Q(raw_E6[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[302]),
        .Q(raw_E6[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[303]),
        .Q(raw_E6[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[304]),
        .Q(raw_E6[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E6_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[305]),
        .Q(raw_E6[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[312]),
        .Q(raw_E7[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[322]),
        .Q(raw_E7[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[323]),
        .Q(raw_E7[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[324]),
        .Q(raw_E7[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[325]),
        .Q(raw_E7[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[326]),
        .Q(raw_E7[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[327]),
        .Q(raw_E7[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[313]),
        .Q(raw_E7[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[314]),
        .Q(raw_E7[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[315]),
        .Q(raw_E7[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[316]),
        .Q(raw_E7[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[317]),
        .Q(raw_E7[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[318]),
        .Q(raw_E7[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[319]),
        .Q(raw_E7[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[320]),
        .Q(raw_E7[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E7_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[321]),
        .Q(raw_E7[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[36]),
        .Q(raw_N0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[46]),
        .Q(raw_N0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[47]),
        .Q(raw_N0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[48]),
        .Q(raw_N0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[49]),
        .Q(raw_N0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[50]),
        .Q(raw_N0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[51]),
        .Q(raw_N0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[37]),
        .Q(raw_N0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[38]),
        .Q(raw_N0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[39]),
        .Q(raw_N0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[40]),
        .Q(raw_N0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[41]),
        .Q(raw_N0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[42]),
        .Q(raw_N0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[43]),
        .Q(raw_N0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[44]),
        .Q(raw_N0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[45]),
        .Q(raw_N0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[52]),
        .Q(raw_N1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[62]),
        .Q(raw_N1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[63]),
        .Q(raw_N1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[64]),
        .Q(raw_N1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[65]),
        .Q(raw_N1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[66]),
        .Q(raw_N1[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[67]),
        .Q(raw_N1[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[53]),
        .Q(raw_N1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[54]),
        .Q(raw_N1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[55]),
        .Q(raw_N1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[56]),
        .Q(raw_N1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[57]),
        .Q(raw_N1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[58]),
        .Q(raw_N1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[59]),
        .Q(raw_N1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[60]),
        .Q(raw_N1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N1_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[61]),
        .Q(raw_N1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[68]),
        .Q(raw_N2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[78]),
        .Q(raw_N2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[79]),
        .Q(raw_N2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[80]),
        .Q(raw_N2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[81]),
        .Q(raw_N2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[82]),
        .Q(raw_N2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[83]),
        .Q(raw_N2[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[69]),
        .Q(raw_N2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[70]),
        .Q(raw_N2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[71]),
        .Q(raw_N2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[72]),
        .Q(raw_N2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[73]),
        .Q(raw_N2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[74]),
        .Q(raw_N2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[75]),
        .Q(raw_N2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[76]),
        .Q(raw_N2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N2_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[77]),
        .Q(raw_N2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[84]),
        .Q(raw_N3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[94]),
        .Q(raw_N3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[95]),
        .Q(raw_N3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[96]),
        .Q(raw_N3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[97]),
        .Q(raw_N3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[98]),
        .Q(raw_N3[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[99]),
        .Q(raw_N3[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[85]),
        .Q(raw_N3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[86]),
        .Q(raw_N3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[87]),
        .Q(raw_N3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[88]),
        .Q(raw_N3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[89]),
        .Q(raw_N3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[90]),
        .Q(raw_N3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[91]),
        .Q(raw_N3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[92]),
        .Q(raw_N3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N3_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[93]),
        .Q(raw_N3[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[100]),
        .Q(raw_N4[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[110]),
        .Q(raw_N4[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[111]),
        .Q(raw_N4[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[112]),
        .Q(raw_N4[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[113]),
        .Q(raw_N4[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[114]),
        .Q(raw_N4[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[115]),
        .Q(raw_N4[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[101]),
        .Q(raw_N4[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[102]),
        .Q(raw_N4[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[103]),
        .Q(raw_N4[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[104]),
        .Q(raw_N4[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[105]),
        .Q(raw_N4[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[106]),
        .Q(raw_N4[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[107]),
        .Q(raw_N4[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[108]),
        .Q(raw_N4[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N4_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[109]),
        .Q(raw_N4[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[116]),
        .Q(raw_N5[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[126]),
        .Q(raw_N5[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[127]),
        .Q(raw_N5[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[128]),
        .Q(raw_N5[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[129]),
        .Q(raw_N5[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[130]),
        .Q(raw_N5[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[131]),
        .Q(raw_N5[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[117]),
        .Q(raw_N5[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[118]),
        .Q(raw_N5[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[119]),
        .Q(raw_N5[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[120]),
        .Q(raw_N5[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[121]),
        .Q(raw_N5[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[122]),
        .Q(raw_N5[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[123]),
        .Q(raw_N5[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[124]),
        .Q(raw_N5[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N5_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[125]),
        .Q(raw_N5[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[132]),
        .Q(raw_N6[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[142]),
        .Q(raw_N6[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[143]),
        .Q(raw_N6[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[144]),
        .Q(raw_N6[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[145]),
        .Q(raw_N6[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[146]),
        .Q(raw_N6[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[147]),
        .Q(raw_N6[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[133]),
        .Q(raw_N6[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[134]),
        .Q(raw_N6[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[135]),
        .Q(raw_N6[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[136]),
        .Q(raw_N6[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[137]),
        .Q(raw_N6[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[138]),
        .Q(raw_N6[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[139]),
        .Q(raw_N6[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[140]),
        .Q(raw_N6[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N6_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[141]),
        .Q(raw_N6[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[148]),
        .Q(raw_N7[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[158]),
        .Q(raw_N7[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[159]),
        .Q(raw_N7[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[160]),
        .Q(raw_N7[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[161]),
        .Q(raw_N7[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[162]),
        .Q(raw_N7[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[163]),
        .Q(raw_N7[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[149]),
        .Q(raw_N7[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[150]),
        .Q(raw_N7[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[151]),
        .Q(raw_N7[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[152]),
        .Q(raw_N7[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[153]),
        .Q(raw_N7[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[154]),
        .Q(raw_N7[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[155]),
        .Q(raw_N7[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[156]),
        .Q(raw_N7[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N7_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[157]),
        .Q(raw_N7[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[364]),
        .Q(raw_W0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[374]),
        .Q(raw_W0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[375]),
        .Q(raw_W0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[376]),
        .Q(raw_W0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[377]),
        .Q(raw_W0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[378]),
        .Q(raw_W0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[379]),
        .Q(raw_W0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[365]),
        .Q(raw_W0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[366]),
        .Q(raw_W0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[367]),
        .Q(raw_W0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[368]),
        .Q(raw_W0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[369]),
        .Q(raw_W0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[370]),
        .Q(raw_W0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[371]),
        .Q(raw_W0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[372]),
        .Q(raw_W0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[373]),
        .Q(raw_W0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[380]),
        .Q(raw_W1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[390]),
        .Q(raw_W1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[391]),
        .Q(raw_W1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[392]),
        .Q(raw_W1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[393]),
        .Q(raw_W1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[394]),
        .Q(raw_W1[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[395]),
        .Q(raw_W1[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[381]),
        .Q(raw_W1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[382]),
        .Q(raw_W1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[383]),
        .Q(raw_W1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[384]),
        .Q(raw_W1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[385]),
        .Q(raw_W1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[386]),
        .Q(raw_W1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[387]),
        .Q(raw_W1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[388]),
        .Q(raw_W1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W1_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[389]),
        .Q(raw_W1[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[396]),
        .Q(raw_W2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[406]),
        .Q(raw_W2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[407]),
        .Q(raw_W2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[408]),
        .Q(raw_W2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[409]),
        .Q(raw_W2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[410]),
        .Q(raw_W2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[411]),
        .Q(raw_W2[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[397]),
        .Q(raw_W2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[398]),
        .Q(raw_W2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[399]),
        .Q(raw_W2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[400]),
        .Q(raw_W2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[401]),
        .Q(raw_W2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[402]),
        .Q(raw_W2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[403]),
        .Q(raw_W2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[404]),
        .Q(raw_W2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W2_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[405]),
        .Q(raw_W2[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[412]),
        .Q(raw_W3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[422]),
        .Q(raw_W3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[423]),
        .Q(raw_W3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[424]),
        .Q(raw_W3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[425]),
        .Q(raw_W3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[426]),
        .Q(raw_W3[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[427]),
        .Q(raw_W3[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[413]),
        .Q(raw_W3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[414]),
        .Q(raw_W3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[415]),
        .Q(raw_W3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[416]),
        .Q(raw_W3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[417]),
        .Q(raw_W3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[418]),
        .Q(raw_W3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[419]),
        .Q(raw_W3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[420]),
        .Q(raw_W3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W3_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[421]),
        .Q(raw_W3[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[428]),
        .Q(raw_W4[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[438]),
        .Q(raw_W4[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[439]),
        .Q(raw_W4[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[440]),
        .Q(raw_W4[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[441]),
        .Q(raw_W4[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[442]),
        .Q(raw_W4[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[443]),
        .Q(raw_W4[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[429]),
        .Q(raw_W4[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[430]),
        .Q(raw_W4[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[431]),
        .Q(raw_W4[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[432]),
        .Q(raw_W4[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[433]),
        .Q(raw_W4[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[434]),
        .Q(raw_W4[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[435]),
        .Q(raw_W4[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[436]),
        .Q(raw_W4[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W4_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[437]),
        .Q(raw_W4[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[444]),
        .Q(raw_W5[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[454]),
        .Q(raw_W5[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[455]),
        .Q(raw_W5[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[456]),
        .Q(raw_W5[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[457]),
        .Q(raw_W5[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[458]),
        .Q(raw_W5[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[459]),
        .Q(raw_W5[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[445]),
        .Q(raw_W5[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[446]),
        .Q(raw_W5[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[447]),
        .Q(raw_W5[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[448]),
        .Q(raw_W5[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[449]),
        .Q(raw_W5[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[450]),
        .Q(raw_W5[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[451]),
        .Q(raw_W5[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[452]),
        .Q(raw_W5[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W5_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[453]),
        .Q(raw_W5[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[460]),
        .Q(raw_W6[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[470]),
        .Q(raw_W6[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[471]),
        .Q(raw_W6[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[472]),
        .Q(raw_W6[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[473]),
        .Q(raw_W6[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[474]),
        .Q(raw_W6[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[475]),
        .Q(raw_W6[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[461]),
        .Q(raw_W6[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[462]),
        .Q(raw_W6[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[463]),
        .Q(raw_W6[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[464]),
        .Q(raw_W6[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[465]),
        .Q(raw_W6[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[466]),
        .Q(raw_W6[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[467]),
        .Q(raw_W6[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[468]),
        .Q(raw_W6[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W6_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[469]),
        .Q(raw_W6[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[476]),
        .Q(raw_W7[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[486]),
        .Q(raw_W7[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[487]),
        .Q(raw_W7[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[488]),
        .Q(raw_W7[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[489]),
        .Q(raw_W7[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[490]),
        .Q(raw_W7[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[491]),
        .Q(raw_W7[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[477]),
        .Q(raw_W7[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[478]),
        .Q(raw_W7[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[479]),
        .Q(raw_W7[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[480]),
        .Q(raw_W7[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[481]),
        .Q(raw_W7[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[482]),
        .Q(raw_W7[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[483]),
        .Q(raw_W7[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[484]),
        .Q(raw_W7[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W7_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N[15]_i_1_n_0 ),
        .D(doa_data[485]),
        .Q(raw_W7[9]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fifo_comp_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_high_0_0_fifo_comp_high fifo_comp_i
       (.din(fifo_data),
        .dout(doa_data),
        .empty(fifo_empty),
        .full(NLW_fifo_comp_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(doa_rd),
        .rd_rst_busy(NLW_fifo_comp_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(fifo_wr),
        .wr_rst_busy(NLW_fifo_comp_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_high_0_0_ila_2 ila_E
       (.clk(clk),
        .probe0(fifo_empty),
        .probe1(doa_rd),
        .probe10(raw_E5),
        .probe11(raw_E6),
        .probe12(raw_E7),
        .probe2(fifo_rd_delay),
        .probe3(env_E),
        .probe4(phase_E),
        .probe5(raw_E0),
        .probe6(raw_E1),
        .probe7(raw_E2),
        .probe8(raw_E3),
        .probe9(raw_E4));
  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_high_0_0_ila_2 ila_N
       (.clk(clk),
        .probe0(fifo_empty),
        .probe1(doa_rd),
        .probe10(raw_N5),
        .probe11(raw_N6),
        .probe12(raw_N7),
        .probe2(fifo_rd_delay),
        .probe3(env_N),
        .probe4(phase_N),
        .probe5(raw_N0),
        .probe6(raw_N1),
        .probe7(raw_N2),
        .probe8(raw_N3),
        .probe9(raw_N4));
  (* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_high_0_0_ila_2_HD1 ila_W
       (.clk(clk),
        .probe0(fifo_empty),
        .probe1(doa_rd),
        .probe10(raw_W5),
        .probe11(raw_W6),
        .probe12(raw_W7),
        .probe2(fifo_rd_delay),
        .probe3(env_W),
        .probe4(phase_W),
        .probe5(raw_W0),
        .probe6(raw_W1),
        .probe7(raw_W2),
        .probe8(raw_W3),
        .probe9(raw_W4));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_comp_high,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_comp_high" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_high_0_0_fifo_comp_high
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty,
    wr_rst_busy,
    rd_rst_busy);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [491:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [491:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_2" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_high_0_0_ila_2
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
    probe12);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [3:0]probe2;
  input [15:0]probe3;
  input [19:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [15:0]probe9;
  input [15:0]probe10;
  input [15:0]probe11;
  input [15:0]probe12;


endmodule

(* CHECK_LICENSE_TYPE = "ila_2,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_2" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_high_0_0_ila_2_HD1
   (clk,
    probe0,
    probe1,
    probe10,
    probe11,
    probe12,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [15:0]probe10;
  input [15:0]probe11;
  input [15:0]probe12;
  input [3:0]probe2;
  input [15:0]probe3;
  input [19:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [15:0]probe7;
  input [15:0]probe8;
  input [15:0]probe9;


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
