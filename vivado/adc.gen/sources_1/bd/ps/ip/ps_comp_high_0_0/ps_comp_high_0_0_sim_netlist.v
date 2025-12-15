// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Dec 15 22:26:07 2025
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
    fifo_sample_data,
    fifo_doa_data,
    clk,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0" *) input fifo_clk;
  input fifo_wr;
  input [383:0]fifo_sample_data;
  input [143:0]fifo_doa_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire clk;
  wire fifo_clk;
  wire [143:0]fifo_doa_data;
  wire [383:0]fifo_sample_data;
  wire fifo_wr;
  wire reset;

  ps_comp_high_0_0_comp_high inst
       (.clk(clk),
        .fifo_clk(fifo_clk),
        .fifo_doa_data(fifo_doa_data),
        .fifo_sample_data(fifo_sample_data),
        .fifo_wr(fifo_wr),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "comp_high" *) 
module ps_comp_high_0_0_comp_high
   (fifo_clk,
    fifo_wr,
    fifo_sample_data,
    fifo_doa_data,
    clk,
    reset);
  input fifo_clk;
  input fifo_wr;
  input [383:0]fifo_sample_data;
  input [143:0]fifo_doa_data;
  input clk;
  input reset;

  wire clk;
  wire \comp_high.doa_rd_i_1_n_0 ;
  wire \comp_high.env_N_reg0 ;
  wire \comp_high.fifo_doa_delay[1]_i_1_n_0 ;
  wire \comp_high.fifo_doa_delay[2]_i_1_n_0 ;
  wire \comp_high.fifo_doa_delay[3]_i_1_n_0 ;
  wire \comp_high.fifo_doa_delay[4]_i_1_n_0 ;
  wire \comp_high.fifo_doa_delay[4]_i_2_n_0 ;
  wire [0:0]\comp_high.fifo_doa_delay_reg0 ;
  wire \comp_high.fifo_sample_delay[1]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[2]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[3]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[4]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[5]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[6]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[7]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[8]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[8]_i_2_n_0 ;
  wire [0:0]\comp_high.fifo_sample_delay_reg0 ;
  wire \comp_high.raw_N0_reg0 ;
  wire \comp_high.sample_rd_i_1_n_0 ;
  wire [143:0]doa_data;
  (* MARK_DEBUG *) wire doa_rd;
  (* MARK_DEBUG *) wire [15:0]env_E;
  (* MARK_DEBUG *) wire [15:0]env_N;
  (* MARK_DEBUG *) wire [15:0]env_W;
  (* MARK_DEBUG *) wire [11:0]err_EW;
  (* MARK_DEBUG *) wire [11:0]err_NE;
  (* MARK_DEBUG *) wire [11:0]err_NW;
  wire fifo_clk;
  wire [143:0]fifo_doa_data;
  (* MARK_DEBUG *) wire [4:0]fifo_doa_delay;
  (* MARK_DEBUG *) wire fifo_doa_empty;
  wire [383:0]fifo_sample_data;
  (* MARK_DEBUG *) wire [8:0]fifo_sample_delay;
  (* MARK_DEBUG *) wire fifo_sample_empty;
  wire fifo_wr;
  (* MARK_DEBUG *) wire [19:0]phase_E;
  (* MARK_DEBUG *) wire [19:0]phase_N;
  (* MARK_DEBUG *) wire [19:0]phase_W;
  (* MARK_DEBUG *) wire [15:0]raw_E0;
  (* MARK_DEBUG *) wire [15:0]raw_N0;
  (* MARK_DEBUG *) wire [15:0]raw_W0;
  wire reset;
  wire [271:0]sample_data;
  (* MARK_DEBUG *) wire sample_rd;
  wire NLW_fifo_doa_i_full_UNCONNECTED;
  wire NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire [383:16]NLW_fifo_raw_i_dout_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_high.doa_rd_i_1 
       (.I0(fifo_doa_delay[0]),
        .I1(fifo_doa_delay[3]),
        .I2(fifo_doa_delay[4]),
        .I3(fifo_doa_delay[1]),
        .I4(fifo_doa_delay[2]),
        .I5(fifo_doa_empty),
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
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[36]),
        .Q(env_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[46]),
        .Q(env_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[47]),
        .Q(env_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[48]),
        .Q(env_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[49]),
        .Q(env_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[50]),
        .Q(env_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[51]),
        .Q(env_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[37]),
        .Q(env_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[38]),
        .Q(env_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[39]),
        .Q(env_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[40]),
        .Q(env_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[41]),
        .Q(env_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[42]),
        .Q(env_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[43]),
        .Q(env_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[44]),
        .Q(env_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_E_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[45]),
        .Q(env_E[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_high.env_N[15]_i_1 
       (.I0(doa_rd),
        .I1(fifo_doa_empty),
        .O(\comp_high.env_N_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[0]),
        .Q(env_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[10]),
        .Q(env_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[11]),
        .Q(env_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[12]),
        .Q(env_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[13]),
        .Q(env_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[14]),
        .Q(env_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[15]),
        .Q(env_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[1]),
        .Q(env_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[2]),
        .Q(env_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[3]),
        .Q(env_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[4]),
        .Q(env_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[5]),
        .Q(env_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[6]),
        .Q(env_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[7]),
        .Q(env_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[8]),
        .Q(env_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_N_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[9]),
        .Q(env_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[72]),
        .Q(env_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[82]),
        .Q(env_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[83]),
        .Q(env_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[84]),
        .Q(env_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[85]),
        .Q(env_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[86]),
        .Q(env_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[87]),
        .Q(env_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[73]),
        .Q(env_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[74]),
        .Q(env_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[75]),
        .Q(env_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[76]),
        .Q(env_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[77]),
        .Q(env_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[78]),
        .Q(env_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[79]),
        .Q(env_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[80]),
        .Q(env_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.env_W_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[81]),
        .Q(env_W[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[132]),
        .Q(err_EW[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[142]),
        .Q(err_EW[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[143]),
        .Q(err_EW[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[133]),
        .Q(err_EW[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[134]),
        .Q(err_EW[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[135]),
        .Q(err_EW[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[136]),
        .Q(err_EW[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[137]),
        .Q(err_EW[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[138]),
        .Q(err_EW[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[139]),
        .Q(err_EW[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[140]),
        .Q(err_EW[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_EW_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[141]),
        .Q(err_EW[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[108]),
        .Q(err_NE[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[118]),
        .Q(err_NE[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[119]),
        .Q(err_NE[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[109]),
        .Q(err_NE[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[110]),
        .Q(err_NE[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[111]),
        .Q(err_NE[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[112]),
        .Q(err_NE[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[113]),
        .Q(err_NE[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[114]),
        .Q(err_NE[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[115]),
        .Q(err_NE[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[116]),
        .Q(err_NE[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NE_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[117]),
        .Q(err_NE[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[120]),
        .Q(err_NW[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[130]),
        .Q(err_NW[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[131]),
        .Q(err_NW[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[121]),
        .Q(err_NW[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[122]),
        .Q(err_NW[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[123]),
        .Q(err_NW[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[124]),
        .Q(err_NW[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[125]),
        .Q(err_NW[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[126]),
        .Q(err_NW[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[127]),
        .Q(err_NW[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[128]),
        .Q(err_NW[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.err_NW_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[129]),
        .Q(err_NW[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_high.fifo_doa_delay[0]_i_1 
       (.I0(fifo_doa_delay[0]),
        .O(\comp_high.fifo_doa_delay_reg0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_high.fifo_doa_delay[1]_i_1 
       (.I0(fifo_doa_delay[0]),
        .I1(fifo_doa_delay[1]),
        .O(\comp_high.fifo_doa_delay[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_high.fifo_doa_delay[2]_i_1 
       (.I0(fifo_doa_delay[1]),
        .I1(fifo_doa_delay[0]),
        .I2(fifo_doa_delay[2]),
        .O(\comp_high.fifo_doa_delay[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \comp_high.fifo_doa_delay[3]_i_1 
       (.I0(fifo_doa_delay[2]),
        .I1(fifo_doa_delay[0]),
        .I2(fifo_doa_delay[1]),
        .I3(fifo_doa_delay[3]),
        .O(\comp_high.fifo_doa_delay[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_high.fifo_doa_delay[4]_i_1 
       (.I0(fifo_doa_delay[0]),
        .I1(fifo_doa_delay[3]),
        .I2(fifo_doa_delay[4]),
        .I3(fifo_doa_delay[1]),
        .I4(fifo_doa_delay[2]),
        .O(\comp_high.fifo_doa_delay[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \comp_high.fifo_doa_delay[4]_i_2 
       (.I0(fifo_doa_delay[3]),
        .I1(fifo_doa_delay[1]),
        .I2(fifo_doa_delay[0]),
        .I3(fifo_doa_delay[2]),
        .I4(fifo_doa_delay[4]),
        .O(\comp_high.fifo_doa_delay[4]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_doa_delay_reg[0] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_doa_delay_reg0 ),
        .Q(fifo_doa_delay[0]),
        .S(fifo_doa_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_doa_delay_reg[1] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_doa_delay[1]_i_1_n_0 ),
        .Q(fifo_doa_delay[1]),
        .S(fifo_doa_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_doa_delay_reg[2] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_doa_delay[2]_i_1_n_0 ),
        .Q(fifo_doa_delay[2]),
        .S(fifo_doa_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_doa_delay_reg[3] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_doa_delay[3]_i_1_n_0 ),
        .Q(fifo_doa_delay[3]),
        .S(fifo_doa_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_doa_delay_reg[4] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_doa_delay[4]_i_2_n_0 ),
        .Q(fifo_doa_delay[4]),
        .S(fifo_doa_empty));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_high.fifo_sample_delay[0]_i_1 
       (.I0(fifo_sample_delay[0]),
        .O(\comp_high.fifo_sample_delay_reg0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_high.fifo_sample_delay[1]_i_1 
       (.I0(fifo_sample_delay[0]),
        .I1(fifo_sample_delay[1]),
        .O(\comp_high.fifo_sample_delay[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_high.fifo_sample_delay[2]_i_1 
       (.I0(fifo_sample_delay[1]),
        .I1(fifo_sample_delay[0]),
        .I2(fifo_sample_delay[2]),
        .O(\comp_high.fifo_sample_delay[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \comp_high.fifo_sample_delay[3]_i_1 
       (.I0(fifo_sample_delay[2]),
        .I1(fifo_sample_delay[0]),
        .I2(fifo_sample_delay[1]),
        .I3(fifo_sample_delay[3]),
        .O(\comp_high.fifo_sample_delay[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \comp_high.fifo_sample_delay[4]_i_1 
       (.I0(fifo_sample_delay[3]),
        .I1(fifo_sample_delay[1]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[2]),
        .I4(fifo_sample_delay[4]),
        .O(\comp_high.fifo_sample_delay[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \comp_high.fifo_sample_delay[5]_i_1 
       (.I0(fifo_sample_delay[4]),
        .I1(fifo_sample_delay[2]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[1]),
        .I4(fifo_sample_delay[3]),
        .I5(fifo_sample_delay[5]),
        .O(\comp_high.fifo_sample_delay[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_high.fifo_sample_delay[6]_i_1 
       (.I0(\comp_high.fifo_sample_delay[8]_i_2_n_0 ),
        .I1(fifo_sample_delay[6]),
        .O(\comp_high.fifo_sample_delay[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_high.fifo_sample_delay[7]_i_1 
       (.I0(fifo_sample_delay[6]),
        .I1(\comp_high.fifo_sample_delay[8]_i_2_n_0 ),
        .I2(fifo_sample_delay[7]),
        .O(\comp_high.fifo_sample_delay[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \comp_high.fifo_sample_delay[8]_i_1 
       (.I0(fifo_sample_delay[7]),
        .I1(\comp_high.fifo_sample_delay[8]_i_2_n_0 ),
        .I2(fifo_sample_delay[6]),
        .I3(fifo_sample_delay[8]),
        .O(\comp_high.fifo_sample_delay[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_high.fifo_sample_delay[8]_i_2 
       (.I0(fifo_sample_delay[4]),
        .I1(fifo_sample_delay[2]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[1]),
        .I4(fifo_sample_delay[3]),
        .I5(fifo_sample_delay[5]),
        .O(\comp_high.fifo_sample_delay[8]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_sample_delay_reg[0] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay_reg0 ),
        .Q(fifo_sample_delay[0]),
        .S(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_sample_delay_reg[1] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[1]_i_1_n_0 ),
        .Q(fifo_sample_delay[1]),
        .S(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_sample_delay_reg[2] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[2]_i_1_n_0 ),
        .Q(fifo_sample_delay[2]),
        .S(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_sample_delay_reg[3] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[3]_i_1_n_0 ),
        .Q(fifo_sample_delay[3]),
        .S(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \comp_high.fifo_sample_delay_reg[4] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[4]_i_1_n_0 ),
        .Q(fifo_sample_delay[4]),
        .S(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.fifo_sample_delay_reg[5] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[5]_i_1_n_0 ),
        .Q(fifo_sample_delay[5]),
        .R(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.fifo_sample_delay_reg[6] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[6]_i_1_n_0 ),
        .Q(fifo_sample_delay[6]),
        .R(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.fifo_sample_delay_reg[7] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .Q(fifo_sample_delay[7]),
        .R(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.fifo_sample_delay_reg[8] 
       (.C(clk),
        .CE(\comp_high.fifo_doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.fifo_sample_delay[8]_i_1_n_0 ),
        .Q(fifo_sample_delay[8]),
        .R(fifo_sample_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[52]),
        .Q(phase_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[62]),
        .Q(phase_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[63]),
        .Q(phase_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[64]),
        .Q(phase_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[65]),
        .Q(phase_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[66]),
        .Q(phase_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[67]),
        .Q(phase_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[16] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[68]),
        .Q(phase_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[17] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[69]),
        .Q(phase_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[18] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[70]),
        .Q(phase_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[19] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[71]),
        .Q(phase_E[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[53]),
        .Q(phase_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[54]),
        .Q(phase_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[55]),
        .Q(phase_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[56]),
        .Q(phase_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[57]),
        .Q(phase_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[58]),
        .Q(phase_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[59]),
        .Q(phase_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[60]),
        .Q(phase_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_E_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[61]),
        .Q(phase_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[16]),
        .Q(phase_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[26]),
        .Q(phase_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[27]),
        .Q(phase_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[28]),
        .Q(phase_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[29]),
        .Q(phase_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[30]),
        .Q(phase_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[31]),
        .Q(phase_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[16] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[32]),
        .Q(phase_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[17] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[33]),
        .Q(phase_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[18] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[34]),
        .Q(phase_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[19] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[35]),
        .Q(phase_N[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[17]),
        .Q(phase_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[18]),
        .Q(phase_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[19]),
        .Q(phase_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[20]),
        .Q(phase_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[21]),
        .Q(phase_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[22]),
        .Q(phase_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[23]),
        .Q(phase_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[24]),
        .Q(phase_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_N_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[25]),
        .Q(phase_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[0] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[88]),
        .Q(phase_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[10] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[98]),
        .Q(phase_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[11] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[99]),
        .Q(phase_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[12] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[100]),
        .Q(phase_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[13] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[101]),
        .Q(phase_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[14] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[102]),
        .Q(phase_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[15] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[103]),
        .Q(phase_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[16] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[104]),
        .Q(phase_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[17] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[105]),
        .Q(phase_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[18] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[106]),
        .Q(phase_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[19] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[107]),
        .Q(phase_W[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[1] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[89]),
        .Q(phase_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[2] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[90]),
        .Q(phase_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[3] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[91]),
        .Q(phase_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[4] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[92]),
        .Q(phase_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[5] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[93]),
        .Q(phase_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[6] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[94]),
        .Q(phase_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[7] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[95]),
        .Q(phase_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[8] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[96]),
        .Q(phase_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.phase_W_reg[9] 
       (.C(clk),
        .CE(\comp_high.env_N_reg0 ),
        .D(doa_data[97]),
        .Q(phase_W[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[0] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[128]),
        .Q(raw_E0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[10] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[138]),
        .Q(raw_E0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[11] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[139]),
        .Q(raw_E0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[12] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[140]),
        .Q(raw_E0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[13] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[141]),
        .Q(raw_E0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[14] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[142]),
        .Q(raw_E0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[15] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[143]),
        .Q(raw_E0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[1] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[129]),
        .Q(raw_E0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[2] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[130]),
        .Q(raw_E0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[3] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[131]),
        .Q(raw_E0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[4] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[132]),
        .Q(raw_E0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[5] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[133]),
        .Q(raw_E0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[6] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[134]),
        .Q(raw_E0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[7] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[135]),
        .Q(raw_E0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[8] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[136]),
        .Q(raw_E0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_E0_reg[9] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[137]),
        .Q(raw_E0[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_high.raw_N0[15]_i_1 
       (.I0(sample_rd),
        .I1(fifo_sample_empty),
        .O(\comp_high.raw_N0_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[0] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[0]),
        .Q(raw_N0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[10] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[10]),
        .Q(raw_N0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[11] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[11]),
        .Q(raw_N0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[12] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[12]),
        .Q(raw_N0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[13] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[13]),
        .Q(raw_N0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[14] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[14]),
        .Q(raw_N0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[15] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[15]),
        .Q(raw_N0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[1] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[1]),
        .Q(raw_N0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[2] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[2]),
        .Q(raw_N0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[3] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[3]),
        .Q(raw_N0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[4] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[4]),
        .Q(raw_N0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[5] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[5]),
        .Q(raw_N0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[6] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[6]),
        .Q(raw_N0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[7] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[7]),
        .Q(raw_N0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[8] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[8]),
        .Q(raw_N0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_N0_reg[9] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[9]),
        .Q(raw_N0[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[0] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[256]),
        .Q(raw_W0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[10] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[266]),
        .Q(raw_W0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[11] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[267]),
        .Q(raw_W0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[12] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[268]),
        .Q(raw_W0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[13] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[269]),
        .Q(raw_W0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[14] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[270]),
        .Q(raw_W0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[15] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[271]),
        .Q(raw_W0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[1] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[257]),
        .Q(raw_W0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[2] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[258]),
        .Q(raw_W0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[3] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[259]),
        .Q(raw_W0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[4] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[260]),
        .Q(raw_W0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[5] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[261]),
        .Q(raw_W0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[6] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[262]),
        .Q(raw_W0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[7] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[263]),
        .Q(raw_W0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[8] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[264]),
        .Q(raw_W0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \comp_high.raw_W0_reg[9] 
       (.C(clk),
        .CE(\comp_high.raw_N0_reg0 ),
        .D(sample_data[265]),
        .Q(raw_W0[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_high.sample_rd_i_1 
       (.I0(fifo_doa_delay[0]),
        .I1(fifo_doa_delay[3]),
        .I2(fifo_doa_delay[4]),
        .I3(fifo_doa_delay[1]),
        .I4(fifo_doa_delay[2]),
        .I5(fifo_sample_empty),
        .O(\comp_high.sample_rd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \comp_high.sample_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_high.sample_rd_i_1_n_0 ),
        .Q(sample_rd),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fifo_doa,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_high_0_0_fifo_doa fifo_doa_i
       (.din(fifo_doa_data),
        .dout(doa_data),
        .empty(fifo_doa_empty),
        .full(NLW_fifo_doa_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(doa_rd),
        .rd_rst_busy(NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(fifo_wr),
        .wr_rst_busy(NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_high_0_0_fifo_raw_high fifo_raw_i
       (.din(fifo_sample_data),
        .dout({NLW_fifo_raw_i_dout_UNCONNECTED[383:272],sample_data}),
        .empty(fifo_sample_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(sample_rd),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(fifo_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_high_0_0_ila_3 ila_i
       (.clk(clk),
        .probe0(fifo_sample_empty),
        .probe1(fifo_doa_empty),
        .probe10(env_W),
        .probe11(phase_W),
        .probe12(err_NE),
        .probe13(err_NW),
        .probe14(err_EW),
        .probe15(raw_N0),
        .probe16(raw_E0),
        .probe17(raw_W0),
        .probe2(sample_rd),
        .probe3(doa_rd),
        .probe4(fifo_doa_delay),
        .probe5(fifo_sample_delay),
        .probe6(env_N),
        .probe7(phase_N),
        .probe8(env_E),
        .probe9(phase_E));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_doa,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_doa" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_high_0_0_fifo_doa
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [143:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [143:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw_high" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_high_0_0_fifo_raw_high
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [383:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [383:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_3" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_high_0_0_ila_3
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
    probe17);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [4:0]probe4;
  input [8:0]probe5;
  input [15:0]probe6;
  input [19:0]probe7;
  input [15:0]probe8;
  input [19:0]probe9;
  input [15:0]probe10;
  input [19:0]probe11;
  input [11:0]probe12;
  input [11:0]probe13;
  input [11:0]probe14;
  input [15:0]probe15;
  input [15:0]probe16;
  input [15:0]probe17;


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
