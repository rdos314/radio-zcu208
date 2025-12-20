// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Dec 20 00:23:31 2025
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
   (fifo_clk,
    fifo_wr,
    fifo_sample_data,
    fifo_doa_data,
    config_clk,
    config_wr,
    config_adr,
    config_data,
    clk,
    reset);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq0_clk, INSERT_VIP 0" *) input fifo_clk;
  input fifo_wr;
  input [191:0]fifo_sample_data;
  input [143:0]fifo_doa_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire clk;
  wire [7:0]config_adr;
  wire config_clk;
  wire [31:0]config_data;
  wire config_wr;
  wire fifo_clk;
  wire [143:0]fifo_doa_data;
  wire [191:0]fifo_sample_data;
  wire fifo_wr;
  wire reset;

  ps_comp_low_0_0_comp_low inst
       (.clk(clk),
        .config_adr(config_adr),
        .config_clk(config_clk),
        .config_data(config_data),
        .config_wr(config_wr),
        .fifo_clk(fifo_clk),
        .fifo_doa_data(fifo_doa_data),
        .fifo_sample_data(fifo_sample_data),
        .fifo_wr(fifo_wr),
        .reset(reset));
endmodule

(* ORIG_REF_NAME = "comp_low" *) 
module ps_comp_low_0_0_comp_low
   (fifo_clk,
    fifo_wr,
    fifo_sample_data,
    fifo_doa_data,
    config_clk,
    config_wr,
    config_adr,
    config_data,
    clk,
    reset);
  input fifo_clk;
  input fifo_wr;
  input [191:0]fifo_sample_data;
  input [143:0]fifo_doa_data;
  input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  input clk;
  input reset;

  wire cfg_empty;
  wire cfg_rd;
  wire clk;
  wire \comp_low.doa_delay[1]_i_1_n_0 ;
  wire \comp_low.doa_delay[2]_i_1_n_0 ;
  wire \comp_low.doa_delay[3]_i_1_n_0 ;
  wire \comp_low.doa_delay[4]_i_1_n_0 ;
  wire \comp_low.doa_delay[4]_i_2_n_0 ;
  wire \comp_low.doa_rd_i_1_n_0 ;
  wire \comp_low.doa_valid_i_1_n_0 ;
  wire \comp_low.fifo_sample_delay[7]_i_1_n_0 ;
  wire \comp_low.fifo_sample_delay[7]_i_3_n_0 ;
  wire \comp_low.fifo_sample_delay[8]_i_1_n_0 ;
  wire \comp_low.sample_rd_i_1_n_0 ;
  wire [7:0]config_adr;
  wire config_clk;
  wire [31:0]config_data;
  wire [39:0]config_data_adr_out;
  wire config_wr;
  wire det_sig_i_i_1_n_0;
  wire [143:0]doa_data;
  wire [4:0]doa_delay;
  wire [0:0]doa_delay0;
  wire doa_empty;
  wire [143:0]doa_out_data;
  wire doa_rd;
  wire doa_valid;
  wire fifo_clk;
  wire [143:0]fifo_doa_data;
  wire [191:0]fifo_sample_data;
  wire [8:0]fifo_sample_delay;
  wire [7:0]fifo_sample_delay0;
  wire fifo_sample_empty;
  wire fifo_wr;
  wire reset;
  wire sample_rd;
  wire NLW_det_sig_i_signal_done_UNCONNECTED;
  wire [9:0]NLW_det_sig_i_signal_counter_UNCONNECTED;
  wire [31:0]NLW_det_sig_i_signal_sample_UNCONNECTED;
  wire NLW_fifo_config_i_full_UNCONNECTED;
  wire NLW_fifo_config_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_config_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_doa_i_full_UNCONNECTED;
  wire NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire [191:0]NLW_fifo_raw_i_dout_UNCONNECTED;

  FDRE \comp_low.cfg_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(det_sig_i_i_1_n_0),
        .Q(cfg_rd),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[0] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[0]),
        .Q(doa_data[0]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[100] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[100]),
        .Q(doa_data[100]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[101] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[101]),
        .Q(doa_data[101]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[102] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[102]),
        .Q(doa_data[102]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[103] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[103]),
        .Q(doa_data[103]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[104] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[104]),
        .Q(doa_data[104]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[105] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[105]),
        .Q(doa_data[105]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[106] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[106]),
        .Q(doa_data[106]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[107] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[107]),
        .Q(doa_data[107]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[108] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[108]),
        .Q(doa_data[108]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[109] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[109]),
        .Q(doa_data[109]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[10] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[10]),
        .Q(doa_data[10]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[110] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[110]),
        .Q(doa_data[110]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[111] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[111]),
        .Q(doa_data[111]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[112] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[112]),
        .Q(doa_data[112]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[113] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[113]),
        .Q(doa_data[113]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[114] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[114]),
        .Q(doa_data[114]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[115] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[115]),
        .Q(doa_data[115]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[116] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[116]),
        .Q(doa_data[116]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[117] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[117]),
        .Q(doa_data[117]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[118] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[118]),
        .Q(doa_data[118]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[119] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[119]),
        .Q(doa_data[119]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[11] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[11]),
        .Q(doa_data[11]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[120] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[120]),
        .Q(doa_data[120]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[121] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[121]),
        .Q(doa_data[121]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[122] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[122]),
        .Q(doa_data[122]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[123] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[123]),
        .Q(doa_data[123]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[124] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[124]),
        .Q(doa_data[124]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[125] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[125]),
        .Q(doa_data[125]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[126] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[126]),
        .Q(doa_data[126]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[127] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[127]),
        .Q(doa_data[127]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[128] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[128]),
        .Q(doa_data[128]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[129] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[129]),
        .Q(doa_data[129]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[12] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[12]),
        .Q(doa_data[12]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[130] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[130]),
        .Q(doa_data[130]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[131] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[131]),
        .Q(doa_data[131]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[132] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[132]),
        .Q(doa_data[132]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[133] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[133]),
        .Q(doa_data[133]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[134] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[134]),
        .Q(doa_data[134]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[135] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[135]),
        .Q(doa_data[135]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[136] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[136]),
        .Q(doa_data[136]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[137] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[137]),
        .Q(doa_data[137]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[138] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[138]),
        .Q(doa_data[138]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[139] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[139]),
        .Q(doa_data[139]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[13] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[13]),
        .Q(doa_data[13]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[140] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[140]),
        .Q(doa_data[140]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[141] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[141]),
        .Q(doa_data[141]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[142] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[142]),
        .Q(doa_data[142]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[143] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[143]),
        .Q(doa_data[143]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[14] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[14]),
        .Q(doa_data[14]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[15] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[15]),
        .Q(doa_data[15]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[16] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[16]),
        .Q(doa_data[16]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[17] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[17]),
        .Q(doa_data[17]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[18] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[18]),
        .Q(doa_data[18]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[19] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[19]),
        .Q(doa_data[19]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[1] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[1]),
        .Q(doa_data[1]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[20] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[20]),
        .Q(doa_data[20]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[21] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[21]),
        .Q(doa_data[21]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[22] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[22]),
        .Q(doa_data[22]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[23] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[23]),
        .Q(doa_data[23]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[24] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[24]),
        .Q(doa_data[24]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[25] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[25]),
        .Q(doa_data[25]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[26] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[26]),
        .Q(doa_data[26]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[27] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[27]),
        .Q(doa_data[27]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[28] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[28]),
        .Q(doa_data[28]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[29] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[29]),
        .Q(doa_data[29]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[2] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[2]),
        .Q(doa_data[2]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[30] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[30]),
        .Q(doa_data[30]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[31] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[31]),
        .Q(doa_data[31]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[32] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[32]),
        .Q(doa_data[32]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[33] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[33]),
        .Q(doa_data[33]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[34] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[34]),
        .Q(doa_data[34]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[35] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[35]),
        .Q(doa_data[35]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[36] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[36]),
        .Q(doa_data[36]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[37] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[37]),
        .Q(doa_data[37]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[38] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[38]),
        .Q(doa_data[38]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[39] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[39]),
        .Q(doa_data[39]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[3] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[3]),
        .Q(doa_data[3]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[40] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[40]),
        .Q(doa_data[40]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[41] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[41]),
        .Q(doa_data[41]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[42] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[42]),
        .Q(doa_data[42]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[43] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[43]),
        .Q(doa_data[43]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[44] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[44]),
        .Q(doa_data[44]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[45] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[45]),
        .Q(doa_data[45]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[46] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[46]),
        .Q(doa_data[46]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[47] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[47]),
        .Q(doa_data[47]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[48] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[48]),
        .Q(doa_data[48]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[49] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[49]),
        .Q(doa_data[49]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[4] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[4]),
        .Q(doa_data[4]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[50] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[50]),
        .Q(doa_data[50]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[51] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[51]),
        .Q(doa_data[51]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[52] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[52]),
        .Q(doa_data[52]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[53] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[53]),
        .Q(doa_data[53]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[54] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[54]),
        .Q(doa_data[54]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[55] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[55]),
        .Q(doa_data[55]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[56] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[56]),
        .Q(doa_data[56]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[57] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[57]),
        .Q(doa_data[57]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[58] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[58]),
        .Q(doa_data[58]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[59] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[59]),
        .Q(doa_data[59]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[5] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[5]),
        .Q(doa_data[5]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[60] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[60]),
        .Q(doa_data[60]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[61] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[61]),
        .Q(doa_data[61]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[62] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[62]),
        .Q(doa_data[62]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[63] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[63]),
        .Q(doa_data[63]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[64] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[64]),
        .Q(doa_data[64]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[65] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[65]),
        .Q(doa_data[65]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[66] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[66]),
        .Q(doa_data[66]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[67] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[67]),
        .Q(doa_data[67]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[68] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[68]),
        .Q(doa_data[68]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[69] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[69]),
        .Q(doa_data[69]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[6] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[6]),
        .Q(doa_data[6]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[70] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[70]),
        .Q(doa_data[70]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[71] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[71]),
        .Q(doa_data[71]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[72] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[72]),
        .Q(doa_data[72]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[73] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[73]),
        .Q(doa_data[73]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[74] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[74]),
        .Q(doa_data[74]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[75] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[75]),
        .Q(doa_data[75]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[76] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[76]),
        .Q(doa_data[76]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[77] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[77]),
        .Q(doa_data[77]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[78] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[78]),
        .Q(doa_data[78]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[79] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[79]),
        .Q(doa_data[79]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[7] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[7]),
        .Q(doa_data[7]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[80] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[80]),
        .Q(doa_data[80]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[81] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[81]),
        .Q(doa_data[81]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[82] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[82]),
        .Q(doa_data[82]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[83] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[83]),
        .Q(doa_data[83]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[84] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[84]),
        .Q(doa_data[84]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[85] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[85]),
        .Q(doa_data[85]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[86] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[86]),
        .Q(doa_data[86]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[87] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[87]),
        .Q(doa_data[87]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[88] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[88]),
        .Q(doa_data[88]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[89] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[89]),
        .Q(doa_data[89]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[8] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[8]),
        .Q(doa_data[8]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[90] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[90]),
        .Q(doa_data[90]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[91] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[91]),
        .Q(doa_data[91]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[92] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[92]),
        .Q(doa_data[92]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[93] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[93]),
        .Q(doa_data[93]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[94] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[94]),
        .Q(doa_data[94]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[95] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[95]),
        .Q(doa_data[95]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[96] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[96]),
        .Q(doa_data[96]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[97] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[97]),
        .Q(doa_data[97]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[98] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[98]),
        .Q(doa_data[98]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[99] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[99]),
        .Q(doa_data[99]),
        .R(1'b0));
  FDRE \comp_low.doa_data_reg[9] 
       (.C(clk),
        .CE(\comp_low.doa_valid_i_1_n_0 ),
        .D(doa_out_data[9]),
        .Q(doa_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_low.doa_delay[0]_i_1 
       (.I0(doa_delay[0]),
        .O(doa_delay0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \comp_low.doa_delay[1]_i_1 
       (.I0(doa_delay[0]),
        .I1(doa_delay[1]),
        .O(\comp_low.doa_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_low.doa_delay[2]_i_1 
       (.I0(doa_delay[1]),
        .I1(doa_delay[0]),
        .I2(doa_delay[2]),
        .O(\comp_low.doa_delay[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \comp_low.doa_delay[3]_i_1 
       (.I0(doa_delay[2]),
        .I1(doa_delay[0]),
        .I2(doa_delay[1]),
        .I3(doa_delay[3]),
        .O(\comp_low.doa_delay[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_low.doa_delay[4]_i_1 
       (.I0(doa_delay[0]),
        .I1(doa_delay[3]),
        .I2(doa_delay[4]),
        .I3(doa_delay[1]),
        .I4(doa_delay[2]),
        .O(\comp_low.doa_delay[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \comp_low.doa_delay[4]_i_2 
       (.I0(doa_delay[3]),
        .I1(doa_delay[1]),
        .I2(doa_delay[0]),
        .I3(doa_delay[2]),
        .I4(doa_delay[4]),
        .O(\comp_low.doa_delay[4]_i_2_n_0 ));
  FDSE \comp_low.doa_delay_reg[0] 
       (.C(clk),
        .CE(\comp_low.doa_delay[4]_i_1_n_0 ),
        .D(doa_delay0),
        .Q(doa_delay[0]),
        .S(doa_empty));
  FDSE \comp_low.doa_delay_reg[1] 
       (.C(clk),
        .CE(\comp_low.doa_delay[4]_i_1_n_0 ),
        .D(\comp_low.doa_delay[1]_i_1_n_0 ),
        .Q(doa_delay[1]),
        .S(doa_empty));
  FDSE \comp_low.doa_delay_reg[2] 
       (.C(clk),
        .CE(\comp_low.doa_delay[4]_i_1_n_0 ),
        .D(\comp_low.doa_delay[2]_i_1_n_0 ),
        .Q(doa_delay[2]),
        .S(doa_empty));
  FDSE \comp_low.doa_delay_reg[3] 
       (.C(clk),
        .CE(\comp_low.doa_delay[4]_i_1_n_0 ),
        .D(\comp_low.doa_delay[3]_i_1_n_0 ),
        .Q(doa_delay[3]),
        .S(doa_empty));
  FDSE \comp_low.doa_delay_reg[4] 
       (.C(clk),
        .CE(\comp_low.doa_delay[4]_i_1_n_0 ),
        .D(\comp_low.doa_delay[4]_i_2_n_0 ),
        .Q(doa_delay[4]),
        .S(doa_empty));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_low.doa_rd_i_1 
       (.I0(doa_empty),
        .I1(doa_delay[2]),
        .I2(doa_delay[1]),
        .I3(doa_delay[4]),
        .I4(doa_delay[3]),
        .I5(doa_delay[0]),
        .O(\comp_low.doa_rd_i_1_n_0 ));
  FDRE \comp_low.doa_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_low.doa_rd_i_1_n_0 ),
        .Q(doa_rd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_low.doa_valid_i_1 
       (.I0(doa_rd),
        .I1(doa_empty),
        .O(\comp_low.doa_valid_i_1_n_0 ));
  FDRE \comp_low.doa_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_low.doa_valid_i_1_n_0 ),
        .Q(doa_valid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_low.fifo_sample_delay[0]_i_1 
       (.I0(fifo_sample_delay[0]),
        .O(fifo_sample_delay0[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \comp_low.fifo_sample_delay[1]_i_1 
       (.I0(fifo_sample_delay[1]),
        .I1(fifo_sample_delay[0]),
        .O(fifo_sample_delay0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \comp_low.fifo_sample_delay[2]_i_1 
       (.I0(fifo_sample_delay[2]),
        .I1(fifo_sample_delay[0]),
        .I2(fifo_sample_delay[1]),
        .O(fifo_sample_delay0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \comp_low.fifo_sample_delay[3]_i_1 
       (.I0(fifo_sample_delay[3]),
        .I1(fifo_sample_delay[1]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[2]),
        .O(fifo_sample_delay0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \comp_low.fifo_sample_delay[4]_i_1 
       (.I0(fifo_sample_delay[4]),
        .I1(fifo_sample_delay[2]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[1]),
        .I4(fifo_sample_delay[3]),
        .O(fifo_sample_delay0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \comp_low.fifo_sample_delay[5]_i_1 
       (.I0(fifo_sample_delay[5]),
        .I1(fifo_sample_delay[3]),
        .I2(fifo_sample_delay[1]),
        .I3(fifo_sample_delay[0]),
        .I4(fifo_sample_delay[2]),
        .I5(fifo_sample_delay[4]),
        .O(fifo_sample_delay0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_low.fifo_sample_delay[6]_i_1 
       (.I0(fifo_sample_delay[6]),
        .I1(\comp_low.fifo_sample_delay[7]_i_3_n_0 ),
        .O(fifo_sample_delay0[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_low.fifo_sample_delay[7]_i_1 
       (.I0(fifo_sample_delay[7]),
        .I1(\comp_low.fifo_sample_delay[7]_i_3_n_0 ),
        .I2(fifo_sample_delay[6]),
        .I3(fifo_sample_delay[8]),
        .O(\comp_low.fifo_sample_delay[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \comp_low.fifo_sample_delay[7]_i_2 
       (.I0(fifo_sample_delay[7]),
        .I1(\comp_low.fifo_sample_delay[7]_i_3_n_0 ),
        .I2(fifo_sample_delay[6]),
        .O(fifo_sample_delay0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_low.fifo_sample_delay[7]_i_3 
       (.I0(fifo_sample_delay[4]),
        .I1(fifo_sample_delay[2]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[1]),
        .I4(fifo_sample_delay[3]),
        .I5(fifo_sample_delay[5]),
        .O(\comp_low.fifo_sample_delay[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \comp_low.fifo_sample_delay[8]_i_1 
       (.I0(fifo_sample_delay[7]),
        .I1(\comp_low.fifo_sample_delay[7]_i_3_n_0 ),
        .I2(fifo_sample_delay[6]),
        .I3(fifo_sample_delay[8]),
        .O(\comp_low.fifo_sample_delay[8]_i_1_n_0 ));
  FDSE \comp_low.fifo_sample_delay_reg[0] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[0]),
        .Q(fifo_sample_delay[0]),
        .S(fifo_sample_empty));
  FDSE \comp_low.fifo_sample_delay_reg[1] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[1]),
        .Q(fifo_sample_delay[1]),
        .S(fifo_sample_empty));
  FDSE \comp_low.fifo_sample_delay_reg[2] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[2]),
        .Q(fifo_sample_delay[2]),
        .S(fifo_sample_empty));
  FDSE \comp_low.fifo_sample_delay_reg[3] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[3]),
        .Q(fifo_sample_delay[3]),
        .S(fifo_sample_empty));
  FDSE \comp_low.fifo_sample_delay_reg[4] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[4]),
        .Q(fifo_sample_delay[4]),
        .S(fifo_sample_empty));
  FDRE \comp_low.fifo_sample_delay_reg[5] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[5]),
        .Q(fifo_sample_delay[5]),
        .R(fifo_sample_empty));
  FDRE \comp_low.fifo_sample_delay_reg[6] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[6]),
        .Q(fifo_sample_delay[6]),
        .R(fifo_sample_empty));
  FDRE \comp_low.fifo_sample_delay_reg[7] 
       (.C(clk),
        .CE(\comp_low.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[7]),
        .Q(fifo_sample_delay[7]),
        .R(fifo_sample_empty));
  FDRE \comp_low.fifo_sample_delay_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_low.fifo_sample_delay[8]_i_1_n_0 ),
        .Q(fifo_sample_delay[8]),
        .R(fifo_sample_empty));
  LUT5 #(
    .INIT(32'h00000001)) 
    \comp_low.sample_rd_i_1 
       (.I0(fifo_sample_empty),
        .I1(fifo_sample_delay[8]),
        .I2(fifo_sample_delay[6]),
        .I3(\comp_low.fifo_sample_delay[7]_i_3_n_0 ),
        .I4(fifo_sample_delay[7]),
        .O(\comp_low.sample_rd_i_1_n_0 ));
  FDRE \comp_low.sample_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_low.sample_rd_i_1_n_0 ),
        .Q(sample_rd),
        .R(1'b0));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_low_0_0_det_signal det_sig_i
       (.active(doa_valid),
        .clk(clk),
        .config_adr(config_data_adr_out[7:0]),
        .config_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,config_data_adr_out[23:8]}),
        .config_wr(det_sig_i_i_1_n_0),
        .data(doa_data),
        .reset(1'b0),
        .signal_counter(NLW_det_sig_i_signal_counter_UNCONNECTED[9:0]),
        .signal_done(NLW_det_sig_i_signal_done_UNCONNECTED),
        .signal_sample(NLW_det_sig_i_signal_sample_UNCONNECTED[31:0]));
  LUT1 #(
    .INIT(2'h1)) 
    det_sig_i_i_1
       (.I0(cfg_empty),
        .O(det_sig_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fifo_config,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_low_0_0_fifo_config fifo_config_i
       (.din({config_data,config_adr}),
        .dout(config_data_adr_out),
        .empty(cfg_empty),
        .full(NLW_fifo_config_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(cfg_rd),
        .rd_rst_busy(NLW_fifo_config_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(config_clk),
        .wr_en(config_wr),
        .wr_rst_busy(NLW_fifo_config_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_doa,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_low_0_0_fifo_doa fifo_doa_i
       (.din(fifo_doa_data),
        .dout(doa_out_data),
        .empty(doa_empty),
        .full(NLW_fifo_doa_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(doa_rd),
        .rd_rst_busy(NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(fifo_wr),
        .wr_rst_busy(NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "fifo_raw_low,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_low_0_0_fifo_raw_low fifo_raw_i
       (.din(fifo_sample_data),
        .dout(NLW_fifo_raw_i_dout_UNCONNECTED[191:0]),
        .empty(fifo_sample_empty),
        .full(NLW_fifo_raw_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(sample_rd),
        .rd_rst_busy(NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(fifo_clk),
        .wr_en(fifo_wr),
        .wr_rst_busy(NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED));
endmodule

(* ORIG_REF_NAME = "det_signal" *) (* keep_hierarchy = "soft" *) 
module ps_comp_low_0_0_det_signal
   (clk,
    reset,
    config_wr,
    config_adr,
    config_data,
    active,
    data,
    signal_sample,
    signal_counter,
    signal_done);
  input clk;
  input reset;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  input active;
  input [143:0]data;
  output [31:0]signal_sample;
  output [9:0]signal_counter;
  output signal_done;

  (* MARK_DEBUG *) wire acc_reset;
  (* MARK_DEBUG *) wire active;
  wire carry_env_sum_E;
  wire carry_env_sum_N;
  wire clear;
  wire clk;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_wr;
  (* MARK_DEBUG *) wire [31:0]curr_env_sum_E;
  (* MARK_DEBUG *) wire [31:0]curr_env_sum_N;
  (* MARK_DEBUG *) wire [31:0]curr_env_sum_W;
  (* MARK_DEBUG *) wire [9:0]curr_signal_counter;
  (* MARK_DEBUG *) wire [31:0]curr_signal_sample;
  wire [143:0]data;
  wire \det_signal.acc_reset_i_1_n_0 ;
  wire \det_signal.carry_env_sum_E_i_10_n_0 ;
  wire \det_signal.carry_env_sum_E_i_11_n_0 ;
  wire \det_signal.carry_env_sum_E_i_12_n_0 ;
  wire \det_signal.carry_env_sum_E_i_13_n_0 ;
  wire \det_signal.carry_env_sum_E_i_14_n_0 ;
  wire \det_signal.carry_env_sum_E_i_15_n_0 ;
  wire \det_signal.carry_env_sum_E_i_16_n_0 ;
  wire \det_signal.carry_env_sum_E_i_17_n_0 ;
  wire \det_signal.carry_env_sum_E_i_18_n_0 ;
  wire \det_signal.carry_env_sum_E_i_19_n_0 ;
  wire \det_signal.carry_env_sum_E_i_4_n_0 ;
  wire \det_signal.carry_env_sum_E_i_5_n_0 ;
  wire \det_signal.carry_env_sum_E_i_6_n_0 ;
  wire \det_signal.carry_env_sum_E_i_7_n_0 ;
  wire \det_signal.carry_env_sum_E_i_8_n_0 ;
  wire \det_signal.carry_env_sum_E_i_9_n_0 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_0 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_1 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_2 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_3 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_4 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_5 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_6 ;
  wire \det_signal.carry_env_sum_E_reg_i_2_n_7 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_0 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_1 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_2 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_3 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_4 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_5 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_6 ;
  wire \det_signal.carry_env_sum_E_reg_i_3_n_7 ;
  wire \det_signal.carry_env_sum_N_i_10_n_0 ;
  wire \det_signal.carry_env_sum_N_i_11_n_0 ;
  wire \det_signal.carry_env_sum_N_i_12_n_0 ;
  wire \det_signal.carry_env_sum_N_i_13_n_0 ;
  wire \det_signal.carry_env_sum_N_i_14_n_0 ;
  wire \det_signal.carry_env_sum_N_i_15_n_0 ;
  wire \det_signal.carry_env_sum_N_i_16_n_0 ;
  wire \det_signal.carry_env_sum_N_i_17_n_0 ;
  wire \det_signal.carry_env_sum_N_i_18_n_0 ;
  wire \det_signal.carry_env_sum_N_i_19_n_0 ;
  wire \det_signal.carry_env_sum_N_i_1_n_0 ;
  wire \det_signal.carry_env_sum_N_i_20_n_0 ;
  wire \det_signal.carry_env_sum_N_i_5_n_0 ;
  wire \det_signal.carry_env_sum_N_i_6_n_0 ;
  wire \det_signal.carry_env_sum_N_i_7_n_0 ;
  wire \det_signal.carry_env_sum_N_i_8_n_0 ;
  wire \det_signal.carry_env_sum_N_i_9_n_0 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_0 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_1 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_2 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_3 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_4 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_5 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_6 ;
  wire \det_signal.carry_env_sum_N_reg_i_3_n_7 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_0 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_1 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_2 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_3 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_4 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_5 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_6 ;
  wire \det_signal.carry_env_sum_N_reg_i_4_n_7 ;
  wire \det_signal.carry_env_sum_W_i_10_n_0 ;
  wire \det_signal.carry_env_sum_W_i_11_n_0 ;
  wire \det_signal.carry_env_sum_W_i_12_n_0 ;
  wire \det_signal.carry_env_sum_W_i_13_n_0 ;
  wire \det_signal.carry_env_sum_W_i_14_n_0 ;
  wire \det_signal.carry_env_sum_W_i_15_n_0 ;
  wire \det_signal.carry_env_sum_W_i_16_n_0 ;
  wire \det_signal.carry_env_sum_W_i_17_n_0 ;
  wire \det_signal.carry_env_sum_W_i_18_n_0 ;
  wire \det_signal.carry_env_sum_W_i_19_n_0 ;
  wire \det_signal.carry_env_sum_W_i_4_n_0 ;
  wire \det_signal.carry_env_sum_W_i_5_n_0 ;
  wire \det_signal.carry_env_sum_W_i_6_n_0 ;
  wire \det_signal.carry_env_sum_W_i_7_n_0 ;
  wire \det_signal.carry_env_sum_W_i_8_n_0 ;
  wire \det_signal.carry_env_sum_W_i_9_n_0 ;
  wire \det_signal.carry_env_sum_W_reg_i_1_n_15 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_0 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_1 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_2 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_3 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_4 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_5 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_6 ;
  wire \det_signal.carry_env_sum_W_reg_i_2_n_7 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_0 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_1 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_2 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_3 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_4 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_5 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_6 ;
  wire \det_signal.carry_env_sum_W_reg_i_3_n_7 ;
  wire \det_signal.carry_env_sum_W_reg_n_0 ;
  wire \det_signal.curr_signal_counter[9]_i_1_n_0 ;
  wire \det_signal.curr_signal_counter[9]_i_3_n_0 ;
  wire \det_signal.curr_signal_sample[0]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[10]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[11]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[12]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[13]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[14]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[15]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[16]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[17]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[18]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[19]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[1]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[20]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[21]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[22]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[23]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[24]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[25]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[26]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[27]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[28]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[29]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[2]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[30]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[31]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[3]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[4]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[5]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[6]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[7]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[8]_i_1_n_0 ;
  wire \det_signal.curr_signal_sample[9]_i_1_n_0 ;
  wire \det_signal.diff_env_E[15]_i_2_n_0 ;
  wire \det_signal.diff_env_E[15]_i_3_n_0 ;
  wire \det_signal.diff_env_E[15]_i_4_n_0 ;
  wire \det_signal.diff_env_E[15]_i_5_n_0 ;
  wire \det_signal.diff_env_E[15]_i_6_n_0 ;
  wire \det_signal.diff_env_E[15]_i_7_n_0 ;
  wire \det_signal.diff_env_E[15]_i_8_n_0 ;
  wire \det_signal.diff_env_E[15]_i_9_n_0 ;
  wire \det_signal.diff_env_E[16]_i_2_n_0 ;
  wire \det_signal.diff_env_E[7]_i_2_n_0 ;
  wire \det_signal.diff_env_E[7]_i_3_n_0 ;
  wire \det_signal.diff_env_E[7]_i_4_n_0 ;
  wire \det_signal.diff_env_E[7]_i_5_n_0 ;
  wire \det_signal.diff_env_E[7]_i_6_n_0 ;
  wire \det_signal.diff_env_E[7]_i_7_n_0 ;
  wire \det_signal.diff_env_E[7]_i_8_n_0 ;
  wire \det_signal.diff_env_E[7]_i_9_n_0 ;
  wire [16:0]\det_signal.diff_env_E_reg0 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_0 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_1 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_2 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_3 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_4 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_5 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_6 ;
  wire \det_signal.diff_env_E_reg[15]_i_1_n_7 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_env_E_reg[7]_i_1_n_7 ;
  wire \det_signal.diff_env_N[15]_i_2_n_0 ;
  wire \det_signal.diff_env_N[15]_i_3_n_0 ;
  wire \det_signal.diff_env_N[15]_i_4_n_0 ;
  wire \det_signal.diff_env_N[15]_i_5_n_0 ;
  wire \det_signal.diff_env_N[15]_i_6_n_0 ;
  wire \det_signal.diff_env_N[15]_i_7_n_0 ;
  wire \det_signal.diff_env_N[15]_i_8_n_0 ;
  wire \det_signal.diff_env_N[15]_i_9_n_0 ;
  wire \det_signal.diff_env_N[16]_i_2_n_0 ;
  wire \det_signal.diff_env_N[7]_i_2_n_0 ;
  wire \det_signal.diff_env_N[7]_i_3_n_0 ;
  wire \det_signal.diff_env_N[7]_i_4_n_0 ;
  wire \det_signal.diff_env_N[7]_i_5_n_0 ;
  wire \det_signal.diff_env_N[7]_i_6_n_0 ;
  wire \det_signal.diff_env_N[7]_i_7_n_0 ;
  wire \det_signal.diff_env_N[7]_i_8_n_0 ;
  wire \det_signal.diff_env_N[7]_i_9_n_0 ;
  wire [16:0]\det_signal.diff_env_N_reg0 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_0 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_1 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_2 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_3 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_4 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_5 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_6 ;
  wire \det_signal.diff_env_N_reg[15]_i_1_n_7 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_env_N_reg[7]_i_1_n_7 ;
  wire \det_signal.diff_env_W[15]_i_2_n_0 ;
  wire \det_signal.diff_env_W[15]_i_3_n_0 ;
  wire \det_signal.diff_env_W[15]_i_4_n_0 ;
  wire \det_signal.diff_env_W[15]_i_5_n_0 ;
  wire \det_signal.diff_env_W[15]_i_6_n_0 ;
  wire \det_signal.diff_env_W[15]_i_7_n_0 ;
  wire \det_signal.diff_env_W[15]_i_8_n_0 ;
  wire \det_signal.diff_env_W[15]_i_9_n_0 ;
  wire \det_signal.diff_env_W[16]_i_2_n_0 ;
  wire \det_signal.diff_env_W[7]_i_2_n_0 ;
  wire \det_signal.diff_env_W[7]_i_3_n_0 ;
  wire \det_signal.diff_env_W[7]_i_4_n_0 ;
  wire \det_signal.diff_env_W[7]_i_5_n_0 ;
  wire \det_signal.diff_env_W[7]_i_6_n_0 ;
  wire \det_signal.diff_env_W[7]_i_7_n_0 ;
  wire \det_signal.diff_env_W[7]_i_8_n_0 ;
  wire \det_signal.diff_env_W[7]_i_9_n_0 ;
  wire [16:0]\det_signal.diff_env_W_reg0 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_0 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_1 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_2 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_3 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_4 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_5 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_6 ;
  wire \det_signal.diff_env_W_reg[15]_i_1_n_7 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_env_W_reg[7]_i_1_n_7 ;
  wire \det_signal.diff_err_EW[12]_i_10_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_11_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_12_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_13_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_14_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_3_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_4_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_5_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_6_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_7_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_8_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_9_n_0 ;
  wire \det_signal.diff_err_EW_reg[12]_i_1_n_4 ;
  wire \det_signal.diff_err_EW_reg[12]_i_1_n_5 ;
  wire \det_signal.diff_err_EW_reg[12]_i_1_n_6 ;
  wire \det_signal.diff_err_EW_reg[12]_i_1_n_7 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_0 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_1 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_2 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_3 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_4 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_5 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_6 ;
  wire \det_signal.diff_err_EW_reg[12]_i_2_n_7 ;
  wire \det_signal.diff_err_NE[12]_i_10_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_11_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_12_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_13_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_14_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_3_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_4_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_5_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_6_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_7_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_8_n_0 ;
  wire \det_signal.diff_err_NE[12]_i_9_n_0 ;
  wire \det_signal.diff_err_NE_reg[12]_i_1_n_4 ;
  wire \det_signal.diff_err_NE_reg[12]_i_1_n_5 ;
  wire \det_signal.diff_err_NE_reg[12]_i_1_n_6 ;
  wire \det_signal.diff_err_NE_reg[12]_i_1_n_7 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_0 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_1 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_2 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_3 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_4 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_5 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_6 ;
  wire \det_signal.diff_err_NE_reg[12]_i_2_n_7 ;
  wire \det_signal.diff_err_NW[12]_i_10_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_11_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_12_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_13_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_14_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_3_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_4_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_5_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_6_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_7_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_8_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_9_n_0 ;
  wire \det_signal.diff_err_NW_reg[12]_i_1_n_4 ;
  wire \det_signal.diff_err_NW_reg[12]_i_1_n_5 ;
  wire \det_signal.diff_err_NW_reg[12]_i_1_n_6 ;
  wire \det_signal.diff_err_NW_reg[12]_i_1_n_7 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_0 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_1 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_2 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_3 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_4 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_5 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_6 ;
  wire \det_signal.diff_err_NW_reg[12]_i_2_n_7 ;
  wire \det_signal.diff_phase_E[15]_i_11_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_12_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_13_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_14_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_15_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_16_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_17_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_18_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_2_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_3_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_4_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_5_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_6_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_7_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_8_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_9_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_10_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_2_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_3_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_4_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_5_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_7_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_8_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_9_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_11_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_12_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_13_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_14_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_15_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_16_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_17_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_2_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_3_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_4_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_5_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_6_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_7_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_8_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_9_n_0 ;
  wire [19:0]\det_signal.diff_phase_E_reg02_out ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_0 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_1 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_10 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_11 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_12 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_13 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_14 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_15 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_2 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_3 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_4 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_5 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_6 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_7 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_8 ;
  wire \det_signal.diff_phase_E_reg[15]_i_10_n_9 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_0 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_1 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_2 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_3 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_4 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_5 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_6 ;
  wire \det_signal.diff_phase_E_reg[15]_i_1_n_7 ;
  wire \det_signal.diff_phase_E_reg[19]_i_1_n_5 ;
  wire \det_signal.diff_phase_E_reg[19]_i_1_n_6 ;
  wire \det_signal.diff_phase_E_reg[19]_i_1_n_7 ;
  wire \det_signal.diff_phase_E_reg[19]_i_6_n_12 ;
  wire \det_signal.diff_phase_E_reg[19]_i_6_n_13 ;
  wire \det_signal.diff_phase_E_reg[19]_i_6_n_14 ;
  wire \det_signal.diff_phase_E_reg[19]_i_6_n_15 ;
  wire \det_signal.diff_phase_E_reg[19]_i_6_n_5 ;
  wire \det_signal.diff_phase_E_reg[19]_i_6_n_6 ;
  wire \det_signal.diff_phase_E_reg[19]_i_6_n_7 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_0 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_1 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_10 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_11 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_12 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_13 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_14 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_15 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_2 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_3 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_4 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_5 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_6 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_7 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_8 ;
  wire \det_signal.diff_phase_E_reg[7]_i_10_n_9 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_7 ;
  wire \det_signal.diff_phase_N[15]_i_11_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_12_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_13_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_14_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_15_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_16_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_17_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_18_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_2_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_3_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_4_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_5_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_6_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_7_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_8_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_9_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_10_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_2_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_3_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_4_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_5_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_7_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_8_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_9_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_11_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_12_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_13_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_14_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_15_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_16_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_17_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_2_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_3_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_4_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_5_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_6_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_7_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_8_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_9_n_0 ;
  wire [19:0]\det_signal.diff_phase_N_reg04_out ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_0 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_1 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_10 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_11 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_12 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_13 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_14 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_15 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_2 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_3 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_4 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_5 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_6 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_7 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_8 ;
  wire \det_signal.diff_phase_N_reg[15]_i_10_n_9 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_0 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_1 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_2 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_3 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_4 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_5 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_6 ;
  wire \det_signal.diff_phase_N_reg[15]_i_1_n_7 ;
  wire \det_signal.diff_phase_N_reg[19]_i_1_n_5 ;
  wire \det_signal.diff_phase_N_reg[19]_i_1_n_6 ;
  wire \det_signal.diff_phase_N_reg[19]_i_1_n_7 ;
  wire \det_signal.diff_phase_N_reg[19]_i_6_n_12 ;
  wire \det_signal.diff_phase_N_reg[19]_i_6_n_13 ;
  wire \det_signal.diff_phase_N_reg[19]_i_6_n_14 ;
  wire \det_signal.diff_phase_N_reg[19]_i_6_n_15 ;
  wire \det_signal.diff_phase_N_reg[19]_i_6_n_5 ;
  wire \det_signal.diff_phase_N_reg[19]_i_6_n_6 ;
  wire \det_signal.diff_phase_N_reg[19]_i_6_n_7 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_0 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_1 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_10 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_11 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_12 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_13 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_14 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_15 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_2 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_3 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_4 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_5 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_6 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_7 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_8 ;
  wire \det_signal.diff_phase_N_reg[7]_i_10_n_9 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_7 ;
  wire \det_signal.diff_phase_W[15]_i_11_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_12_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_13_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_14_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_15_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_16_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_17_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_18_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_2_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_3_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_4_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_5_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_6_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_7_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_8_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_9_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_10_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_2_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_3_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_4_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_5_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_7_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_8_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_9_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_11_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_12_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_13_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_14_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_15_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_16_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_17_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_2_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_3_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_4_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_5_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_6_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_7_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_8_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_9_n_0 ;
  wire [19:0]\det_signal.diff_phase_W_reg00_out ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_0 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_1 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_10 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_11 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_12 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_13 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_14 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_15 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_2 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_3 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_4 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_5 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_6 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_7 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_8 ;
  wire \det_signal.diff_phase_W_reg[15]_i_10_n_9 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_0 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_1 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_2 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_3 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_4 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_5 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_6 ;
  wire \det_signal.diff_phase_W_reg[15]_i_1_n_7 ;
  wire \det_signal.diff_phase_W_reg[19]_i_1_n_5 ;
  wire \det_signal.diff_phase_W_reg[19]_i_1_n_6 ;
  wire \det_signal.diff_phase_W_reg[19]_i_1_n_7 ;
  wire \det_signal.diff_phase_W_reg[19]_i_6_n_12 ;
  wire \det_signal.diff_phase_W_reg[19]_i_6_n_13 ;
  wire \det_signal.diff_phase_W_reg[19]_i_6_n_14 ;
  wire \det_signal.diff_phase_W_reg[19]_i_6_n_15 ;
  wire \det_signal.diff_phase_W_reg[19]_i_6_n_5 ;
  wire \det_signal.diff_phase_W_reg[19]_i_6_n_6 ;
  wire \det_signal.diff_phase_W_reg[19]_i_6_n_7 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_0 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_1 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_10 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_11 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_12 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_13 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_14 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_15 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_2 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_3 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_4 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_5 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_6 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_7 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_8 ;
  wire \det_signal.diff_phase_W_reg[7]_i_10_n_9 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_7 ;
  wire \det_signal.err_count[0]_i_1_n_0 ;
  wire \det_signal.err_count[1]_i_1_n_0 ;
  wire \det_signal.err_count[1]_i_2_n_0 ;
  wire \det_signal.err_ov_i_1_n_0 ;
  wire \det_signal.err_ov_i_2_n_0 ;
  wire \det_signal.err_ov_reg_n_0 ;
  wire \det_signal.hi_env_sum_E[7]_i_2_n_0 ;
  wire \det_signal.hi_env_sum_E_reg[15]_i_1_n_1 ;
  wire \det_signal.hi_env_sum_E_reg[15]_i_1_n_2 ;
  wire \det_signal.hi_env_sum_E_reg[15]_i_1_n_3 ;
  wire \det_signal.hi_env_sum_E_reg[15]_i_1_n_4 ;
  wire \det_signal.hi_env_sum_E_reg[15]_i_1_n_5 ;
  wire \det_signal.hi_env_sum_E_reg[15]_i_1_n_6 ;
  wire \det_signal.hi_env_sum_E_reg[15]_i_1_n_7 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_0 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_1 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_2 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_3 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_4 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_5 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_6 ;
  wire \det_signal.hi_env_sum_E_reg[7]_i_1_n_7 ;
  wire \det_signal.hi_env_sum_N[15]_i_3_n_0 ;
  wire \det_signal.hi_env_sum_N[7]_i_2_n_0 ;
  wire \det_signal.hi_env_sum_N_reg[15]_i_2_n_1 ;
  wire \det_signal.hi_env_sum_N_reg[15]_i_2_n_2 ;
  wire \det_signal.hi_env_sum_N_reg[15]_i_2_n_3 ;
  wire \det_signal.hi_env_sum_N_reg[15]_i_2_n_4 ;
  wire \det_signal.hi_env_sum_N_reg[15]_i_2_n_5 ;
  wire \det_signal.hi_env_sum_N_reg[15]_i_2_n_6 ;
  wire \det_signal.hi_env_sum_N_reg[15]_i_2_n_7 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_0 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_1 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_2 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_3 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_4 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_5 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_6 ;
  wire \det_signal.hi_env_sum_N_reg[7]_i_1_n_7 ;
  wire \det_signal.hi_env_sum_W[7]_i_2_n_0 ;
  wire \det_signal.hi_env_sum_W_reg[15]_i_1_n_1 ;
  wire \det_signal.hi_env_sum_W_reg[15]_i_1_n_2 ;
  wire \det_signal.hi_env_sum_W_reg[15]_i_1_n_3 ;
  wire \det_signal.hi_env_sum_W_reg[15]_i_1_n_4 ;
  wire \det_signal.hi_env_sum_W_reg[15]_i_1_n_5 ;
  wire \det_signal.hi_env_sum_W_reg[15]_i_1_n_6 ;
  wire \det_signal.hi_env_sum_W_reg[15]_i_1_n_7 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_0 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_1 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_2 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_3 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_4 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_5 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_6 ;
  wire \det_signal.hi_env_sum_W_reg[7]_i_1_n_7 ;
  wire \det_signal.lo_env_sum_E[15]_i_10_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_11_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_12_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_13_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_14_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_15_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_16_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_2_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_3_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_4_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_5_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_6_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_7_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_8_n_0 ;
  wire \det_signal.lo_env_sum_E[15]_i_9_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_10_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_11_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_12_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_13_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_14_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_15_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_16_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_17_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_2_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_3_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_4_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_5_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_6_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_7_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_8_n_0 ;
  wire \det_signal.lo_env_sum_E[7]_i_9_n_0 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_1 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_10 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_11 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_12 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_13 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_14 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_15 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_2 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_3 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_4 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_5 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_6 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_7 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_8 ;
  wire \det_signal.lo_env_sum_E_reg[15]_i_1_n_9 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_0 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_1 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_10 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_11 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_12 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_13 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_14 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_15 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_2 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_3 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_4 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_5 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_6 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_7 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_8 ;
  wire \det_signal.lo_env_sum_E_reg[7]_i_1_n_9 ;
  wire \det_signal.lo_env_sum_N[15]_i_10_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_11_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_12_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_13_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_14_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_15_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_16_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_2_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_3_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_4_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_5_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_6_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_7_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_8_n_0 ;
  wire \det_signal.lo_env_sum_N[15]_i_9_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_10_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_11_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_12_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_13_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_14_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_15_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_16_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_17_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_2_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_3_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_4_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_5_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_6_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_7_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_8_n_0 ;
  wire \det_signal.lo_env_sum_N[7]_i_9_n_0 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_1 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_10 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_11 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_12 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_13 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_14 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_15 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_2 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_3 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_4 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_5 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_6 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_7 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_8 ;
  wire \det_signal.lo_env_sum_N_reg[15]_i_1_n_9 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_0 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_1 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_10 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_11 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_12 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_13 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_14 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_15 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_2 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_3 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_4 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_5 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_6 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_7 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_8 ;
  wire \det_signal.lo_env_sum_N_reg[7]_i_1_n_9 ;
  wire \det_signal.lo_env_sum_W[15]_i_10_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_11_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_12_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_13_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_14_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_15_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_16_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_2_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_3_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_4_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_5_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_6_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_7_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_8_n_0 ;
  wire \det_signal.lo_env_sum_W[15]_i_9_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_10_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_11_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_12_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_13_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_14_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_15_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_16_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_17_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_2_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_3_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_4_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_5_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_6_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_7_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_8_n_0 ;
  wire \det_signal.lo_env_sum_W[7]_i_9_n_0 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_1 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_10 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_11 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_12 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_13 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_14 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_15 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_2 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_3 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_4 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_5 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_6 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_7 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_8 ;
  wire \det_signal.lo_env_sum_W_reg[15]_i_1_n_9 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_0 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_1 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_10 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_11 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_12 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_13 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_14 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_15 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_2 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_3 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_4 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_5 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_6 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_7 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_8 ;
  wire \det_signal.lo_env_sum_W_reg[7]_i_1_n_9 ;
  wire \det_signal.max_doa_diff[11]_i_2_n_0 ;
  wire \det_signal.max_doa_diff_reg_n_0_[0] ;
  wire \det_signal.max_doa_diff_reg_n_0_[10] ;
  wire \det_signal.max_doa_diff_reg_n_0_[11] ;
  wire \det_signal.max_doa_diff_reg_n_0_[1] ;
  wire \det_signal.max_doa_diff_reg_n_0_[2] ;
  wire \det_signal.max_doa_diff_reg_n_0_[3] ;
  wire \det_signal.max_doa_diff_reg_n_0_[4] ;
  wire \det_signal.max_doa_diff_reg_n_0_[5] ;
  wire \det_signal.max_doa_diff_reg_n_0_[6] ;
  wire \det_signal.max_doa_diff_reg_n_0_[7] ;
  wire \det_signal.max_doa_diff_reg_n_0_[8] ;
  wire \det_signal.max_doa_diff_reg_n_0_[9] ;
  wire \det_signal.min_env_reg_n_0_[0] ;
  wire \det_signal.min_env_reg_n_0_[10] ;
  wire \det_signal.min_env_reg_n_0_[11] ;
  wire \det_signal.min_env_reg_n_0_[12] ;
  wire \det_signal.min_env_reg_n_0_[13] ;
  wire \det_signal.min_env_reg_n_0_[14] ;
  wire \det_signal.min_env_reg_n_0_[15] ;
  wire \det_signal.min_env_reg_n_0_[1] ;
  wire \det_signal.min_env_reg_n_0_[2] ;
  wire \det_signal.min_env_reg_n_0_[3] ;
  wire \det_signal.min_env_reg_n_0_[4] ;
  wire \det_signal.min_env_reg_n_0_[5] ;
  wire \det_signal.min_env_reg_n_0_[6] ;
  wire \det_signal.min_env_reg_n_0_[7] ;
  wire \det_signal.min_env_reg_n_0_[8] ;
  wire \det_signal.min_env_reg_n_0_[9] ;
  wire \det_signal.proc_signal_i_1_n_0 ;
  wire \det_signal.run_reg[0]__0 ;
  wire \det_signal.run_reg[1]__0 ;
  wire \det_signal.run_reg[2]__0 ;
  wire \det_signal.sample_counter[0]_i_3_n_0 ;
  wire [31:0]\det_signal.sample_counter_reg ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_0 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_1 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_10 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_11 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_12 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_13 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_14 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_15 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_2 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_3 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_4 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_5 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_6 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_7 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_8 ;
  wire \det_signal.sample_counter_reg[0]_i_2_n_9 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_0 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_1 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_10 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_11 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_12 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_13 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_14 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_15 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_2 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_3 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_4 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_5 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_6 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_7 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_8 ;
  wire \det_signal.sample_counter_reg[16]_i_1_n_9 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_1 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_10 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_11 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_12 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_13 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_14 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_15 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_2 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_3 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_4 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_5 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_6 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_7 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_8 ;
  wire \det_signal.sample_counter_reg[24]_i_1_n_9 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_0 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_1 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_10 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_11 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_12 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_13 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_14 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_15 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_2 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_3 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_4 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_5 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_6 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_7 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_8 ;
  wire \det_signal.sample_counter_reg[8]_i_1_n_9 ;
  wire \det_signal.signal_counter_reg_n_0_[0] ;
  wire \det_signal.signal_counter_reg_n_0_[1] ;
  wire \det_signal.signal_counter_reg_n_0_[2] ;
  wire \det_signal.signal_counter_reg_n_0_[3] ;
  wire \det_signal.signal_counter_reg_n_0_[4] ;
  wire \det_signal.signal_counter_reg_n_0_[5] ;
  wire \det_signal.signal_counter_reg_n_0_[6] ;
  wire \det_signal.signal_counter_reg_n_0_[7] ;
  wire \det_signal.signal_counter_reg_n_0_[8] ;
  wire \det_signal.signal_counter_reg_n_0_[9] ;
  wire \det_signal.start_proc_i_1_n_0 ;
  wire \det_signal.valid_count_i_1_n_0 ;
  wire \det_signal.valid_count_i_3_n_0 ;
  wire \det_signal.valid_count_reg_n_0 ;
  (* MARK_DEBUG *) wire [16:0]diff_env_E;
  (* MARK_DEBUG *) wire [16:0]diff_env_N;
  (* MARK_DEBUG *) wire [16:0]diff_env_W;
  wire [12:12]diff_err_EW0;
  wire [12:12]diff_err_NE0;
  wire [12:12]diff_err_NW0;
  (* MARK_DEBUG *) wire [19:0]diff_phase_E;
  (* MARK_DEBUG *) wire [19:0]diff_phase_N;
  (* MARK_DEBUG *) wire [19:0]diff_phase_W;
  (* MARK_DEBUG *) wire [20:0]dsp_phase_E;
  (* MARK_DEBUG *) wire [20:0]dsp_phase_N;
  (* MARK_DEBUG *) wire [20:0]dsp_phase_W;
  (* MARK_DEBUG *) wire [47:0]dsp_sum_E;
  (* MARK_DEBUG *) wire [47:0]dsp_sum_N;
  (* MARK_DEBUG *) wire [47:0]dsp_sum_W;
  (* MARK_DEBUG *) wire [16:0]env_E;
  (* MARK_DEBUG *) wire [16:0]env_N;
  (* MARK_DEBUG *) wire [16:0]env_W;
  wire [11:0]err_EW;
  wire [11:0]err_NE;
  wire [11:0]err_NW;
  (* MARK_DEBUG *) wire [1:0]err_count;
  wire err_count0;
  (* MARK_DEBUG *) wire has_signal;
  wire has_signal0_out;
  wire [15:0]hi_env_sum_E0;
  wire [15:0]hi_env_sum_N0;
  wire [15:0]hi_env_sum_W0;
  wire [0:0]hi_env_sum_W__0;
  wire max_doa_diff;
  wire min_env;
  wire p_0_in8_in;
  wire [16:16]p_1_in1_out;
  wire [16:16]p_1_in3_out;
  wire p_1_in9_in;
  wire [9:0]p_1_in__0;
  wire p_2_in;
  (* MARK_DEBUG *) wire [19:0]phase_E;
  (* MARK_DEBUG *) wire [19:0]phase_N;
  (* MARK_DEBUG *) wire [19:0]phase_W;
  wire [19:0]prev_phase_E;
  wire [19:0]prev_phase_N;
  wire [19:0]prev_phase_W;
  (* MARK_DEBUG *) wire proc_done;
  (* MARK_DEBUG *) wire proc_signal;
  (* MARK_DEBUG *) wire signal_done;
  (* MARK_DEBUG *) wire start_proc;
  wire valid_count6_out;
  wire valid_env;
  wire valid_env0;
  wire valid_err;
  wire valid_err0;
  wire [7:0]\NLW_det_signal.carry_env_sum_E_reg_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.carry_env_sum_E_reg_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_E_reg_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_E_reg_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_N_reg_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.carry_env_sum_N_reg_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_N_reg_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_N_reg_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_W_reg_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.carry_env_sum_W_reg_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_W_reg_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.carry_env_sum_W_reg_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_err_EW_reg[12]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_err_EW_reg[12]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_err_NE_reg[12]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_err_NE_reg[12]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_err_NW_reg[12]_i_1_CO_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_err_NW_reg[12]_i_2_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.diff_phase_E_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_E_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.diff_phase_E_reg[19]_i_6_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_E_reg[19]_i_6_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.diff_phase_N_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_N_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.diff_phase_N_reg[19]_i_6_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_N_reg[19]_i_6_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.diff_phase_W_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_W_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.diff_phase_W_reg[19]_i_6_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_W_reg[19]_i_6_O_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.hi_env_sum_E_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.hi_env_sum_N_reg[15]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.hi_env_sum_W_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.lo_env_sum_E_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.lo_env_sum_N_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.lo_env_sum_W_reg[15]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.sample_counter_reg[24]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h008AFFAA00000000)) 
    \det_signal.acc_reset_i_1 
       (.I0(acc_reset),
        .I1(\det_signal.err_ov_reg_n_0 ),
        .I2(\det_signal.valid_count_reg_n_0 ),
        .I3(err_count0),
        .I4(has_signal),
        .I5(\det_signal.run_reg[2]__0 ),
        .O(\det_signal.acc_reset_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.acc_reset_i_2 
       (.I0(valid_env),
        .I1(valid_err),
        .I2(\det_signal.valid_count_reg_n_0 ),
        .O(err_count0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.acc_reset_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.acc_reset_i_1_n_0 ),
        .Q(acc_reset),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_10 
       (.I0(curr_env_sum_E[9]),
        .I1(env_E[9]),
        .O(\det_signal.carry_env_sum_E_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_11 
       (.I0(curr_env_sum_E[8]),
        .I1(env_E[8]),
        .O(\det_signal.carry_env_sum_E_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_12 
       (.I0(curr_env_sum_E[7]),
        .I1(env_E[7]),
        .O(\det_signal.carry_env_sum_E_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_13 
       (.I0(curr_env_sum_E[6]),
        .I1(env_E[6]),
        .O(\det_signal.carry_env_sum_E_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_14 
       (.I0(curr_env_sum_E[5]),
        .I1(env_E[5]),
        .O(\det_signal.carry_env_sum_E_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_15 
       (.I0(curr_env_sum_E[4]),
        .I1(env_E[4]),
        .O(\det_signal.carry_env_sum_E_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_16 
       (.I0(curr_env_sum_E[3]),
        .I1(env_E[3]),
        .O(\det_signal.carry_env_sum_E_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_17 
       (.I0(curr_env_sum_E[2]),
        .I1(env_E[2]),
        .O(\det_signal.carry_env_sum_E_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_18 
       (.I0(curr_env_sum_E[1]),
        .I1(env_E[1]),
        .O(\det_signal.carry_env_sum_E_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_19 
       (.I0(curr_env_sum_E[0]),
        .I1(env_E[0]),
        .O(\det_signal.carry_env_sum_E_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_4 
       (.I0(curr_env_sum_E[15]),
        .I1(env_E[15]),
        .O(\det_signal.carry_env_sum_E_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_5 
       (.I0(curr_env_sum_E[14]),
        .I1(env_E[14]),
        .O(\det_signal.carry_env_sum_E_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_6 
       (.I0(curr_env_sum_E[13]),
        .I1(env_E[13]),
        .O(\det_signal.carry_env_sum_E_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_7 
       (.I0(curr_env_sum_E[12]),
        .I1(env_E[12]),
        .O(\det_signal.carry_env_sum_E_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_8 
       (.I0(curr_env_sum_E[11]),
        .I1(env_E[11]),
        .O(\det_signal.carry_env_sum_E_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_E_i_9 
       (.I0(curr_env_sum_E[10]),
        .I1(env_E[10]),
        .O(\det_signal.carry_env_sum_E_i_9_n_0 ));
  FDRE \det_signal.carry_env_sum_E_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in1_out),
        .Q(carry_env_sum_E),
        .R(\det_signal.carry_env_sum_N_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_E_reg_i_1 
       (.CI(\det_signal.carry_env_sum_E_reg_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.carry_env_sum_E_reg_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.carry_env_sum_E_reg_i_1_O_UNCONNECTED [7:1],p_1_in1_out}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,env_E[16]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_E_reg_i_2 
       (.CI(\det_signal.carry_env_sum_E_reg_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.carry_env_sum_E_reg_i_2_n_0 ,\det_signal.carry_env_sum_E_reg_i_2_n_1 ,\det_signal.carry_env_sum_E_reg_i_2_n_2 ,\det_signal.carry_env_sum_E_reg_i_2_n_3 ,\det_signal.carry_env_sum_E_reg_i_2_n_4 ,\det_signal.carry_env_sum_E_reg_i_2_n_5 ,\det_signal.carry_env_sum_E_reg_i_2_n_6 ,\det_signal.carry_env_sum_E_reg_i_2_n_7 }),
        .DI(curr_env_sum_E[15:8]),
        .O(\NLW_det_signal.carry_env_sum_E_reg_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.carry_env_sum_E_i_4_n_0 ,\det_signal.carry_env_sum_E_i_5_n_0 ,\det_signal.carry_env_sum_E_i_6_n_0 ,\det_signal.carry_env_sum_E_i_7_n_0 ,\det_signal.carry_env_sum_E_i_8_n_0 ,\det_signal.carry_env_sum_E_i_9_n_0 ,\det_signal.carry_env_sum_E_i_10_n_0 ,\det_signal.carry_env_sum_E_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_E_reg_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.carry_env_sum_E_reg_i_3_n_0 ,\det_signal.carry_env_sum_E_reg_i_3_n_1 ,\det_signal.carry_env_sum_E_reg_i_3_n_2 ,\det_signal.carry_env_sum_E_reg_i_3_n_3 ,\det_signal.carry_env_sum_E_reg_i_3_n_4 ,\det_signal.carry_env_sum_E_reg_i_3_n_5 ,\det_signal.carry_env_sum_E_reg_i_3_n_6 ,\det_signal.carry_env_sum_E_reg_i_3_n_7 }),
        .DI(curr_env_sum_E[7:0]),
        .O(\NLW_det_signal.carry_env_sum_E_reg_i_3_O_UNCONNECTED [7:0]),
        .S({\det_signal.carry_env_sum_E_i_12_n_0 ,\det_signal.carry_env_sum_E_i_13_n_0 ,\det_signal.carry_env_sum_E_i_14_n_0 ,\det_signal.carry_env_sum_E_i_15_n_0 ,\det_signal.carry_env_sum_E_i_16_n_0 ,\det_signal.carry_env_sum_E_i_17_n_0 ,\det_signal.carry_env_sum_E_i_18_n_0 ,\det_signal.carry_env_sum_E_i_19_n_0 }));
  LUT2 #(
    .INIT(4'hB)) 
    \det_signal.carry_env_sum_N_i_1 
       (.I0(acc_reset),
        .I1(has_signal),
        .O(\det_signal.carry_env_sum_N_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_10 
       (.I0(curr_env_sum_N[10]),
        .I1(env_N[10]),
        .O(\det_signal.carry_env_sum_N_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_11 
       (.I0(curr_env_sum_N[9]),
        .I1(env_N[9]),
        .O(\det_signal.carry_env_sum_N_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_12 
       (.I0(curr_env_sum_N[8]),
        .I1(env_N[8]),
        .O(\det_signal.carry_env_sum_N_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_13 
       (.I0(curr_env_sum_N[7]),
        .I1(env_N[7]),
        .O(\det_signal.carry_env_sum_N_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_14 
       (.I0(curr_env_sum_N[6]),
        .I1(env_N[6]),
        .O(\det_signal.carry_env_sum_N_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_15 
       (.I0(curr_env_sum_N[5]),
        .I1(env_N[5]),
        .O(\det_signal.carry_env_sum_N_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_16 
       (.I0(curr_env_sum_N[4]),
        .I1(env_N[4]),
        .O(\det_signal.carry_env_sum_N_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_17 
       (.I0(curr_env_sum_N[3]),
        .I1(env_N[3]),
        .O(\det_signal.carry_env_sum_N_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_18 
       (.I0(curr_env_sum_N[2]),
        .I1(env_N[2]),
        .O(\det_signal.carry_env_sum_N_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_19 
       (.I0(curr_env_sum_N[1]),
        .I1(env_N[1]),
        .O(\det_signal.carry_env_sum_N_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_20 
       (.I0(curr_env_sum_N[0]),
        .I1(env_N[0]),
        .O(\det_signal.carry_env_sum_N_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_5 
       (.I0(curr_env_sum_N[15]),
        .I1(env_N[15]),
        .O(\det_signal.carry_env_sum_N_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_6 
       (.I0(curr_env_sum_N[14]),
        .I1(env_N[14]),
        .O(\det_signal.carry_env_sum_N_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_7 
       (.I0(curr_env_sum_N[13]),
        .I1(env_N[13]),
        .O(\det_signal.carry_env_sum_N_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_8 
       (.I0(curr_env_sum_N[12]),
        .I1(env_N[12]),
        .O(\det_signal.carry_env_sum_N_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_N_i_9 
       (.I0(curr_env_sum_N[11]),
        .I1(env_N[11]),
        .O(\det_signal.carry_env_sum_N_i_9_n_0 ));
  FDRE \det_signal.carry_env_sum_N_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in3_out),
        .Q(carry_env_sum_N),
        .R(\det_signal.carry_env_sum_N_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_N_reg_i_2 
       (.CI(\det_signal.carry_env_sum_N_reg_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.carry_env_sum_N_reg_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.carry_env_sum_N_reg_i_2_O_UNCONNECTED [7:1],p_1_in3_out}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,env_N[16]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_N_reg_i_3 
       (.CI(\det_signal.carry_env_sum_N_reg_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.carry_env_sum_N_reg_i_3_n_0 ,\det_signal.carry_env_sum_N_reg_i_3_n_1 ,\det_signal.carry_env_sum_N_reg_i_3_n_2 ,\det_signal.carry_env_sum_N_reg_i_3_n_3 ,\det_signal.carry_env_sum_N_reg_i_3_n_4 ,\det_signal.carry_env_sum_N_reg_i_3_n_5 ,\det_signal.carry_env_sum_N_reg_i_3_n_6 ,\det_signal.carry_env_sum_N_reg_i_3_n_7 }),
        .DI(curr_env_sum_N[15:8]),
        .O(\NLW_det_signal.carry_env_sum_N_reg_i_3_O_UNCONNECTED [7:0]),
        .S({\det_signal.carry_env_sum_N_i_5_n_0 ,\det_signal.carry_env_sum_N_i_6_n_0 ,\det_signal.carry_env_sum_N_i_7_n_0 ,\det_signal.carry_env_sum_N_i_8_n_0 ,\det_signal.carry_env_sum_N_i_9_n_0 ,\det_signal.carry_env_sum_N_i_10_n_0 ,\det_signal.carry_env_sum_N_i_11_n_0 ,\det_signal.carry_env_sum_N_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_N_reg_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.carry_env_sum_N_reg_i_4_n_0 ,\det_signal.carry_env_sum_N_reg_i_4_n_1 ,\det_signal.carry_env_sum_N_reg_i_4_n_2 ,\det_signal.carry_env_sum_N_reg_i_4_n_3 ,\det_signal.carry_env_sum_N_reg_i_4_n_4 ,\det_signal.carry_env_sum_N_reg_i_4_n_5 ,\det_signal.carry_env_sum_N_reg_i_4_n_6 ,\det_signal.carry_env_sum_N_reg_i_4_n_7 }),
        .DI(curr_env_sum_N[7:0]),
        .O(\NLW_det_signal.carry_env_sum_N_reg_i_4_O_UNCONNECTED [7:0]),
        .S({\det_signal.carry_env_sum_N_i_13_n_0 ,\det_signal.carry_env_sum_N_i_14_n_0 ,\det_signal.carry_env_sum_N_i_15_n_0 ,\det_signal.carry_env_sum_N_i_16_n_0 ,\det_signal.carry_env_sum_N_i_17_n_0 ,\det_signal.carry_env_sum_N_i_18_n_0 ,\det_signal.carry_env_sum_N_i_19_n_0 ,\det_signal.carry_env_sum_N_i_20_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_10 
       (.I0(curr_env_sum_W[9]),
        .I1(env_W[9]),
        .O(\det_signal.carry_env_sum_W_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_11 
       (.I0(curr_env_sum_W[8]),
        .I1(env_W[8]),
        .O(\det_signal.carry_env_sum_W_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_12 
       (.I0(curr_env_sum_W[7]),
        .I1(env_W[7]),
        .O(\det_signal.carry_env_sum_W_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_13 
       (.I0(curr_env_sum_W[6]),
        .I1(env_W[6]),
        .O(\det_signal.carry_env_sum_W_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_14 
       (.I0(curr_env_sum_W[5]),
        .I1(env_W[5]),
        .O(\det_signal.carry_env_sum_W_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_15 
       (.I0(curr_env_sum_W[4]),
        .I1(env_W[4]),
        .O(\det_signal.carry_env_sum_W_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_16 
       (.I0(curr_env_sum_W[3]),
        .I1(env_W[3]),
        .O(\det_signal.carry_env_sum_W_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_17 
       (.I0(curr_env_sum_W[2]),
        .I1(env_W[2]),
        .O(\det_signal.carry_env_sum_W_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_18 
       (.I0(curr_env_sum_W[1]),
        .I1(env_W[1]),
        .O(\det_signal.carry_env_sum_W_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_19 
       (.I0(curr_env_sum_W[0]),
        .I1(env_W[0]),
        .O(\det_signal.carry_env_sum_W_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_4 
       (.I0(curr_env_sum_W[15]),
        .I1(env_W[15]),
        .O(\det_signal.carry_env_sum_W_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_5 
       (.I0(curr_env_sum_W[14]),
        .I1(env_W[14]),
        .O(\det_signal.carry_env_sum_W_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_6 
       (.I0(curr_env_sum_W[13]),
        .I1(env_W[13]),
        .O(\det_signal.carry_env_sum_W_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_7 
       (.I0(curr_env_sum_W[12]),
        .I1(env_W[12]),
        .O(\det_signal.carry_env_sum_W_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_8 
       (.I0(curr_env_sum_W[11]),
        .I1(env_W[11]),
        .O(\det_signal.carry_env_sum_W_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.carry_env_sum_W_i_9 
       (.I0(curr_env_sum_W[10]),
        .I1(env_W[10]),
        .O(\det_signal.carry_env_sum_W_i_9_n_0 ));
  FDRE \det_signal.carry_env_sum_W_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.carry_env_sum_W_reg_i_1_n_15 ),
        .Q(\det_signal.carry_env_sum_W_reg_n_0 ),
        .R(\det_signal.carry_env_sum_N_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_W_reg_i_1 
       (.CI(\det_signal.carry_env_sum_W_reg_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.carry_env_sum_W_reg_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.carry_env_sum_W_reg_i_1_O_UNCONNECTED [7:1],\det_signal.carry_env_sum_W_reg_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,env_W[16]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_W_reg_i_2 
       (.CI(\det_signal.carry_env_sum_W_reg_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.carry_env_sum_W_reg_i_2_n_0 ,\det_signal.carry_env_sum_W_reg_i_2_n_1 ,\det_signal.carry_env_sum_W_reg_i_2_n_2 ,\det_signal.carry_env_sum_W_reg_i_2_n_3 ,\det_signal.carry_env_sum_W_reg_i_2_n_4 ,\det_signal.carry_env_sum_W_reg_i_2_n_5 ,\det_signal.carry_env_sum_W_reg_i_2_n_6 ,\det_signal.carry_env_sum_W_reg_i_2_n_7 }),
        .DI(curr_env_sum_W[15:8]),
        .O(\NLW_det_signal.carry_env_sum_W_reg_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.carry_env_sum_W_i_4_n_0 ,\det_signal.carry_env_sum_W_i_5_n_0 ,\det_signal.carry_env_sum_W_i_6_n_0 ,\det_signal.carry_env_sum_W_i_7_n_0 ,\det_signal.carry_env_sum_W_i_8_n_0 ,\det_signal.carry_env_sum_W_i_9_n_0 ,\det_signal.carry_env_sum_W_i_10_n_0 ,\det_signal.carry_env_sum_W_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.carry_env_sum_W_reg_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.carry_env_sum_W_reg_i_3_n_0 ,\det_signal.carry_env_sum_W_reg_i_3_n_1 ,\det_signal.carry_env_sum_W_reg_i_3_n_2 ,\det_signal.carry_env_sum_W_reg_i_3_n_3 ,\det_signal.carry_env_sum_W_reg_i_3_n_4 ,\det_signal.carry_env_sum_W_reg_i_3_n_5 ,\det_signal.carry_env_sum_W_reg_i_3_n_6 ,\det_signal.carry_env_sum_W_reg_i_3_n_7 }),
        .DI(curr_env_sum_W[7:0]),
        .O(\NLW_det_signal.carry_env_sum_W_reg_i_3_O_UNCONNECTED [7:0]),
        .S({\det_signal.carry_env_sum_W_i_12_n_0 ,\det_signal.carry_env_sum_W_i_13_n_0 ,\det_signal.carry_env_sum_W_i_14_n_0 ,\det_signal.carry_env_sum_W_i_15_n_0 ,\det_signal.carry_env_sum_W_i_16_n_0 ,\det_signal.carry_env_sum_W_i_17_n_0 ,\det_signal.carry_env_sum_W_i_18_n_0 ,\det_signal.carry_env_sum_W_i_19_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.curr_signal_counter[0]_i_1 
       (.I0(curr_signal_counter[0]),
        .O(p_1_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.curr_signal_counter[1]_i_1 
       (.I0(curr_signal_counter[0]),
        .I1(curr_signal_counter[1]),
        .O(p_1_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \det_signal.curr_signal_counter[2]_i_1 
       (.I0(curr_signal_counter[1]),
        .I1(curr_signal_counter[0]),
        .I2(curr_signal_counter[2]),
        .O(p_1_in__0[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \det_signal.curr_signal_counter[3]_i_1 
       (.I0(curr_signal_counter[2]),
        .I1(curr_signal_counter[0]),
        .I2(curr_signal_counter[1]),
        .I3(curr_signal_counter[3]),
        .O(p_1_in__0[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \det_signal.curr_signal_counter[4]_i_1 
       (.I0(curr_signal_counter[3]),
        .I1(curr_signal_counter[1]),
        .I2(curr_signal_counter[0]),
        .I3(curr_signal_counter[2]),
        .I4(curr_signal_counter[4]),
        .O(p_1_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \det_signal.curr_signal_counter[5]_i_1 
       (.I0(curr_signal_counter[4]),
        .I1(curr_signal_counter[2]),
        .I2(curr_signal_counter[0]),
        .I3(curr_signal_counter[1]),
        .I4(curr_signal_counter[3]),
        .I5(curr_signal_counter[5]),
        .O(p_1_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.curr_signal_counter[6]_i_1 
       (.I0(\det_signal.curr_signal_counter[9]_i_3_n_0 ),
        .I1(curr_signal_counter[6]),
        .O(p_1_in__0[6]));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.curr_signal_counter[7]_i_1 
       (.I0(curr_signal_counter[6]),
        .I1(\det_signal.curr_signal_counter[9]_i_3_n_0 ),
        .I2(curr_signal_counter[7]),
        .O(p_1_in__0[7]));
  LUT4 #(
    .INIT(16'hDF20)) 
    \det_signal.curr_signal_counter[8]_i_1 
       (.I0(curr_signal_counter[7]),
        .I1(\det_signal.curr_signal_counter[9]_i_3_n_0 ),
        .I2(curr_signal_counter[6]),
        .I3(curr_signal_counter[8]),
        .O(p_1_in__0[8]));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.curr_signal_counter[9]_i_1 
       (.I0(has_signal),
        .O(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \det_signal.curr_signal_counter[9]_i_2 
       (.I0(curr_signal_counter[8]),
        .I1(curr_signal_counter[6]),
        .I2(\det_signal.curr_signal_counter[9]_i_3_n_0 ),
        .I3(curr_signal_counter[7]),
        .I4(curr_signal_counter[9]),
        .O(p_1_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \det_signal.curr_signal_counter[9]_i_3 
       (.I0(curr_signal_counter[4]),
        .I1(curr_signal_counter[2]),
        .I2(curr_signal_counter[0]),
        .I3(curr_signal_counter[1]),
        .I4(curr_signal_counter[3]),
        .I5(curr_signal_counter[5]),
        .O(\det_signal.curr_signal_counter[9]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[0]),
        .Q(curr_signal_counter[0]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[1]),
        .Q(curr_signal_counter[1]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(curr_signal_counter[2]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[3]),
        .Q(curr_signal_counter[3]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[4]),
        .Q(curr_signal_counter[4]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[5]),
        .Q(curr_signal_counter[5]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[6]),
        .Q(curr_signal_counter[6]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[7]),
        .Q(curr_signal_counter[7]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[8]),
        .Q(curr_signal_counter[8]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.curr_signal_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[9]),
        .Q(curr_signal_counter[9]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[0]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [0]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[0]),
        .O(\det_signal.curr_signal_sample[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[10]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [10]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[10]),
        .O(\det_signal.curr_signal_sample[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[11]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [11]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[11]),
        .O(\det_signal.curr_signal_sample[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[12]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [12]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[12]),
        .O(\det_signal.curr_signal_sample[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[13]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [13]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[13]),
        .O(\det_signal.curr_signal_sample[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[14]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [14]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[14]),
        .O(\det_signal.curr_signal_sample[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[15]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [15]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[15]),
        .O(\det_signal.curr_signal_sample[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[16]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [16]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[16]),
        .O(\det_signal.curr_signal_sample[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[17]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [17]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[17]),
        .O(\det_signal.curr_signal_sample[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[18]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [18]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[18]),
        .O(\det_signal.curr_signal_sample[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[19]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [19]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[19]),
        .O(\det_signal.curr_signal_sample[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[1]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [1]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[1]),
        .O(\det_signal.curr_signal_sample[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[20]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [20]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[20]),
        .O(\det_signal.curr_signal_sample[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[21]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [21]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[21]),
        .O(\det_signal.curr_signal_sample[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[22]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [22]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[22]),
        .O(\det_signal.curr_signal_sample[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[23]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [23]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[23]),
        .O(\det_signal.curr_signal_sample[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[24]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [24]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[24]),
        .O(\det_signal.curr_signal_sample[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[25]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [25]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[25]),
        .O(\det_signal.curr_signal_sample[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[26]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [26]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[26]),
        .O(\det_signal.curr_signal_sample[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[27]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [27]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[27]),
        .O(\det_signal.curr_signal_sample[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[28]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [28]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[28]),
        .O(\det_signal.curr_signal_sample[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[29]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [29]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[29]),
        .O(\det_signal.curr_signal_sample[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[2]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [2]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[2]),
        .O(\det_signal.curr_signal_sample[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[30]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [30]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[30]),
        .O(\det_signal.curr_signal_sample[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[31]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [31]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[31]),
        .O(\det_signal.curr_signal_sample[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[3]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [3]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[3]),
        .O(\det_signal.curr_signal_sample[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[4]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [4]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[4]),
        .O(\det_signal.curr_signal_sample[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[5]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [5]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[5]),
        .O(\det_signal.curr_signal_sample[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[6]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [6]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[6]),
        .O(\det_signal.curr_signal_sample[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[7]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [7]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[7]),
        .O(\det_signal.curr_signal_sample[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[8]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [8]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[8]),
        .O(\det_signal.curr_signal_sample[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFF40000000)) 
    \det_signal.curr_signal_sample[9]_i_1 
       (.I0(has_signal),
        .I1(\det_signal.sample_counter_reg [9]),
        .I2(valid_env),
        .I3(valid_err),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .I5(curr_signal_sample[9]),
        .O(\det_signal.curr_signal_sample[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[0]_i_1_n_0 ),
        .Q(curr_signal_sample[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[10]_i_1_n_0 ),
        .Q(curr_signal_sample[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[11]_i_1_n_0 ),
        .Q(curr_signal_sample[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[12]_i_1_n_0 ),
        .Q(curr_signal_sample[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[13]_i_1_n_0 ),
        .Q(curr_signal_sample[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[14]_i_1_n_0 ),
        .Q(curr_signal_sample[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[15]_i_1_n_0 ),
        .Q(curr_signal_sample[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[16]_i_1_n_0 ),
        .Q(curr_signal_sample[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[17]_i_1_n_0 ),
        .Q(curr_signal_sample[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[18]_i_1_n_0 ),
        .Q(curr_signal_sample[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[19]_i_1_n_0 ),
        .Q(curr_signal_sample[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[1]_i_1_n_0 ),
        .Q(curr_signal_sample[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[20] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[20]_i_1_n_0 ),
        .Q(curr_signal_sample[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[21] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[21]_i_1_n_0 ),
        .Q(curr_signal_sample[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[22] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[22]_i_1_n_0 ),
        .Q(curr_signal_sample[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[23] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[23]_i_1_n_0 ),
        .Q(curr_signal_sample[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[24] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[24]_i_1_n_0 ),
        .Q(curr_signal_sample[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[25] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[25]_i_1_n_0 ),
        .Q(curr_signal_sample[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[26] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[26]_i_1_n_0 ),
        .Q(curr_signal_sample[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[27] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[27]_i_1_n_0 ),
        .Q(curr_signal_sample[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[28] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[28]_i_1_n_0 ),
        .Q(curr_signal_sample[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[29] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[29]_i_1_n_0 ),
        .Q(curr_signal_sample[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[2]_i_1_n_0 ),
        .Q(curr_signal_sample[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[30] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[30]_i_1_n_0 ),
        .Q(curr_signal_sample[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[31] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[31]_i_1_n_0 ),
        .Q(curr_signal_sample[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[3]_i_1_n_0 ),
        .Q(curr_signal_sample[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[4]_i_1_n_0 ),
        .Q(curr_signal_sample[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[5]_i_1_n_0 ),
        .Q(curr_signal_sample[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[6]_i_1_n_0 ),
        .Q(curr_signal_sample[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[7]_i_1_n_0 ),
        .Q(curr_signal_sample[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[8]_i_1_n_0 ),
        .Q(curr_signal_sample[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.curr_signal_sample_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[2]__0 ),
        .D(\det_signal.curr_signal_sample[9]_i_1_n_0 ),
        .Q(curr_signal_sample[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_2 
       (.I0(\det_signal.min_env_reg_n_0_[15] ),
        .I1(env_E[15]),
        .O(\det_signal.diff_env_E[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_3 
       (.I0(\det_signal.min_env_reg_n_0_[14] ),
        .I1(env_E[14]),
        .O(\det_signal.diff_env_E[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[13] ),
        .I1(env_E[13]),
        .O(\det_signal.diff_env_E[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[12] ),
        .I1(env_E[12]),
        .O(\det_signal.diff_env_E[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[11] ),
        .I1(env_E[11]),
        .O(\det_signal.diff_env_E[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[10] ),
        .I1(env_E[10]),
        .O(\det_signal.diff_env_E[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[9] ),
        .I1(env_E[9]),
        .O(\det_signal.diff_env_E[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[15]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[8] ),
        .I1(env_E[8]),
        .O(\det_signal.diff_env_E[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_2 
       (.I0(env_E[16]),
        .O(\det_signal.diff_env_E[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_2 
       (.I0(\det_signal.min_env_reg_n_0_[7] ),
        .I1(env_E[7]),
        .O(\det_signal.diff_env_E[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_3 
       (.I0(\det_signal.min_env_reg_n_0_[6] ),
        .I1(env_E[6]),
        .O(\det_signal.diff_env_E[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[5] ),
        .I1(env_E[5]),
        .O(\det_signal.diff_env_E[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[4] ),
        .I1(env_E[4]),
        .O(\det_signal.diff_env_E[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[3] ),
        .I1(env_E[3]),
        .O(\det_signal.diff_env_E[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[2] ),
        .I1(env_E[2]),
        .O(\det_signal.diff_env_E[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[1] ),
        .I1(env_E[1]),
        .O(\det_signal.diff_env_E[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[7]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[0] ),
        .I1(env_E[0]),
        .O(\det_signal.diff_env_E[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [0]),
        .Q(diff_env_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [10]),
        .Q(diff_env_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [11]),
        .Q(diff_env_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [12]),
        .Q(diff_env_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [13]),
        .Q(diff_env_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [14]),
        .Q(diff_env_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [15]),
        .Q(diff_env_E[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[15]_i_1 
       (.CI(\det_signal.diff_env_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[15]_i_1_n_0 ,\det_signal.diff_env_E_reg[15]_i_1_n_1 ,\det_signal.diff_env_E_reg[15]_i_1_n_2 ,\det_signal.diff_env_E_reg[15]_i_1_n_3 ,\det_signal.diff_env_E_reg[15]_i_1_n_4 ,\det_signal.diff_env_E_reg[15]_i_1_n_5 ,\det_signal.diff_env_E_reg[15]_i_1_n_6 ,\det_signal.diff_env_E_reg[15]_i_1_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[15] ,\det_signal.min_env_reg_n_0_[14] ,\det_signal.min_env_reg_n_0_[13] ,\det_signal.min_env_reg_n_0_[12] ,\det_signal.min_env_reg_n_0_[11] ,\det_signal.min_env_reg_n_0_[10] ,\det_signal.min_env_reg_n_0_[9] ,\det_signal.min_env_reg_n_0_[8] }),
        .O(\det_signal.diff_env_E_reg0 [15:8]),
        .S({\det_signal.diff_env_E[15]_i_2_n_0 ,\det_signal.diff_env_E[15]_i_3_n_0 ,\det_signal.diff_env_E[15]_i_4_n_0 ,\det_signal.diff_env_E[15]_i_5_n_0 ,\det_signal.diff_env_E[15]_i_6_n_0 ,\det_signal.diff_env_E[15]_i_7_n_0 ,\det_signal.diff_env_E[15]_i_8_n_0 ,\det_signal.diff_env_E[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [16]),
        .Q(diff_env_E[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_1 
       (.CI(\det_signal.diff_env_E_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED [7:1],\det_signal.diff_env_E_reg0 [16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.diff_env_E[16]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [1]),
        .Q(diff_env_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [2]),
        .Q(diff_env_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [3]),
        .Q(diff_env_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [4]),
        .Q(diff_env_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [5]),
        .Q(diff_env_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [6]),
        .Q(diff_env_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [7]),
        .Q(diff_env_E[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[7]_i_1_n_0 ,\det_signal.diff_env_E_reg[7]_i_1_n_1 ,\det_signal.diff_env_E_reg[7]_i_1_n_2 ,\det_signal.diff_env_E_reg[7]_i_1_n_3 ,\det_signal.diff_env_E_reg[7]_i_1_n_4 ,\det_signal.diff_env_E_reg[7]_i_1_n_5 ,\det_signal.diff_env_E_reg[7]_i_1_n_6 ,\det_signal.diff_env_E_reg[7]_i_1_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[7] ,\det_signal.min_env_reg_n_0_[6] ,\det_signal.min_env_reg_n_0_[5] ,\det_signal.min_env_reg_n_0_[4] ,\det_signal.min_env_reg_n_0_[3] ,\det_signal.min_env_reg_n_0_[2] ,\det_signal.min_env_reg_n_0_[1] ,\det_signal.min_env_reg_n_0_[0] }),
        .O(\det_signal.diff_env_E_reg0 [7:0]),
        .S({\det_signal.diff_env_E[7]_i_2_n_0 ,\det_signal.diff_env_E[7]_i_3_n_0 ,\det_signal.diff_env_E[7]_i_4_n_0 ,\det_signal.diff_env_E[7]_i_5_n_0 ,\det_signal.diff_env_E[7]_i_6_n_0 ,\det_signal.diff_env_E[7]_i_7_n_0 ,\det_signal.diff_env_E[7]_i_8_n_0 ,\det_signal.diff_env_E[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [8]),
        .Q(diff_env_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_E_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_E_reg0 [9]),
        .Q(diff_env_E[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_2 
       (.I0(\det_signal.min_env_reg_n_0_[15] ),
        .I1(env_N[15]),
        .O(\det_signal.diff_env_N[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_3 
       (.I0(\det_signal.min_env_reg_n_0_[14] ),
        .I1(env_N[14]),
        .O(\det_signal.diff_env_N[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[13] ),
        .I1(env_N[13]),
        .O(\det_signal.diff_env_N[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[12] ),
        .I1(env_N[12]),
        .O(\det_signal.diff_env_N[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[11] ),
        .I1(env_N[11]),
        .O(\det_signal.diff_env_N[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[10] ),
        .I1(env_N[10]),
        .O(\det_signal.diff_env_N[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[9] ),
        .I1(env_N[9]),
        .O(\det_signal.diff_env_N[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[15]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[8] ),
        .I1(env_N[8]),
        .O(\det_signal.diff_env_N[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_2 
       (.I0(env_N[16]),
        .O(\det_signal.diff_env_N[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_2 
       (.I0(\det_signal.min_env_reg_n_0_[7] ),
        .I1(env_N[7]),
        .O(\det_signal.diff_env_N[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_3 
       (.I0(\det_signal.min_env_reg_n_0_[6] ),
        .I1(env_N[6]),
        .O(\det_signal.diff_env_N[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[5] ),
        .I1(env_N[5]),
        .O(\det_signal.diff_env_N[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[4] ),
        .I1(env_N[4]),
        .O(\det_signal.diff_env_N[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[3] ),
        .I1(env_N[3]),
        .O(\det_signal.diff_env_N[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[2] ),
        .I1(env_N[2]),
        .O(\det_signal.diff_env_N[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[1] ),
        .I1(env_N[1]),
        .O(\det_signal.diff_env_N[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[7]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[0] ),
        .I1(env_N[0]),
        .O(\det_signal.diff_env_N[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [0]),
        .Q(diff_env_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [10]),
        .Q(diff_env_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [11]),
        .Q(diff_env_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [12]),
        .Q(diff_env_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [13]),
        .Q(diff_env_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [14]),
        .Q(diff_env_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [15]),
        .Q(diff_env_N[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[15]_i_1 
       (.CI(\det_signal.diff_env_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[15]_i_1_n_0 ,\det_signal.diff_env_N_reg[15]_i_1_n_1 ,\det_signal.diff_env_N_reg[15]_i_1_n_2 ,\det_signal.diff_env_N_reg[15]_i_1_n_3 ,\det_signal.diff_env_N_reg[15]_i_1_n_4 ,\det_signal.diff_env_N_reg[15]_i_1_n_5 ,\det_signal.diff_env_N_reg[15]_i_1_n_6 ,\det_signal.diff_env_N_reg[15]_i_1_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[15] ,\det_signal.min_env_reg_n_0_[14] ,\det_signal.min_env_reg_n_0_[13] ,\det_signal.min_env_reg_n_0_[12] ,\det_signal.min_env_reg_n_0_[11] ,\det_signal.min_env_reg_n_0_[10] ,\det_signal.min_env_reg_n_0_[9] ,\det_signal.min_env_reg_n_0_[8] }),
        .O(\det_signal.diff_env_N_reg0 [15:8]),
        .S({\det_signal.diff_env_N[15]_i_2_n_0 ,\det_signal.diff_env_N[15]_i_3_n_0 ,\det_signal.diff_env_N[15]_i_4_n_0 ,\det_signal.diff_env_N[15]_i_5_n_0 ,\det_signal.diff_env_N[15]_i_6_n_0 ,\det_signal.diff_env_N[15]_i_7_n_0 ,\det_signal.diff_env_N[15]_i_8_n_0 ,\det_signal.diff_env_N[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [16]),
        .Q(diff_env_N[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_1 
       (.CI(\det_signal.diff_env_N_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED [7:1],\det_signal.diff_env_N_reg0 [16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.diff_env_N[16]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [1]),
        .Q(diff_env_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [2]),
        .Q(diff_env_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [3]),
        .Q(diff_env_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [4]),
        .Q(diff_env_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [5]),
        .Q(diff_env_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [6]),
        .Q(diff_env_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [7]),
        .Q(diff_env_N[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[7]_i_1_n_0 ,\det_signal.diff_env_N_reg[7]_i_1_n_1 ,\det_signal.diff_env_N_reg[7]_i_1_n_2 ,\det_signal.diff_env_N_reg[7]_i_1_n_3 ,\det_signal.diff_env_N_reg[7]_i_1_n_4 ,\det_signal.diff_env_N_reg[7]_i_1_n_5 ,\det_signal.diff_env_N_reg[7]_i_1_n_6 ,\det_signal.diff_env_N_reg[7]_i_1_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[7] ,\det_signal.min_env_reg_n_0_[6] ,\det_signal.min_env_reg_n_0_[5] ,\det_signal.min_env_reg_n_0_[4] ,\det_signal.min_env_reg_n_0_[3] ,\det_signal.min_env_reg_n_0_[2] ,\det_signal.min_env_reg_n_0_[1] ,\det_signal.min_env_reg_n_0_[0] }),
        .O(\det_signal.diff_env_N_reg0 [7:0]),
        .S({\det_signal.diff_env_N[7]_i_2_n_0 ,\det_signal.diff_env_N[7]_i_3_n_0 ,\det_signal.diff_env_N[7]_i_4_n_0 ,\det_signal.diff_env_N[7]_i_5_n_0 ,\det_signal.diff_env_N[7]_i_6_n_0 ,\det_signal.diff_env_N[7]_i_7_n_0 ,\det_signal.diff_env_N[7]_i_8_n_0 ,\det_signal.diff_env_N[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [8]),
        .Q(diff_env_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_N_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_N_reg0 [9]),
        .Q(diff_env_N[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_2 
       (.I0(\det_signal.min_env_reg_n_0_[15] ),
        .I1(env_W[15]),
        .O(\det_signal.diff_env_W[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_3 
       (.I0(\det_signal.min_env_reg_n_0_[14] ),
        .I1(env_W[14]),
        .O(\det_signal.diff_env_W[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[13] ),
        .I1(env_W[13]),
        .O(\det_signal.diff_env_W[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[12] ),
        .I1(env_W[12]),
        .O(\det_signal.diff_env_W[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[11] ),
        .I1(env_W[11]),
        .O(\det_signal.diff_env_W[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[10] ),
        .I1(env_W[10]),
        .O(\det_signal.diff_env_W[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[9] ),
        .I1(env_W[9]),
        .O(\det_signal.diff_env_W[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[15]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[8] ),
        .I1(env_W[8]),
        .O(\det_signal.diff_env_W[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_2 
       (.I0(env_W[16]),
        .O(\det_signal.diff_env_W[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_2 
       (.I0(\det_signal.min_env_reg_n_0_[7] ),
        .I1(env_W[7]),
        .O(\det_signal.diff_env_W[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_3 
       (.I0(\det_signal.min_env_reg_n_0_[6] ),
        .I1(env_W[6]),
        .O(\det_signal.diff_env_W[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[5] ),
        .I1(env_W[5]),
        .O(\det_signal.diff_env_W[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[4] ),
        .I1(env_W[4]),
        .O(\det_signal.diff_env_W[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[3] ),
        .I1(env_W[3]),
        .O(\det_signal.diff_env_W[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[2] ),
        .I1(env_W[2]),
        .O(\det_signal.diff_env_W[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[1] ),
        .I1(env_W[1]),
        .O(\det_signal.diff_env_W[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[7]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[0] ),
        .I1(env_W[0]),
        .O(\det_signal.diff_env_W[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [0]),
        .Q(diff_env_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [10]),
        .Q(diff_env_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [11]),
        .Q(diff_env_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [12]),
        .Q(diff_env_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [13]),
        .Q(diff_env_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [14]),
        .Q(diff_env_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [15]),
        .Q(diff_env_W[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[15]_i_1 
       (.CI(\det_signal.diff_env_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[15]_i_1_n_0 ,\det_signal.diff_env_W_reg[15]_i_1_n_1 ,\det_signal.diff_env_W_reg[15]_i_1_n_2 ,\det_signal.diff_env_W_reg[15]_i_1_n_3 ,\det_signal.diff_env_W_reg[15]_i_1_n_4 ,\det_signal.diff_env_W_reg[15]_i_1_n_5 ,\det_signal.diff_env_W_reg[15]_i_1_n_6 ,\det_signal.diff_env_W_reg[15]_i_1_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[15] ,\det_signal.min_env_reg_n_0_[14] ,\det_signal.min_env_reg_n_0_[13] ,\det_signal.min_env_reg_n_0_[12] ,\det_signal.min_env_reg_n_0_[11] ,\det_signal.min_env_reg_n_0_[10] ,\det_signal.min_env_reg_n_0_[9] ,\det_signal.min_env_reg_n_0_[8] }),
        .O(\det_signal.diff_env_W_reg0 [15:8]),
        .S({\det_signal.diff_env_W[15]_i_2_n_0 ,\det_signal.diff_env_W[15]_i_3_n_0 ,\det_signal.diff_env_W[15]_i_4_n_0 ,\det_signal.diff_env_W[15]_i_5_n_0 ,\det_signal.diff_env_W[15]_i_6_n_0 ,\det_signal.diff_env_W[15]_i_7_n_0 ,\det_signal.diff_env_W[15]_i_8_n_0 ,\det_signal.diff_env_W[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [16]),
        .Q(diff_env_W[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_1 
       (.CI(\det_signal.diff_env_W_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED [7:1],\det_signal.diff_env_W_reg0 [16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.diff_env_W[16]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [1]),
        .Q(diff_env_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [2]),
        .Q(diff_env_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [3]),
        .Q(diff_env_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [4]),
        .Q(diff_env_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [5]),
        .Q(diff_env_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [6]),
        .Q(diff_env_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [7]),
        .Q(diff_env_W[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[7]_i_1_n_0 ,\det_signal.diff_env_W_reg[7]_i_1_n_1 ,\det_signal.diff_env_W_reg[7]_i_1_n_2 ,\det_signal.diff_env_W_reg[7]_i_1_n_3 ,\det_signal.diff_env_W_reg[7]_i_1_n_4 ,\det_signal.diff_env_W_reg[7]_i_1_n_5 ,\det_signal.diff_env_W_reg[7]_i_1_n_6 ,\det_signal.diff_env_W_reg[7]_i_1_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[7] ,\det_signal.min_env_reg_n_0_[6] ,\det_signal.min_env_reg_n_0_[5] ,\det_signal.min_env_reg_n_0_[4] ,\det_signal.min_env_reg_n_0_[3] ,\det_signal.min_env_reg_n_0_[2] ,\det_signal.min_env_reg_n_0_[1] ,\det_signal.min_env_reg_n_0_[0] }),
        .O(\det_signal.diff_env_W_reg0 [7:0]),
        .S({\det_signal.diff_env_W[7]_i_2_n_0 ,\det_signal.diff_env_W[7]_i_3_n_0 ,\det_signal.diff_env_W[7]_i_4_n_0 ,\det_signal.diff_env_W[7]_i_5_n_0 ,\det_signal.diff_env_W[7]_i_6_n_0 ,\det_signal.diff_env_W[7]_i_7_n_0 ,\det_signal.diff_env_W[7]_i_8_n_0 ,\det_signal.diff_env_W[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [8]),
        .Q(diff_env_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_env_W_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(\det_signal.diff_env_W_reg0 [9]),
        .Q(diff_env_W[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_10 
       (.I0(err_EW[4]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[4] ),
        .O(\det_signal.diff_err_EW[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_11 
       (.I0(err_EW[3]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[3] ),
        .O(\det_signal.diff_err_EW[12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_12 
       (.I0(err_EW[2]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[2] ),
        .O(\det_signal.diff_err_EW[12]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_13 
       (.I0(err_EW[1]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[1] ),
        .O(\det_signal.diff_err_EW[12]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_14 
       (.I0(err_EW[0]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[0] ),
        .O(\det_signal.diff_err_EW[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_3 
       (.I0(err_EW[11]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[11] ),
        .O(\det_signal.diff_err_EW[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_4 
       (.I0(err_EW[10]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[10] ),
        .O(\det_signal.diff_err_EW[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_5 
       (.I0(err_EW[9]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[9] ),
        .O(\det_signal.diff_err_EW[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_6 
       (.I0(err_EW[8]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[8] ),
        .O(\det_signal.diff_err_EW[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_7 
       (.I0(err_EW[7]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[7] ),
        .O(\det_signal.diff_err_EW[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_8 
       (.I0(err_EW[6]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[6] ),
        .O(\det_signal.diff_err_EW[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_EW[12]_i_9 
       (.I0(err_EW[5]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[5] ),
        .O(\det_signal.diff_err_EW[12]_i_9_n_0 ));
  FDRE \det_signal.diff_err_EW_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_err_EW0),
        .Q(p_2_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_EW_reg[12]_i_1 
       (.CI(\det_signal.diff_err_EW_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_err_EW_reg[12]_i_1_CO_UNCONNECTED [7:4],\det_signal.diff_err_EW_reg[12]_i_1_n_4 ,\det_signal.diff_err_EW_reg[12]_i_1_n_5 ,\det_signal.diff_err_EW_reg[12]_i_1_n_6 ,\det_signal.diff_err_EW_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,err_EW[11:8]}),
        .O({\NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED [7:5],diff_err_EW0,\NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED [3:0]}),
        .S({1'b0,1'b0,1'b0,1'b1,\det_signal.diff_err_EW[12]_i_3_n_0 ,\det_signal.diff_err_EW[12]_i_4_n_0 ,\det_signal.diff_err_EW[12]_i_5_n_0 ,\det_signal.diff_err_EW[12]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_EW_reg[12]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_err_EW_reg[12]_i_2_n_0 ,\det_signal.diff_err_EW_reg[12]_i_2_n_1 ,\det_signal.diff_err_EW_reg[12]_i_2_n_2 ,\det_signal.diff_err_EW_reg[12]_i_2_n_3 ,\det_signal.diff_err_EW_reg[12]_i_2_n_4 ,\det_signal.diff_err_EW_reg[12]_i_2_n_5 ,\det_signal.diff_err_EW_reg[12]_i_2_n_6 ,\det_signal.diff_err_EW_reg[12]_i_2_n_7 }),
        .DI(err_EW[7:0]),
        .O(\NLW_det_signal.diff_err_EW_reg[12]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_err_EW[12]_i_7_n_0 ,\det_signal.diff_err_EW[12]_i_8_n_0 ,\det_signal.diff_err_EW[12]_i_9_n_0 ,\det_signal.diff_err_EW[12]_i_10_n_0 ,\det_signal.diff_err_EW[12]_i_11_n_0 ,\det_signal.diff_err_EW[12]_i_12_n_0 ,\det_signal.diff_err_EW[12]_i_13_n_0 ,\det_signal.diff_err_EW[12]_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_10 
       (.I0(err_NE[4]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[4] ),
        .O(\det_signal.diff_err_NE[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_11 
       (.I0(err_NE[3]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[3] ),
        .O(\det_signal.diff_err_NE[12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_12 
       (.I0(err_NE[2]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[2] ),
        .O(\det_signal.diff_err_NE[12]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_13 
       (.I0(err_NE[1]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[1] ),
        .O(\det_signal.diff_err_NE[12]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_14 
       (.I0(err_NE[0]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[0] ),
        .O(\det_signal.diff_err_NE[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_3 
       (.I0(err_NE[11]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[11] ),
        .O(\det_signal.diff_err_NE[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_4 
       (.I0(err_NE[10]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[10] ),
        .O(\det_signal.diff_err_NE[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_5 
       (.I0(err_NE[9]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[9] ),
        .O(\det_signal.diff_err_NE[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_6 
       (.I0(err_NE[8]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[8] ),
        .O(\det_signal.diff_err_NE[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_7 
       (.I0(err_NE[7]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[7] ),
        .O(\det_signal.diff_err_NE[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_8 
       (.I0(err_NE[6]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[6] ),
        .O(\det_signal.diff_err_NE[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NE[12]_i_9 
       (.I0(err_NE[5]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[5] ),
        .O(\det_signal.diff_err_NE[12]_i_9_n_0 ));
  FDRE \det_signal.diff_err_NE_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_err_NE0),
        .Q(p_1_in9_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NE_reg[12]_i_1 
       (.CI(\det_signal.diff_err_NE_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_err_NE_reg[12]_i_1_CO_UNCONNECTED [7:4],\det_signal.diff_err_NE_reg[12]_i_1_n_4 ,\det_signal.diff_err_NE_reg[12]_i_1_n_5 ,\det_signal.diff_err_NE_reg[12]_i_1_n_6 ,\det_signal.diff_err_NE_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,err_NE[11:8]}),
        .O({\NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED [7:5],diff_err_NE0,\NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED [3:0]}),
        .S({1'b0,1'b0,1'b0,1'b1,\det_signal.diff_err_NE[12]_i_3_n_0 ,\det_signal.diff_err_NE[12]_i_4_n_0 ,\det_signal.diff_err_NE[12]_i_5_n_0 ,\det_signal.diff_err_NE[12]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NE_reg[12]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_err_NE_reg[12]_i_2_n_0 ,\det_signal.diff_err_NE_reg[12]_i_2_n_1 ,\det_signal.diff_err_NE_reg[12]_i_2_n_2 ,\det_signal.diff_err_NE_reg[12]_i_2_n_3 ,\det_signal.diff_err_NE_reg[12]_i_2_n_4 ,\det_signal.diff_err_NE_reg[12]_i_2_n_5 ,\det_signal.diff_err_NE_reg[12]_i_2_n_6 ,\det_signal.diff_err_NE_reg[12]_i_2_n_7 }),
        .DI(err_NE[7:0]),
        .O(\NLW_det_signal.diff_err_NE_reg[12]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_err_NE[12]_i_7_n_0 ,\det_signal.diff_err_NE[12]_i_8_n_0 ,\det_signal.diff_err_NE[12]_i_9_n_0 ,\det_signal.diff_err_NE[12]_i_10_n_0 ,\det_signal.diff_err_NE[12]_i_11_n_0 ,\det_signal.diff_err_NE[12]_i_12_n_0 ,\det_signal.diff_err_NE[12]_i_13_n_0 ,\det_signal.diff_err_NE[12]_i_14_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_10 
       (.I0(err_NW[4]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[4] ),
        .O(\det_signal.diff_err_NW[12]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_11 
       (.I0(err_NW[3]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[3] ),
        .O(\det_signal.diff_err_NW[12]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_12 
       (.I0(err_NW[2]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[2] ),
        .O(\det_signal.diff_err_NW[12]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_13 
       (.I0(err_NW[1]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[1] ),
        .O(\det_signal.diff_err_NW[12]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_14 
       (.I0(err_NW[0]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[0] ),
        .O(\det_signal.diff_err_NW[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_3 
       (.I0(err_NW[11]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[11] ),
        .O(\det_signal.diff_err_NW[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_4 
       (.I0(err_NW[10]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[10] ),
        .O(\det_signal.diff_err_NW[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_5 
       (.I0(err_NW[9]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[9] ),
        .O(\det_signal.diff_err_NW[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_6 
       (.I0(err_NW[8]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[8] ),
        .O(\det_signal.diff_err_NW[12]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_7 
       (.I0(err_NW[7]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[7] ),
        .O(\det_signal.diff_err_NW[12]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_8 
       (.I0(err_NW[6]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[6] ),
        .O(\det_signal.diff_err_NW[12]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_err_NW[12]_i_9 
       (.I0(err_NW[5]),
        .I1(\det_signal.max_doa_diff_reg_n_0_[5] ),
        .O(\det_signal.diff_err_NW[12]_i_9_n_0 ));
  FDRE \det_signal.diff_err_NW_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_err_NW0),
        .Q(p_0_in8_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NW_reg[12]_i_1 
       (.CI(\det_signal.diff_err_NW_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_err_NW_reg[12]_i_1_CO_UNCONNECTED [7:4],\det_signal.diff_err_NW_reg[12]_i_1_n_4 ,\det_signal.diff_err_NW_reg[12]_i_1_n_5 ,\det_signal.diff_err_NW_reg[12]_i_1_n_6 ,\det_signal.diff_err_NW_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,err_NW[11:8]}),
        .O({\NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED [7:5],diff_err_NW0,\NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED [3:0]}),
        .S({1'b0,1'b0,1'b0,1'b1,\det_signal.diff_err_NW[12]_i_3_n_0 ,\det_signal.diff_err_NW[12]_i_4_n_0 ,\det_signal.diff_err_NW[12]_i_5_n_0 ,\det_signal.diff_err_NW[12]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NW_reg[12]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_err_NW_reg[12]_i_2_n_0 ,\det_signal.diff_err_NW_reg[12]_i_2_n_1 ,\det_signal.diff_err_NW_reg[12]_i_2_n_2 ,\det_signal.diff_err_NW_reg[12]_i_2_n_3 ,\det_signal.diff_err_NW_reg[12]_i_2_n_4 ,\det_signal.diff_err_NW_reg[12]_i_2_n_5 ,\det_signal.diff_err_NW_reg[12]_i_2_n_6 ,\det_signal.diff_err_NW_reg[12]_i_2_n_7 }),
        .DI(err_NW[7:0]),
        .O(\NLW_det_signal.diff_err_NW_reg[12]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_err_NW[12]_i_7_n_0 ,\det_signal.diff_err_NW[12]_i_8_n_0 ,\det_signal.diff_err_NW[12]_i_9_n_0 ,\det_signal.diff_err_NW[12]_i_10_n_0 ,\det_signal.diff_err_NW[12]_i_11_n_0 ,\det_signal.diff_err_NW[12]_i_12_n_0 ,\det_signal.diff_err_NW[12]_i_13_n_0 ,\det_signal.diff_err_NW[12]_i_14_n_0 }));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_11 
       (.I0(prev_phase_E[15]),
        .O(\det_signal.diff_phase_E[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_12 
       (.I0(prev_phase_E[14]),
        .O(\det_signal.diff_phase_E[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_13 
       (.I0(prev_phase_E[13]),
        .O(\det_signal.diff_phase_E[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_14 
       (.I0(prev_phase_E[12]),
        .O(\det_signal.diff_phase_E[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_15 
       (.I0(prev_phase_E[11]),
        .O(\det_signal.diff_phase_E[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_16 
       (.I0(prev_phase_E[10]),
        .O(\det_signal.diff_phase_E[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_17 
       (.I0(prev_phase_E[9]),
        .O(\det_signal.diff_phase_E[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[15]_i_18 
       (.I0(prev_phase_E[8]),
        .O(\det_signal.diff_phase_E[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_2 
       (.I0(phase_E[15]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_8 ),
        .O(\det_signal.diff_phase_E[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_3 
       (.I0(phase_E[14]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_9 ),
        .O(\det_signal.diff_phase_E[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_4 
       (.I0(phase_E[13]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_10 ),
        .O(\det_signal.diff_phase_E[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_5 
       (.I0(phase_E[12]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_11 ),
        .O(\det_signal.diff_phase_E[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_6 
       (.I0(phase_E[11]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_12 ),
        .O(\det_signal.diff_phase_E[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_7 
       (.I0(phase_E[10]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_13 ),
        .O(\det_signal.diff_phase_E[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_8 
       (.I0(phase_E[9]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_14 ),
        .O(\det_signal.diff_phase_E[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[15]_i_9 
       (.I0(phase_E[8]),
        .I1(\det_signal.diff_phase_E_reg[15]_i_10_n_15 ),
        .O(\det_signal.diff_phase_E[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[19]_i_10 
       (.I0(prev_phase_E[16]),
        .O(\det_signal.diff_phase_E[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[19]_i_2 
       (.I0(phase_E[19]),
        .I1(\det_signal.diff_phase_E_reg[19]_i_6_n_12 ),
        .O(\det_signal.diff_phase_E[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[19]_i_3 
       (.I0(phase_E[18]),
        .I1(\det_signal.diff_phase_E_reg[19]_i_6_n_13 ),
        .O(\det_signal.diff_phase_E[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[19]_i_4 
       (.I0(phase_E[17]),
        .I1(\det_signal.diff_phase_E_reg[19]_i_6_n_14 ),
        .O(\det_signal.diff_phase_E[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[19]_i_5 
       (.I0(phase_E[16]),
        .I1(\det_signal.diff_phase_E_reg[19]_i_6_n_15 ),
        .O(\det_signal.diff_phase_E[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[19]_i_7 
       (.I0(prev_phase_E[19]),
        .O(\det_signal.diff_phase_E[19]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[19]_i_8 
       (.I0(prev_phase_E[18]),
        .O(\det_signal.diff_phase_E[19]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[19]_i_9 
       (.I0(prev_phase_E[17]),
        .O(\det_signal.diff_phase_E[19]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[7]_i_11 
       (.I0(prev_phase_E[7]),
        .O(\det_signal.diff_phase_E[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[7]_i_12 
       (.I0(prev_phase_E[6]),
        .O(\det_signal.diff_phase_E[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[7]_i_13 
       (.I0(prev_phase_E[5]),
        .O(\det_signal.diff_phase_E[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[7]_i_14 
       (.I0(prev_phase_E[4]),
        .O(\det_signal.diff_phase_E[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[7]_i_15 
       (.I0(prev_phase_E[3]),
        .O(\det_signal.diff_phase_E[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[7]_i_16 
       (.I0(prev_phase_E[2]),
        .O(\det_signal.diff_phase_E[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_E[7]_i_17 
       (.I0(prev_phase_E[1]),
        .O(\det_signal.diff_phase_E[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_2 
       (.I0(phase_E[7]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_8 ),
        .O(\det_signal.diff_phase_E[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_3 
       (.I0(phase_E[6]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_9 ),
        .O(\det_signal.diff_phase_E[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_4 
       (.I0(phase_E[5]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_10 ),
        .O(\det_signal.diff_phase_E[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_5 
       (.I0(phase_E[4]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_11 ),
        .O(\det_signal.diff_phase_E[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_6 
       (.I0(phase_E[3]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_12 ),
        .O(\det_signal.diff_phase_E[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_7 
       (.I0(phase_E[2]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_13 ),
        .O(\det_signal.diff_phase_E[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_8 
       (.I0(phase_E[1]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_14 ),
        .O(\det_signal.diff_phase_E[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_E[7]_i_9 
       (.I0(phase_E[0]),
        .I1(\det_signal.diff_phase_E_reg[7]_i_10_n_15 ),
        .O(\det_signal.diff_phase_E[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [0]),
        .Q(diff_phase_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [10]),
        .Q(diff_phase_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [11]),
        .Q(diff_phase_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [12]),
        .Q(diff_phase_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [13]),
        .Q(diff_phase_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [14]),
        .Q(diff_phase_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [15]),
        .Q(diff_phase_E[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[15]_i_1 
       (.CI(\det_signal.diff_phase_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[15]_i_1_n_0 ,\det_signal.diff_phase_E_reg[15]_i_1_n_1 ,\det_signal.diff_phase_E_reg[15]_i_1_n_2 ,\det_signal.diff_phase_E_reg[15]_i_1_n_3 ,\det_signal.diff_phase_E_reg[15]_i_1_n_4 ,\det_signal.diff_phase_E_reg[15]_i_1_n_5 ,\det_signal.diff_phase_E_reg[15]_i_1_n_6 ,\det_signal.diff_phase_E_reg[15]_i_1_n_7 }),
        .DI(phase_E[15:8]),
        .O(\det_signal.diff_phase_E_reg02_out [15:8]),
        .S({\det_signal.diff_phase_E[15]_i_2_n_0 ,\det_signal.diff_phase_E[15]_i_3_n_0 ,\det_signal.diff_phase_E[15]_i_4_n_0 ,\det_signal.diff_phase_E[15]_i_5_n_0 ,\det_signal.diff_phase_E[15]_i_6_n_0 ,\det_signal.diff_phase_E[15]_i_7_n_0 ,\det_signal.diff_phase_E[15]_i_8_n_0 ,\det_signal.diff_phase_E[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[15]_i_10 
       (.CI(\det_signal.diff_phase_E_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[15]_i_10_n_0 ,\det_signal.diff_phase_E_reg[15]_i_10_n_1 ,\det_signal.diff_phase_E_reg[15]_i_10_n_2 ,\det_signal.diff_phase_E_reg[15]_i_10_n_3 ,\det_signal.diff_phase_E_reg[15]_i_10_n_4 ,\det_signal.diff_phase_E_reg[15]_i_10_n_5 ,\det_signal.diff_phase_E_reg[15]_i_10_n_6 ,\det_signal.diff_phase_E_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_phase_E_reg[15]_i_10_n_8 ,\det_signal.diff_phase_E_reg[15]_i_10_n_9 ,\det_signal.diff_phase_E_reg[15]_i_10_n_10 ,\det_signal.diff_phase_E_reg[15]_i_10_n_11 ,\det_signal.diff_phase_E_reg[15]_i_10_n_12 ,\det_signal.diff_phase_E_reg[15]_i_10_n_13 ,\det_signal.diff_phase_E_reg[15]_i_10_n_14 ,\det_signal.diff_phase_E_reg[15]_i_10_n_15 }),
        .S({\det_signal.diff_phase_E[15]_i_11_n_0 ,\det_signal.diff_phase_E[15]_i_12_n_0 ,\det_signal.diff_phase_E[15]_i_13_n_0 ,\det_signal.diff_phase_E[15]_i_14_n_0 ,\det_signal.diff_phase_E[15]_i_15_n_0 ,\det_signal.diff_phase_E[15]_i_16_n_0 ,\det_signal.diff_phase_E[15]_i_17_n_0 ,\det_signal.diff_phase_E[15]_i_18_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [16]),
        .Q(diff_phase_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [17]),
        .Q(diff_phase_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [18]),
        .Q(diff_phase_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [19]),
        .Q(diff_phase_E[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[19]_i_1 
       (.CI(\det_signal.diff_phase_E_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_E_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.diff_phase_E_reg[19]_i_1_n_5 ,\det_signal.diff_phase_E_reg[19]_i_1_n_6 ,\det_signal.diff_phase_E_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_E[18:16]}),
        .O({\NLW_det_signal.diff_phase_E_reg[19]_i_1_O_UNCONNECTED [7:4],\det_signal.diff_phase_E_reg02_out [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_E[19]_i_2_n_0 ,\det_signal.diff_phase_E[19]_i_3_n_0 ,\det_signal.diff_phase_E[19]_i_4_n_0 ,\det_signal.diff_phase_E[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[19]_i_6 
       (.CI(\det_signal.diff_phase_E_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_E_reg[19]_i_6_CO_UNCONNECTED [7:3],\det_signal.diff_phase_E_reg[19]_i_6_n_5 ,\det_signal.diff_phase_E_reg[19]_i_6_n_6 ,\det_signal.diff_phase_E_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_phase_E_reg[19]_i_6_O_UNCONNECTED [7:4],\det_signal.diff_phase_E_reg[19]_i_6_n_12 ,\det_signal.diff_phase_E_reg[19]_i_6_n_13 ,\det_signal.diff_phase_E_reg[19]_i_6_n_14 ,\det_signal.diff_phase_E_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_E[19]_i_7_n_0 ,\det_signal.diff_phase_E[19]_i_8_n_0 ,\det_signal.diff_phase_E[19]_i_9_n_0 ,\det_signal.diff_phase_E[19]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [1]),
        .Q(diff_phase_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [2]),
        .Q(diff_phase_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [3]),
        .Q(diff_phase_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [4]),
        .Q(diff_phase_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [5]),
        .Q(diff_phase_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [6]),
        .Q(diff_phase_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [7]),
        .Q(diff_phase_E[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[7]_i_1_n_0 ,\det_signal.diff_phase_E_reg[7]_i_1_n_1 ,\det_signal.diff_phase_E_reg[7]_i_1_n_2 ,\det_signal.diff_phase_E_reg[7]_i_1_n_3 ,\det_signal.diff_phase_E_reg[7]_i_1_n_4 ,\det_signal.diff_phase_E_reg[7]_i_1_n_5 ,\det_signal.diff_phase_E_reg[7]_i_1_n_6 ,\det_signal.diff_phase_E_reg[7]_i_1_n_7 }),
        .DI(phase_E[7:0]),
        .O(\det_signal.diff_phase_E_reg02_out [7:0]),
        .S({\det_signal.diff_phase_E[7]_i_2_n_0 ,\det_signal.diff_phase_E[7]_i_3_n_0 ,\det_signal.diff_phase_E[7]_i_4_n_0 ,\det_signal.diff_phase_E[7]_i_5_n_0 ,\det_signal.diff_phase_E[7]_i_6_n_0 ,\det_signal.diff_phase_E[7]_i_7_n_0 ,\det_signal.diff_phase_E[7]_i_8_n_0 ,\det_signal.diff_phase_E[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[7]_i_10_n_0 ,\det_signal.diff_phase_E_reg[7]_i_10_n_1 ,\det_signal.diff_phase_E_reg[7]_i_10_n_2 ,\det_signal.diff_phase_E_reg[7]_i_10_n_3 ,\det_signal.diff_phase_E_reg[7]_i_10_n_4 ,\det_signal.diff_phase_E_reg[7]_i_10_n_5 ,\det_signal.diff_phase_E_reg[7]_i_10_n_6 ,\det_signal.diff_phase_E_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_phase_E_reg[7]_i_10_n_8 ,\det_signal.diff_phase_E_reg[7]_i_10_n_9 ,\det_signal.diff_phase_E_reg[7]_i_10_n_10 ,\det_signal.diff_phase_E_reg[7]_i_10_n_11 ,\det_signal.diff_phase_E_reg[7]_i_10_n_12 ,\det_signal.diff_phase_E_reg[7]_i_10_n_13 ,\det_signal.diff_phase_E_reg[7]_i_10_n_14 ,\det_signal.diff_phase_E_reg[7]_i_10_n_15 }),
        .S({\det_signal.diff_phase_E[7]_i_11_n_0 ,\det_signal.diff_phase_E[7]_i_12_n_0 ,\det_signal.diff_phase_E[7]_i_13_n_0 ,\det_signal.diff_phase_E[7]_i_14_n_0 ,\det_signal.diff_phase_E[7]_i_15_n_0 ,\det_signal.diff_phase_E[7]_i_16_n_0 ,\det_signal.diff_phase_E[7]_i_17_n_0 ,prev_phase_E[0]}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [8]),
        .Q(diff_phase_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_E_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_E_reg02_out [9]),
        .Q(diff_phase_E[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_11 
       (.I0(prev_phase_N[15]),
        .O(\det_signal.diff_phase_N[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_12 
       (.I0(prev_phase_N[14]),
        .O(\det_signal.diff_phase_N[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_13 
       (.I0(prev_phase_N[13]),
        .O(\det_signal.diff_phase_N[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_14 
       (.I0(prev_phase_N[12]),
        .O(\det_signal.diff_phase_N[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_15 
       (.I0(prev_phase_N[11]),
        .O(\det_signal.diff_phase_N[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_16 
       (.I0(prev_phase_N[10]),
        .O(\det_signal.diff_phase_N[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_17 
       (.I0(prev_phase_N[9]),
        .O(\det_signal.diff_phase_N[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[15]_i_18 
       (.I0(prev_phase_N[8]),
        .O(\det_signal.diff_phase_N[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_2 
       (.I0(phase_N[15]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_8 ),
        .O(\det_signal.diff_phase_N[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_3 
       (.I0(phase_N[14]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_9 ),
        .O(\det_signal.diff_phase_N[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_4 
       (.I0(phase_N[13]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_10 ),
        .O(\det_signal.diff_phase_N[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_5 
       (.I0(phase_N[12]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_11 ),
        .O(\det_signal.diff_phase_N[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_6 
       (.I0(phase_N[11]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_12 ),
        .O(\det_signal.diff_phase_N[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_7 
       (.I0(phase_N[10]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_13 ),
        .O(\det_signal.diff_phase_N[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_8 
       (.I0(phase_N[9]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_14 ),
        .O(\det_signal.diff_phase_N[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[15]_i_9 
       (.I0(phase_N[8]),
        .I1(\det_signal.diff_phase_N_reg[15]_i_10_n_15 ),
        .O(\det_signal.diff_phase_N[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[19]_i_10 
       (.I0(prev_phase_N[16]),
        .O(\det_signal.diff_phase_N[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[19]_i_2 
       (.I0(phase_N[19]),
        .I1(\det_signal.diff_phase_N_reg[19]_i_6_n_12 ),
        .O(\det_signal.diff_phase_N[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[19]_i_3 
       (.I0(phase_N[18]),
        .I1(\det_signal.diff_phase_N_reg[19]_i_6_n_13 ),
        .O(\det_signal.diff_phase_N[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[19]_i_4 
       (.I0(phase_N[17]),
        .I1(\det_signal.diff_phase_N_reg[19]_i_6_n_14 ),
        .O(\det_signal.diff_phase_N[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[19]_i_5 
       (.I0(phase_N[16]),
        .I1(\det_signal.diff_phase_N_reg[19]_i_6_n_15 ),
        .O(\det_signal.diff_phase_N[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[19]_i_7 
       (.I0(prev_phase_N[19]),
        .O(\det_signal.diff_phase_N[19]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[19]_i_8 
       (.I0(prev_phase_N[18]),
        .O(\det_signal.diff_phase_N[19]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[19]_i_9 
       (.I0(prev_phase_N[17]),
        .O(\det_signal.diff_phase_N[19]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[7]_i_11 
       (.I0(prev_phase_N[7]),
        .O(\det_signal.diff_phase_N[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[7]_i_12 
       (.I0(prev_phase_N[6]),
        .O(\det_signal.diff_phase_N[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[7]_i_13 
       (.I0(prev_phase_N[5]),
        .O(\det_signal.diff_phase_N[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[7]_i_14 
       (.I0(prev_phase_N[4]),
        .O(\det_signal.diff_phase_N[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[7]_i_15 
       (.I0(prev_phase_N[3]),
        .O(\det_signal.diff_phase_N[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[7]_i_16 
       (.I0(prev_phase_N[2]),
        .O(\det_signal.diff_phase_N[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_N[7]_i_17 
       (.I0(prev_phase_N[1]),
        .O(\det_signal.diff_phase_N[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_2 
       (.I0(phase_N[7]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_8 ),
        .O(\det_signal.diff_phase_N[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_3 
       (.I0(phase_N[6]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_9 ),
        .O(\det_signal.diff_phase_N[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_4 
       (.I0(phase_N[5]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_10 ),
        .O(\det_signal.diff_phase_N[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_5 
       (.I0(phase_N[4]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_11 ),
        .O(\det_signal.diff_phase_N[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_6 
       (.I0(phase_N[3]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_12 ),
        .O(\det_signal.diff_phase_N[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_7 
       (.I0(phase_N[2]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_13 ),
        .O(\det_signal.diff_phase_N[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_8 
       (.I0(phase_N[1]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_14 ),
        .O(\det_signal.diff_phase_N[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_N[7]_i_9 
       (.I0(phase_N[0]),
        .I1(\det_signal.diff_phase_N_reg[7]_i_10_n_15 ),
        .O(\det_signal.diff_phase_N[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [0]),
        .Q(diff_phase_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [10]),
        .Q(diff_phase_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [11]),
        .Q(diff_phase_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [12]),
        .Q(diff_phase_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [13]),
        .Q(diff_phase_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [14]),
        .Q(diff_phase_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [15]),
        .Q(diff_phase_N[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[15]_i_1 
       (.CI(\det_signal.diff_phase_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[15]_i_1_n_0 ,\det_signal.diff_phase_N_reg[15]_i_1_n_1 ,\det_signal.diff_phase_N_reg[15]_i_1_n_2 ,\det_signal.diff_phase_N_reg[15]_i_1_n_3 ,\det_signal.diff_phase_N_reg[15]_i_1_n_4 ,\det_signal.diff_phase_N_reg[15]_i_1_n_5 ,\det_signal.diff_phase_N_reg[15]_i_1_n_6 ,\det_signal.diff_phase_N_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(\det_signal.diff_phase_N_reg04_out [15:8]),
        .S({\det_signal.diff_phase_N[15]_i_2_n_0 ,\det_signal.diff_phase_N[15]_i_3_n_0 ,\det_signal.diff_phase_N[15]_i_4_n_0 ,\det_signal.diff_phase_N[15]_i_5_n_0 ,\det_signal.diff_phase_N[15]_i_6_n_0 ,\det_signal.diff_phase_N[15]_i_7_n_0 ,\det_signal.diff_phase_N[15]_i_8_n_0 ,\det_signal.diff_phase_N[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[15]_i_10 
       (.CI(\det_signal.diff_phase_N_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[15]_i_10_n_0 ,\det_signal.diff_phase_N_reg[15]_i_10_n_1 ,\det_signal.diff_phase_N_reg[15]_i_10_n_2 ,\det_signal.diff_phase_N_reg[15]_i_10_n_3 ,\det_signal.diff_phase_N_reg[15]_i_10_n_4 ,\det_signal.diff_phase_N_reg[15]_i_10_n_5 ,\det_signal.diff_phase_N_reg[15]_i_10_n_6 ,\det_signal.diff_phase_N_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_phase_N_reg[15]_i_10_n_8 ,\det_signal.diff_phase_N_reg[15]_i_10_n_9 ,\det_signal.diff_phase_N_reg[15]_i_10_n_10 ,\det_signal.diff_phase_N_reg[15]_i_10_n_11 ,\det_signal.diff_phase_N_reg[15]_i_10_n_12 ,\det_signal.diff_phase_N_reg[15]_i_10_n_13 ,\det_signal.diff_phase_N_reg[15]_i_10_n_14 ,\det_signal.diff_phase_N_reg[15]_i_10_n_15 }),
        .S({\det_signal.diff_phase_N[15]_i_11_n_0 ,\det_signal.diff_phase_N[15]_i_12_n_0 ,\det_signal.diff_phase_N[15]_i_13_n_0 ,\det_signal.diff_phase_N[15]_i_14_n_0 ,\det_signal.diff_phase_N[15]_i_15_n_0 ,\det_signal.diff_phase_N[15]_i_16_n_0 ,\det_signal.diff_phase_N[15]_i_17_n_0 ,\det_signal.diff_phase_N[15]_i_18_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [16]),
        .Q(diff_phase_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [17]),
        .Q(diff_phase_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [18]),
        .Q(diff_phase_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [19]),
        .Q(diff_phase_N[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[19]_i_1 
       (.CI(\det_signal.diff_phase_N_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_N_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.diff_phase_N_reg[19]_i_1_n_5 ,\det_signal.diff_phase_N_reg[19]_i_1_n_6 ,\det_signal.diff_phase_N_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_det_signal.diff_phase_N_reg[19]_i_1_O_UNCONNECTED [7:4],\det_signal.diff_phase_N_reg04_out [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_N[19]_i_2_n_0 ,\det_signal.diff_phase_N[19]_i_3_n_0 ,\det_signal.diff_phase_N[19]_i_4_n_0 ,\det_signal.diff_phase_N[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[19]_i_6 
       (.CI(\det_signal.diff_phase_N_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_N_reg[19]_i_6_CO_UNCONNECTED [7:3],\det_signal.diff_phase_N_reg[19]_i_6_n_5 ,\det_signal.diff_phase_N_reg[19]_i_6_n_6 ,\det_signal.diff_phase_N_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_phase_N_reg[19]_i_6_O_UNCONNECTED [7:4],\det_signal.diff_phase_N_reg[19]_i_6_n_12 ,\det_signal.diff_phase_N_reg[19]_i_6_n_13 ,\det_signal.diff_phase_N_reg[19]_i_6_n_14 ,\det_signal.diff_phase_N_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_N[19]_i_7_n_0 ,\det_signal.diff_phase_N[19]_i_8_n_0 ,\det_signal.diff_phase_N[19]_i_9_n_0 ,\det_signal.diff_phase_N[19]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [1]),
        .Q(diff_phase_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [2]),
        .Q(diff_phase_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [3]),
        .Q(diff_phase_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [4]),
        .Q(diff_phase_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [5]),
        .Q(diff_phase_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [6]),
        .Q(diff_phase_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [7]),
        .Q(diff_phase_N[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[7]_i_1_n_0 ,\det_signal.diff_phase_N_reg[7]_i_1_n_1 ,\det_signal.diff_phase_N_reg[7]_i_1_n_2 ,\det_signal.diff_phase_N_reg[7]_i_1_n_3 ,\det_signal.diff_phase_N_reg[7]_i_1_n_4 ,\det_signal.diff_phase_N_reg[7]_i_1_n_5 ,\det_signal.diff_phase_N_reg[7]_i_1_n_6 ,\det_signal.diff_phase_N_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(\det_signal.diff_phase_N_reg04_out [7:0]),
        .S({\det_signal.diff_phase_N[7]_i_2_n_0 ,\det_signal.diff_phase_N[7]_i_3_n_0 ,\det_signal.diff_phase_N[7]_i_4_n_0 ,\det_signal.diff_phase_N[7]_i_5_n_0 ,\det_signal.diff_phase_N[7]_i_6_n_0 ,\det_signal.diff_phase_N[7]_i_7_n_0 ,\det_signal.diff_phase_N[7]_i_8_n_0 ,\det_signal.diff_phase_N[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[7]_i_10_n_0 ,\det_signal.diff_phase_N_reg[7]_i_10_n_1 ,\det_signal.diff_phase_N_reg[7]_i_10_n_2 ,\det_signal.diff_phase_N_reg[7]_i_10_n_3 ,\det_signal.diff_phase_N_reg[7]_i_10_n_4 ,\det_signal.diff_phase_N_reg[7]_i_10_n_5 ,\det_signal.diff_phase_N_reg[7]_i_10_n_6 ,\det_signal.diff_phase_N_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_phase_N_reg[7]_i_10_n_8 ,\det_signal.diff_phase_N_reg[7]_i_10_n_9 ,\det_signal.diff_phase_N_reg[7]_i_10_n_10 ,\det_signal.diff_phase_N_reg[7]_i_10_n_11 ,\det_signal.diff_phase_N_reg[7]_i_10_n_12 ,\det_signal.diff_phase_N_reg[7]_i_10_n_13 ,\det_signal.diff_phase_N_reg[7]_i_10_n_14 ,\det_signal.diff_phase_N_reg[7]_i_10_n_15 }),
        .S({\det_signal.diff_phase_N[7]_i_11_n_0 ,\det_signal.diff_phase_N[7]_i_12_n_0 ,\det_signal.diff_phase_N[7]_i_13_n_0 ,\det_signal.diff_phase_N[7]_i_14_n_0 ,\det_signal.diff_phase_N[7]_i_15_n_0 ,\det_signal.diff_phase_N[7]_i_16_n_0 ,\det_signal.diff_phase_N[7]_i_17_n_0 ,prev_phase_N[0]}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [8]),
        .Q(diff_phase_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_N_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_N_reg04_out [9]),
        .Q(diff_phase_N[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_11 
       (.I0(prev_phase_W[15]),
        .O(\det_signal.diff_phase_W[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_12 
       (.I0(prev_phase_W[14]),
        .O(\det_signal.diff_phase_W[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_13 
       (.I0(prev_phase_W[13]),
        .O(\det_signal.diff_phase_W[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_14 
       (.I0(prev_phase_W[12]),
        .O(\det_signal.diff_phase_W[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_15 
       (.I0(prev_phase_W[11]),
        .O(\det_signal.diff_phase_W[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_16 
       (.I0(prev_phase_W[10]),
        .O(\det_signal.diff_phase_W[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_17 
       (.I0(prev_phase_W[9]),
        .O(\det_signal.diff_phase_W[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[15]_i_18 
       (.I0(prev_phase_W[8]),
        .O(\det_signal.diff_phase_W[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_2 
       (.I0(phase_W[15]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_8 ),
        .O(\det_signal.diff_phase_W[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_3 
       (.I0(phase_W[14]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_9 ),
        .O(\det_signal.diff_phase_W[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_4 
       (.I0(phase_W[13]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_10 ),
        .O(\det_signal.diff_phase_W[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_5 
       (.I0(phase_W[12]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_11 ),
        .O(\det_signal.diff_phase_W[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_6 
       (.I0(phase_W[11]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_12 ),
        .O(\det_signal.diff_phase_W[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_7 
       (.I0(phase_W[10]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_13 ),
        .O(\det_signal.diff_phase_W[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_8 
       (.I0(phase_W[9]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_14 ),
        .O(\det_signal.diff_phase_W[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[15]_i_9 
       (.I0(phase_W[8]),
        .I1(\det_signal.diff_phase_W_reg[15]_i_10_n_15 ),
        .O(\det_signal.diff_phase_W[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[19]_i_10 
       (.I0(prev_phase_W[16]),
        .O(\det_signal.diff_phase_W[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[19]_i_2 
       (.I0(phase_W[19]),
        .I1(\det_signal.diff_phase_W_reg[19]_i_6_n_12 ),
        .O(\det_signal.diff_phase_W[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[19]_i_3 
       (.I0(phase_W[18]),
        .I1(\det_signal.diff_phase_W_reg[19]_i_6_n_13 ),
        .O(\det_signal.diff_phase_W[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[19]_i_4 
       (.I0(phase_W[17]),
        .I1(\det_signal.diff_phase_W_reg[19]_i_6_n_14 ),
        .O(\det_signal.diff_phase_W[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[19]_i_5 
       (.I0(phase_W[16]),
        .I1(\det_signal.diff_phase_W_reg[19]_i_6_n_15 ),
        .O(\det_signal.diff_phase_W[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[19]_i_7 
       (.I0(prev_phase_W[19]),
        .O(\det_signal.diff_phase_W[19]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[19]_i_8 
       (.I0(prev_phase_W[18]),
        .O(\det_signal.diff_phase_W[19]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[19]_i_9 
       (.I0(prev_phase_W[17]),
        .O(\det_signal.diff_phase_W[19]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[7]_i_11 
       (.I0(prev_phase_W[7]),
        .O(\det_signal.diff_phase_W[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[7]_i_12 
       (.I0(prev_phase_W[6]),
        .O(\det_signal.diff_phase_W[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[7]_i_13 
       (.I0(prev_phase_W[5]),
        .O(\det_signal.diff_phase_W[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[7]_i_14 
       (.I0(prev_phase_W[4]),
        .O(\det_signal.diff_phase_W[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[7]_i_15 
       (.I0(prev_phase_W[3]),
        .O(\det_signal.diff_phase_W[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[7]_i_16 
       (.I0(prev_phase_W[2]),
        .O(\det_signal.diff_phase_W[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_phase_W[7]_i_17 
       (.I0(prev_phase_W[1]),
        .O(\det_signal.diff_phase_W[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_2 
       (.I0(phase_W[7]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_8 ),
        .O(\det_signal.diff_phase_W[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_3 
       (.I0(phase_W[6]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_9 ),
        .O(\det_signal.diff_phase_W[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_4 
       (.I0(phase_W[5]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_10 ),
        .O(\det_signal.diff_phase_W[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_5 
       (.I0(phase_W[4]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_11 ),
        .O(\det_signal.diff_phase_W[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_6 
       (.I0(phase_W[3]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_12 ),
        .O(\det_signal.diff_phase_W[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_7 
       (.I0(phase_W[2]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_13 ),
        .O(\det_signal.diff_phase_W[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_8 
       (.I0(phase_W[1]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_14 ),
        .O(\det_signal.diff_phase_W[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_phase_W[7]_i_9 
       (.I0(phase_W[0]),
        .I1(\det_signal.diff_phase_W_reg[7]_i_10_n_15 ),
        .O(\det_signal.diff_phase_W[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [0]),
        .Q(diff_phase_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [10]),
        .Q(diff_phase_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [11]),
        .Q(diff_phase_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [12]),
        .Q(diff_phase_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [13]),
        .Q(diff_phase_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [14]),
        .Q(diff_phase_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [15]),
        .Q(diff_phase_W[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[15]_i_1 
       (.CI(\det_signal.diff_phase_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[15]_i_1_n_0 ,\det_signal.diff_phase_W_reg[15]_i_1_n_1 ,\det_signal.diff_phase_W_reg[15]_i_1_n_2 ,\det_signal.diff_phase_W_reg[15]_i_1_n_3 ,\det_signal.diff_phase_W_reg[15]_i_1_n_4 ,\det_signal.diff_phase_W_reg[15]_i_1_n_5 ,\det_signal.diff_phase_W_reg[15]_i_1_n_6 ,\det_signal.diff_phase_W_reg[15]_i_1_n_7 }),
        .DI(phase_W[15:8]),
        .O(\det_signal.diff_phase_W_reg00_out [15:8]),
        .S({\det_signal.diff_phase_W[15]_i_2_n_0 ,\det_signal.diff_phase_W[15]_i_3_n_0 ,\det_signal.diff_phase_W[15]_i_4_n_0 ,\det_signal.diff_phase_W[15]_i_5_n_0 ,\det_signal.diff_phase_W[15]_i_6_n_0 ,\det_signal.diff_phase_W[15]_i_7_n_0 ,\det_signal.diff_phase_W[15]_i_8_n_0 ,\det_signal.diff_phase_W[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[15]_i_10 
       (.CI(\det_signal.diff_phase_W_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[15]_i_10_n_0 ,\det_signal.diff_phase_W_reg[15]_i_10_n_1 ,\det_signal.diff_phase_W_reg[15]_i_10_n_2 ,\det_signal.diff_phase_W_reg[15]_i_10_n_3 ,\det_signal.diff_phase_W_reg[15]_i_10_n_4 ,\det_signal.diff_phase_W_reg[15]_i_10_n_5 ,\det_signal.diff_phase_W_reg[15]_i_10_n_6 ,\det_signal.diff_phase_W_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_phase_W_reg[15]_i_10_n_8 ,\det_signal.diff_phase_W_reg[15]_i_10_n_9 ,\det_signal.diff_phase_W_reg[15]_i_10_n_10 ,\det_signal.diff_phase_W_reg[15]_i_10_n_11 ,\det_signal.diff_phase_W_reg[15]_i_10_n_12 ,\det_signal.diff_phase_W_reg[15]_i_10_n_13 ,\det_signal.diff_phase_W_reg[15]_i_10_n_14 ,\det_signal.diff_phase_W_reg[15]_i_10_n_15 }),
        .S({\det_signal.diff_phase_W[15]_i_11_n_0 ,\det_signal.diff_phase_W[15]_i_12_n_0 ,\det_signal.diff_phase_W[15]_i_13_n_0 ,\det_signal.diff_phase_W[15]_i_14_n_0 ,\det_signal.diff_phase_W[15]_i_15_n_0 ,\det_signal.diff_phase_W[15]_i_16_n_0 ,\det_signal.diff_phase_W[15]_i_17_n_0 ,\det_signal.diff_phase_W[15]_i_18_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [16]),
        .Q(diff_phase_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [17]),
        .Q(diff_phase_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [18]),
        .Q(diff_phase_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [19]),
        .Q(diff_phase_W[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[19]_i_1 
       (.CI(\det_signal.diff_phase_W_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_W_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.diff_phase_W_reg[19]_i_1_n_5 ,\det_signal.diff_phase_W_reg[19]_i_1_n_6 ,\det_signal.diff_phase_W_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_W[18:16]}),
        .O({\NLW_det_signal.diff_phase_W_reg[19]_i_1_O_UNCONNECTED [7:4],\det_signal.diff_phase_W_reg00_out [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_W[19]_i_2_n_0 ,\det_signal.diff_phase_W[19]_i_3_n_0 ,\det_signal.diff_phase_W[19]_i_4_n_0 ,\det_signal.diff_phase_W[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[19]_i_6 
       (.CI(\det_signal.diff_phase_W_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_W_reg[19]_i_6_CO_UNCONNECTED [7:3],\det_signal.diff_phase_W_reg[19]_i_6_n_5 ,\det_signal.diff_phase_W_reg[19]_i_6_n_6 ,\det_signal.diff_phase_W_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_phase_W_reg[19]_i_6_O_UNCONNECTED [7:4],\det_signal.diff_phase_W_reg[19]_i_6_n_12 ,\det_signal.diff_phase_W_reg[19]_i_6_n_13 ,\det_signal.diff_phase_W_reg[19]_i_6_n_14 ,\det_signal.diff_phase_W_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_W[19]_i_7_n_0 ,\det_signal.diff_phase_W[19]_i_8_n_0 ,\det_signal.diff_phase_W[19]_i_9_n_0 ,\det_signal.diff_phase_W[19]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [1]),
        .Q(diff_phase_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [2]),
        .Q(diff_phase_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [3]),
        .Q(diff_phase_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [4]),
        .Q(diff_phase_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [5]),
        .Q(diff_phase_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [6]),
        .Q(diff_phase_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [7]),
        .Q(diff_phase_W[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[7]_i_1_n_0 ,\det_signal.diff_phase_W_reg[7]_i_1_n_1 ,\det_signal.diff_phase_W_reg[7]_i_1_n_2 ,\det_signal.diff_phase_W_reg[7]_i_1_n_3 ,\det_signal.diff_phase_W_reg[7]_i_1_n_4 ,\det_signal.diff_phase_W_reg[7]_i_1_n_5 ,\det_signal.diff_phase_W_reg[7]_i_1_n_6 ,\det_signal.diff_phase_W_reg[7]_i_1_n_7 }),
        .DI(phase_W[7:0]),
        .O(\det_signal.diff_phase_W_reg00_out [7:0]),
        .S({\det_signal.diff_phase_W[7]_i_2_n_0 ,\det_signal.diff_phase_W[7]_i_3_n_0 ,\det_signal.diff_phase_W[7]_i_4_n_0 ,\det_signal.diff_phase_W[7]_i_5_n_0 ,\det_signal.diff_phase_W[7]_i_6_n_0 ,\det_signal.diff_phase_W[7]_i_7_n_0 ,\det_signal.diff_phase_W[7]_i_8_n_0 ,\det_signal.diff_phase_W[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[7]_i_10_n_0 ,\det_signal.diff_phase_W_reg[7]_i_10_n_1 ,\det_signal.diff_phase_W_reg[7]_i_10_n_2 ,\det_signal.diff_phase_W_reg[7]_i_10_n_3 ,\det_signal.diff_phase_W_reg[7]_i_10_n_4 ,\det_signal.diff_phase_W_reg[7]_i_10_n_5 ,\det_signal.diff_phase_W_reg[7]_i_10_n_6 ,\det_signal.diff_phase_W_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_phase_W_reg[7]_i_10_n_8 ,\det_signal.diff_phase_W_reg[7]_i_10_n_9 ,\det_signal.diff_phase_W_reg[7]_i_10_n_10 ,\det_signal.diff_phase_W_reg[7]_i_10_n_11 ,\det_signal.diff_phase_W_reg[7]_i_10_n_12 ,\det_signal.diff_phase_W_reg[7]_i_10_n_13 ,\det_signal.diff_phase_W_reg[7]_i_10_n_14 ,\det_signal.diff_phase_W_reg[7]_i_10_n_15 }),
        .S({\det_signal.diff_phase_W[7]_i_11_n_0 ,\det_signal.diff_phase_W[7]_i_12_n_0 ,\det_signal.diff_phase_W[7]_i_13_n_0 ,\det_signal.diff_phase_W[7]_i_14_n_0 ,\det_signal.diff_phase_W[7]_i_15_n_0 ,\det_signal.diff_phase_W[7]_i_16_n_0 ,\det_signal.diff_phase_W[7]_i_17_n_0 ,prev_phase_W[0]}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [8]),
        .Q(diff_phase_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.diff_phase_W_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.diff_phase_W_reg00_out [9]),
        .Q(diff_phase_W[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[0]),
        .Q(dsp_phase_E[0]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[10]),
        .Q(dsp_phase_E[10]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[11]),
        .Q(dsp_phase_E[11]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[12]),
        .Q(dsp_phase_E[12]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[13]),
        .Q(dsp_phase_E[13]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[14]),
        .Q(dsp_phase_E[14]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[15]),
        .Q(dsp_phase_E[15]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[16]),
        .Q(dsp_phase_E[16]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[17]),
        .Q(dsp_phase_E[17]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[18]),
        .Q(dsp_phase_E[18]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[19]),
        .Q(dsp_phase_E[19]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[1]),
        .Q(dsp_phase_E[1]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(dsp_phase_E[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[2]),
        .Q(dsp_phase_E[2]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[3]),
        .Q(dsp_phase_E[3]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[4]),
        .Q(dsp_phase_E[4]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[5]),
        .Q(dsp_phase_E[5]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[6]),
        .Q(dsp_phase_E[6]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[7]),
        .Q(dsp_phase_E[7]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[8]),
        .Q(dsp_phase_E[8]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_E_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[9]),
        .Q(dsp_phase_E[9]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[0]),
        .Q(dsp_phase_N[0]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[10]),
        .Q(dsp_phase_N[10]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[11]),
        .Q(dsp_phase_N[11]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[12]),
        .Q(dsp_phase_N[12]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[13]),
        .Q(dsp_phase_N[13]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[14]),
        .Q(dsp_phase_N[14]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[15]),
        .Q(dsp_phase_N[15]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[16]),
        .Q(dsp_phase_N[16]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[17]),
        .Q(dsp_phase_N[17]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[18]),
        .Q(dsp_phase_N[18]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[19]),
        .Q(dsp_phase_N[19]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[1]),
        .Q(dsp_phase_N[1]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(dsp_phase_N[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[2]),
        .Q(dsp_phase_N[2]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[3]),
        .Q(dsp_phase_N[3]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[4]),
        .Q(dsp_phase_N[4]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[5]),
        .Q(dsp_phase_N[5]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[6]),
        .Q(dsp_phase_N[6]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[7]),
        .Q(dsp_phase_N[7]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[8]),
        .Q(dsp_phase_N[8]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_N_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[9]),
        .Q(dsp_phase_N[9]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[0]),
        .Q(dsp_phase_W[0]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[10]),
        .Q(dsp_phase_W[10]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[11]),
        .Q(dsp_phase_W[11]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[12]),
        .Q(dsp_phase_W[12]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[13]),
        .Q(dsp_phase_W[13]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[14]),
        .Q(dsp_phase_W[14]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[15]),
        .Q(dsp_phase_W[15]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[16]),
        .Q(dsp_phase_W[16]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[17]),
        .Q(dsp_phase_W[17]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[18]),
        .Q(dsp_phase_W[18]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[19]),
        .Q(dsp_phase_W[19]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[1]),
        .Q(dsp_phase_W[1]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(dsp_phase_W[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[2]),
        .Q(dsp_phase_W[2]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[3]),
        .Q(dsp_phase_W[3]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[4]),
        .Q(dsp_phase_W[4]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[5]),
        .Q(dsp_phase_W[5]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[6]),
        .Q(dsp_phase_W[6]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[7]),
        .Q(dsp_phase_W[7]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[8]),
        .Q(dsp_phase_W[8]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_W_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[9]),
        .Q(dsp_phase_W[9]),
        .R(\det_signal.curr_signal_counter[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[36]),
        .Q(env_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[46]),
        .Q(env_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[47]),
        .Q(env_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[48]),
        .Q(env_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[49]),
        .Q(env_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[50]),
        .Q(env_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[51]),
        .Q(env_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[37]),
        .Q(env_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[38]),
        .Q(env_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[39]),
        .Q(env_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[40]),
        .Q(env_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[41]),
        .Q(env_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[42]),
        .Q(env_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[43]),
        .Q(env_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[44]),
        .Q(env_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_E_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[45]),
        .Q(env_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[0]),
        .Q(env_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[10]),
        .Q(env_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[11]),
        .Q(env_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[12]),
        .Q(env_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[13]),
        .Q(env_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[14]),
        .Q(env_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[15]),
        .Q(env_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[1]),
        .Q(env_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[2]),
        .Q(env_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[3]),
        .Q(env_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[4]),
        .Q(env_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[5]),
        .Q(env_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[6]),
        .Q(env_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[7]),
        .Q(env_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[8]),
        .Q(env_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_N_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[9]),
        .Q(env_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[72]),
        .Q(env_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[82]),
        .Q(env_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[83]),
        .Q(env_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[84]),
        .Q(env_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[85]),
        .Q(env_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[86]),
        .Q(env_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[87]),
        .Q(env_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[73]),
        .Q(env_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[74]),
        .Q(env_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[75]),
        .Q(env_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[76]),
        .Q(env_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[77]),
        .Q(env_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[78]),
        .Q(env_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[79]),
        .Q(env_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[80]),
        .Q(env_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_W_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[81]),
        .Q(env_W[9]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[132]),
        .Q(err_EW[0]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[142]),
        .Q(err_EW[10]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[143]),
        .Q(err_EW[11]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[133]),
        .Q(err_EW[1]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[134]),
        .Q(err_EW[2]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[135]),
        .Q(err_EW[3]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[136]),
        .Q(err_EW[4]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[137]),
        .Q(err_EW[5]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[138]),
        .Q(err_EW[6]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[139]),
        .Q(err_EW[7]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[140]),
        .Q(err_EW[8]),
        .R(1'b0));
  FDRE \det_signal.err_EW_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[141]),
        .Q(err_EW[9]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[108]),
        .Q(err_NE[0]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[118]),
        .Q(err_NE[10]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[119]),
        .Q(err_NE[11]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[109]),
        .Q(err_NE[1]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[110]),
        .Q(err_NE[2]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[111]),
        .Q(err_NE[3]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[112]),
        .Q(err_NE[4]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[113]),
        .Q(err_NE[5]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[114]),
        .Q(err_NE[6]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[115]),
        .Q(err_NE[7]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[116]),
        .Q(err_NE[8]),
        .R(1'b0));
  FDRE \det_signal.err_NE_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[117]),
        .Q(err_NE[9]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[120]),
        .Q(err_NW[0]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[130]),
        .Q(err_NW[10]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[131]),
        .Q(err_NW[11]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[121]),
        .Q(err_NW[1]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[122]),
        .Q(err_NW[2]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[123]),
        .Q(err_NW[3]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[124]),
        .Q(err_NW[4]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[125]),
        .Q(err_NW[5]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[126]),
        .Q(err_NW[6]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[127]),
        .Q(err_NW[7]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[128]),
        .Q(err_NW[8]),
        .R(1'b0));
  FDRE \det_signal.err_NW_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[129]),
        .Q(err_NW[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA2A0080)) 
    \det_signal.err_count[0]_i_1 
       (.I0(\det_signal.run_reg[2]__0 ),
        .I1(has_signal),
        .I2(\det_signal.valid_count_reg_n_0 ),
        .I3(\det_signal.err_ov_reg_n_0 ),
        .I4(err_count[0]),
        .O(\det_signal.err_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \det_signal.err_count[1]_i_1 
       (.I0(\det_signal.run_reg[2]__0 ),
        .I1(\det_signal.valid_count_reg_n_0 ),
        .I2(valid_err),
        .I3(valid_env),
        .O(\det_signal.err_count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8288888888888888)) 
    \det_signal.err_count[1]_i_2 
       (.I0(\det_signal.run_reg[2]__0 ),
        .I1(err_count[1]),
        .I2(\det_signal.err_ov_reg_n_0 ),
        .I3(\det_signal.valid_count_reg_n_0 ),
        .I4(has_signal),
        .I5(err_count[0]),
        .O(\det_signal.err_count[1]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.err_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_count[0]_i_1_n_0 ),
        .Q(err_count[0]),
        .R(\det_signal.err_count[1]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.err_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_count[1]_i_2_n_0 ),
        .Q(err_count[1]),
        .R(\det_signal.err_count[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFCCCAAAA)) 
    \det_signal.err_ov_i_1 
       (.I0(\det_signal.err_ov_reg_n_0 ),
        .I1(\det_signal.err_ov_i_2_n_0 ),
        .I2(err_count[0]),
        .I3(err_count[1]),
        .I4(\det_signal.run_reg[1]__0 ),
        .O(\det_signal.err_ov_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \det_signal.err_ov_i_2 
       (.I0(1'b1),
        .I1(\det_signal.run_reg[1]__0 ),
        .O(\det_signal.err_ov_i_2_n_0 ));
  FDRE \det_signal.err_ov_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_ov_i_1_n_0 ),
        .Q(\det_signal.err_ov_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hA0A0200020002000)) 
    \det_signal.has_signal_i_1 
       (.I0(\det_signal.run_reg[2]__0 ),
        .I1(\det_signal.err_ov_reg_n_0 ),
        .I2(\det_signal.valid_count_reg_n_0 ),
        .I3(has_signal),
        .I4(valid_env),
        .I5(valid_err),
        .O(has_signal0_out));
  (* KEEP = "yes" *) 
  FDRE \det_signal.has_signal_reg 
       (.C(clk),
        .CE(1'b1),
        .D(has_signal0_out),
        .Q(has_signal),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.hi_env_sum_E[7]_i_2 
       (.I0(curr_env_sum_E[16]),
        .I1(carry_env_sum_E),
        .O(\det_signal.hi_env_sum_E[7]_i_2_n_0 ));
  FDRE \det_signal.hi_env_sum_E_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[0]),
        .Q(curr_env_sum_E[16]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[10]),
        .Q(curr_env_sum_E[26]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[11]),
        .Q(curr_env_sum_E[27]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[12]),
        .Q(curr_env_sum_E[28]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[13]),
        .Q(curr_env_sum_E[29]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[14]),
        .Q(curr_env_sum_E[30]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[15]),
        .Q(curr_env_sum_E[31]),
        .R(hi_env_sum_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.hi_env_sum_E_reg[15]_i_1 
       (.CI(\det_signal.hi_env_sum_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.hi_env_sum_E_reg[15]_i_1_CO_UNCONNECTED [7],\det_signal.hi_env_sum_E_reg[15]_i_1_n_1 ,\det_signal.hi_env_sum_E_reg[15]_i_1_n_2 ,\det_signal.hi_env_sum_E_reg[15]_i_1_n_3 ,\det_signal.hi_env_sum_E_reg[15]_i_1_n_4 ,\det_signal.hi_env_sum_E_reg[15]_i_1_n_5 ,\det_signal.hi_env_sum_E_reg[15]_i_1_n_6 ,\det_signal.hi_env_sum_E_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(hi_env_sum_E0[15:8]),
        .S(curr_env_sum_E[31:24]));
  FDRE \det_signal.hi_env_sum_E_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[1]),
        .Q(curr_env_sum_E[17]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[2]),
        .Q(curr_env_sum_E[18]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[3]),
        .Q(curr_env_sum_E[19]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[4]),
        .Q(curr_env_sum_E[20]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[5]),
        .Q(curr_env_sum_E[21]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[6]),
        .Q(curr_env_sum_E[22]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[7]),
        .Q(curr_env_sum_E[23]),
        .R(hi_env_sum_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.hi_env_sum_E_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.hi_env_sum_E_reg[7]_i_1_n_0 ,\det_signal.hi_env_sum_E_reg[7]_i_1_n_1 ,\det_signal.hi_env_sum_E_reg[7]_i_1_n_2 ,\det_signal.hi_env_sum_E_reg[7]_i_1_n_3 ,\det_signal.hi_env_sum_E_reg[7]_i_1_n_4 ,\det_signal.hi_env_sum_E_reg[7]_i_1_n_5 ,\det_signal.hi_env_sum_E_reg[7]_i_1_n_6 ,\det_signal.hi_env_sum_E_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,curr_env_sum_E[16]}),
        .O(hi_env_sum_E0[7:0]),
        .S({curr_env_sum_E[23:17],\det_signal.hi_env_sum_E[7]_i_2_n_0 }));
  FDRE \det_signal.hi_env_sum_E_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[8]),
        .Q(curr_env_sum_E[24]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_E_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_E0[9]),
        .Q(curr_env_sum_E[25]),
        .R(hi_env_sum_W__0));
  LUT5 #(
    .INIT(32'h00010000)) 
    \det_signal.hi_env_sum_N[15]_i_1 
       (.I0(curr_signal_counter[2]),
        .I1(curr_signal_counter[3]),
        .I2(curr_signal_counter[0]),
        .I3(curr_signal_counter[1]),
        .I4(\det_signal.hi_env_sum_N[15]_i_3_n_0 ),
        .O(hi_env_sum_W__0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \det_signal.hi_env_sum_N[15]_i_3 
       (.I0(curr_signal_counter[6]),
        .I1(curr_signal_counter[7]),
        .I2(curr_signal_counter[4]),
        .I3(curr_signal_counter[5]),
        .I4(curr_signal_counter[9]),
        .I5(curr_signal_counter[8]),
        .O(\det_signal.hi_env_sum_N[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.hi_env_sum_N[7]_i_2 
       (.I0(curr_env_sum_N[16]),
        .I1(carry_env_sum_N),
        .O(\det_signal.hi_env_sum_N[7]_i_2_n_0 ));
  FDRE \det_signal.hi_env_sum_N_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[0]),
        .Q(curr_env_sum_N[16]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[10]),
        .Q(curr_env_sum_N[26]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[11]),
        .Q(curr_env_sum_N[27]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[12]),
        .Q(curr_env_sum_N[28]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[13]),
        .Q(curr_env_sum_N[29]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[14]),
        .Q(curr_env_sum_N[30]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[15]),
        .Q(curr_env_sum_N[31]),
        .R(hi_env_sum_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.hi_env_sum_N_reg[15]_i_2 
       (.CI(\det_signal.hi_env_sum_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.hi_env_sum_N_reg[15]_i_2_CO_UNCONNECTED [7],\det_signal.hi_env_sum_N_reg[15]_i_2_n_1 ,\det_signal.hi_env_sum_N_reg[15]_i_2_n_2 ,\det_signal.hi_env_sum_N_reg[15]_i_2_n_3 ,\det_signal.hi_env_sum_N_reg[15]_i_2_n_4 ,\det_signal.hi_env_sum_N_reg[15]_i_2_n_5 ,\det_signal.hi_env_sum_N_reg[15]_i_2_n_6 ,\det_signal.hi_env_sum_N_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(hi_env_sum_N0[15:8]),
        .S(curr_env_sum_N[31:24]));
  FDRE \det_signal.hi_env_sum_N_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[1]),
        .Q(curr_env_sum_N[17]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[2]),
        .Q(curr_env_sum_N[18]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[3]),
        .Q(curr_env_sum_N[19]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[4]),
        .Q(curr_env_sum_N[20]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[5]),
        .Q(curr_env_sum_N[21]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[6]),
        .Q(curr_env_sum_N[22]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[7]),
        .Q(curr_env_sum_N[23]),
        .R(hi_env_sum_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.hi_env_sum_N_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.hi_env_sum_N_reg[7]_i_1_n_0 ,\det_signal.hi_env_sum_N_reg[7]_i_1_n_1 ,\det_signal.hi_env_sum_N_reg[7]_i_1_n_2 ,\det_signal.hi_env_sum_N_reg[7]_i_1_n_3 ,\det_signal.hi_env_sum_N_reg[7]_i_1_n_4 ,\det_signal.hi_env_sum_N_reg[7]_i_1_n_5 ,\det_signal.hi_env_sum_N_reg[7]_i_1_n_6 ,\det_signal.hi_env_sum_N_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,curr_env_sum_N[16]}),
        .O(hi_env_sum_N0[7:0]),
        .S({curr_env_sum_N[23:17],\det_signal.hi_env_sum_N[7]_i_2_n_0 }));
  FDRE \det_signal.hi_env_sum_N_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[8]),
        .Q(curr_env_sum_N[24]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_N_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_N0[9]),
        .Q(curr_env_sum_N[25]),
        .R(hi_env_sum_W__0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.hi_env_sum_W[7]_i_2 
       (.I0(curr_env_sum_W[16]),
        .I1(\det_signal.carry_env_sum_W_reg_n_0 ),
        .O(\det_signal.hi_env_sum_W[7]_i_2_n_0 ));
  FDRE \det_signal.hi_env_sum_W_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[0]),
        .Q(curr_env_sum_W[16]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[10]),
        .Q(curr_env_sum_W[26]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[11]),
        .Q(curr_env_sum_W[27]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[12]),
        .Q(curr_env_sum_W[28]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[13]),
        .Q(curr_env_sum_W[29]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[14]),
        .Q(curr_env_sum_W[30]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[15]),
        .Q(curr_env_sum_W[31]),
        .R(hi_env_sum_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.hi_env_sum_W_reg[15]_i_1 
       (.CI(\det_signal.hi_env_sum_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.hi_env_sum_W_reg[15]_i_1_CO_UNCONNECTED [7],\det_signal.hi_env_sum_W_reg[15]_i_1_n_1 ,\det_signal.hi_env_sum_W_reg[15]_i_1_n_2 ,\det_signal.hi_env_sum_W_reg[15]_i_1_n_3 ,\det_signal.hi_env_sum_W_reg[15]_i_1_n_4 ,\det_signal.hi_env_sum_W_reg[15]_i_1_n_5 ,\det_signal.hi_env_sum_W_reg[15]_i_1_n_6 ,\det_signal.hi_env_sum_W_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(hi_env_sum_W0[15:8]),
        .S(curr_env_sum_W[31:24]));
  FDRE \det_signal.hi_env_sum_W_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[1]),
        .Q(curr_env_sum_W[17]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[2]),
        .Q(curr_env_sum_W[18]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[3]),
        .Q(curr_env_sum_W[19]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[4]),
        .Q(curr_env_sum_W[20]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[5]),
        .Q(curr_env_sum_W[21]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[6]),
        .Q(curr_env_sum_W[22]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[7]),
        .Q(curr_env_sum_W[23]),
        .R(hi_env_sum_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.hi_env_sum_W_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.hi_env_sum_W_reg[7]_i_1_n_0 ,\det_signal.hi_env_sum_W_reg[7]_i_1_n_1 ,\det_signal.hi_env_sum_W_reg[7]_i_1_n_2 ,\det_signal.hi_env_sum_W_reg[7]_i_1_n_3 ,\det_signal.hi_env_sum_W_reg[7]_i_1_n_4 ,\det_signal.hi_env_sum_W_reg[7]_i_1_n_5 ,\det_signal.hi_env_sum_W_reg[7]_i_1_n_6 ,\det_signal.hi_env_sum_W_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,curr_env_sum_W[16]}),
        .O(hi_env_sum_W0[7:0]),
        .S({curr_env_sum_W[23:17],\det_signal.hi_env_sum_W[7]_i_2_n_0 }));
  FDRE \det_signal.hi_env_sum_W_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[8]),
        .Q(curr_env_sum_W[24]),
        .R(hi_env_sum_W__0));
  FDRE \det_signal.hi_env_sum_W_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(hi_env_sum_W0[9]),
        .Q(curr_env_sum_W[25]),
        .R(hi_env_sum_W__0));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_10 
       (.I0(curr_env_sum_E[14]),
        .I1(acc_reset),
        .I2(env_E[14]),
        .O(\det_signal.lo_env_sum_E[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_11 
       (.I0(curr_env_sum_E[13]),
        .I1(acc_reset),
        .I2(env_E[13]),
        .O(\det_signal.lo_env_sum_E[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_12 
       (.I0(curr_env_sum_E[12]),
        .I1(acc_reset),
        .I2(env_E[12]),
        .O(\det_signal.lo_env_sum_E[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_13 
       (.I0(curr_env_sum_E[11]),
        .I1(acc_reset),
        .I2(env_E[11]),
        .O(\det_signal.lo_env_sum_E[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_14 
       (.I0(curr_env_sum_E[10]),
        .I1(acc_reset),
        .I2(env_E[10]),
        .O(\det_signal.lo_env_sum_E[15]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_15 
       (.I0(curr_env_sum_E[9]),
        .I1(acc_reset),
        .I2(env_E[9]),
        .O(\det_signal.lo_env_sum_E[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_16 
       (.I0(curr_env_sum_E[8]),
        .I1(acc_reset),
        .I2(env_E[8]),
        .O(\det_signal.lo_env_sum_E[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[15]_i_2 
       (.I0(env_E[14]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[15]_i_3 
       (.I0(env_E[13]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[15]_i_4 
       (.I0(env_E[12]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[15]_i_5 
       (.I0(env_E[11]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[15]_i_6 
       (.I0(env_E[10]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[15]_i_7 
       (.I0(env_E[9]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[15]_i_8 
       (.I0(env_E[8]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[15]_i_9 
       (.I0(curr_env_sum_E[15]),
        .I1(acc_reset),
        .I2(env_E[15]),
        .O(\det_signal.lo_env_sum_E[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_10 
       (.I0(curr_env_sum_E[7]),
        .I1(acc_reset),
        .I2(env_E[7]),
        .O(\det_signal.lo_env_sum_E[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_11 
       (.I0(curr_env_sum_E[6]),
        .I1(acc_reset),
        .I2(env_E[6]),
        .O(\det_signal.lo_env_sum_E[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_12 
       (.I0(curr_env_sum_E[5]),
        .I1(acc_reset),
        .I2(env_E[5]),
        .O(\det_signal.lo_env_sum_E[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_13 
       (.I0(curr_env_sum_E[4]),
        .I1(acc_reset),
        .I2(env_E[4]),
        .O(\det_signal.lo_env_sum_E[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_14 
       (.I0(curr_env_sum_E[3]),
        .I1(acc_reset),
        .I2(env_E[3]),
        .O(\det_signal.lo_env_sum_E[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_15 
       (.I0(curr_env_sum_E[2]),
        .I1(acc_reset),
        .I2(env_E[2]),
        .O(\det_signal.lo_env_sum_E[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_16 
       (.I0(curr_env_sum_E[1]),
        .I1(acc_reset),
        .I2(env_E[1]),
        .O(\det_signal.lo_env_sum_E[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_E[7]_i_17 
       (.I0(curr_env_sum_E[0]),
        .I1(acc_reset),
        .I2(env_E[0]),
        .O(\det_signal.lo_env_sum_E[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_2 
       (.I0(env_E[7]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_3 
       (.I0(env_E[6]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_4 
       (.I0(env_E[5]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_5 
       (.I0(env_E[4]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_6 
       (.I0(env_E[3]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_7 
       (.I0(env_E[2]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_8 
       (.I0(env_E[1]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_E[7]_i_9 
       (.I0(env_E[0]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_E[7]_i_9_n_0 ));
  FDRE \det_signal.lo_env_sum_E_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_15 ),
        .Q(curr_env_sum_E[0]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_13 ),
        .Q(curr_env_sum_E[10]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_12 ),
        .Q(curr_env_sum_E[11]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_11 ),
        .Q(curr_env_sum_E[12]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_10 ),
        .Q(curr_env_sum_E[13]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_9 ),
        .Q(curr_env_sum_E[14]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_8 ),
        .Q(curr_env_sum_E[15]),
        .R(1'b0));
  CARRY8 \det_signal.lo_env_sum_E_reg[15]_i_1 
       (.CI(\det_signal.lo_env_sum_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.lo_env_sum_E_reg[15]_i_1_CO_UNCONNECTED [7],\det_signal.lo_env_sum_E_reg[15]_i_1_n_1 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_2 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_3 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_4 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_5 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_6 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_7 }),
        .DI({1'b0,\det_signal.lo_env_sum_E[15]_i_2_n_0 ,\det_signal.lo_env_sum_E[15]_i_3_n_0 ,\det_signal.lo_env_sum_E[15]_i_4_n_0 ,\det_signal.lo_env_sum_E[15]_i_5_n_0 ,\det_signal.lo_env_sum_E[15]_i_6_n_0 ,\det_signal.lo_env_sum_E[15]_i_7_n_0 ,\det_signal.lo_env_sum_E[15]_i_8_n_0 }),
        .O({\det_signal.lo_env_sum_E_reg[15]_i_1_n_8 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_9 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_10 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_11 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_12 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_13 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_14 ,\det_signal.lo_env_sum_E_reg[15]_i_1_n_15 }),
        .S({\det_signal.lo_env_sum_E[15]_i_9_n_0 ,\det_signal.lo_env_sum_E[15]_i_10_n_0 ,\det_signal.lo_env_sum_E[15]_i_11_n_0 ,\det_signal.lo_env_sum_E[15]_i_12_n_0 ,\det_signal.lo_env_sum_E[15]_i_13_n_0 ,\det_signal.lo_env_sum_E[15]_i_14_n_0 ,\det_signal.lo_env_sum_E[15]_i_15_n_0 ,\det_signal.lo_env_sum_E[15]_i_16_n_0 }));
  FDRE \det_signal.lo_env_sum_E_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_14 ),
        .Q(curr_env_sum_E[1]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_13 ),
        .Q(curr_env_sum_E[2]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_12 ),
        .Q(curr_env_sum_E[3]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_11 ),
        .Q(curr_env_sum_E[4]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_10 ),
        .Q(curr_env_sum_E[5]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_9 ),
        .Q(curr_env_sum_E[6]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[7]_i_1_n_8 ),
        .Q(curr_env_sum_E[7]),
        .R(1'b0));
  CARRY8 \det_signal.lo_env_sum_E_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.lo_env_sum_E_reg[7]_i_1_n_0 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_1 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_2 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_3 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_4 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_5 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_6 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_7 }),
        .DI({\det_signal.lo_env_sum_E[7]_i_2_n_0 ,\det_signal.lo_env_sum_E[7]_i_3_n_0 ,\det_signal.lo_env_sum_E[7]_i_4_n_0 ,\det_signal.lo_env_sum_E[7]_i_5_n_0 ,\det_signal.lo_env_sum_E[7]_i_6_n_0 ,\det_signal.lo_env_sum_E[7]_i_7_n_0 ,\det_signal.lo_env_sum_E[7]_i_8_n_0 ,\det_signal.lo_env_sum_E[7]_i_9_n_0 }),
        .O({\det_signal.lo_env_sum_E_reg[7]_i_1_n_8 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_9 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_10 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_11 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_12 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_13 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_14 ,\det_signal.lo_env_sum_E_reg[7]_i_1_n_15 }),
        .S({\det_signal.lo_env_sum_E[7]_i_10_n_0 ,\det_signal.lo_env_sum_E[7]_i_11_n_0 ,\det_signal.lo_env_sum_E[7]_i_12_n_0 ,\det_signal.lo_env_sum_E[7]_i_13_n_0 ,\det_signal.lo_env_sum_E[7]_i_14_n_0 ,\det_signal.lo_env_sum_E[7]_i_15_n_0 ,\det_signal.lo_env_sum_E[7]_i_16_n_0 ,\det_signal.lo_env_sum_E[7]_i_17_n_0 }));
  FDRE \det_signal.lo_env_sum_E_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_15 ),
        .Q(curr_env_sum_E[8]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_E_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_E_reg[15]_i_1_n_14 ),
        .Q(curr_env_sum_E[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_10 
       (.I0(curr_env_sum_N[14]),
        .I1(acc_reset),
        .I2(env_N[14]),
        .O(\det_signal.lo_env_sum_N[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_11 
       (.I0(curr_env_sum_N[13]),
        .I1(acc_reset),
        .I2(env_N[13]),
        .O(\det_signal.lo_env_sum_N[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_12 
       (.I0(curr_env_sum_N[12]),
        .I1(acc_reset),
        .I2(env_N[12]),
        .O(\det_signal.lo_env_sum_N[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_13 
       (.I0(curr_env_sum_N[11]),
        .I1(acc_reset),
        .I2(env_N[11]),
        .O(\det_signal.lo_env_sum_N[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_14 
       (.I0(curr_env_sum_N[10]),
        .I1(acc_reset),
        .I2(env_N[10]),
        .O(\det_signal.lo_env_sum_N[15]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_15 
       (.I0(curr_env_sum_N[9]),
        .I1(acc_reset),
        .I2(env_N[9]),
        .O(\det_signal.lo_env_sum_N[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_16 
       (.I0(curr_env_sum_N[8]),
        .I1(acc_reset),
        .I2(env_N[8]),
        .O(\det_signal.lo_env_sum_N[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[15]_i_2 
       (.I0(env_N[14]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[15]_i_3 
       (.I0(env_N[13]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[15]_i_4 
       (.I0(env_N[12]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[15]_i_5 
       (.I0(env_N[11]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[15]_i_6 
       (.I0(env_N[10]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[15]_i_7 
       (.I0(env_N[9]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[15]_i_8 
       (.I0(env_N[8]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[15]_i_9 
       (.I0(curr_env_sum_N[15]),
        .I1(acc_reset),
        .I2(env_N[15]),
        .O(\det_signal.lo_env_sum_N[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_10 
       (.I0(curr_env_sum_N[7]),
        .I1(acc_reset),
        .I2(env_N[7]),
        .O(\det_signal.lo_env_sum_N[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_11 
       (.I0(curr_env_sum_N[6]),
        .I1(acc_reset),
        .I2(env_N[6]),
        .O(\det_signal.lo_env_sum_N[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_12 
       (.I0(curr_env_sum_N[5]),
        .I1(acc_reset),
        .I2(env_N[5]),
        .O(\det_signal.lo_env_sum_N[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_13 
       (.I0(curr_env_sum_N[4]),
        .I1(acc_reset),
        .I2(env_N[4]),
        .O(\det_signal.lo_env_sum_N[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_14 
       (.I0(curr_env_sum_N[3]),
        .I1(acc_reset),
        .I2(env_N[3]),
        .O(\det_signal.lo_env_sum_N[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_15 
       (.I0(curr_env_sum_N[2]),
        .I1(acc_reset),
        .I2(env_N[2]),
        .O(\det_signal.lo_env_sum_N[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_16 
       (.I0(curr_env_sum_N[1]),
        .I1(acc_reset),
        .I2(env_N[1]),
        .O(\det_signal.lo_env_sum_N[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_N[7]_i_17 
       (.I0(curr_env_sum_N[0]),
        .I1(acc_reset),
        .I2(env_N[0]),
        .O(\det_signal.lo_env_sum_N[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_2 
       (.I0(env_N[7]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_3 
       (.I0(env_N[6]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_4 
       (.I0(env_N[5]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_5 
       (.I0(env_N[4]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_6 
       (.I0(env_N[3]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_7 
       (.I0(env_N[2]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_8 
       (.I0(env_N[1]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_N[7]_i_9 
       (.I0(env_N[0]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_N[7]_i_9_n_0 ));
  FDRE \det_signal.lo_env_sum_N_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_15 ),
        .Q(curr_env_sum_N[0]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_13 ),
        .Q(curr_env_sum_N[10]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_12 ),
        .Q(curr_env_sum_N[11]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_11 ),
        .Q(curr_env_sum_N[12]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_10 ),
        .Q(curr_env_sum_N[13]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_9 ),
        .Q(curr_env_sum_N[14]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_8 ),
        .Q(curr_env_sum_N[15]),
        .R(1'b0));
  CARRY8 \det_signal.lo_env_sum_N_reg[15]_i_1 
       (.CI(\det_signal.lo_env_sum_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.lo_env_sum_N_reg[15]_i_1_CO_UNCONNECTED [7],\det_signal.lo_env_sum_N_reg[15]_i_1_n_1 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_2 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_3 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_4 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_5 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_6 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_7 }),
        .DI({1'b0,\det_signal.lo_env_sum_N[15]_i_2_n_0 ,\det_signal.lo_env_sum_N[15]_i_3_n_0 ,\det_signal.lo_env_sum_N[15]_i_4_n_0 ,\det_signal.lo_env_sum_N[15]_i_5_n_0 ,\det_signal.lo_env_sum_N[15]_i_6_n_0 ,\det_signal.lo_env_sum_N[15]_i_7_n_0 ,\det_signal.lo_env_sum_N[15]_i_8_n_0 }),
        .O({\det_signal.lo_env_sum_N_reg[15]_i_1_n_8 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_9 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_10 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_11 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_12 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_13 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_14 ,\det_signal.lo_env_sum_N_reg[15]_i_1_n_15 }),
        .S({\det_signal.lo_env_sum_N[15]_i_9_n_0 ,\det_signal.lo_env_sum_N[15]_i_10_n_0 ,\det_signal.lo_env_sum_N[15]_i_11_n_0 ,\det_signal.lo_env_sum_N[15]_i_12_n_0 ,\det_signal.lo_env_sum_N[15]_i_13_n_0 ,\det_signal.lo_env_sum_N[15]_i_14_n_0 ,\det_signal.lo_env_sum_N[15]_i_15_n_0 ,\det_signal.lo_env_sum_N[15]_i_16_n_0 }));
  FDRE \det_signal.lo_env_sum_N_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_14 ),
        .Q(curr_env_sum_N[1]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_13 ),
        .Q(curr_env_sum_N[2]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_12 ),
        .Q(curr_env_sum_N[3]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_11 ),
        .Q(curr_env_sum_N[4]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_10 ),
        .Q(curr_env_sum_N[5]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_9 ),
        .Q(curr_env_sum_N[6]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[7]_i_1_n_8 ),
        .Q(curr_env_sum_N[7]),
        .R(1'b0));
  CARRY8 \det_signal.lo_env_sum_N_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.lo_env_sum_N_reg[7]_i_1_n_0 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_1 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_2 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_3 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_4 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_5 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_6 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_7 }),
        .DI({\det_signal.lo_env_sum_N[7]_i_2_n_0 ,\det_signal.lo_env_sum_N[7]_i_3_n_0 ,\det_signal.lo_env_sum_N[7]_i_4_n_0 ,\det_signal.lo_env_sum_N[7]_i_5_n_0 ,\det_signal.lo_env_sum_N[7]_i_6_n_0 ,\det_signal.lo_env_sum_N[7]_i_7_n_0 ,\det_signal.lo_env_sum_N[7]_i_8_n_0 ,\det_signal.lo_env_sum_N[7]_i_9_n_0 }),
        .O({\det_signal.lo_env_sum_N_reg[7]_i_1_n_8 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_9 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_10 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_11 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_12 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_13 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_14 ,\det_signal.lo_env_sum_N_reg[7]_i_1_n_15 }),
        .S({\det_signal.lo_env_sum_N[7]_i_10_n_0 ,\det_signal.lo_env_sum_N[7]_i_11_n_0 ,\det_signal.lo_env_sum_N[7]_i_12_n_0 ,\det_signal.lo_env_sum_N[7]_i_13_n_0 ,\det_signal.lo_env_sum_N[7]_i_14_n_0 ,\det_signal.lo_env_sum_N[7]_i_15_n_0 ,\det_signal.lo_env_sum_N[7]_i_16_n_0 ,\det_signal.lo_env_sum_N[7]_i_17_n_0 }));
  FDRE \det_signal.lo_env_sum_N_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_15 ),
        .Q(curr_env_sum_N[8]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_N_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_N_reg[15]_i_1_n_14 ),
        .Q(curr_env_sum_N[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_10 
       (.I0(curr_env_sum_W[14]),
        .I1(acc_reset),
        .I2(env_W[14]),
        .O(\det_signal.lo_env_sum_W[15]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_11 
       (.I0(curr_env_sum_W[13]),
        .I1(acc_reset),
        .I2(env_W[13]),
        .O(\det_signal.lo_env_sum_W[15]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_12 
       (.I0(curr_env_sum_W[12]),
        .I1(acc_reset),
        .I2(env_W[12]),
        .O(\det_signal.lo_env_sum_W[15]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_13 
       (.I0(curr_env_sum_W[11]),
        .I1(acc_reset),
        .I2(env_W[11]),
        .O(\det_signal.lo_env_sum_W[15]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_14 
       (.I0(curr_env_sum_W[10]),
        .I1(acc_reset),
        .I2(env_W[10]),
        .O(\det_signal.lo_env_sum_W[15]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_15 
       (.I0(curr_env_sum_W[9]),
        .I1(acc_reset),
        .I2(env_W[9]),
        .O(\det_signal.lo_env_sum_W[15]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_16 
       (.I0(curr_env_sum_W[8]),
        .I1(acc_reset),
        .I2(env_W[8]),
        .O(\det_signal.lo_env_sum_W[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[15]_i_2 
       (.I0(env_W[14]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[15]_i_3 
       (.I0(env_W[13]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[15]_i_4 
       (.I0(env_W[12]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[15]_i_5 
       (.I0(env_W[11]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[15]_i_6 
       (.I0(env_W[10]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[15]_i_7 
       (.I0(env_W[9]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[15]_i_8 
       (.I0(env_W[8]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[15]_i_9 
       (.I0(curr_env_sum_W[15]),
        .I1(acc_reset),
        .I2(env_W[15]),
        .O(\det_signal.lo_env_sum_W[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_10 
       (.I0(curr_env_sum_W[7]),
        .I1(acc_reset),
        .I2(env_W[7]),
        .O(\det_signal.lo_env_sum_W[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_11 
       (.I0(curr_env_sum_W[6]),
        .I1(acc_reset),
        .I2(env_W[6]),
        .O(\det_signal.lo_env_sum_W[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_12 
       (.I0(curr_env_sum_W[5]),
        .I1(acc_reset),
        .I2(env_W[5]),
        .O(\det_signal.lo_env_sum_W[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_13 
       (.I0(curr_env_sum_W[4]),
        .I1(acc_reset),
        .I2(env_W[4]),
        .O(\det_signal.lo_env_sum_W[7]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_14 
       (.I0(curr_env_sum_W[3]),
        .I1(acc_reset),
        .I2(env_W[3]),
        .O(\det_signal.lo_env_sum_W[7]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_15 
       (.I0(curr_env_sum_W[2]),
        .I1(acc_reset),
        .I2(env_W[2]),
        .O(\det_signal.lo_env_sum_W[7]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_16 
       (.I0(curr_env_sum_W[1]),
        .I1(acc_reset),
        .I2(env_W[1]),
        .O(\det_signal.lo_env_sum_W[7]_i_16_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \det_signal.lo_env_sum_W[7]_i_17 
       (.I0(curr_env_sum_W[0]),
        .I1(acc_reset),
        .I2(env_W[0]),
        .O(\det_signal.lo_env_sum_W[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_2 
       (.I0(env_W[7]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_3 
       (.I0(env_W[6]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_4 
       (.I0(env_W[5]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_5 
       (.I0(env_W[4]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_6 
       (.I0(env_W[3]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_7 
       (.I0(env_W[2]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_8 
       (.I0(env_W[1]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.lo_env_sum_W[7]_i_9 
       (.I0(env_W[0]),
        .I1(acc_reset),
        .O(\det_signal.lo_env_sum_W[7]_i_9_n_0 ));
  FDRE \det_signal.lo_env_sum_W_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_15 ),
        .Q(curr_env_sum_W[0]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_13 ),
        .Q(curr_env_sum_W[10]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_12 ),
        .Q(curr_env_sum_W[11]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_11 ),
        .Q(curr_env_sum_W[12]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_10 ),
        .Q(curr_env_sum_W[13]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_9 ),
        .Q(curr_env_sum_W[14]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_8 ),
        .Q(curr_env_sum_W[15]),
        .R(1'b0));
  CARRY8 \det_signal.lo_env_sum_W_reg[15]_i_1 
       (.CI(\det_signal.lo_env_sum_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.lo_env_sum_W_reg[15]_i_1_CO_UNCONNECTED [7],\det_signal.lo_env_sum_W_reg[15]_i_1_n_1 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_2 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_3 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_4 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_5 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_6 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_7 }),
        .DI({1'b0,\det_signal.lo_env_sum_W[15]_i_2_n_0 ,\det_signal.lo_env_sum_W[15]_i_3_n_0 ,\det_signal.lo_env_sum_W[15]_i_4_n_0 ,\det_signal.lo_env_sum_W[15]_i_5_n_0 ,\det_signal.lo_env_sum_W[15]_i_6_n_0 ,\det_signal.lo_env_sum_W[15]_i_7_n_0 ,\det_signal.lo_env_sum_W[15]_i_8_n_0 }),
        .O({\det_signal.lo_env_sum_W_reg[15]_i_1_n_8 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_9 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_10 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_11 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_12 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_13 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_14 ,\det_signal.lo_env_sum_W_reg[15]_i_1_n_15 }),
        .S({\det_signal.lo_env_sum_W[15]_i_9_n_0 ,\det_signal.lo_env_sum_W[15]_i_10_n_0 ,\det_signal.lo_env_sum_W[15]_i_11_n_0 ,\det_signal.lo_env_sum_W[15]_i_12_n_0 ,\det_signal.lo_env_sum_W[15]_i_13_n_0 ,\det_signal.lo_env_sum_W[15]_i_14_n_0 ,\det_signal.lo_env_sum_W[15]_i_15_n_0 ,\det_signal.lo_env_sum_W[15]_i_16_n_0 }));
  FDRE \det_signal.lo_env_sum_W_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_14 ),
        .Q(curr_env_sum_W[1]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_13 ),
        .Q(curr_env_sum_W[2]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_12 ),
        .Q(curr_env_sum_W[3]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_11 ),
        .Q(curr_env_sum_W[4]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_10 ),
        .Q(curr_env_sum_W[5]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_9 ),
        .Q(curr_env_sum_W[6]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[7]_i_1_n_8 ),
        .Q(curr_env_sum_W[7]),
        .R(1'b0));
  CARRY8 \det_signal.lo_env_sum_W_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.lo_env_sum_W_reg[7]_i_1_n_0 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_1 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_2 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_3 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_4 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_5 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_6 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_7 }),
        .DI({\det_signal.lo_env_sum_W[7]_i_2_n_0 ,\det_signal.lo_env_sum_W[7]_i_3_n_0 ,\det_signal.lo_env_sum_W[7]_i_4_n_0 ,\det_signal.lo_env_sum_W[7]_i_5_n_0 ,\det_signal.lo_env_sum_W[7]_i_6_n_0 ,\det_signal.lo_env_sum_W[7]_i_7_n_0 ,\det_signal.lo_env_sum_W[7]_i_8_n_0 ,\det_signal.lo_env_sum_W[7]_i_9_n_0 }),
        .O({\det_signal.lo_env_sum_W_reg[7]_i_1_n_8 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_9 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_10 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_11 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_12 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_13 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_14 ,\det_signal.lo_env_sum_W_reg[7]_i_1_n_15 }),
        .S({\det_signal.lo_env_sum_W[7]_i_10_n_0 ,\det_signal.lo_env_sum_W[7]_i_11_n_0 ,\det_signal.lo_env_sum_W[7]_i_12_n_0 ,\det_signal.lo_env_sum_W[7]_i_13_n_0 ,\det_signal.lo_env_sum_W[7]_i_14_n_0 ,\det_signal.lo_env_sum_W[7]_i_15_n_0 ,\det_signal.lo_env_sum_W[7]_i_16_n_0 ,\det_signal.lo_env_sum_W[7]_i_17_n_0 }));
  FDRE \det_signal.lo_env_sum_W_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_15 ),
        .Q(curr_env_sum_W[8]),
        .R(1'b0));
  FDRE \det_signal.lo_env_sum_W_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.lo_env_sum_W_reg[15]_i_1_n_14 ),
        .Q(curr_env_sum_W[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h02000000)) 
    \det_signal.max_doa_diff[11]_i_1 
       (.I0(config_wr),
        .I1(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I2(config_adr[2]),
        .I3(config_adr[0]),
        .I4(config_adr[1]),
        .O(max_doa_diff));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \det_signal.max_doa_diff[11]_i_2 
       (.I0(config_adr[7]),
        .I1(config_adr[4]),
        .I2(config_adr[3]),
        .I3(config_adr[6]),
        .I4(config_adr[5]),
        .O(\det_signal.max_doa_diff[11]_i_2_n_0 ));
  FDRE \det_signal.max_doa_diff_reg[0] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[0]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[10] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[10]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[11] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[11]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[1] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[1]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[2] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[2]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[3] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[3]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[4] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[4]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[5] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[5]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[6] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[6]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[7] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[7]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[8] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[8]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[9] 
       (.C(clk),
        .CE(max_doa_diff),
        .D(config_data[9]),
        .Q(\det_signal.max_doa_diff_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000002)) 
    \det_signal.min_env[15]_i_1 
       (.I0(config_wr),
        .I1(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I2(config_adr[1]),
        .I3(config_adr[0]),
        .I4(config_adr[2]),
        .O(min_env));
  FDRE \det_signal.min_env_reg[0] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[0]),
        .Q(\det_signal.min_env_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[10] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[10]),
        .Q(\det_signal.min_env_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[11] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[11]),
        .Q(\det_signal.min_env_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[12] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[12]),
        .Q(\det_signal.min_env_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[13] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[13]),
        .Q(\det_signal.min_env_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[14] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[14]),
        .Q(\det_signal.min_env_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[15] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[15]),
        .Q(\det_signal.min_env_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[1] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[1]),
        .Q(\det_signal.min_env_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[2] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[2]),
        .Q(\det_signal.min_env_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[3] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[3]),
        .Q(\det_signal.min_env_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[4] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[4]),
        .Q(\det_signal.min_env_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[5] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[5]),
        .Q(\det_signal.min_env_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[6] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[6]),
        .Q(\det_signal.min_env_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[7] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[7]),
        .Q(\det_signal.min_env_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[8] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[8]),
        .Q(\det_signal.min_env_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[9] 
       (.C(clk),
        .CE(min_env),
        .D(config_data[9]),
        .Q(\det_signal.min_env_reg_n_0_[9] ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[52]),
        .Q(phase_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[62]),
        .Q(phase_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[63]),
        .Q(phase_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[64]),
        .Q(phase_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[65]),
        .Q(phase_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[66]),
        .Q(phase_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[67]),
        .Q(phase_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[16] 
       (.C(clk),
        .CE(active),
        .D(data[68]),
        .Q(phase_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[17] 
       (.C(clk),
        .CE(active),
        .D(data[69]),
        .Q(phase_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[18] 
       (.C(clk),
        .CE(active),
        .D(data[70]),
        .Q(phase_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[19] 
       (.C(clk),
        .CE(active),
        .D(data[71]),
        .Q(phase_E[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[53]),
        .Q(phase_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[54]),
        .Q(phase_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[55]),
        .Q(phase_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[56]),
        .Q(phase_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[57]),
        .Q(phase_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[58]),
        .Q(phase_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[59]),
        .Q(phase_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[60]),
        .Q(phase_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_E_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[61]),
        .Q(phase_E[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[16]),
        .Q(phase_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[26]),
        .Q(phase_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[27]),
        .Q(phase_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[28]),
        .Q(phase_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[29]),
        .Q(phase_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[30]),
        .Q(phase_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[31]),
        .Q(phase_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[16] 
       (.C(clk),
        .CE(active),
        .D(data[32]),
        .Q(phase_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[17] 
       (.C(clk),
        .CE(active),
        .D(data[33]),
        .Q(phase_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[18] 
       (.C(clk),
        .CE(active),
        .D(data[34]),
        .Q(phase_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[19] 
       (.C(clk),
        .CE(active),
        .D(data[35]),
        .Q(phase_N[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[17]),
        .Q(phase_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[18]),
        .Q(phase_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[19]),
        .Q(phase_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[20]),
        .Q(phase_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[21]),
        .Q(phase_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[22]),
        .Q(phase_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[23]),
        .Q(phase_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[24]),
        .Q(phase_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_N_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[25]),
        .Q(phase_N[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[88]),
        .Q(phase_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[98]),
        .Q(phase_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[99]),
        .Q(phase_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[100]),
        .Q(phase_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[101]),
        .Q(phase_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[102]),
        .Q(phase_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[103]),
        .Q(phase_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[16] 
       (.C(clk),
        .CE(active),
        .D(data[104]),
        .Q(phase_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[17] 
       (.C(clk),
        .CE(active),
        .D(data[105]),
        .Q(phase_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[18] 
       (.C(clk),
        .CE(active),
        .D(data[106]),
        .Q(phase_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[19] 
       (.C(clk),
        .CE(active),
        .D(data[107]),
        .Q(phase_W[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[89]),
        .Q(phase_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[90]),
        .Q(phase_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[91]),
        .Q(phase_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[92]),
        .Q(phase_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[93]),
        .Q(phase_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[94]),
        .Q(phase_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[95]),
        .Q(phase_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[96]),
        .Q(phase_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.phase_W_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[97]),
        .Q(phase_W[9]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[0]),
        .Q(prev_phase_E[0]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[10]),
        .Q(prev_phase_E[10]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[11]),
        .Q(prev_phase_E[11]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[12]),
        .Q(prev_phase_E[12]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[13]),
        .Q(prev_phase_E[13]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[14]),
        .Q(prev_phase_E[14]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[15]),
        .Q(prev_phase_E[15]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[16]),
        .Q(prev_phase_E[16]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[17]),
        .Q(prev_phase_E[17]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[18]),
        .Q(prev_phase_E[18]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[19]),
        .Q(prev_phase_E[19]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[1]),
        .Q(prev_phase_E[1]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[2]),
        .Q(prev_phase_E[2]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[3]),
        .Q(prev_phase_E[3]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[4]),
        .Q(prev_phase_E[4]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[5]),
        .Q(prev_phase_E[5]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[6]),
        .Q(prev_phase_E[6]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[7]),
        .Q(prev_phase_E[7]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[8]),
        .Q(prev_phase_E[8]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_E_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_E[9]),
        .Q(prev_phase_E[9]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[0]),
        .Q(prev_phase_N[0]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[10]),
        .Q(prev_phase_N[10]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[11]),
        .Q(prev_phase_N[11]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[12]),
        .Q(prev_phase_N[12]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[13]),
        .Q(prev_phase_N[13]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[14]),
        .Q(prev_phase_N[14]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[15]),
        .Q(prev_phase_N[15]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[16]),
        .Q(prev_phase_N[16]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[17]),
        .Q(prev_phase_N[17]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[18]),
        .Q(prev_phase_N[18]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[19]),
        .Q(prev_phase_N[19]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[1]),
        .Q(prev_phase_N[1]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[2]),
        .Q(prev_phase_N[2]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[3]),
        .Q(prev_phase_N[3]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[4]),
        .Q(prev_phase_N[4]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[5]),
        .Q(prev_phase_N[5]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[6]),
        .Q(prev_phase_N[6]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[7]),
        .Q(prev_phase_N[7]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[8]),
        .Q(prev_phase_N[8]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_N_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_N[9]),
        .Q(prev_phase_N[9]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[0]),
        .Q(prev_phase_W[0]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[10]),
        .Q(prev_phase_W[10]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[11]),
        .Q(prev_phase_W[11]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[12]),
        .Q(prev_phase_W[12]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[13]),
        .Q(prev_phase_W[13]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[14]),
        .Q(prev_phase_W[14]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[15]),
        .Q(prev_phase_W[15]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[16]),
        .Q(prev_phase_W[16]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[17]),
        .Q(prev_phase_W[17]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[18]),
        .Q(prev_phase_W[18]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[19]),
        .Q(prev_phase_W[19]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[1]),
        .Q(prev_phase_W[1]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[2]),
        .Q(prev_phase_W[2]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[3]),
        .Q(prev_phase_W[3]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[4]),
        .Q(prev_phase_W[4]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[5]),
        .Q(prev_phase_W[5]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[6]),
        .Q(prev_phase_W[6]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[7]),
        .Q(prev_phase_W[7]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[8]),
        .Q(prev_phase_W[8]),
        .R(1'b0));
  FDRE \det_signal.prev_phase_W_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(phase_W[9]),
        .Q(prev_phase_W[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.proc_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(proc_signal),
        .Q(proc_done),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \det_signal.proc_signal_i_1 
       (.I0(proc_signal),
        .I1(start_proc),
        .I2(proc_done),
        .O(\det_signal.proc_signal_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.proc_signal_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.proc_signal_i_1_n_0 ),
        .Q(proc_signal),
        .R(1'b0));
  FDRE \det_signal.run_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(active),
        .Q(\det_signal.run_reg[0]__0 ),
        .R(1'b0));
  FDRE \det_signal.run_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.run_reg[0]__0 ),
        .Q(\det_signal.run_reg[1]__0 ),
        .R(1'b0));
  FDRE \det_signal.run_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.run_reg[1]__0 ),
        .Q(\det_signal.run_reg[2]__0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.sample_counter[0]_i_1 
       (.I0(\det_signal.run_reg[2]__0 ),
        .O(clear));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.sample_counter[0]_i_3 
       (.I0(\det_signal.sample_counter_reg [0]),
        .O(\det_signal.sample_counter[0]_i_3_n_0 ));
  FDRE \det_signal.sample_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_15 ),
        .Q(\det_signal.sample_counter_reg [0]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \det_signal.sample_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.sample_counter_reg[0]_i_2_n_0 ,\det_signal.sample_counter_reg[0]_i_2_n_1 ,\det_signal.sample_counter_reg[0]_i_2_n_2 ,\det_signal.sample_counter_reg[0]_i_2_n_3 ,\det_signal.sample_counter_reg[0]_i_2_n_4 ,\det_signal.sample_counter_reg[0]_i_2_n_5 ,\det_signal.sample_counter_reg[0]_i_2_n_6 ,\det_signal.sample_counter_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.sample_counter_reg[0]_i_2_n_8 ,\det_signal.sample_counter_reg[0]_i_2_n_9 ,\det_signal.sample_counter_reg[0]_i_2_n_10 ,\det_signal.sample_counter_reg[0]_i_2_n_11 ,\det_signal.sample_counter_reg[0]_i_2_n_12 ,\det_signal.sample_counter_reg[0]_i_2_n_13 ,\det_signal.sample_counter_reg[0]_i_2_n_14 ,\det_signal.sample_counter_reg[0]_i_2_n_15 }),
        .S({\det_signal.sample_counter_reg [7:1],\det_signal.sample_counter[0]_i_3_n_0 }));
  FDRE \det_signal.sample_counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_13 ),
        .Q(\det_signal.sample_counter_reg [10]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_12 ),
        .Q(\det_signal.sample_counter_reg [11]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_11 ),
        .Q(\det_signal.sample_counter_reg [12]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_10 ),
        .Q(\det_signal.sample_counter_reg [13]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_9 ),
        .Q(\det_signal.sample_counter_reg [14]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_8 ),
        .Q(\det_signal.sample_counter_reg [15]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_15 ),
        .Q(\det_signal.sample_counter_reg [16]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \det_signal.sample_counter_reg[16]_i_1 
       (.CI(\det_signal.sample_counter_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.sample_counter_reg[16]_i_1_n_0 ,\det_signal.sample_counter_reg[16]_i_1_n_1 ,\det_signal.sample_counter_reg[16]_i_1_n_2 ,\det_signal.sample_counter_reg[16]_i_1_n_3 ,\det_signal.sample_counter_reg[16]_i_1_n_4 ,\det_signal.sample_counter_reg[16]_i_1_n_5 ,\det_signal.sample_counter_reg[16]_i_1_n_6 ,\det_signal.sample_counter_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.sample_counter_reg[16]_i_1_n_8 ,\det_signal.sample_counter_reg[16]_i_1_n_9 ,\det_signal.sample_counter_reg[16]_i_1_n_10 ,\det_signal.sample_counter_reg[16]_i_1_n_11 ,\det_signal.sample_counter_reg[16]_i_1_n_12 ,\det_signal.sample_counter_reg[16]_i_1_n_13 ,\det_signal.sample_counter_reg[16]_i_1_n_14 ,\det_signal.sample_counter_reg[16]_i_1_n_15 }),
        .S(\det_signal.sample_counter_reg [23:16]));
  FDRE \det_signal.sample_counter_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_14 ),
        .Q(\det_signal.sample_counter_reg [17]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_13 ),
        .Q(\det_signal.sample_counter_reg [18]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_12 ),
        .Q(\det_signal.sample_counter_reg [19]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_14 ),
        .Q(\det_signal.sample_counter_reg [1]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_11 ),
        .Q(\det_signal.sample_counter_reg [20]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_10 ),
        .Q(\det_signal.sample_counter_reg [21]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_9 ),
        .Q(\det_signal.sample_counter_reg [22]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[16]_i_1_n_8 ),
        .Q(\det_signal.sample_counter_reg [23]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_15 ),
        .Q(\det_signal.sample_counter_reg [24]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \det_signal.sample_counter_reg[24]_i_1 
       (.CI(\det_signal.sample_counter_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.sample_counter_reg[24]_i_1_CO_UNCONNECTED [7],\det_signal.sample_counter_reg[24]_i_1_n_1 ,\det_signal.sample_counter_reg[24]_i_1_n_2 ,\det_signal.sample_counter_reg[24]_i_1_n_3 ,\det_signal.sample_counter_reg[24]_i_1_n_4 ,\det_signal.sample_counter_reg[24]_i_1_n_5 ,\det_signal.sample_counter_reg[24]_i_1_n_6 ,\det_signal.sample_counter_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.sample_counter_reg[24]_i_1_n_8 ,\det_signal.sample_counter_reg[24]_i_1_n_9 ,\det_signal.sample_counter_reg[24]_i_1_n_10 ,\det_signal.sample_counter_reg[24]_i_1_n_11 ,\det_signal.sample_counter_reg[24]_i_1_n_12 ,\det_signal.sample_counter_reg[24]_i_1_n_13 ,\det_signal.sample_counter_reg[24]_i_1_n_14 ,\det_signal.sample_counter_reg[24]_i_1_n_15 }),
        .S(\det_signal.sample_counter_reg [31:24]));
  FDRE \det_signal.sample_counter_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_14 ),
        .Q(\det_signal.sample_counter_reg [25]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_13 ),
        .Q(\det_signal.sample_counter_reg [26]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_12 ),
        .Q(\det_signal.sample_counter_reg [27]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_11 ),
        .Q(\det_signal.sample_counter_reg [28]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_10 ),
        .Q(\det_signal.sample_counter_reg [29]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_13 ),
        .Q(\det_signal.sample_counter_reg [2]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_9 ),
        .Q(\det_signal.sample_counter_reg [30]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[24]_i_1_n_8 ),
        .Q(\det_signal.sample_counter_reg [31]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_12 ),
        .Q(\det_signal.sample_counter_reg [3]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_11 ),
        .Q(\det_signal.sample_counter_reg [4]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_10 ),
        .Q(\det_signal.sample_counter_reg [5]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_9 ),
        .Q(\det_signal.sample_counter_reg [6]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[0]_i_2_n_8 ),
        .Q(\det_signal.sample_counter_reg [7]),
        .R(clear));
  FDRE \det_signal.sample_counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_15 ),
        .Q(\det_signal.sample_counter_reg [8]),
        .R(clear));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \det_signal.sample_counter_reg[8]_i_1 
       (.CI(\det_signal.sample_counter_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.sample_counter_reg[8]_i_1_n_0 ,\det_signal.sample_counter_reg[8]_i_1_n_1 ,\det_signal.sample_counter_reg[8]_i_1_n_2 ,\det_signal.sample_counter_reg[8]_i_1_n_3 ,\det_signal.sample_counter_reg[8]_i_1_n_4 ,\det_signal.sample_counter_reg[8]_i_1_n_5 ,\det_signal.sample_counter_reg[8]_i_1_n_6 ,\det_signal.sample_counter_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.sample_counter_reg[8]_i_1_n_8 ,\det_signal.sample_counter_reg[8]_i_1_n_9 ,\det_signal.sample_counter_reg[8]_i_1_n_10 ,\det_signal.sample_counter_reg[8]_i_1_n_11 ,\det_signal.sample_counter_reg[8]_i_1_n_12 ,\det_signal.sample_counter_reg[8]_i_1_n_13 ,\det_signal.sample_counter_reg[8]_i_1_n_14 ,\det_signal.sample_counter_reg[8]_i_1_n_15 }),
        .S(\det_signal.sample_counter_reg [15:8]));
  FDRE \det_signal.sample_counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_counter_reg[8]_i_1_n_14 ),
        .Q(\det_signal.sample_counter_reg [9]),
        .R(clear));
  FDRE \det_signal.signal_counter_reg[0] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[0]),
        .Q(\det_signal.signal_counter_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[1] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[1]),
        .Q(\det_signal.signal_counter_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[2] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[2]),
        .Q(\det_signal.signal_counter_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[3] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[3]),
        .Q(\det_signal.signal_counter_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[4] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[4]),
        .Q(\det_signal.signal_counter_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[5] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[5]),
        .Q(\det_signal.signal_counter_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[6] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[6]),
        .Q(\det_signal.signal_counter_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[7] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[7]),
        .Q(\det_signal.signal_counter_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[8] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[8]),
        .Q(\det_signal.signal_counter_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.signal_counter_reg[9] 
       (.C(clk),
        .CE(proc_signal),
        .D(curr_signal_counter[9]),
        .Q(\det_signal.signal_counter_reg_n_0_[9] ),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.signal_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(proc_signal),
        .Q(signal_done),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0C8C8C8C00000000)) 
    \det_signal.start_proc_i_1 
       (.I0(\det_signal.err_ov_reg_n_0 ),
        .I1(\det_signal.run_reg[2]__0 ),
        .I2(\det_signal.valid_count_reg_n_0 ),
        .I3(valid_err),
        .I4(valid_env),
        .I5(has_signal),
        .O(\det_signal.start_proc_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.start_proc_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.start_proc_i_1_n_0 ),
        .Q(start_proc),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \det_signal.valid_count_i_1 
       (.I0(\det_signal.valid_count_reg_n_0 ),
        .I1(\det_signal.run_reg[1]__0 ),
        .I2(valid_count6_out),
        .O(\det_signal.valid_count_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \det_signal.valid_count_i_2 
       (.I0(\det_signal.run_reg[1]__0 ),
        .I1(\det_signal.valid_count_i_3_n_0 ),
        .I2(\det_signal.signal_counter_reg_n_0_[6] ),
        .I3(\det_signal.signal_counter_reg_n_0_[8] ),
        .I4(\det_signal.signal_counter_reg_n_0_[7] ),
        .I5(\det_signal.signal_counter_reg_n_0_[9] ),
        .O(valid_count6_out));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \det_signal.valid_count_i_3 
       (.I0(\det_signal.signal_counter_reg_n_0_[0] ),
        .I1(\det_signal.signal_counter_reg_n_0_[2] ),
        .I2(\det_signal.signal_counter_reg_n_0_[1] ),
        .I3(\det_signal.signal_counter_reg_n_0_[3] ),
        .I4(\det_signal.signal_counter_reg_n_0_[5] ),
        .I5(\det_signal.signal_counter_reg_n_0_[4] ),
        .O(\det_signal.valid_count_i_3_n_0 ));
  FDRE \det_signal.valid_count_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.valid_count_i_1_n_0 ),
        .Q(\det_signal.valid_count_reg_n_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.valid_env_i_1 
       (.I0(diff_env_N[16]),
        .I1(diff_env_E[16]),
        .I2(diff_env_W[16]),
        .O(valid_env0));
  FDRE \det_signal.valid_env_reg 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(valid_env0),
        .Q(valid_env),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.valid_err_i_1 
       (.I0(p_1_in9_in),
        .I1(p_0_in8_in),
        .I2(p_2_in),
        .O(valid_err0));
  FDRE \det_signal.valid_err_reg 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(valid_err0),
        .Q(valid_err),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_incr_env dsp_incr_env_E
       (.A(dsp_phase_E),
        .B(env_E),
        .CLK(clk),
        .P(dsp_sum_E),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_incr_env dsp_incr_env_N
       (.A(dsp_phase_N),
        .B(env_N),
        .CLK(clk),
        .P(dsp_sum_N),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_incr_env_HD1 dsp_incr_env_W
       (.A(dsp_phase_W),
        .B(env_W),
        .CLK(clk),
        .P(dsp_sum_W),
        .SCLRP(acc_reset));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(env_E[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_1
       (.I0(1'b0),
        .O(env_W[16]));
  LUT1 #(
    .INIT(2'h2)) 
    i_2
       (.I0(1'b0),
        .O(env_N[16]));
  (* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_3 ila_i
       (.clk(clk),
        .probe0(active),
        .probe1(env_N),
        .probe10(diff_env_E),
        .probe11(diff_phase_E),
        .probe12(curr_env_sum_E),
        .probe13(dsp_phase_E),
        .probe14(dsp_sum_E),
        .probe15(env_W),
        .probe16(phase_W),
        .probe17(diff_env_W),
        .probe18(diff_phase_W),
        .probe19(curr_env_sum_W),
        .probe2(phase_N),
        .probe20(dsp_phase_W),
        .probe21(dsp_sum_W),
        .probe22(has_signal),
        .probe23(curr_signal_sample),
        .probe24(curr_signal_counter),
        .probe25(err_count),
        .probe26(acc_reset),
        .probe27(start_proc),
        .probe28(proc_signal),
        .probe29(proc_done),
        .probe3(diff_env_N),
        .probe30(signal_done),
        .probe4(diff_phase_N),
        .probe5(curr_env_sum_N),
        .probe6(dsp_phase_N),
        .probe7(dsp_sum_N),
        .probe8(env_E),
        .probe9(phase_E));
endmodule

(* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dsp_incr_env" *) 
(* X_CORE_INFO = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
module ps_comp_low_0_0_dsp_incr_env
   (CLK,
    A,
    B,
    P,
    SCLRP);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [16:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sclrp_intf RST" *) (* X_INTERFACE_MODE = "slave sclrp_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sclrp_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLRP;


endmodule

(* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dsp_incr_env" *) 
(* X_CORE_INFO = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
module ps_comp_low_0_0_dsp_incr_env_HD1
   (CLK,
    SCLRP,
    A,
    B,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sclrp_intf RST" *) (* X_INTERFACE_MODE = "slave sclrp_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sclrp_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLRP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [20:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [16:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_config,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_config" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_low_0_0_fifo_config
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [39:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [39:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_doa,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_doa" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_low_0_0_fifo_doa
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

(* CHECK_LICENSE_TYPE = "fifo_raw_low,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_raw_low" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_comp_low_0_0_fifo_raw_low
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [191:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [191:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;
  output wr_rst_busy;
  output rd_rst_busy;


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
    probe18,
    probe19,
    probe20,
    probe21,
    probe22,
    probe23,
    probe24,
    probe25,
    probe26,
    probe27,
    probe28,
    probe29,
    probe30);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [16:0]probe1;
  input [19:0]probe2;
  input [16:0]probe3;
  input [19:0]probe4;
  input [31:0]probe5;
  input [20:0]probe6;
  input [47:0]probe7;
  input [16:0]probe8;
  input [19:0]probe9;
  input [16:0]probe10;
  input [19:0]probe11;
  input [31:0]probe12;
  input [20:0]probe13;
  input [47:0]probe14;
  input [16:0]probe15;
  input [19:0]probe16;
  input [16:0]probe17;
  input [19:0]probe18;
  input [31:0]probe19;
  input [20:0]probe20;
  input [47:0]probe21;
  input [0:0]probe22;
  input [31:0]probe23;
  input [9:0]probe24;
  input [1:0]probe25;
  input [0:0]probe26;
  input [0:0]probe27;
  input [0:0]probe28;
  input [0:0]probe29;
  input [0:0]probe30;


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
