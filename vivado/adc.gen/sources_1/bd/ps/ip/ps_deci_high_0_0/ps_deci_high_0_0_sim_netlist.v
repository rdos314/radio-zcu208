// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Nov 21 23:04:27 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_deci_high_0_0/ps_deci_high_0_0_sim_netlist.v
// Design      : ps_deci_high_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_deci_high_0_0,deci_high,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "deci_high,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_deci_high_0_0
   (clk,
    resetn,
    data_N,
    ready_N,
    data_E,
    ready_E,
    data_W,
    ready_W,
    adc_active,
    sim_active,
    stop,
    sim_clk,
    sim_wr,
    sim_channel,
    sim_data,
    raw_clk,
    raw_ready,
    raw_data,
    doa_clk,
    doa_ready,
    doa_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_deci_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [127:0]data_N;
  input ready_N;
  input [127:0]data_E;
  input ready_E;
  input [127:0]data_W;
  input ready_W;
  input adc_active;
  input sim_active;
  output stop;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sim_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sim_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input sim_clk;
  input sim_wr;
  input [1:0]sim_channel;
  input [31:0]sim_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 raw_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME raw_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) input raw_clk;
  output raw_ready;
  output [363:0]raw_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 doa_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME doa_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_doa1_clk, INSERT_VIP 0" *) input doa_clk;
  output doa_ready;
  output [111:0]doa_data;

  wire \<const0> ;
  wire clk;
  wire [127:0]data_E;
  wire [127:0]data_N;
  wire [127:0]data_W;
  wire doa_clk;
  wire [111:0]doa_data;
  wire doa_ready;
  wire raw_clk;
  wire [363:0]raw_data;
  wire raw_ready;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire resetn;
  wire NLW_inst_stop_UNCONNECTED;

  assign stop = \<const0> ;
  GND GND
       (.G(\<const0> ));
  ps_deci_high_0_0_deci_high inst
       (.adc_active(1'b0),
        .clk(clk),
        .data_E(data_E),
        .data_N(data_N),
        .data_W(data_W),
        .doa_clk(doa_clk),
        .doa_data(doa_data),
        .doa_ready(doa_ready),
        .raw_clk(raw_clk),
        .raw_data(raw_data),
        .raw_ready(raw_ready),
        .ready_E(ready_E),
        .ready_N(ready_N),
        .ready_W(ready_W),
        .resetn(resetn),
        .sim_active(1'b0),
        .sim_channel({1'b0,1'b0}),
        .sim_clk(1'b0),
        .sim_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sim_wr(1'b0),
        .stop(NLW_inst_stop_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "deci_high" *) 
module ps_deci_high_0_0_deci_high
   (clk,
    resetn,
    data_N,
    ready_N,
    data_E,
    ready_E,
    data_W,
    ready_W,
    adc_active,
    sim_active,
    stop,
    sim_clk,
    sim_wr,
    sim_channel,
    sim_data,
    raw_clk,
    raw_ready,
    raw_data,
    doa_clk,
    doa_ready,
    doa_data);
  input clk;
  input resetn;
  input [127:0]data_N;
  input ready_N;
  input [127:0]data_E;
  input ready_E;
  input [127:0]data_W;
  input ready_W;
  input adc_active;
  input sim_active;
  output stop;
  input sim_clk;
  input sim_wr;
  input [1:0]sim_channel;
  input [31:0]sim_data;
  input raw_clk;
  output raw_ready;
  output [363:0]raw_data;
  input doa_clk;
  output doa_ready;
  output [111:0]doa_data;

  wire \<const0> ;
  wire active;
  wire active0;
  (* async_reg = "true" *) wire active_1;
  (* async_reg = "true" *) wire active_2;
  wire clear;
  wire clk;
  wire [127:0]data_E;
  wire [127:0]data_N;
  wire [127:0]data_W;
  wire \deci_high.counter[0]_i_3_n_0 ;
  wire [27:0]\deci_high.counter_reg ;
  wire \deci_high.counter_reg[0]_i_2_n_0 ;
  wire \deci_high.counter_reg[0]_i_2_n_1 ;
  wire \deci_high.counter_reg[0]_i_2_n_10 ;
  wire \deci_high.counter_reg[0]_i_2_n_11 ;
  wire \deci_high.counter_reg[0]_i_2_n_12 ;
  wire \deci_high.counter_reg[0]_i_2_n_13 ;
  wire \deci_high.counter_reg[0]_i_2_n_14 ;
  wire \deci_high.counter_reg[0]_i_2_n_15 ;
  wire \deci_high.counter_reg[0]_i_2_n_2 ;
  wire \deci_high.counter_reg[0]_i_2_n_3 ;
  wire \deci_high.counter_reg[0]_i_2_n_4 ;
  wire \deci_high.counter_reg[0]_i_2_n_5 ;
  wire \deci_high.counter_reg[0]_i_2_n_6 ;
  wire \deci_high.counter_reg[0]_i_2_n_7 ;
  wire \deci_high.counter_reg[0]_i_2_n_8 ;
  wire \deci_high.counter_reg[0]_i_2_n_9 ;
  wire \deci_high.counter_reg[16]_i_1_n_0 ;
  wire \deci_high.counter_reg[16]_i_1_n_1 ;
  wire \deci_high.counter_reg[16]_i_1_n_10 ;
  wire \deci_high.counter_reg[16]_i_1_n_11 ;
  wire \deci_high.counter_reg[16]_i_1_n_12 ;
  wire \deci_high.counter_reg[16]_i_1_n_13 ;
  wire \deci_high.counter_reg[16]_i_1_n_14 ;
  wire \deci_high.counter_reg[16]_i_1_n_15 ;
  wire \deci_high.counter_reg[16]_i_1_n_2 ;
  wire \deci_high.counter_reg[16]_i_1_n_3 ;
  wire \deci_high.counter_reg[16]_i_1_n_4 ;
  wire \deci_high.counter_reg[16]_i_1_n_5 ;
  wire \deci_high.counter_reg[16]_i_1_n_6 ;
  wire \deci_high.counter_reg[16]_i_1_n_7 ;
  wire \deci_high.counter_reg[16]_i_1_n_8 ;
  wire \deci_high.counter_reg[16]_i_1_n_9 ;
  wire \deci_high.counter_reg[24]_i_1_n_12 ;
  wire \deci_high.counter_reg[24]_i_1_n_13 ;
  wire \deci_high.counter_reg[24]_i_1_n_14 ;
  wire \deci_high.counter_reg[24]_i_1_n_15 ;
  wire \deci_high.counter_reg[24]_i_1_n_5 ;
  wire \deci_high.counter_reg[24]_i_1_n_6 ;
  wire \deci_high.counter_reg[24]_i_1_n_7 ;
  wire \deci_high.counter_reg[8]_i_1_n_0 ;
  wire \deci_high.counter_reg[8]_i_1_n_1 ;
  wire \deci_high.counter_reg[8]_i_1_n_10 ;
  wire \deci_high.counter_reg[8]_i_1_n_11 ;
  wire \deci_high.counter_reg[8]_i_1_n_12 ;
  wire \deci_high.counter_reg[8]_i_1_n_13 ;
  wire \deci_high.counter_reg[8]_i_1_n_14 ;
  wire \deci_high.counter_reg[8]_i_1_n_15 ;
  wire \deci_high.counter_reg[8]_i_1_n_2 ;
  wire \deci_high.counter_reg[8]_i_1_n_3 ;
  wire \deci_high.counter_reg[8]_i_1_n_4 ;
  wire \deci_high.counter_reg[8]_i_1_n_5 ;
  wire \deci_high.counter_reg[8]_i_1_n_6 ;
  wire \deci_high.counter_reg[8]_i_1_n_7 ;
  wire \deci_high.counter_reg[8]_i_1_n_8 ;
  wire \deci_high.counter_reg[8]_i_1_n_9 ;
  wire \deci_high.doa_counter[0]_i_1_n_0 ;
  wire \deci_high.doa_counter[0]_i_3_n_0 ;
  wire [27:0]\deci_high.doa_counter_reg ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_0 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_1 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_10 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_11 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_12 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_13 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_14 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_15 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_2 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_3 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_4 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_5 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_6 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_7 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_8 ;
  wire \deci_high.doa_counter_reg[0]_i_2_n_9 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_0 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_1 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_10 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_11 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_12 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_13 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_14 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_15 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_2 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_3 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_4 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_5 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_6 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_7 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_8 ;
  wire \deci_high.doa_counter_reg[16]_i_1_n_9 ;
  wire \deci_high.doa_counter_reg[24]_i_1_n_12 ;
  wire \deci_high.doa_counter_reg[24]_i_1_n_13 ;
  wire \deci_high.doa_counter_reg[24]_i_1_n_14 ;
  wire \deci_high.doa_counter_reg[24]_i_1_n_15 ;
  wire \deci_high.doa_counter_reg[24]_i_1_n_5 ;
  wire \deci_high.doa_counter_reg[24]_i_1_n_6 ;
  wire \deci_high.doa_counter_reg[24]_i_1_n_7 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_0 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_1 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_10 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_11 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_12 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_13 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_14 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_15 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_2 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_3 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_4 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_5 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_6 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_7 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_8 ;
  wire \deci_high.doa_counter_reg[8]_i_1_n_9 ;
  wire \deci_high.doa_out_active_i_1_n_0 ;
  wire \deci_high.raw_active_i_1_n_0 ;
  wire \deci_high.raw_active_i_2_n_0 ;
  wire \deci_high.raw_delay[11]_i_1_n_0 ;
  wire \deci_high.raw_delay[11]_i_3_n_0 ;
  wire \deci_high.raw_delay[11]_i_4_n_0 ;
  wire \deci_high.raw_delay[11]_i_5_n_0 ;
  wire \deci_high.raw_delay[11]_i_6_n_0 ;
  wire \deci_high.raw_delay[11]_i_7_n_0 ;
  wire \deci_high.raw_delay[8]_i_2_n_0 ;
  wire \deci_high.raw_delay[8]_i_3_n_0 ;
  wire \deci_high.raw_delay[8]_i_4_n_0 ;
  wire \deci_high.raw_delay[8]_i_5_n_0 ;
  wire \deci_high.raw_delay[8]_i_6_n_0 ;
  wire \deci_high.raw_delay[8]_i_7_n_0 ;
  wire \deci_high.raw_delay[8]_i_8_n_0 ;
  wire \deci_high.raw_delay[8]_i_9_n_0 ;
  wire [11:0]\deci_high.raw_delay_reg ;
  wire \deci_high.raw_delay_reg[11]_i_2_n_6 ;
  wire \deci_high.raw_delay_reg[11]_i_2_n_7 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_0 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_1 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_2 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_3 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_4 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_5 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_6 ;
  wire \deci_high.raw_delay_reg[8]_i_1_n_7 ;
  wire doa_active;
  wire doa_active0;
  wire doa_clk;
  wire [111:0]doa_data;
  wire doa_fifo_empty;
  wire doa_fifo_wr;
  wire [111:0]doa_in_data;
  wire doa_out_active;
  wire [111:0]doa_out_data;
  wire doa_ready;
  wire fifo_raw_i_i_1_n_0;
  wire [62:17]raw_E;
  wire [62:17]raw_N;
  wire [62:17]raw_W;
  wire raw_active;
  wire raw_clk;
  wire [363:0]raw_data;
  wire [11:0]raw_delay0;
  wire raw_fifo_empty;
  wire raw_fifo_wr;
  wire [363:0]raw_in_data;
  wire [363:0]raw_out_data;
  wire raw_ready;
  wire ready_E;
  wire ready_N;
  wire ready_W;
  wire resetn;
  wire valid_E;
  wire valid_N;
  wire valid_W;
  wire [7:3]\NLW_deci_high.counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_high.counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_deci_high.doa_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_deci_high.doa_counter_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:2]\NLW_deci_high.raw_delay_reg[11]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_deci_high.raw_delay_reg[11]_i_2_O_UNCONNECTED ;
  wire NLW_fifo_doa_i_full_UNCONNECTED;
  wire NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fir_E_i_s_axis_data_tready_UNCONNECTED;
  wire [63:0]NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_N_i_s_axis_data_tready_UNCONNECTED;
  wire [63:0]NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED;
  wire NLW_fir_W_i_s_axis_data_tready_UNCONNECTED;
  wire [63:0]NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED;

  assign stop = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \deci_high.active_i_1 
       (.I0(ready_W),
        .I1(resetn),
        .I2(ready_N),
        .I3(ready_E),
        .O(active0));
  FDRE \deci_high.active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(active0),
        .Q(active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.counter[0]_i_1 
       (.I0(active),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.counter[0]_i_3 
       (.I0(\deci_high.counter_reg [0]),
        .O(\deci_high.counter[0]_i_3_n_0 ));
  FDRE \deci_high.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_15 ),
        .Q(\deci_high.counter_reg [0]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\deci_high.counter_reg[0]_i_2_n_0 ,\deci_high.counter_reg[0]_i_2_n_1 ,\deci_high.counter_reg[0]_i_2_n_2 ,\deci_high.counter_reg[0]_i_2_n_3 ,\deci_high.counter_reg[0]_i_2_n_4 ,\deci_high.counter_reg[0]_i_2_n_5 ,\deci_high.counter_reg[0]_i_2_n_6 ,\deci_high.counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\deci_high.counter_reg[0]_i_2_n_8 ,\deci_high.counter_reg[0]_i_2_n_9 ,\deci_high.counter_reg[0]_i_2_n_10 ,\deci_high.counter_reg[0]_i_2_n_11 ,\deci_high.counter_reg[0]_i_2_n_12 ,\deci_high.counter_reg[0]_i_2_n_13 ,\deci_high.counter_reg[0]_i_2_n_14 ,\deci_high.counter_reg[0]_i_2_n_15 }),
        .S({\deci_high.counter_reg [7:1],\deci_high.counter[0]_i_3_n_0 }));
  FDRE \deci_high.counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_13 ),
        .Q(\deci_high.counter_reg [10]),
        .R(clear));
  FDRE \deci_high.counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_12 ),
        .Q(\deci_high.counter_reg [11]),
        .R(clear));
  FDRE \deci_high.counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_11 ),
        .Q(\deci_high.counter_reg [12]),
        .R(clear));
  FDRE \deci_high.counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_10 ),
        .Q(\deci_high.counter_reg [13]),
        .R(clear));
  FDRE \deci_high.counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_9 ),
        .Q(\deci_high.counter_reg [14]),
        .R(clear));
  FDRE \deci_high.counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_8 ),
        .Q(\deci_high.counter_reg [15]),
        .R(clear));
  FDRE \deci_high.counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_15 ),
        .Q(\deci_high.counter_reg [16]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.counter_reg[16]_i_1 
       (.CI(\deci_high.counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_high.counter_reg[16]_i_1_n_0 ,\deci_high.counter_reg[16]_i_1_n_1 ,\deci_high.counter_reg[16]_i_1_n_2 ,\deci_high.counter_reg[16]_i_1_n_3 ,\deci_high.counter_reg[16]_i_1_n_4 ,\deci_high.counter_reg[16]_i_1_n_5 ,\deci_high.counter_reg[16]_i_1_n_6 ,\deci_high.counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_high.counter_reg[16]_i_1_n_8 ,\deci_high.counter_reg[16]_i_1_n_9 ,\deci_high.counter_reg[16]_i_1_n_10 ,\deci_high.counter_reg[16]_i_1_n_11 ,\deci_high.counter_reg[16]_i_1_n_12 ,\deci_high.counter_reg[16]_i_1_n_13 ,\deci_high.counter_reg[16]_i_1_n_14 ,\deci_high.counter_reg[16]_i_1_n_15 }),
        .S(\deci_high.counter_reg [23:16]));
  FDRE \deci_high.counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_14 ),
        .Q(\deci_high.counter_reg [17]),
        .R(clear));
  FDRE \deci_high.counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_13 ),
        .Q(\deci_high.counter_reg [18]),
        .R(clear));
  FDRE \deci_high.counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_12 ),
        .Q(\deci_high.counter_reg [19]),
        .R(clear));
  FDRE \deci_high.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_14 ),
        .Q(\deci_high.counter_reg [1]),
        .R(clear));
  FDRE \deci_high.counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_11 ),
        .Q(\deci_high.counter_reg [20]),
        .R(clear));
  FDRE \deci_high.counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_10 ),
        .Q(\deci_high.counter_reg [21]),
        .R(clear));
  FDRE \deci_high.counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_9 ),
        .Q(\deci_high.counter_reg [22]),
        .R(clear));
  FDRE \deci_high.counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[16]_i_1_n_8 ),
        .Q(\deci_high.counter_reg [23]),
        .R(clear));
  FDRE \deci_high.counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[24]_i_1_n_15 ),
        .Q(\deci_high.counter_reg [24]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.counter_reg[24]_i_1 
       (.CI(\deci_high.counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_high.counter_reg[24]_i_1_CO_UNCONNECTED [7:3],\deci_high.counter_reg[24]_i_1_n_5 ,\deci_high.counter_reg[24]_i_1_n_6 ,\deci_high.counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_deci_high.counter_reg[24]_i_1_O_UNCONNECTED [7:4],\deci_high.counter_reg[24]_i_1_n_12 ,\deci_high.counter_reg[24]_i_1_n_13 ,\deci_high.counter_reg[24]_i_1_n_14 ,\deci_high.counter_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\deci_high.counter_reg [27:24]}));
  FDRE \deci_high.counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[24]_i_1_n_14 ),
        .Q(\deci_high.counter_reg [25]),
        .R(clear));
  FDRE \deci_high.counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[24]_i_1_n_13 ),
        .Q(\deci_high.counter_reg [26]),
        .R(clear));
  FDRE \deci_high.counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[24]_i_1_n_12 ),
        .Q(\deci_high.counter_reg [27]),
        .R(clear));
  FDRE \deci_high.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_13 ),
        .Q(\deci_high.counter_reg [2]),
        .R(clear));
  FDRE \deci_high.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_12 ),
        .Q(\deci_high.counter_reg [3]),
        .R(clear));
  FDRE \deci_high.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_11 ),
        .Q(\deci_high.counter_reg [4]),
        .R(clear));
  FDRE \deci_high.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_10 ),
        .Q(\deci_high.counter_reg [5]),
        .R(clear));
  FDRE \deci_high.counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_9 ),
        .Q(\deci_high.counter_reg [6]),
        .R(clear));
  FDRE \deci_high.counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[0]_i_2_n_8 ),
        .Q(\deci_high.counter_reg [7]),
        .R(clear));
  FDRE \deci_high.counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_15 ),
        .Q(\deci_high.counter_reg [8]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.counter_reg[8]_i_1 
       (.CI(\deci_high.counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_high.counter_reg[8]_i_1_n_0 ,\deci_high.counter_reg[8]_i_1_n_1 ,\deci_high.counter_reg[8]_i_1_n_2 ,\deci_high.counter_reg[8]_i_1_n_3 ,\deci_high.counter_reg[8]_i_1_n_4 ,\deci_high.counter_reg[8]_i_1_n_5 ,\deci_high.counter_reg[8]_i_1_n_6 ,\deci_high.counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_high.counter_reg[8]_i_1_n_8 ,\deci_high.counter_reg[8]_i_1_n_9 ,\deci_high.counter_reg[8]_i_1_n_10 ,\deci_high.counter_reg[8]_i_1_n_11 ,\deci_high.counter_reg[8]_i_1_n_12 ,\deci_high.counter_reg[8]_i_1_n_13 ,\deci_high.counter_reg[8]_i_1_n_14 ,\deci_high.counter_reg[8]_i_1_n_15 }),
        .S(\deci_high.counter_reg [15:8]));
  FDRE \deci_high.counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.counter_reg[8]_i_1_n_14 ),
        .Q(\deci_high.counter_reg [9]),
        .R(clear));
  LUT4 #(
    .INIT(16'h8000)) 
    \deci_high.doa_active_i_1 
       (.I0(valid_W),
        .I1(resetn),
        .I2(valid_N),
        .I3(valid_E),
        .O(doa_active0));
  FDRE \deci_high.doa_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(doa_active0),
        .Q(doa_active),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.doa_counter[0]_i_1 
       (.I0(doa_active),
        .O(\deci_high.doa_counter[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.doa_counter[0]_i_3 
       (.I0(\deci_high.doa_counter_reg [0]),
        .O(\deci_high.doa_counter[0]_i_3_n_0 ));
  FDRE \deci_high.doa_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_15 ),
        .Q(\deci_high.doa_counter_reg [0]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.doa_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\deci_high.doa_counter_reg[0]_i_2_n_0 ,\deci_high.doa_counter_reg[0]_i_2_n_1 ,\deci_high.doa_counter_reg[0]_i_2_n_2 ,\deci_high.doa_counter_reg[0]_i_2_n_3 ,\deci_high.doa_counter_reg[0]_i_2_n_4 ,\deci_high.doa_counter_reg[0]_i_2_n_5 ,\deci_high.doa_counter_reg[0]_i_2_n_6 ,\deci_high.doa_counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\deci_high.doa_counter_reg[0]_i_2_n_8 ,\deci_high.doa_counter_reg[0]_i_2_n_9 ,\deci_high.doa_counter_reg[0]_i_2_n_10 ,\deci_high.doa_counter_reg[0]_i_2_n_11 ,\deci_high.doa_counter_reg[0]_i_2_n_12 ,\deci_high.doa_counter_reg[0]_i_2_n_13 ,\deci_high.doa_counter_reg[0]_i_2_n_14 ,\deci_high.doa_counter_reg[0]_i_2_n_15 }),
        .S({\deci_high.doa_counter_reg [7:1],\deci_high.doa_counter[0]_i_3_n_0 }));
  FDRE \deci_high.doa_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_13 ),
        .Q(\deci_high.doa_counter_reg [10]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_12 ),
        .Q(\deci_high.doa_counter_reg [11]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_11 ),
        .Q(\deci_high.doa_counter_reg [12]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_10 ),
        .Q(\deci_high.doa_counter_reg [13]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_9 ),
        .Q(\deci_high.doa_counter_reg [14]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_8 ),
        .Q(\deci_high.doa_counter_reg [15]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_15 ),
        .Q(\deci_high.doa_counter_reg [16]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.doa_counter_reg[16]_i_1 
       (.CI(\deci_high.doa_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_high.doa_counter_reg[16]_i_1_n_0 ,\deci_high.doa_counter_reg[16]_i_1_n_1 ,\deci_high.doa_counter_reg[16]_i_1_n_2 ,\deci_high.doa_counter_reg[16]_i_1_n_3 ,\deci_high.doa_counter_reg[16]_i_1_n_4 ,\deci_high.doa_counter_reg[16]_i_1_n_5 ,\deci_high.doa_counter_reg[16]_i_1_n_6 ,\deci_high.doa_counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_high.doa_counter_reg[16]_i_1_n_8 ,\deci_high.doa_counter_reg[16]_i_1_n_9 ,\deci_high.doa_counter_reg[16]_i_1_n_10 ,\deci_high.doa_counter_reg[16]_i_1_n_11 ,\deci_high.doa_counter_reg[16]_i_1_n_12 ,\deci_high.doa_counter_reg[16]_i_1_n_13 ,\deci_high.doa_counter_reg[16]_i_1_n_14 ,\deci_high.doa_counter_reg[16]_i_1_n_15 }),
        .S(\deci_high.doa_counter_reg [23:16]));
  FDRE \deci_high.doa_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_14 ),
        .Q(\deci_high.doa_counter_reg [17]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_13 ),
        .Q(\deci_high.doa_counter_reg [18]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_12 ),
        .Q(\deci_high.doa_counter_reg [19]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_14 ),
        .Q(\deci_high.doa_counter_reg [1]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_11 ),
        .Q(\deci_high.doa_counter_reg [20]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_10 ),
        .Q(\deci_high.doa_counter_reg [21]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_9 ),
        .Q(\deci_high.doa_counter_reg [22]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[16]_i_1_n_8 ),
        .Q(\deci_high.doa_counter_reg [23]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[24]_i_1_n_15 ),
        .Q(\deci_high.doa_counter_reg [24]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.doa_counter_reg[24]_i_1 
       (.CI(\deci_high.doa_counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_high.doa_counter_reg[24]_i_1_CO_UNCONNECTED [7:3],\deci_high.doa_counter_reg[24]_i_1_n_5 ,\deci_high.doa_counter_reg[24]_i_1_n_6 ,\deci_high.doa_counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_deci_high.doa_counter_reg[24]_i_1_O_UNCONNECTED [7:4],\deci_high.doa_counter_reg[24]_i_1_n_12 ,\deci_high.doa_counter_reg[24]_i_1_n_13 ,\deci_high.doa_counter_reg[24]_i_1_n_14 ,\deci_high.doa_counter_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\deci_high.doa_counter_reg [27:24]}));
  FDRE \deci_high.doa_counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[24]_i_1_n_14 ),
        .Q(\deci_high.doa_counter_reg [25]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[24]_i_1_n_13 ),
        .Q(\deci_high.doa_counter_reg [26]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[24]_i_1_n_12 ),
        .Q(\deci_high.doa_counter_reg [27]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_13 ),
        .Q(\deci_high.doa_counter_reg [2]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_12 ),
        .Q(\deci_high.doa_counter_reg [3]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_11 ),
        .Q(\deci_high.doa_counter_reg [4]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_10 ),
        .Q(\deci_high.doa_counter_reg [5]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_9 ),
        .Q(\deci_high.doa_counter_reg [6]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[0]_i_2_n_8 ),
        .Q(\deci_high.doa_counter_reg [7]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_15 ),
        .Q(\deci_high.doa_counter_reg [8]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \deci_high.doa_counter_reg[8]_i_1 
       (.CI(\deci_high.doa_counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\deci_high.doa_counter_reg[8]_i_1_n_0 ,\deci_high.doa_counter_reg[8]_i_1_n_1 ,\deci_high.doa_counter_reg[8]_i_1_n_2 ,\deci_high.doa_counter_reg[8]_i_1_n_3 ,\deci_high.doa_counter_reg[8]_i_1_n_4 ,\deci_high.doa_counter_reg[8]_i_1_n_5 ,\deci_high.doa_counter_reg[8]_i_1_n_6 ,\deci_high.doa_counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\deci_high.doa_counter_reg[8]_i_1_n_8 ,\deci_high.doa_counter_reg[8]_i_1_n_9 ,\deci_high.doa_counter_reg[8]_i_1_n_10 ,\deci_high.doa_counter_reg[8]_i_1_n_11 ,\deci_high.doa_counter_reg[8]_i_1_n_12 ,\deci_high.doa_counter_reg[8]_i_1_n_13 ,\deci_high.doa_counter_reg[8]_i_1_n_14 ,\deci_high.doa_counter_reg[8]_i_1_n_15 }),
        .S(\deci_high.doa_counter_reg [15:8]));
  FDRE \deci_high.doa_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\deci_high.doa_counter_reg[8]_i_1_n_14 ),
        .Q(\deci_high.doa_counter_reg [9]),
        .R(\deci_high.doa_counter[0]_i_1_n_0 ));
  FDRE \deci_high.doa_data_reg[0] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[0]),
        .Q(doa_data[0]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[100] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[100]),
        .Q(doa_data[100]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[101] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[101]),
        .Q(doa_data[101]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[102] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[102]),
        .Q(doa_data[102]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[103] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[103]),
        .Q(doa_data[103]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[104] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[104]),
        .Q(doa_data[104]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[105] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[105]),
        .Q(doa_data[105]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[106] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[106]),
        .Q(doa_data[106]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[107] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[107]),
        .Q(doa_data[107]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[108] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[108]),
        .Q(doa_data[108]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[109] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[109]),
        .Q(doa_data[109]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[10] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[10]),
        .Q(doa_data[10]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[110] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[110]),
        .Q(doa_data[110]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[111] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[111]),
        .Q(doa_data[111]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[11] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[11]),
        .Q(doa_data[11]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[12] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[12]),
        .Q(doa_data[12]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[13] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[13]),
        .Q(doa_data[13]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[14] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[14]),
        .Q(doa_data[14]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[15] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[15]),
        .Q(doa_data[15]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[16] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[16]),
        .Q(doa_data[16]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[17] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[17]),
        .Q(doa_data[17]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[18] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[18]),
        .Q(doa_data[18]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[19] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[19]),
        .Q(doa_data[19]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[1] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[1]),
        .Q(doa_data[1]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[20] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[20]),
        .Q(doa_data[20]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[21] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[21]),
        .Q(doa_data[21]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[22] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[22]),
        .Q(doa_data[22]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[23] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[23]),
        .Q(doa_data[23]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[24] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[24]),
        .Q(doa_data[24]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[25] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[25]),
        .Q(doa_data[25]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[26] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[26]),
        .Q(doa_data[26]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[27] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[27]),
        .Q(doa_data[27]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[28] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[28]),
        .Q(doa_data[28]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[29] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[29]),
        .Q(doa_data[29]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[2] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[2]),
        .Q(doa_data[2]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[30] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[30]),
        .Q(doa_data[30]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[31] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[31]),
        .Q(doa_data[31]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[32] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[32]),
        .Q(doa_data[32]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[33] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[33]),
        .Q(doa_data[33]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[34] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[34]),
        .Q(doa_data[34]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[35] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[35]),
        .Q(doa_data[35]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[36] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[36]),
        .Q(doa_data[36]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[37] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[37]),
        .Q(doa_data[37]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[38] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[38]),
        .Q(doa_data[38]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[39] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[39]),
        .Q(doa_data[39]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[3] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[3]),
        .Q(doa_data[3]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[40] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[40]),
        .Q(doa_data[40]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[41] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[41]),
        .Q(doa_data[41]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[42] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[42]),
        .Q(doa_data[42]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[43] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[43]),
        .Q(doa_data[43]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[44] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[44]),
        .Q(doa_data[44]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[45] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[45]),
        .Q(doa_data[45]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[46] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[46]),
        .Q(doa_data[46]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[47] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[47]),
        .Q(doa_data[47]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[48] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[48]),
        .Q(doa_data[48]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[49] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[49]),
        .Q(doa_data[49]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[4] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[4]),
        .Q(doa_data[4]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[50] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[50]),
        .Q(doa_data[50]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[51] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[51]),
        .Q(doa_data[51]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[52] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[52]),
        .Q(doa_data[52]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[53] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[53]),
        .Q(doa_data[53]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[54] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[54]),
        .Q(doa_data[54]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[55] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[55]),
        .Q(doa_data[55]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[56] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[56]),
        .Q(doa_data[56]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[57] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[57]),
        .Q(doa_data[57]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[58] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[58]),
        .Q(doa_data[58]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[59] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[59]),
        .Q(doa_data[59]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[5] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[5]),
        .Q(doa_data[5]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[60] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[60]),
        .Q(doa_data[60]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[61] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[61]),
        .Q(doa_data[61]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[62] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[62]),
        .Q(doa_data[62]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[63] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[63]),
        .Q(doa_data[63]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[64] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[64]),
        .Q(doa_data[64]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[65] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[65]),
        .Q(doa_data[65]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[66] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[66]),
        .Q(doa_data[66]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[67] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[67]),
        .Q(doa_data[67]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[68] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[68]),
        .Q(doa_data[68]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[69] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[69]),
        .Q(doa_data[69]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[6] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[6]),
        .Q(doa_data[6]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[70] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[70]),
        .Q(doa_data[70]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[71] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[71]),
        .Q(doa_data[71]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[72] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[72]),
        .Q(doa_data[72]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[73] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[73]),
        .Q(doa_data[73]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[74] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[74]),
        .Q(doa_data[74]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[75] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[75]),
        .Q(doa_data[75]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[76] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[76]),
        .Q(doa_data[76]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[77] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[77]),
        .Q(doa_data[77]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[78] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[78]),
        .Q(doa_data[78]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[79] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[79]),
        .Q(doa_data[79]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[7] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[7]),
        .Q(doa_data[7]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[80] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[80]),
        .Q(doa_data[80]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[81] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[81]),
        .Q(doa_data[81]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[82] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[82]),
        .Q(doa_data[82]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[83] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[83]),
        .Q(doa_data[83]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[84] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[84]),
        .Q(doa_data[84]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[85] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[85]),
        .Q(doa_data[85]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[86] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[86]),
        .Q(doa_data[86]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[87] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[87]),
        .Q(doa_data[87]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[88] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[88]),
        .Q(doa_data[88]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[89] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[89]),
        .Q(doa_data[89]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[8] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[8]),
        .Q(doa_data[8]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[90] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[90]),
        .Q(doa_data[90]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[91] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[91]),
        .Q(doa_data[91]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[92] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[92]),
        .Q(doa_data[92]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[93] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[93]),
        .Q(doa_data[93]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[94] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[94]),
        .Q(doa_data[94]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[95] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[95]),
        .Q(doa_data[95]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[96] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[96]),
        .Q(doa_data[96]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[97] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[97]),
        .Q(doa_data[97]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[98] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[98]),
        .Q(doa_data[98]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[99] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[99]),
        .Q(doa_data[99]),
        .R(1'b0));
  FDRE \deci_high.doa_data_reg[9] 
       (.C(doa_clk),
        .CE(doa_out_active),
        .D(doa_out_data[9]),
        .Q(doa_data[9]),
        .R(1'b0));
  FDRE \deci_high.doa_fifo_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(doa_active),
        .Q(doa_fifo_wr),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[0] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [0]),
        .Q(doa_in_data[0]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[100] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[51]),
        .Q(doa_in_data[100]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[101] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[52]),
        .Q(doa_in_data[101]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[102] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[53]),
        .Q(doa_in_data[102]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[103] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[54]),
        .Q(doa_in_data[103]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[104] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[55]),
        .Q(doa_in_data[104]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[105] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[56]),
        .Q(doa_in_data[105]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[106] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[57]),
        .Q(doa_in_data[106]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[107] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[58]),
        .Q(doa_in_data[107]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[108] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[59]),
        .Q(doa_in_data[108]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[109] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[60]),
        .Q(doa_in_data[109]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[10] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [10]),
        .Q(doa_in_data[10]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[110] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[61]),
        .Q(doa_in_data[110]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[111] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[62]),
        .Q(doa_in_data[111]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[11] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [11]),
        .Q(doa_in_data[11]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[12] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [12]),
        .Q(doa_in_data[12]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[13] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [13]),
        .Q(doa_in_data[13]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[14] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [14]),
        .Q(doa_in_data[14]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[15] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [15]),
        .Q(doa_in_data[15]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[16] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [16]),
        .Q(doa_in_data[16]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[17] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [17]),
        .Q(doa_in_data[17]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[18] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [18]),
        .Q(doa_in_data[18]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[19] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [19]),
        .Q(doa_in_data[19]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[1] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [1]),
        .Q(doa_in_data[1]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[20] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [20]),
        .Q(doa_in_data[20]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[21] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [21]),
        .Q(doa_in_data[21]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[22] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [22]),
        .Q(doa_in_data[22]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[23] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [23]),
        .Q(doa_in_data[23]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[24] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [24]),
        .Q(doa_in_data[24]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[25] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [25]),
        .Q(doa_in_data[25]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[26] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [26]),
        .Q(doa_in_data[26]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[27] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [27]),
        .Q(doa_in_data[27]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[28] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[17]),
        .Q(doa_in_data[28]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[29] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[18]),
        .Q(doa_in_data[29]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[2] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [2]),
        .Q(doa_in_data[2]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[30] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[19]),
        .Q(doa_in_data[30]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[31] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[20]),
        .Q(doa_in_data[31]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[32] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[21]),
        .Q(doa_in_data[32]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[33] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[22]),
        .Q(doa_in_data[33]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[34] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[23]),
        .Q(doa_in_data[34]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[35] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[24]),
        .Q(doa_in_data[35]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[36] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[25]),
        .Q(doa_in_data[36]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[37] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[26]),
        .Q(doa_in_data[37]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[38] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[27]),
        .Q(doa_in_data[38]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[39] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[28]),
        .Q(doa_in_data[39]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[3] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [3]),
        .Q(doa_in_data[3]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[40] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[29]),
        .Q(doa_in_data[40]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[41] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[30]),
        .Q(doa_in_data[41]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[42] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[49]),
        .Q(doa_in_data[42]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[43] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[50]),
        .Q(doa_in_data[43]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[44] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[51]),
        .Q(doa_in_data[44]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[45] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[52]),
        .Q(doa_in_data[45]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[46] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[53]),
        .Q(doa_in_data[46]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[47] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[54]),
        .Q(doa_in_data[47]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[48] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[55]),
        .Q(doa_in_data[48]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[49] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[56]),
        .Q(doa_in_data[49]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[4] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [4]),
        .Q(doa_in_data[4]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[50] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[57]),
        .Q(doa_in_data[50]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[51] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[58]),
        .Q(doa_in_data[51]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[52] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[59]),
        .Q(doa_in_data[52]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[53] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[60]),
        .Q(doa_in_data[53]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[54] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[61]),
        .Q(doa_in_data[54]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[55] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_N[62]),
        .Q(doa_in_data[55]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[56] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[17]),
        .Q(doa_in_data[56]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[57] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[18]),
        .Q(doa_in_data[57]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[58] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[19]),
        .Q(doa_in_data[58]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[59] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[20]),
        .Q(doa_in_data[59]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[5] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [5]),
        .Q(doa_in_data[5]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[60] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[21]),
        .Q(doa_in_data[60]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[61] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[22]),
        .Q(doa_in_data[61]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[62] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[23]),
        .Q(doa_in_data[62]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[63] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[24]),
        .Q(doa_in_data[63]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[64] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[25]),
        .Q(doa_in_data[64]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[65] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[26]),
        .Q(doa_in_data[65]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[66] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[27]),
        .Q(doa_in_data[66]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[67] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[28]),
        .Q(doa_in_data[67]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[68] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[29]),
        .Q(doa_in_data[68]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[69] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[30]),
        .Q(doa_in_data[69]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[6] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [6]),
        .Q(doa_in_data[6]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[70] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[49]),
        .Q(doa_in_data[70]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[71] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[50]),
        .Q(doa_in_data[71]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[72] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[51]),
        .Q(doa_in_data[72]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[73] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[52]),
        .Q(doa_in_data[73]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[74] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[53]),
        .Q(doa_in_data[74]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[75] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[54]),
        .Q(doa_in_data[75]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[76] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[55]),
        .Q(doa_in_data[76]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[77] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[56]),
        .Q(doa_in_data[77]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[78] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[57]),
        .Q(doa_in_data[78]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[79] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[58]),
        .Q(doa_in_data[79]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[7] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [7]),
        .Q(doa_in_data[7]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[80] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[59]),
        .Q(doa_in_data[80]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[81] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[60]),
        .Q(doa_in_data[81]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[82] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[61]),
        .Q(doa_in_data[82]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[83] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_E[62]),
        .Q(doa_in_data[83]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[84] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[17]),
        .Q(doa_in_data[84]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[85] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[18]),
        .Q(doa_in_data[85]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[86] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[19]),
        .Q(doa_in_data[86]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[87] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[20]),
        .Q(doa_in_data[87]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[88] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[21]),
        .Q(doa_in_data[88]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[89] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[22]),
        .Q(doa_in_data[89]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[8] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [8]),
        .Q(doa_in_data[8]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[90] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[23]),
        .Q(doa_in_data[90]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[91] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[24]),
        .Q(doa_in_data[91]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[92] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[25]),
        .Q(doa_in_data[92]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[93] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[26]),
        .Q(doa_in_data[93]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[94] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[27]),
        .Q(doa_in_data[94]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[95] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[28]),
        .Q(doa_in_data[95]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[96] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[29]),
        .Q(doa_in_data[96]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[97] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[30]),
        .Q(doa_in_data[97]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[98] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[49]),
        .Q(doa_in_data[98]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[99] 
       (.C(clk),
        .CE(doa_active),
        .D(raw_W[50]),
        .Q(doa_in_data[99]),
        .R(1'b0));
  FDRE \deci_high.doa_in_data_reg[9] 
       (.C(clk),
        .CE(doa_active),
        .D(\deci_high.doa_counter_reg [9]),
        .Q(doa_in_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.doa_out_active_i_1 
       (.I0(doa_fifo_empty),
        .O(\deci_high.doa_out_active_i_1_n_0 ));
  FDRE \deci_high.doa_out_active_reg 
       (.C(doa_clk),
        .CE(1'b1),
        .D(\deci_high.doa_out_active_i_1_n_0 ),
        .Q(doa_out_active),
        .R(1'b0));
  FDRE \deci_high.doa_ready_reg 
       (.C(doa_clk),
        .CE(1'b1),
        .D(doa_out_active),
        .Q(doa_ready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0001)) 
    \deci_high.raw_active_i_1 
       (.I0(raw_fifo_empty),
        .I1(\deci_high.raw_delay[11]_i_4_n_0 ),
        .I2(\deci_high.raw_delay[11]_i_3_n_0 ),
        .I3(\deci_high.raw_active_i_2_n_0 ),
        .O(\deci_high.raw_active_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \deci_high.raw_active_i_2 
       (.I0(\deci_high.raw_delay_reg [1]),
        .I1(\deci_high.raw_delay_reg [0]),
        .I2(\deci_high.raw_delay_reg [3]),
        .I3(\deci_high.raw_delay_reg [2]),
        .O(\deci_high.raw_active_i_2_n_0 ));
  FDRE \deci_high.raw_active_reg 
       (.C(raw_clk),
        .CE(1'b1),
        .D(\deci_high.raw_active_i_1_n_0 ),
        .Q(raw_active),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[0] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[0]),
        .Q(raw_data[0]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[100] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[100]),
        .Q(raw_data[100]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[101] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[101]),
        .Q(raw_data[101]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[102] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[102]),
        .Q(raw_data[102]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[103] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[103]),
        .Q(raw_data[103]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[104] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[104]),
        .Q(raw_data[104]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[105] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[105]),
        .Q(raw_data[105]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[106] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[106]),
        .Q(raw_data[106]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[107] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[107]),
        .Q(raw_data[107]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[108] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[108]),
        .Q(raw_data[108]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[109] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[109]),
        .Q(raw_data[109]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[10] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[10]),
        .Q(raw_data[10]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[110] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[110]),
        .Q(raw_data[110]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[111] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[111]),
        .Q(raw_data[111]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[112] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[112]),
        .Q(raw_data[112]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[113] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[113]),
        .Q(raw_data[113]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[114] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[114]),
        .Q(raw_data[114]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[115] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[115]),
        .Q(raw_data[115]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[116] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[116]),
        .Q(raw_data[116]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[117] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[117]),
        .Q(raw_data[117]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[118] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[118]),
        .Q(raw_data[118]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[119] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[119]),
        .Q(raw_data[119]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[11] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[11]),
        .Q(raw_data[11]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[120] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[120]),
        .Q(raw_data[120]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[121] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[121]),
        .Q(raw_data[121]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[122] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[122]),
        .Q(raw_data[122]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[123] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[123]),
        .Q(raw_data[123]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[124] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[124]),
        .Q(raw_data[124]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[125] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[125]),
        .Q(raw_data[125]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[126] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[126]),
        .Q(raw_data[126]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[127] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[127]),
        .Q(raw_data[127]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[128] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[128]),
        .Q(raw_data[128]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[129] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[129]),
        .Q(raw_data[129]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[12] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[12]),
        .Q(raw_data[12]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[130] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[130]),
        .Q(raw_data[130]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[131] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[131]),
        .Q(raw_data[131]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[132] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[132]),
        .Q(raw_data[132]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[133] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[133]),
        .Q(raw_data[133]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[134] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[134]),
        .Q(raw_data[134]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[135] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[135]),
        .Q(raw_data[135]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[136] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[136]),
        .Q(raw_data[136]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[137] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[137]),
        .Q(raw_data[137]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[138] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[138]),
        .Q(raw_data[138]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[139] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[139]),
        .Q(raw_data[139]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[13] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[13]),
        .Q(raw_data[13]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[140] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[140]),
        .Q(raw_data[140]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[141] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[141]),
        .Q(raw_data[141]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[142] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[142]),
        .Q(raw_data[142]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[143] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[143]),
        .Q(raw_data[143]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[144] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[144]),
        .Q(raw_data[144]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[145] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[145]),
        .Q(raw_data[145]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[146] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[146]),
        .Q(raw_data[146]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[147] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[147]),
        .Q(raw_data[147]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[148] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[148]),
        .Q(raw_data[148]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[149] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[149]),
        .Q(raw_data[149]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[14] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[14]),
        .Q(raw_data[14]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[150] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[150]),
        .Q(raw_data[150]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[151] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[151]),
        .Q(raw_data[151]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[152] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[152]),
        .Q(raw_data[152]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[153] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[153]),
        .Q(raw_data[153]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[154] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[154]),
        .Q(raw_data[154]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[155] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[155]),
        .Q(raw_data[155]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[156] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[156]),
        .Q(raw_data[156]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[157] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[157]),
        .Q(raw_data[157]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[158] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[158]),
        .Q(raw_data[158]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[159] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[159]),
        .Q(raw_data[159]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[15] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[15]),
        .Q(raw_data[15]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[160] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[160]),
        .Q(raw_data[160]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[161] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[161]),
        .Q(raw_data[161]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[162] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[162]),
        .Q(raw_data[162]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[163] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[163]),
        .Q(raw_data[163]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[164] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[164]),
        .Q(raw_data[164]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[165] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[165]),
        .Q(raw_data[165]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[166] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[166]),
        .Q(raw_data[166]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[167] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[167]),
        .Q(raw_data[167]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[168] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[168]),
        .Q(raw_data[168]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[169] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[169]),
        .Q(raw_data[169]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[16] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[16]),
        .Q(raw_data[16]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[170] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[170]),
        .Q(raw_data[170]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[171] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[171]),
        .Q(raw_data[171]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[172] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[172]),
        .Q(raw_data[172]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[173] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[173]),
        .Q(raw_data[173]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[174] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[174]),
        .Q(raw_data[174]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[175] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[175]),
        .Q(raw_data[175]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[176] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[176]),
        .Q(raw_data[176]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[177] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[177]),
        .Q(raw_data[177]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[178] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[178]),
        .Q(raw_data[178]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[179] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[179]),
        .Q(raw_data[179]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[17] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[17]),
        .Q(raw_data[17]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[180] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[180]),
        .Q(raw_data[180]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[181] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[181]),
        .Q(raw_data[181]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[182] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[182]),
        .Q(raw_data[182]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[183] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[183]),
        .Q(raw_data[183]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[184] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[184]),
        .Q(raw_data[184]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[185] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[185]),
        .Q(raw_data[185]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[186] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[186]),
        .Q(raw_data[186]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[187] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[187]),
        .Q(raw_data[187]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[188] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[188]),
        .Q(raw_data[188]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[189] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[189]),
        .Q(raw_data[189]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[18] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[18]),
        .Q(raw_data[18]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[190] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[190]),
        .Q(raw_data[190]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[191] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[191]),
        .Q(raw_data[191]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[192] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[192]),
        .Q(raw_data[192]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[193] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[193]),
        .Q(raw_data[193]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[194] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[194]),
        .Q(raw_data[194]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[195] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[195]),
        .Q(raw_data[195]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[196] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[196]),
        .Q(raw_data[196]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[197] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[197]),
        .Q(raw_data[197]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[198] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[198]),
        .Q(raw_data[198]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[199] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[199]),
        .Q(raw_data[199]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[19] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[19]),
        .Q(raw_data[19]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[1] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[1]),
        .Q(raw_data[1]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[200] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[200]),
        .Q(raw_data[200]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[201] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[201]),
        .Q(raw_data[201]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[202] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[202]),
        .Q(raw_data[202]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[203] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[203]),
        .Q(raw_data[203]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[204] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[204]),
        .Q(raw_data[204]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[205] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[205]),
        .Q(raw_data[205]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[206] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[206]),
        .Q(raw_data[206]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[207] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[207]),
        .Q(raw_data[207]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[208] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[208]),
        .Q(raw_data[208]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[209] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[209]),
        .Q(raw_data[209]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[20] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[20]),
        .Q(raw_data[20]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[210] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[210]),
        .Q(raw_data[210]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[211] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[211]),
        .Q(raw_data[211]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[212] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[212]),
        .Q(raw_data[212]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[213] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[213]),
        .Q(raw_data[213]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[214] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[214]),
        .Q(raw_data[214]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[215] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[215]),
        .Q(raw_data[215]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[216] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[216]),
        .Q(raw_data[216]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[217] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[217]),
        .Q(raw_data[217]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[218] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[218]),
        .Q(raw_data[218]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[219] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[219]),
        .Q(raw_data[219]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[21] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[21]),
        .Q(raw_data[21]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[220] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[220]),
        .Q(raw_data[220]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[221] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[221]),
        .Q(raw_data[221]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[222] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[222]),
        .Q(raw_data[222]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[223] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[223]),
        .Q(raw_data[223]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[224] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[224]),
        .Q(raw_data[224]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[225] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[225]),
        .Q(raw_data[225]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[226] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[226]),
        .Q(raw_data[226]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[227] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[227]),
        .Q(raw_data[227]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[228] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[228]),
        .Q(raw_data[228]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[229] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[229]),
        .Q(raw_data[229]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[22] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[22]),
        .Q(raw_data[22]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[230] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[230]),
        .Q(raw_data[230]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[231] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[231]),
        .Q(raw_data[231]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[232] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[232]),
        .Q(raw_data[232]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[233] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[233]),
        .Q(raw_data[233]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[234] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[234]),
        .Q(raw_data[234]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[235] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[235]),
        .Q(raw_data[235]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[236] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[236]),
        .Q(raw_data[236]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[237] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[237]),
        .Q(raw_data[237]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[238] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[238]),
        .Q(raw_data[238]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[239] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[239]),
        .Q(raw_data[239]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[23] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[23]),
        .Q(raw_data[23]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[240] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[240]),
        .Q(raw_data[240]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[241] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[241]),
        .Q(raw_data[241]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[242] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[242]),
        .Q(raw_data[242]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[243] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[243]),
        .Q(raw_data[243]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[244] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[244]),
        .Q(raw_data[244]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[245] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[245]),
        .Q(raw_data[245]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[246] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[246]),
        .Q(raw_data[246]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[247] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[247]),
        .Q(raw_data[247]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[248] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[248]),
        .Q(raw_data[248]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[249] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[249]),
        .Q(raw_data[249]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[24] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[24]),
        .Q(raw_data[24]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[250] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[250]),
        .Q(raw_data[250]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[251] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[251]),
        .Q(raw_data[251]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[252] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[252]),
        .Q(raw_data[252]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[253] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[253]),
        .Q(raw_data[253]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[254] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[254]),
        .Q(raw_data[254]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[255] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[255]),
        .Q(raw_data[255]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[256] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[256]),
        .Q(raw_data[256]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[257] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[257]),
        .Q(raw_data[257]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[258] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[258]),
        .Q(raw_data[258]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[259] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[259]),
        .Q(raw_data[259]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[25] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[25]),
        .Q(raw_data[25]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[260] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[260]),
        .Q(raw_data[260]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[261] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[261]),
        .Q(raw_data[261]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[262] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[262]),
        .Q(raw_data[262]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[263] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[263]),
        .Q(raw_data[263]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[264] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[264]),
        .Q(raw_data[264]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[265] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[265]),
        .Q(raw_data[265]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[266] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[266]),
        .Q(raw_data[266]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[267] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[267]),
        .Q(raw_data[267]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[268] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[268]),
        .Q(raw_data[268]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[269] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[269]),
        .Q(raw_data[269]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[26] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[26]),
        .Q(raw_data[26]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[270] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[270]),
        .Q(raw_data[270]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[271] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[271]),
        .Q(raw_data[271]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[272] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[272]),
        .Q(raw_data[272]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[273] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[273]),
        .Q(raw_data[273]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[274] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[274]),
        .Q(raw_data[274]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[275] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[275]),
        .Q(raw_data[275]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[276] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[276]),
        .Q(raw_data[276]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[277] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[277]),
        .Q(raw_data[277]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[278] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[278]),
        .Q(raw_data[278]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[279] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[279]),
        .Q(raw_data[279]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[27] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[27]),
        .Q(raw_data[27]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[280] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[280]),
        .Q(raw_data[280]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[281] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[281]),
        .Q(raw_data[281]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[282] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[282]),
        .Q(raw_data[282]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[283] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[283]),
        .Q(raw_data[283]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[284] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[284]),
        .Q(raw_data[284]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[285] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[285]),
        .Q(raw_data[285]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[286] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[286]),
        .Q(raw_data[286]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[287] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[287]),
        .Q(raw_data[287]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[288] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[288]),
        .Q(raw_data[288]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[289] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[289]),
        .Q(raw_data[289]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[28] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[28]),
        .Q(raw_data[28]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[290] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[290]),
        .Q(raw_data[290]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[291] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[291]),
        .Q(raw_data[291]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[292] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[292]),
        .Q(raw_data[292]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[293] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[293]),
        .Q(raw_data[293]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[294] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[294]),
        .Q(raw_data[294]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[295] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[295]),
        .Q(raw_data[295]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[296] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[296]),
        .Q(raw_data[296]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[297] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[297]),
        .Q(raw_data[297]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[298] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[298]),
        .Q(raw_data[298]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[299] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[299]),
        .Q(raw_data[299]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[29] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[29]),
        .Q(raw_data[29]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[2] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[2]),
        .Q(raw_data[2]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[300] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[300]),
        .Q(raw_data[300]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[301] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[301]),
        .Q(raw_data[301]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[302] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[302]),
        .Q(raw_data[302]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[303] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[303]),
        .Q(raw_data[303]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[304] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[304]),
        .Q(raw_data[304]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[305] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[305]),
        .Q(raw_data[305]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[306] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[306]),
        .Q(raw_data[306]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[307] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[307]),
        .Q(raw_data[307]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[308] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[308]),
        .Q(raw_data[308]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[309] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[309]),
        .Q(raw_data[309]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[30] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[30]),
        .Q(raw_data[30]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[310] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[310]),
        .Q(raw_data[310]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[311] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[311]),
        .Q(raw_data[311]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[312] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[312]),
        .Q(raw_data[312]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[313] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[313]),
        .Q(raw_data[313]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[314] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[314]),
        .Q(raw_data[314]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[315] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[315]),
        .Q(raw_data[315]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[316] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[316]),
        .Q(raw_data[316]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[317] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[317]),
        .Q(raw_data[317]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[318] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[318]),
        .Q(raw_data[318]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[319] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[319]),
        .Q(raw_data[319]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[31] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[31]),
        .Q(raw_data[31]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[320] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[320]),
        .Q(raw_data[320]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[321] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[321]),
        .Q(raw_data[321]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[322] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[322]),
        .Q(raw_data[322]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[323] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[323]),
        .Q(raw_data[323]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[324] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[324]),
        .Q(raw_data[324]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[325] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[325]),
        .Q(raw_data[325]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[326] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[326]),
        .Q(raw_data[326]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[327] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[327]),
        .Q(raw_data[327]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[328] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[328]),
        .Q(raw_data[328]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[329] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[329]),
        .Q(raw_data[329]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[32] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[32]),
        .Q(raw_data[32]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[330] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[330]),
        .Q(raw_data[330]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[331] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[331]),
        .Q(raw_data[331]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[332] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[332]),
        .Q(raw_data[332]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[333] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[333]),
        .Q(raw_data[333]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[334] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[334]),
        .Q(raw_data[334]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[335] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[335]),
        .Q(raw_data[335]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[336] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[336]),
        .Q(raw_data[336]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[337] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[337]),
        .Q(raw_data[337]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[338] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[338]),
        .Q(raw_data[338]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[339] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[339]),
        .Q(raw_data[339]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[33] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[33]),
        .Q(raw_data[33]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[340] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[340]),
        .Q(raw_data[340]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[341] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[341]),
        .Q(raw_data[341]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[342] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[342]),
        .Q(raw_data[342]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[343] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[343]),
        .Q(raw_data[343]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[344] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[344]),
        .Q(raw_data[344]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[345] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[345]),
        .Q(raw_data[345]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[346] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[346]),
        .Q(raw_data[346]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[347] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[347]),
        .Q(raw_data[347]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[348] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[348]),
        .Q(raw_data[348]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[349] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[349]),
        .Q(raw_data[349]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[34] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[34]),
        .Q(raw_data[34]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[350] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[350]),
        .Q(raw_data[350]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[351] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[351]),
        .Q(raw_data[351]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[352] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[352]),
        .Q(raw_data[352]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[353] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[353]),
        .Q(raw_data[353]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[354] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[354]),
        .Q(raw_data[354]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[355] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[355]),
        .Q(raw_data[355]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[356] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[356]),
        .Q(raw_data[356]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[357] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[357]),
        .Q(raw_data[357]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[358] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[358]),
        .Q(raw_data[358]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[359] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[359]),
        .Q(raw_data[359]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[35] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[35]),
        .Q(raw_data[35]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[360] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[360]),
        .Q(raw_data[360]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[361] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[361]),
        .Q(raw_data[361]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[362] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[362]),
        .Q(raw_data[362]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[363] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[363]),
        .Q(raw_data[363]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[36] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[36]),
        .Q(raw_data[36]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[37] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[37]),
        .Q(raw_data[37]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[38] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[38]),
        .Q(raw_data[38]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[39] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[39]),
        .Q(raw_data[39]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[3] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[3]),
        .Q(raw_data[3]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[40] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[40]),
        .Q(raw_data[40]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[41] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[41]),
        .Q(raw_data[41]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[42] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[42]),
        .Q(raw_data[42]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[43] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[43]),
        .Q(raw_data[43]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[44] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[44]),
        .Q(raw_data[44]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[45] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[45]),
        .Q(raw_data[45]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[46] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[46]),
        .Q(raw_data[46]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[47] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[47]),
        .Q(raw_data[47]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[48] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[48]),
        .Q(raw_data[48]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[49] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[49]),
        .Q(raw_data[49]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[4] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[4]),
        .Q(raw_data[4]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[50] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[50]),
        .Q(raw_data[50]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[51] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[51]),
        .Q(raw_data[51]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[52] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[52]),
        .Q(raw_data[52]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[53] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[53]),
        .Q(raw_data[53]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[54] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[54]),
        .Q(raw_data[54]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[55] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[55]),
        .Q(raw_data[55]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[56] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[56]),
        .Q(raw_data[56]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[57] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[57]),
        .Q(raw_data[57]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[58] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[58]),
        .Q(raw_data[58]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[59] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[59]),
        .Q(raw_data[59]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[5] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[5]),
        .Q(raw_data[5]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[60] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[60]),
        .Q(raw_data[60]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[61] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[61]),
        .Q(raw_data[61]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[62] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[62]),
        .Q(raw_data[62]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[63] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[63]),
        .Q(raw_data[63]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[64] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[64]),
        .Q(raw_data[64]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[65] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[65]),
        .Q(raw_data[65]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[66] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[66]),
        .Q(raw_data[66]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[67] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[67]),
        .Q(raw_data[67]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[68] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[68]),
        .Q(raw_data[68]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[69] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[69]),
        .Q(raw_data[69]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[6] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[6]),
        .Q(raw_data[6]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[70] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[70]),
        .Q(raw_data[70]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[71] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[71]),
        .Q(raw_data[71]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[72] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[72]),
        .Q(raw_data[72]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[73] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[73]),
        .Q(raw_data[73]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[74] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[74]),
        .Q(raw_data[74]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[75] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[75]),
        .Q(raw_data[75]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[76] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[76]),
        .Q(raw_data[76]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[77] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[77]),
        .Q(raw_data[77]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[78] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[78]),
        .Q(raw_data[78]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[79] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[79]),
        .Q(raw_data[79]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[7] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[7]),
        .Q(raw_data[7]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[80] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[80]),
        .Q(raw_data[80]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[81] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[81]),
        .Q(raw_data[81]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[82] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[82]),
        .Q(raw_data[82]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[83] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[83]),
        .Q(raw_data[83]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[84] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[84]),
        .Q(raw_data[84]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[85] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[85]),
        .Q(raw_data[85]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[86] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[86]),
        .Q(raw_data[86]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[87] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[87]),
        .Q(raw_data[87]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[88] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[88]),
        .Q(raw_data[88]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[89] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[89]),
        .Q(raw_data[89]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[8] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[8]),
        .Q(raw_data[8]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[90] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[90]),
        .Q(raw_data[90]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[91] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[91]),
        .Q(raw_data[91]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[92] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[92]),
        .Q(raw_data[92]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[93] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[93]),
        .Q(raw_data[93]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[94] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[94]),
        .Q(raw_data[94]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[95] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[95]),
        .Q(raw_data[95]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[96] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[96]),
        .Q(raw_data[96]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[97] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[97]),
        .Q(raw_data[97]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[98] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[98]),
        .Q(raw_data[98]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[99] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[99]),
        .Q(raw_data[99]),
        .R(1'b0));
  FDRE \deci_high.raw_data_reg[9] 
       (.C(raw_clk),
        .CE(raw_active),
        .D(raw_out_data[9]),
        .Q(raw_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[0]_i_1 
       (.I0(\deci_high.raw_delay_reg [0]),
        .O(raw_delay0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \deci_high.raw_delay[11]_i_1 
       (.I0(\deci_high.raw_delay_reg [2]),
        .I1(\deci_high.raw_delay_reg [3]),
        .I2(\deci_high.raw_delay_reg [0]),
        .I3(\deci_high.raw_delay_reg [1]),
        .I4(\deci_high.raw_delay[11]_i_3_n_0 ),
        .I5(\deci_high.raw_delay[11]_i_4_n_0 ),
        .O(\deci_high.raw_delay[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \deci_high.raw_delay[11]_i_3 
       (.I0(\deci_high.raw_delay_reg [9]),
        .I1(\deci_high.raw_delay_reg [8]),
        .I2(\deci_high.raw_delay_reg [11]),
        .I3(\deci_high.raw_delay_reg [10]),
        .O(\deci_high.raw_delay[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \deci_high.raw_delay[11]_i_4 
       (.I0(\deci_high.raw_delay_reg [5]),
        .I1(\deci_high.raw_delay_reg [4]),
        .I2(\deci_high.raw_delay_reg [7]),
        .I3(\deci_high.raw_delay_reg [6]),
        .O(\deci_high.raw_delay[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[11]_i_5 
       (.I0(\deci_high.raw_delay_reg [11]),
        .O(\deci_high.raw_delay[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[11]_i_6 
       (.I0(\deci_high.raw_delay_reg [10]),
        .O(\deci_high.raw_delay[11]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[11]_i_7 
       (.I0(\deci_high.raw_delay_reg [9]),
        .O(\deci_high.raw_delay[11]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_2 
       (.I0(\deci_high.raw_delay_reg [8]),
        .O(\deci_high.raw_delay[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_3 
       (.I0(\deci_high.raw_delay_reg [7]),
        .O(\deci_high.raw_delay[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_4 
       (.I0(\deci_high.raw_delay_reg [6]),
        .O(\deci_high.raw_delay[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_5 
       (.I0(\deci_high.raw_delay_reg [5]),
        .O(\deci_high.raw_delay[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_6 
       (.I0(\deci_high.raw_delay_reg [4]),
        .O(\deci_high.raw_delay[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_7 
       (.I0(\deci_high.raw_delay_reg [3]),
        .O(\deci_high.raw_delay[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_8 
       (.I0(\deci_high.raw_delay_reg [2]),
        .O(\deci_high.raw_delay[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \deci_high.raw_delay[8]_i_9 
       (.I0(\deci_high.raw_delay_reg [1]),
        .O(\deci_high.raw_delay[8]_i_9_n_0 ));
  FDRE \deci_high.raw_delay_reg[0] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[0]),
        .Q(\deci_high.raw_delay_reg [0]),
        .R(raw_fifo_empty));
  FDRE \deci_high.raw_delay_reg[10] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[10]),
        .Q(\deci_high.raw_delay_reg [10]),
        .R(raw_fifo_empty));
  FDRE \deci_high.raw_delay_reg[11] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[11]),
        .Q(\deci_high.raw_delay_reg [11]),
        .R(raw_fifo_empty));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_high.raw_delay_reg[11]_i_2 
       (.CI(\deci_high.raw_delay_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_deci_high.raw_delay_reg[11]_i_2_CO_UNCONNECTED [7:2],\deci_high.raw_delay_reg[11]_i_2_n_6 ,\deci_high.raw_delay_reg[11]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\deci_high.raw_delay_reg [10:9]}),
        .O({\NLW_deci_high.raw_delay_reg[11]_i_2_O_UNCONNECTED [7:3],raw_delay0[11:9]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\deci_high.raw_delay[11]_i_5_n_0 ,\deci_high.raw_delay[11]_i_6_n_0 ,\deci_high.raw_delay[11]_i_7_n_0 }));
  FDRE \deci_high.raw_delay_reg[1] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[1]),
        .Q(\deci_high.raw_delay_reg [1]),
        .R(raw_fifo_empty));
  FDRE \deci_high.raw_delay_reg[2] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[2]),
        .Q(\deci_high.raw_delay_reg [2]),
        .R(raw_fifo_empty));
  FDRE \deci_high.raw_delay_reg[3] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[3]),
        .Q(\deci_high.raw_delay_reg [3]),
        .R(raw_fifo_empty));
  FDSE \deci_high.raw_delay_reg[4] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[4]),
        .Q(\deci_high.raw_delay_reg [4]),
        .S(raw_fifo_empty));
  FDSE \deci_high.raw_delay_reg[5] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[5]),
        .Q(\deci_high.raw_delay_reg [5]),
        .S(raw_fifo_empty));
  FDSE \deci_high.raw_delay_reg[6] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[6]),
        .Q(\deci_high.raw_delay_reg [6]),
        .S(raw_fifo_empty));
  FDSE \deci_high.raw_delay_reg[7] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[7]),
        .Q(\deci_high.raw_delay_reg [7]),
        .S(raw_fifo_empty));
  FDSE \deci_high.raw_delay_reg[8] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[8]),
        .Q(\deci_high.raw_delay_reg [8]),
        .S(raw_fifo_empty));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \deci_high.raw_delay_reg[8]_i_1 
       (.CI(\deci_high.raw_delay_reg [0]),
        .CI_TOP(1'b0),
        .CO({\deci_high.raw_delay_reg[8]_i_1_n_0 ,\deci_high.raw_delay_reg[8]_i_1_n_1 ,\deci_high.raw_delay_reg[8]_i_1_n_2 ,\deci_high.raw_delay_reg[8]_i_1_n_3 ,\deci_high.raw_delay_reg[8]_i_1_n_4 ,\deci_high.raw_delay_reg[8]_i_1_n_5 ,\deci_high.raw_delay_reg[8]_i_1_n_6 ,\deci_high.raw_delay_reg[8]_i_1_n_7 }),
        .DI(\deci_high.raw_delay_reg [8:1]),
        .O(raw_delay0[8:1]),
        .S({\deci_high.raw_delay[8]_i_2_n_0 ,\deci_high.raw_delay[8]_i_3_n_0 ,\deci_high.raw_delay[8]_i_4_n_0 ,\deci_high.raw_delay[8]_i_5_n_0 ,\deci_high.raw_delay[8]_i_6_n_0 ,\deci_high.raw_delay[8]_i_7_n_0 ,\deci_high.raw_delay[8]_i_8_n_0 ,\deci_high.raw_delay[8]_i_9_n_0 }));
  FDSE \deci_high.raw_delay_reg[9] 
       (.C(raw_clk),
        .CE(\deci_high.raw_delay[11]_i_1_n_0 ),
        .D(raw_delay0[9]),
        .Q(\deci_high.raw_delay_reg [9]),
        .S(raw_fifo_empty));
  FDRE \deci_high.raw_fifo_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(active),
        .Q(raw_fifo_wr),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[0] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [0]),
        .Q(raw_in_data[0]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[100] 
       (.C(clk),
        .CE(active),
        .D(data_N[84]),
        .Q(raw_in_data[100]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[101] 
       (.C(clk),
        .CE(active),
        .D(data_N[85]),
        .Q(raw_in_data[101]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[102] 
       (.C(clk),
        .CE(active),
        .D(data_N[86]),
        .Q(raw_in_data[102]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[103] 
       (.C(clk),
        .CE(active),
        .D(data_N[87]),
        .Q(raw_in_data[103]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[104] 
       (.C(clk),
        .CE(active),
        .D(data_N[88]),
        .Q(raw_in_data[104]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[105] 
       (.C(clk),
        .CE(active),
        .D(data_N[89]),
        .Q(raw_in_data[105]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[106] 
       (.C(clk),
        .CE(active),
        .D(data_N[90]),
        .Q(raw_in_data[106]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[107] 
       (.C(clk),
        .CE(active),
        .D(data_N[91]),
        .Q(raw_in_data[107]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[108] 
       (.C(clk),
        .CE(active),
        .D(data_N[92]),
        .Q(raw_in_data[108]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[109] 
       (.C(clk),
        .CE(active),
        .D(data_N[93]),
        .Q(raw_in_data[109]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[10] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [10]),
        .Q(raw_in_data[10]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[110] 
       (.C(clk),
        .CE(active),
        .D(data_N[94]),
        .Q(raw_in_data[110]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[111] 
       (.C(clk),
        .CE(active),
        .D(data_N[95]),
        .Q(raw_in_data[111]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[112] 
       (.C(clk),
        .CE(active),
        .D(data_N[98]),
        .Q(raw_in_data[112]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[113] 
       (.C(clk),
        .CE(active),
        .D(data_N[99]),
        .Q(raw_in_data[113]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[114] 
       (.C(clk),
        .CE(active),
        .D(data_N[100]),
        .Q(raw_in_data[114]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[115] 
       (.C(clk),
        .CE(active),
        .D(data_N[101]),
        .Q(raw_in_data[115]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[116] 
       (.C(clk),
        .CE(active),
        .D(data_N[102]),
        .Q(raw_in_data[116]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[117] 
       (.C(clk),
        .CE(active),
        .D(data_N[103]),
        .Q(raw_in_data[117]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[118] 
       (.C(clk),
        .CE(active),
        .D(data_N[104]),
        .Q(raw_in_data[118]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[119] 
       (.C(clk),
        .CE(active),
        .D(data_N[105]),
        .Q(raw_in_data[119]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[11] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [11]),
        .Q(raw_in_data[11]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[120] 
       (.C(clk),
        .CE(active),
        .D(data_N[106]),
        .Q(raw_in_data[120]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[121] 
       (.C(clk),
        .CE(active),
        .D(data_N[107]),
        .Q(raw_in_data[121]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[122] 
       (.C(clk),
        .CE(active),
        .D(data_N[108]),
        .Q(raw_in_data[122]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[123] 
       (.C(clk),
        .CE(active),
        .D(data_N[109]),
        .Q(raw_in_data[123]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[124] 
       (.C(clk),
        .CE(active),
        .D(data_N[110]),
        .Q(raw_in_data[124]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[125] 
       (.C(clk),
        .CE(active),
        .D(data_N[111]),
        .Q(raw_in_data[125]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[126] 
       (.C(clk),
        .CE(active),
        .D(data_N[114]),
        .Q(raw_in_data[126]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[127] 
       (.C(clk),
        .CE(active),
        .D(data_N[115]),
        .Q(raw_in_data[127]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[128] 
       (.C(clk),
        .CE(active),
        .D(data_N[116]),
        .Q(raw_in_data[128]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[129] 
       (.C(clk),
        .CE(active),
        .D(data_N[117]),
        .Q(raw_in_data[129]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[12] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [12]),
        .Q(raw_in_data[12]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[130] 
       (.C(clk),
        .CE(active),
        .D(data_N[118]),
        .Q(raw_in_data[130]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[131] 
       (.C(clk),
        .CE(active),
        .D(data_N[119]),
        .Q(raw_in_data[131]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[132] 
       (.C(clk),
        .CE(active),
        .D(data_N[120]),
        .Q(raw_in_data[132]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[133] 
       (.C(clk),
        .CE(active),
        .D(data_N[121]),
        .Q(raw_in_data[133]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[134] 
       (.C(clk),
        .CE(active),
        .D(data_N[122]),
        .Q(raw_in_data[134]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[135] 
       (.C(clk),
        .CE(active),
        .D(data_N[123]),
        .Q(raw_in_data[135]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[136] 
       (.C(clk),
        .CE(active),
        .D(data_N[124]),
        .Q(raw_in_data[136]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[137] 
       (.C(clk),
        .CE(active),
        .D(data_N[125]),
        .Q(raw_in_data[137]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[138] 
       (.C(clk),
        .CE(active),
        .D(data_N[126]),
        .Q(raw_in_data[138]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[139] 
       (.C(clk),
        .CE(active),
        .D(data_N[127]),
        .Q(raw_in_data[139]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[13] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [13]),
        .Q(raw_in_data[13]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[140] 
       (.C(clk),
        .CE(active),
        .D(data_E[2]),
        .Q(raw_in_data[140]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[141] 
       (.C(clk),
        .CE(active),
        .D(data_E[3]),
        .Q(raw_in_data[141]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[142] 
       (.C(clk),
        .CE(active),
        .D(data_E[4]),
        .Q(raw_in_data[142]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[143] 
       (.C(clk),
        .CE(active),
        .D(data_E[5]),
        .Q(raw_in_data[143]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[144] 
       (.C(clk),
        .CE(active),
        .D(data_E[6]),
        .Q(raw_in_data[144]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[145] 
       (.C(clk),
        .CE(active),
        .D(data_E[7]),
        .Q(raw_in_data[145]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[146] 
       (.C(clk),
        .CE(active),
        .D(data_E[8]),
        .Q(raw_in_data[146]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[147] 
       (.C(clk),
        .CE(active),
        .D(data_E[9]),
        .Q(raw_in_data[147]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[148] 
       (.C(clk),
        .CE(active),
        .D(data_E[10]),
        .Q(raw_in_data[148]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[149] 
       (.C(clk),
        .CE(active),
        .D(data_E[11]),
        .Q(raw_in_data[149]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[14] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [14]),
        .Q(raw_in_data[14]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[150] 
       (.C(clk),
        .CE(active),
        .D(data_E[12]),
        .Q(raw_in_data[150]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[151] 
       (.C(clk),
        .CE(active),
        .D(data_E[13]),
        .Q(raw_in_data[151]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[152] 
       (.C(clk),
        .CE(active),
        .D(data_E[14]),
        .Q(raw_in_data[152]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[153] 
       (.C(clk),
        .CE(active),
        .D(data_E[15]),
        .Q(raw_in_data[153]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[154] 
       (.C(clk),
        .CE(active),
        .D(data_E[18]),
        .Q(raw_in_data[154]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[155] 
       (.C(clk),
        .CE(active),
        .D(data_E[19]),
        .Q(raw_in_data[155]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[156] 
       (.C(clk),
        .CE(active),
        .D(data_E[20]),
        .Q(raw_in_data[156]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[157] 
       (.C(clk),
        .CE(active),
        .D(data_E[21]),
        .Q(raw_in_data[157]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[158] 
       (.C(clk),
        .CE(active),
        .D(data_E[22]),
        .Q(raw_in_data[158]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[159] 
       (.C(clk),
        .CE(active),
        .D(data_E[23]),
        .Q(raw_in_data[159]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[15] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [15]),
        .Q(raw_in_data[15]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[160] 
       (.C(clk),
        .CE(active),
        .D(data_E[24]),
        .Q(raw_in_data[160]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[161] 
       (.C(clk),
        .CE(active),
        .D(data_E[25]),
        .Q(raw_in_data[161]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[162] 
       (.C(clk),
        .CE(active),
        .D(data_E[26]),
        .Q(raw_in_data[162]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[163] 
       (.C(clk),
        .CE(active),
        .D(data_E[27]),
        .Q(raw_in_data[163]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[164] 
       (.C(clk),
        .CE(active),
        .D(data_E[28]),
        .Q(raw_in_data[164]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[165] 
       (.C(clk),
        .CE(active),
        .D(data_E[29]),
        .Q(raw_in_data[165]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[166] 
       (.C(clk),
        .CE(active),
        .D(data_E[30]),
        .Q(raw_in_data[166]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[167] 
       (.C(clk),
        .CE(active),
        .D(data_E[31]),
        .Q(raw_in_data[167]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[168] 
       (.C(clk),
        .CE(active),
        .D(data_E[34]),
        .Q(raw_in_data[168]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[169] 
       (.C(clk),
        .CE(active),
        .D(data_E[35]),
        .Q(raw_in_data[169]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[16] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [16]),
        .Q(raw_in_data[16]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[170] 
       (.C(clk),
        .CE(active),
        .D(data_E[36]),
        .Q(raw_in_data[170]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[171] 
       (.C(clk),
        .CE(active),
        .D(data_E[37]),
        .Q(raw_in_data[171]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[172] 
       (.C(clk),
        .CE(active),
        .D(data_E[38]),
        .Q(raw_in_data[172]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[173] 
       (.C(clk),
        .CE(active),
        .D(data_E[39]),
        .Q(raw_in_data[173]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[174] 
       (.C(clk),
        .CE(active),
        .D(data_E[40]),
        .Q(raw_in_data[174]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[175] 
       (.C(clk),
        .CE(active),
        .D(data_E[41]),
        .Q(raw_in_data[175]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[176] 
       (.C(clk),
        .CE(active),
        .D(data_E[42]),
        .Q(raw_in_data[176]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[177] 
       (.C(clk),
        .CE(active),
        .D(data_E[43]),
        .Q(raw_in_data[177]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[178] 
       (.C(clk),
        .CE(active),
        .D(data_E[44]),
        .Q(raw_in_data[178]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[179] 
       (.C(clk),
        .CE(active),
        .D(data_E[45]),
        .Q(raw_in_data[179]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[17] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [17]),
        .Q(raw_in_data[17]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[180] 
       (.C(clk),
        .CE(active),
        .D(data_E[46]),
        .Q(raw_in_data[180]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[181] 
       (.C(clk),
        .CE(active),
        .D(data_E[47]),
        .Q(raw_in_data[181]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[182] 
       (.C(clk),
        .CE(active),
        .D(data_E[50]),
        .Q(raw_in_data[182]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[183] 
       (.C(clk),
        .CE(active),
        .D(data_E[51]),
        .Q(raw_in_data[183]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[184] 
       (.C(clk),
        .CE(active),
        .D(data_E[52]),
        .Q(raw_in_data[184]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[185] 
       (.C(clk),
        .CE(active),
        .D(data_E[53]),
        .Q(raw_in_data[185]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[186] 
       (.C(clk),
        .CE(active),
        .D(data_E[54]),
        .Q(raw_in_data[186]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[187] 
       (.C(clk),
        .CE(active),
        .D(data_E[55]),
        .Q(raw_in_data[187]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[188] 
       (.C(clk),
        .CE(active),
        .D(data_E[56]),
        .Q(raw_in_data[188]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[189] 
       (.C(clk),
        .CE(active),
        .D(data_E[57]),
        .Q(raw_in_data[189]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[18] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [18]),
        .Q(raw_in_data[18]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[190] 
       (.C(clk),
        .CE(active),
        .D(data_E[58]),
        .Q(raw_in_data[190]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[191] 
       (.C(clk),
        .CE(active),
        .D(data_E[59]),
        .Q(raw_in_data[191]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[192] 
       (.C(clk),
        .CE(active),
        .D(data_E[60]),
        .Q(raw_in_data[192]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[193] 
       (.C(clk),
        .CE(active),
        .D(data_E[61]),
        .Q(raw_in_data[193]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[194] 
       (.C(clk),
        .CE(active),
        .D(data_E[62]),
        .Q(raw_in_data[194]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[195] 
       (.C(clk),
        .CE(active),
        .D(data_E[63]),
        .Q(raw_in_data[195]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[196] 
       (.C(clk),
        .CE(active),
        .D(data_E[66]),
        .Q(raw_in_data[196]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[197] 
       (.C(clk),
        .CE(active),
        .D(data_E[67]),
        .Q(raw_in_data[197]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[198] 
       (.C(clk),
        .CE(active),
        .D(data_E[68]),
        .Q(raw_in_data[198]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[199] 
       (.C(clk),
        .CE(active),
        .D(data_E[69]),
        .Q(raw_in_data[199]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[19] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [19]),
        .Q(raw_in_data[19]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[1] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [1]),
        .Q(raw_in_data[1]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[200] 
       (.C(clk),
        .CE(active),
        .D(data_E[70]),
        .Q(raw_in_data[200]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[201] 
       (.C(clk),
        .CE(active),
        .D(data_E[71]),
        .Q(raw_in_data[201]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[202] 
       (.C(clk),
        .CE(active),
        .D(data_E[72]),
        .Q(raw_in_data[202]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[203] 
       (.C(clk),
        .CE(active),
        .D(data_E[73]),
        .Q(raw_in_data[203]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[204] 
       (.C(clk),
        .CE(active),
        .D(data_E[74]),
        .Q(raw_in_data[204]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[205] 
       (.C(clk),
        .CE(active),
        .D(data_E[75]),
        .Q(raw_in_data[205]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[206] 
       (.C(clk),
        .CE(active),
        .D(data_E[76]),
        .Q(raw_in_data[206]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[207] 
       (.C(clk),
        .CE(active),
        .D(data_E[77]),
        .Q(raw_in_data[207]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[208] 
       (.C(clk),
        .CE(active),
        .D(data_E[78]),
        .Q(raw_in_data[208]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[209] 
       (.C(clk),
        .CE(active),
        .D(data_E[79]),
        .Q(raw_in_data[209]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[20] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [20]),
        .Q(raw_in_data[20]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[210] 
       (.C(clk),
        .CE(active),
        .D(data_E[82]),
        .Q(raw_in_data[210]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[211] 
       (.C(clk),
        .CE(active),
        .D(data_E[83]),
        .Q(raw_in_data[211]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[212] 
       (.C(clk),
        .CE(active),
        .D(data_E[84]),
        .Q(raw_in_data[212]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[213] 
       (.C(clk),
        .CE(active),
        .D(data_E[85]),
        .Q(raw_in_data[213]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[214] 
       (.C(clk),
        .CE(active),
        .D(data_E[86]),
        .Q(raw_in_data[214]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[215] 
       (.C(clk),
        .CE(active),
        .D(data_E[87]),
        .Q(raw_in_data[215]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[216] 
       (.C(clk),
        .CE(active),
        .D(data_E[88]),
        .Q(raw_in_data[216]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[217] 
       (.C(clk),
        .CE(active),
        .D(data_E[89]),
        .Q(raw_in_data[217]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[218] 
       (.C(clk),
        .CE(active),
        .D(data_E[90]),
        .Q(raw_in_data[218]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[219] 
       (.C(clk),
        .CE(active),
        .D(data_E[91]),
        .Q(raw_in_data[219]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[21] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [21]),
        .Q(raw_in_data[21]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[220] 
       (.C(clk),
        .CE(active),
        .D(data_E[92]),
        .Q(raw_in_data[220]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[221] 
       (.C(clk),
        .CE(active),
        .D(data_E[93]),
        .Q(raw_in_data[221]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[222] 
       (.C(clk),
        .CE(active),
        .D(data_E[94]),
        .Q(raw_in_data[222]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[223] 
       (.C(clk),
        .CE(active),
        .D(data_E[95]),
        .Q(raw_in_data[223]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[224] 
       (.C(clk),
        .CE(active),
        .D(data_E[98]),
        .Q(raw_in_data[224]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[225] 
       (.C(clk),
        .CE(active),
        .D(data_E[99]),
        .Q(raw_in_data[225]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[226] 
       (.C(clk),
        .CE(active),
        .D(data_E[100]),
        .Q(raw_in_data[226]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[227] 
       (.C(clk),
        .CE(active),
        .D(data_E[101]),
        .Q(raw_in_data[227]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[228] 
       (.C(clk),
        .CE(active),
        .D(data_E[102]),
        .Q(raw_in_data[228]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[229] 
       (.C(clk),
        .CE(active),
        .D(data_E[103]),
        .Q(raw_in_data[229]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[22] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [22]),
        .Q(raw_in_data[22]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[230] 
       (.C(clk),
        .CE(active),
        .D(data_E[104]),
        .Q(raw_in_data[230]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[231] 
       (.C(clk),
        .CE(active),
        .D(data_E[105]),
        .Q(raw_in_data[231]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[232] 
       (.C(clk),
        .CE(active),
        .D(data_E[106]),
        .Q(raw_in_data[232]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[233] 
       (.C(clk),
        .CE(active),
        .D(data_E[107]),
        .Q(raw_in_data[233]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[234] 
       (.C(clk),
        .CE(active),
        .D(data_E[108]),
        .Q(raw_in_data[234]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[235] 
       (.C(clk),
        .CE(active),
        .D(data_E[109]),
        .Q(raw_in_data[235]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[236] 
       (.C(clk),
        .CE(active),
        .D(data_E[110]),
        .Q(raw_in_data[236]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[237] 
       (.C(clk),
        .CE(active),
        .D(data_E[111]),
        .Q(raw_in_data[237]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[238] 
       (.C(clk),
        .CE(active),
        .D(data_E[114]),
        .Q(raw_in_data[238]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[239] 
       (.C(clk),
        .CE(active),
        .D(data_E[115]),
        .Q(raw_in_data[239]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[23] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [23]),
        .Q(raw_in_data[23]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[240] 
       (.C(clk),
        .CE(active),
        .D(data_E[116]),
        .Q(raw_in_data[240]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[241] 
       (.C(clk),
        .CE(active),
        .D(data_E[117]),
        .Q(raw_in_data[241]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[242] 
       (.C(clk),
        .CE(active),
        .D(data_E[118]),
        .Q(raw_in_data[242]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[243] 
       (.C(clk),
        .CE(active),
        .D(data_E[119]),
        .Q(raw_in_data[243]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[244] 
       (.C(clk),
        .CE(active),
        .D(data_E[120]),
        .Q(raw_in_data[244]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[245] 
       (.C(clk),
        .CE(active),
        .D(data_E[121]),
        .Q(raw_in_data[245]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[246] 
       (.C(clk),
        .CE(active),
        .D(data_E[122]),
        .Q(raw_in_data[246]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[247] 
       (.C(clk),
        .CE(active),
        .D(data_E[123]),
        .Q(raw_in_data[247]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[248] 
       (.C(clk),
        .CE(active),
        .D(data_E[124]),
        .Q(raw_in_data[248]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[249] 
       (.C(clk),
        .CE(active),
        .D(data_E[125]),
        .Q(raw_in_data[249]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[24] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [24]),
        .Q(raw_in_data[24]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[250] 
       (.C(clk),
        .CE(active),
        .D(data_E[126]),
        .Q(raw_in_data[250]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[251] 
       (.C(clk),
        .CE(active),
        .D(data_E[127]),
        .Q(raw_in_data[251]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[252] 
       (.C(clk),
        .CE(active),
        .D(data_W[2]),
        .Q(raw_in_data[252]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[253] 
       (.C(clk),
        .CE(active),
        .D(data_W[3]),
        .Q(raw_in_data[253]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[254] 
       (.C(clk),
        .CE(active),
        .D(data_W[4]),
        .Q(raw_in_data[254]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[255] 
       (.C(clk),
        .CE(active),
        .D(data_W[5]),
        .Q(raw_in_data[255]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[256] 
       (.C(clk),
        .CE(active),
        .D(data_W[6]),
        .Q(raw_in_data[256]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[257] 
       (.C(clk),
        .CE(active),
        .D(data_W[7]),
        .Q(raw_in_data[257]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[258] 
       (.C(clk),
        .CE(active),
        .D(data_W[8]),
        .Q(raw_in_data[258]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[259] 
       (.C(clk),
        .CE(active),
        .D(data_W[9]),
        .Q(raw_in_data[259]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[25] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [25]),
        .Q(raw_in_data[25]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[260] 
       (.C(clk),
        .CE(active),
        .D(data_W[10]),
        .Q(raw_in_data[260]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[261] 
       (.C(clk),
        .CE(active),
        .D(data_W[11]),
        .Q(raw_in_data[261]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[262] 
       (.C(clk),
        .CE(active),
        .D(data_W[12]),
        .Q(raw_in_data[262]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[263] 
       (.C(clk),
        .CE(active),
        .D(data_W[13]),
        .Q(raw_in_data[263]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[264] 
       (.C(clk),
        .CE(active),
        .D(data_W[14]),
        .Q(raw_in_data[264]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[265] 
       (.C(clk),
        .CE(active),
        .D(data_W[15]),
        .Q(raw_in_data[265]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[266] 
       (.C(clk),
        .CE(active),
        .D(data_W[18]),
        .Q(raw_in_data[266]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[267] 
       (.C(clk),
        .CE(active),
        .D(data_W[19]),
        .Q(raw_in_data[267]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[268] 
       (.C(clk),
        .CE(active),
        .D(data_W[20]),
        .Q(raw_in_data[268]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[269] 
       (.C(clk),
        .CE(active),
        .D(data_W[21]),
        .Q(raw_in_data[269]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[26] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [26]),
        .Q(raw_in_data[26]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[270] 
       (.C(clk),
        .CE(active),
        .D(data_W[22]),
        .Q(raw_in_data[270]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[271] 
       (.C(clk),
        .CE(active),
        .D(data_W[23]),
        .Q(raw_in_data[271]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[272] 
       (.C(clk),
        .CE(active),
        .D(data_W[24]),
        .Q(raw_in_data[272]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[273] 
       (.C(clk),
        .CE(active),
        .D(data_W[25]),
        .Q(raw_in_data[273]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[274] 
       (.C(clk),
        .CE(active),
        .D(data_W[26]),
        .Q(raw_in_data[274]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[275] 
       (.C(clk),
        .CE(active),
        .D(data_W[27]),
        .Q(raw_in_data[275]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[276] 
       (.C(clk),
        .CE(active),
        .D(data_W[28]),
        .Q(raw_in_data[276]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[277] 
       (.C(clk),
        .CE(active),
        .D(data_W[29]),
        .Q(raw_in_data[277]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[278] 
       (.C(clk),
        .CE(active),
        .D(data_W[30]),
        .Q(raw_in_data[278]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[279] 
       (.C(clk),
        .CE(active),
        .D(data_W[31]),
        .Q(raw_in_data[279]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[27] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [27]),
        .Q(raw_in_data[27]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[280] 
       (.C(clk),
        .CE(active),
        .D(data_W[34]),
        .Q(raw_in_data[280]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[281] 
       (.C(clk),
        .CE(active),
        .D(data_W[35]),
        .Q(raw_in_data[281]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[282] 
       (.C(clk),
        .CE(active),
        .D(data_W[36]),
        .Q(raw_in_data[282]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[283] 
       (.C(clk),
        .CE(active),
        .D(data_W[37]),
        .Q(raw_in_data[283]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[284] 
       (.C(clk),
        .CE(active),
        .D(data_W[38]),
        .Q(raw_in_data[284]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[285] 
       (.C(clk),
        .CE(active),
        .D(data_W[39]),
        .Q(raw_in_data[285]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[286] 
       (.C(clk),
        .CE(active),
        .D(data_W[40]),
        .Q(raw_in_data[286]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[287] 
       (.C(clk),
        .CE(active),
        .D(data_W[41]),
        .Q(raw_in_data[287]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[288] 
       (.C(clk),
        .CE(active),
        .D(data_W[42]),
        .Q(raw_in_data[288]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[289] 
       (.C(clk),
        .CE(active),
        .D(data_W[43]),
        .Q(raw_in_data[289]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[28] 
       (.C(clk),
        .CE(active),
        .D(data_N[2]),
        .Q(raw_in_data[28]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[290] 
       (.C(clk),
        .CE(active),
        .D(data_W[44]),
        .Q(raw_in_data[290]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[291] 
       (.C(clk),
        .CE(active),
        .D(data_W[45]),
        .Q(raw_in_data[291]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[292] 
       (.C(clk),
        .CE(active),
        .D(data_W[46]),
        .Q(raw_in_data[292]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[293] 
       (.C(clk),
        .CE(active),
        .D(data_W[47]),
        .Q(raw_in_data[293]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[294] 
       (.C(clk),
        .CE(active),
        .D(data_W[50]),
        .Q(raw_in_data[294]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[295] 
       (.C(clk),
        .CE(active),
        .D(data_W[51]),
        .Q(raw_in_data[295]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[296] 
       (.C(clk),
        .CE(active),
        .D(data_W[52]),
        .Q(raw_in_data[296]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[297] 
       (.C(clk),
        .CE(active),
        .D(data_W[53]),
        .Q(raw_in_data[297]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[298] 
       (.C(clk),
        .CE(active),
        .D(data_W[54]),
        .Q(raw_in_data[298]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[299] 
       (.C(clk),
        .CE(active),
        .D(data_W[55]),
        .Q(raw_in_data[299]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[29] 
       (.C(clk),
        .CE(active),
        .D(data_N[3]),
        .Q(raw_in_data[29]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[2] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [2]),
        .Q(raw_in_data[2]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[300] 
       (.C(clk),
        .CE(active),
        .D(data_W[56]),
        .Q(raw_in_data[300]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[301] 
       (.C(clk),
        .CE(active),
        .D(data_W[57]),
        .Q(raw_in_data[301]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[302] 
       (.C(clk),
        .CE(active),
        .D(data_W[58]),
        .Q(raw_in_data[302]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[303] 
       (.C(clk),
        .CE(active),
        .D(data_W[59]),
        .Q(raw_in_data[303]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[304] 
       (.C(clk),
        .CE(active),
        .D(data_W[60]),
        .Q(raw_in_data[304]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[305] 
       (.C(clk),
        .CE(active),
        .D(data_W[61]),
        .Q(raw_in_data[305]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[306] 
       (.C(clk),
        .CE(active),
        .D(data_W[62]),
        .Q(raw_in_data[306]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[307] 
       (.C(clk),
        .CE(active),
        .D(data_W[63]),
        .Q(raw_in_data[307]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[308] 
       (.C(clk),
        .CE(active),
        .D(data_W[66]),
        .Q(raw_in_data[308]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[309] 
       (.C(clk),
        .CE(active),
        .D(data_W[67]),
        .Q(raw_in_data[309]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[30] 
       (.C(clk),
        .CE(active),
        .D(data_N[4]),
        .Q(raw_in_data[30]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[310] 
       (.C(clk),
        .CE(active),
        .D(data_W[68]),
        .Q(raw_in_data[310]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[311] 
       (.C(clk),
        .CE(active),
        .D(data_W[69]),
        .Q(raw_in_data[311]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[312] 
       (.C(clk),
        .CE(active),
        .D(data_W[70]),
        .Q(raw_in_data[312]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[313] 
       (.C(clk),
        .CE(active),
        .D(data_W[71]),
        .Q(raw_in_data[313]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[314] 
       (.C(clk),
        .CE(active),
        .D(data_W[72]),
        .Q(raw_in_data[314]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[315] 
       (.C(clk),
        .CE(active),
        .D(data_W[73]),
        .Q(raw_in_data[315]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[316] 
       (.C(clk),
        .CE(active),
        .D(data_W[74]),
        .Q(raw_in_data[316]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[317] 
       (.C(clk),
        .CE(active),
        .D(data_W[75]),
        .Q(raw_in_data[317]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[318] 
       (.C(clk),
        .CE(active),
        .D(data_W[76]),
        .Q(raw_in_data[318]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[319] 
       (.C(clk),
        .CE(active),
        .D(data_W[77]),
        .Q(raw_in_data[319]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[31] 
       (.C(clk),
        .CE(active),
        .D(data_N[5]),
        .Q(raw_in_data[31]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[320] 
       (.C(clk),
        .CE(active),
        .D(data_W[78]),
        .Q(raw_in_data[320]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[321] 
       (.C(clk),
        .CE(active),
        .D(data_W[79]),
        .Q(raw_in_data[321]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[322] 
       (.C(clk),
        .CE(active),
        .D(data_W[82]),
        .Q(raw_in_data[322]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[323] 
       (.C(clk),
        .CE(active),
        .D(data_W[83]),
        .Q(raw_in_data[323]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[324] 
       (.C(clk),
        .CE(active),
        .D(data_W[84]),
        .Q(raw_in_data[324]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[325] 
       (.C(clk),
        .CE(active),
        .D(data_W[85]),
        .Q(raw_in_data[325]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[326] 
       (.C(clk),
        .CE(active),
        .D(data_W[86]),
        .Q(raw_in_data[326]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[327] 
       (.C(clk),
        .CE(active),
        .D(data_W[87]),
        .Q(raw_in_data[327]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[328] 
       (.C(clk),
        .CE(active),
        .D(data_W[88]),
        .Q(raw_in_data[328]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[329] 
       (.C(clk),
        .CE(active),
        .D(data_W[89]),
        .Q(raw_in_data[329]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[32] 
       (.C(clk),
        .CE(active),
        .D(data_N[6]),
        .Q(raw_in_data[32]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[330] 
       (.C(clk),
        .CE(active),
        .D(data_W[90]),
        .Q(raw_in_data[330]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[331] 
       (.C(clk),
        .CE(active),
        .D(data_W[91]),
        .Q(raw_in_data[331]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[332] 
       (.C(clk),
        .CE(active),
        .D(data_W[92]),
        .Q(raw_in_data[332]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[333] 
       (.C(clk),
        .CE(active),
        .D(data_W[93]),
        .Q(raw_in_data[333]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[334] 
       (.C(clk),
        .CE(active),
        .D(data_W[94]),
        .Q(raw_in_data[334]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[335] 
       (.C(clk),
        .CE(active),
        .D(data_W[95]),
        .Q(raw_in_data[335]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[336] 
       (.C(clk),
        .CE(active),
        .D(data_W[98]),
        .Q(raw_in_data[336]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[337] 
       (.C(clk),
        .CE(active),
        .D(data_W[99]),
        .Q(raw_in_data[337]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[338] 
       (.C(clk),
        .CE(active),
        .D(data_W[100]),
        .Q(raw_in_data[338]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[339] 
       (.C(clk),
        .CE(active),
        .D(data_W[101]),
        .Q(raw_in_data[339]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[33] 
       (.C(clk),
        .CE(active),
        .D(data_N[7]),
        .Q(raw_in_data[33]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[340] 
       (.C(clk),
        .CE(active),
        .D(data_W[102]),
        .Q(raw_in_data[340]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[341] 
       (.C(clk),
        .CE(active),
        .D(data_W[103]),
        .Q(raw_in_data[341]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[342] 
       (.C(clk),
        .CE(active),
        .D(data_W[104]),
        .Q(raw_in_data[342]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[343] 
       (.C(clk),
        .CE(active),
        .D(data_W[105]),
        .Q(raw_in_data[343]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[344] 
       (.C(clk),
        .CE(active),
        .D(data_W[106]),
        .Q(raw_in_data[344]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[345] 
       (.C(clk),
        .CE(active),
        .D(data_W[107]),
        .Q(raw_in_data[345]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[346] 
       (.C(clk),
        .CE(active),
        .D(data_W[108]),
        .Q(raw_in_data[346]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[347] 
       (.C(clk),
        .CE(active),
        .D(data_W[109]),
        .Q(raw_in_data[347]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[348] 
       (.C(clk),
        .CE(active),
        .D(data_W[110]),
        .Q(raw_in_data[348]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[349] 
       (.C(clk),
        .CE(active),
        .D(data_W[111]),
        .Q(raw_in_data[349]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[34] 
       (.C(clk),
        .CE(active),
        .D(data_N[8]),
        .Q(raw_in_data[34]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[350] 
       (.C(clk),
        .CE(active),
        .D(data_W[114]),
        .Q(raw_in_data[350]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[351] 
       (.C(clk),
        .CE(active),
        .D(data_W[115]),
        .Q(raw_in_data[351]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[352] 
       (.C(clk),
        .CE(active),
        .D(data_W[116]),
        .Q(raw_in_data[352]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[353] 
       (.C(clk),
        .CE(active),
        .D(data_W[117]),
        .Q(raw_in_data[353]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[354] 
       (.C(clk),
        .CE(active),
        .D(data_W[118]),
        .Q(raw_in_data[354]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[355] 
       (.C(clk),
        .CE(active),
        .D(data_W[119]),
        .Q(raw_in_data[355]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[356] 
       (.C(clk),
        .CE(active),
        .D(data_W[120]),
        .Q(raw_in_data[356]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[357] 
       (.C(clk),
        .CE(active),
        .D(data_W[121]),
        .Q(raw_in_data[357]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[358] 
       (.C(clk),
        .CE(active),
        .D(data_W[122]),
        .Q(raw_in_data[358]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[359] 
       (.C(clk),
        .CE(active),
        .D(data_W[123]),
        .Q(raw_in_data[359]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[35] 
       (.C(clk),
        .CE(active),
        .D(data_N[9]),
        .Q(raw_in_data[35]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[360] 
       (.C(clk),
        .CE(active),
        .D(data_W[124]),
        .Q(raw_in_data[360]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[361] 
       (.C(clk),
        .CE(active),
        .D(data_W[125]),
        .Q(raw_in_data[361]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[362] 
       (.C(clk),
        .CE(active),
        .D(data_W[126]),
        .Q(raw_in_data[362]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[363] 
       (.C(clk),
        .CE(active),
        .D(data_W[127]),
        .Q(raw_in_data[363]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[36] 
       (.C(clk),
        .CE(active),
        .D(data_N[10]),
        .Q(raw_in_data[36]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[37] 
       (.C(clk),
        .CE(active),
        .D(data_N[11]),
        .Q(raw_in_data[37]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[38] 
       (.C(clk),
        .CE(active),
        .D(data_N[12]),
        .Q(raw_in_data[38]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[39] 
       (.C(clk),
        .CE(active),
        .D(data_N[13]),
        .Q(raw_in_data[39]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[3] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [3]),
        .Q(raw_in_data[3]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[40] 
       (.C(clk),
        .CE(active),
        .D(data_N[14]),
        .Q(raw_in_data[40]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[41] 
       (.C(clk),
        .CE(active),
        .D(data_N[15]),
        .Q(raw_in_data[41]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[42] 
       (.C(clk),
        .CE(active),
        .D(data_N[18]),
        .Q(raw_in_data[42]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[43] 
       (.C(clk),
        .CE(active),
        .D(data_N[19]),
        .Q(raw_in_data[43]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[44] 
       (.C(clk),
        .CE(active),
        .D(data_N[20]),
        .Q(raw_in_data[44]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[45] 
       (.C(clk),
        .CE(active),
        .D(data_N[21]),
        .Q(raw_in_data[45]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[46] 
       (.C(clk),
        .CE(active),
        .D(data_N[22]),
        .Q(raw_in_data[46]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[47] 
       (.C(clk),
        .CE(active),
        .D(data_N[23]),
        .Q(raw_in_data[47]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[48] 
       (.C(clk),
        .CE(active),
        .D(data_N[24]),
        .Q(raw_in_data[48]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[49] 
       (.C(clk),
        .CE(active),
        .D(data_N[25]),
        .Q(raw_in_data[49]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[4] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [4]),
        .Q(raw_in_data[4]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[50] 
       (.C(clk),
        .CE(active),
        .D(data_N[26]),
        .Q(raw_in_data[50]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[51] 
       (.C(clk),
        .CE(active),
        .D(data_N[27]),
        .Q(raw_in_data[51]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[52] 
       (.C(clk),
        .CE(active),
        .D(data_N[28]),
        .Q(raw_in_data[52]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[53] 
       (.C(clk),
        .CE(active),
        .D(data_N[29]),
        .Q(raw_in_data[53]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[54] 
       (.C(clk),
        .CE(active),
        .D(data_N[30]),
        .Q(raw_in_data[54]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[55] 
       (.C(clk),
        .CE(active),
        .D(data_N[31]),
        .Q(raw_in_data[55]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[56] 
       (.C(clk),
        .CE(active),
        .D(data_N[34]),
        .Q(raw_in_data[56]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[57] 
       (.C(clk),
        .CE(active),
        .D(data_N[35]),
        .Q(raw_in_data[57]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[58] 
       (.C(clk),
        .CE(active),
        .D(data_N[36]),
        .Q(raw_in_data[58]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[59] 
       (.C(clk),
        .CE(active),
        .D(data_N[37]),
        .Q(raw_in_data[59]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[5] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [5]),
        .Q(raw_in_data[5]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[60] 
       (.C(clk),
        .CE(active),
        .D(data_N[38]),
        .Q(raw_in_data[60]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[61] 
       (.C(clk),
        .CE(active),
        .D(data_N[39]),
        .Q(raw_in_data[61]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[62] 
       (.C(clk),
        .CE(active),
        .D(data_N[40]),
        .Q(raw_in_data[62]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[63] 
       (.C(clk),
        .CE(active),
        .D(data_N[41]),
        .Q(raw_in_data[63]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[64] 
       (.C(clk),
        .CE(active),
        .D(data_N[42]),
        .Q(raw_in_data[64]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[65] 
       (.C(clk),
        .CE(active),
        .D(data_N[43]),
        .Q(raw_in_data[65]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[66] 
       (.C(clk),
        .CE(active),
        .D(data_N[44]),
        .Q(raw_in_data[66]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[67] 
       (.C(clk),
        .CE(active),
        .D(data_N[45]),
        .Q(raw_in_data[67]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[68] 
       (.C(clk),
        .CE(active),
        .D(data_N[46]),
        .Q(raw_in_data[68]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[69] 
       (.C(clk),
        .CE(active),
        .D(data_N[47]),
        .Q(raw_in_data[69]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[6] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [6]),
        .Q(raw_in_data[6]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[70] 
       (.C(clk),
        .CE(active),
        .D(data_N[50]),
        .Q(raw_in_data[70]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[71] 
       (.C(clk),
        .CE(active),
        .D(data_N[51]),
        .Q(raw_in_data[71]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[72] 
       (.C(clk),
        .CE(active),
        .D(data_N[52]),
        .Q(raw_in_data[72]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[73] 
       (.C(clk),
        .CE(active),
        .D(data_N[53]),
        .Q(raw_in_data[73]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[74] 
       (.C(clk),
        .CE(active),
        .D(data_N[54]),
        .Q(raw_in_data[74]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[75] 
       (.C(clk),
        .CE(active),
        .D(data_N[55]),
        .Q(raw_in_data[75]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[76] 
       (.C(clk),
        .CE(active),
        .D(data_N[56]),
        .Q(raw_in_data[76]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[77] 
       (.C(clk),
        .CE(active),
        .D(data_N[57]),
        .Q(raw_in_data[77]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[78] 
       (.C(clk),
        .CE(active),
        .D(data_N[58]),
        .Q(raw_in_data[78]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[79] 
       (.C(clk),
        .CE(active),
        .D(data_N[59]),
        .Q(raw_in_data[79]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[7] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [7]),
        .Q(raw_in_data[7]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[80] 
       (.C(clk),
        .CE(active),
        .D(data_N[60]),
        .Q(raw_in_data[80]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[81] 
       (.C(clk),
        .CE(active),
        .D(data_N[61]),
        .Q(raw_in_data[81]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[82] 
       (.C(clk),
        .CE(active),
        .D(data_N[62]),
        .Q(raw_in_data[82]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[83] 
       (.C(clk),
        .CE(active),
        .D(data_N[63]),
        .Q(raw_in_data[83]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[84] 
       (.C(clk),
        .CE(active),
        .D(data_N[66]),
        .Q(raw_in_data[84]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[85] 
       (.C(clk),
        .CE(active),
        .D(data_N[67]),
        .Q(raw_in_data[85]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[86] 
       (.C(clk),
        .CE(active),
        .D(data_N[68]),
        .Q(raw_in_data[86]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[87] 
       (.C(clk),
        .CE(active),
        .D(data_N[69]),
        .Q(raw_in_data[87]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[88] 
       (.C(clk),
        .CE(active),
        .D(data_N[70]),
        .Q(raw_in_data[88]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[89] 
       (.C(clk),
        .CE(active),
        .D(data_N[71]),
        .Q(raw_in_data[89]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[8] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [8]),
        .Q(raw_in_data[8]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[90] 
       (.C(clk),
        .CE(active),
        .D(data_N[72]),
        .Q(raw_in_data[90]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[91] 
       (.C(clk),
        .CE(active),
        .D(data_N[73]),
        .Q(raw_in_data[91]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[92] 
       (.C(clk),
        .CE(active),
        .D(data_N[74]),
        .Q(raw_in_data[92]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[93] 
       (.C(clk),
        .CE(active),
        .D(data_N[75]),
        .Q(raw_in_data[93]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[94] 
       (.C(clk),
        .CE(active),
        .D(data_N[76]),
        .Q(raw_in_data[94]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[95] 
       (.C(clk),
        .CE(active),
        .D(data_N[77]),
        .Q(raw_in_data[95]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[96] 
       (.C(clk),
        .CE(active),
        .D(data_N[78]),
        .Q(raw_in_data[96]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[97] 
       (.C(clk),
        .CE(active),
        .D(data_N[79]),
        .Q(raw_in_data[97]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[98] 
       (.C(clk),
        .CE(active),
        .D(data_N[82]),
        .Q(raw_in_data[98]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[99] 
       (.C(clk),
        .CE(active),
        .D(data_N[83]),
        .Q(raw_in_data[99]),
        .R(1'b0));
  FDRE \deci_high.raw_in_data_reg[9] 
       (.C(clk),
        .CE(active),
        .D(\deci_high.counter_reg [9]),
        .Q(raw_in_data[9]),
        .R(1'b0));
  FDRE \deci_high.raw_ready_reg 
       (.C(raw_clk),
        .CE(1'b1),
        .D(raw_active),
        .Q(raw_ready),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "fifo_doa_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_high_0_0_fifo_doa_high fifo_doa_i
       (.din(doa_in_data),
        .dout(doa_out_data),
        .empty(doa_fifo_empty),
        .full(NLW_fifo_doa_i_full_UNCONNECTED),
        .rd_clk(doa_clk),
        .rd_en(doa_ready),
        .rd_rst_busy(NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_raw_i_i_1_n_0),
        .wr_clk(clk),
        .wr_en(doa_fifo_wr),
        .wr_rst_busy(NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_deci_high_0_0_fifo_raw_high fifo_raw_i
       (.din(raw_in_data),
        .dout(raw_out_data),
        .empty(raw_fifo_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(raw_clk),
        .rd_en(raw_ready),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(fifo_raw_i_i_1_n_0),
        .wr_clk(clk),
        .wr_en(raw_fifo_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT1 #(
    .INIT(2'h1)) 
    fifo_raw_i_i_1
       (.I0(resetn),
        .O(fifo_raw_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fir_deci_high,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_high_0_0_fir_deci_high fir_E_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED[63],raw_E,NLW_fir_E_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_E),
        .s_axis_data_tdata(data_E),
        .s_axis_data_tready(NLW_fir_E_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_E));
  (* CHECK_LICENSE_TYPE = "fir_deci_high,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_high_0_0_fir_deci_high fir_N_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED[63],raw_N,NLW_fir_N_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_N),
        .s_axis_data_tdata(data_N),
        .s_axis_data_tready(NLW_fir_N_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_N));
  (* CHECK_LICENSE_TYPE = "fir_deci_high,fir_compiler_v7_2_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
  ps_deci_high_0_0_fir_deci_high_HD1 fir_W_i
       (.aclk(clk),
        .aresetn(resetn),
        .m_axis_data_tdata({NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED[63],raw_W,NLW_fir_W_i_m_axis_data_tdata_UNCONNECTED[16:0]}),
        .m_axis_data_tvalid(valid_W),
        .s_axis_data_tdata(data_W),
        .s_axis_data_tready(NLW_fir_W_i_s_axis_data_tready_UNCONNECTED),
        .s_axis_data_tvalid(ready_W));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(active_1));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(active_2));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_doa_high,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_doa_high" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_deci_high_0_0_fifo_doa_high
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [111:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [111:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw_high" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_deci_high_0_0_fifo_raw_high
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [363:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [363:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fir_deci_high,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_deci_high" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_high_0_0_fir_deci_high
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [127:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [63:0]m_axis_data_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "fir_deci_high,fir_compiler_v7_2_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fir_deci_high" *) 
(* X_CORE_INFO = "fir_compiler_v7_2_24,Vivado 2025.1" *) 
module ps_deci_high_0_0_fir_deci_high_HD1
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TREADY" *) output s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DATA, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [63:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DATA TDATA" *) input [127:0]s_axis_data_tdata;


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
