// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Dec 26 21:34:57 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_low_0_0/ps_comp_low_0_0_sim_netlist.v
// Design      : ps_comp_low_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dsp_phase_env" *) 
(* X_CORE_INFO = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
module dsp_phase_env_HD8
   (CLK,
    SCLRP,
    A,
    B,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sclrp_intf RST" *) (* X_INTERFACE_MODE = "slave sclrp_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sclrp_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLRP;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;


endmodule

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

  wire burst;
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
  wire [15:0]env_E;
  wire [15:0]env_N;
  wire [15:0]env_W;
  wire fifo_clk;
  wire [143:0]fifo_doa_data;
  wire [191:0]fifo_sample_data;
  wire [8:0]fifo_sample_delay;
  wire [7:0]fifo_sample_delay0;
  wire fifo_sample_empty;
  wire fifo_wr;
  wire [19:0]freq;
  wire [19:0]phase_EW;
  wire [19:0]phase_NE;
  wire [19:0]phase_NW;
  wire reset;
  wire sample_rd;
  wire [31:0]NLW_det_sig_i_signal_sample_UNCONNECTED;
  wire [8:0]NLW_det_sig_i_signal_size_UNCONNECTED;
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
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \comp_low.doa_delay[1]_i_1 
       (.I0(doa_delay[0]),
        .I1(doa_delay[1]),
        .O(\comp_low.doa_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_low.doa_delay[2]_i_1 
       (.I0(doa_delay[1]),
        .I1(doa_delay[0]),
        .I2(doa_delay[2]),
        .O(\comp_low.doa_delay[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \comp_low.fifo_sample_delay[1]_i_1 
       (.I0(fifo_sample_delay[1]),
        .I1(fifo_sample_delay[0]),
        .O(fifo_sample_delay0[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \comp_low.fifo_sample_delay[2]_i_1 
       (.I0(fifo_sample_delay[2]),
        .I1(fifo_sample_delay[0]),
        .I2(fifo_sample_delay[1]),
        .O(fifo_sample_delay0[2]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \comp_low.fifo_sample_delay[3]_i_1 
       (.I0(fifo_sample_delay[3]),
        .I1(fifo_sample_delay[1]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[2]),
        .O(fifo_sample_delay0[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
        .config_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,config_data_adr_out[27:8]}),
        .config_wr(det_sig_i_i_1_n_0),
        .data(doa_data),
        .reset(1'b0),
        .signal_done(burst),
        .signal_env_E(env_E),
        .signal_env_N(env_N),
        .signal_env_W(env_W),
        .signal_freq(freq),
        .signal_phase_EW(phase_EW),
        .signal_phase_NE(phase_NE),
        .signal_phase_NW(phase_NW),
        .signal_sample(NLW_det_sig_i_signal_sample_UNCONNECTED[31:0]),
        .signal_size(NLW_det_sig_i_signal_size_UNCONNECTED[8:0]));
  LUT1 #(
    .INIT(2'h1)) 
    det_sig_i_i_1
       (.I0(cfg_empty),
        .O(det_sig_i_i_1_n_0));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_low_0_0_doa_calc doa_calc_i
       (.clk(clk),
        .config_adr(config_data_adr_out[7:0]),
        .config_data(config_data_adr_out[39:8]),
        .config_wr(det_sig_i_i_1_n_0),
        .env_E(env_E),
        .env_N(env_N),
        .env_W(env_W),
        .freq(freq),
        .phase_EW(phase_EW),
        .phase_NE(phase_NE),
        .phase_NW(phase_NW),
        .reset(reset),
        .start(burst));
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
    signal_size,
    signal_freq,
    signal_env_N,
    signal_env_E,
    signal_env_W,
    signal_phase_NE,
    signal_phase_NW,
    signal_phase_EW,
    signal_done);
  input clk;
  input reset;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  input active;
  input [143:0]data;
  output [31:0]signal_sample;
  output [8:0]signal_size;
  output [19:0]signal_freq;
  output [15:0]signal_env_N;
  output [15:0]signal_env_E;
  output [15:0]signal_env_W;
  output [19:0]signal_phase_NE;
  output [19:0]signal_phase_NW;
  output [19:0]signal_phase_EW;
  output signal_done;

  wire \<const0> ;
  (* MARK_DEBUG *) wire acc_reset;
  (* MARK_DEBUG *) wire accept_new_burst;
  (* MARK_DEBUG *) wire active;
  (* MARK_DEBUG *) wire [15:0]avg_env_E;
  (* MARK_DEBUG *) wire [15:0]avg_env_N;
  (* MARK_DEBUG *) wire [15:0]avg_env_W;
  wire clk;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_wr;
  wire [143:0]data;
  wire [1:0]data2;
  wire \det_signal.acc_reset_i_1_n_0 ;
  wire \det_signal.accept_new_burst_i_1_n_0 ;
  wire \det_signal.accept_new_burst_i_2_n_0 ;
  wire \det_signal.diff_env_E[16]_i_10_n_0 ;
  wire \det_signal.diff_env_E[16]_i_11_n_0 ;
  wire \det_signal.diff_env_E[16]_i_12_n_0 ;
  wire \det_signal.diff_env_E[16]_i_13_n_0 ;
  wire \det_signal.diff_env_E[16]_i_14_n_0 ;
  wire \det_signal.diff_env_E[16]_i_15_n_0 ;
  wire \det_signal.diff_env_E[16]_i_16_n_0 ;
  wire \det_signal.diff_env_E[16]_i_17_n_0 ;
  wire \det_signal.diff_env_E[16]_i_18_n_0 ;
  wire \det_signal.diff_env_E[16]_i_19_n_0 ;
  wire \det_signal.diff_env_E[16]_i_4_n_0 ;
  wire \det_signal.diff_env_E[16]_i_5_n_0 ;
  wire \det_signal.diff_env_E[16]_i_6_n_0 ;
  wire \det_signal.diff_env_E[16]_i_7_n_0 ;
  wire \det_signal.diff_env_E[16]_i_8_n_0 ;
  wire \det_signal.diff_env_E[16]_i_9_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_1 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_2 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_3 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_4 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_5 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_6 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_7 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_1 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_2 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_3 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_4 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_5 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_6 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_7 ;
  wire \det_signal.diff_env_N[16]_i_10_n_0 ;
  wire \det_signal.diff_env_N[16]_i_11_n_0 ;
  wire \det_signal.diff_env_N[16]_i_12_n_0 ;
  wire \det_signal.diff_env_N[16]_i_13_n_0 ;
  wire \det_signal.diff_env_N[16]_i_14_n_0 ;
  wire \det_signal.diff_env_N[16]_i_15_n_0 ;
  wire \det_signal.diff_env_N[16]_i_16_n_0 ;
  wire \det_signal.diff_env_N[16]_i_17_n_0 ;
  wire \det_signal.diff_env_N[16]_i_18_n_0 ;
  wire \det_signal.diff_env_N[16]_i_19_n_0 ;
  wire \det_signal.diff_env_N[16]_i_4_n_0 ;
  wire \det_signal.diff_env_N[16]_i_5_n_0 ;
  wire \det_signal.diff_env_N[16]_i_6_n_0 ;
  wire \det_signal.diff_env_N[16]_i_7_n_0 ;
  wire \det_signal.diff_env_N[16]_i_8_n_0 ;
  wire \det_signal.diff_env_N[16]_i_9_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_1 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_2 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_3 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_4 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_5 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_6 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_7 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_1 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_2 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_3 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_4 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_5 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_6 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_7 ;
  wire \det_signal.diff_env_W[16]_i_10_n_0 ;
  wire \det_signal.diff_env_W[16]_i_11_n_0 ;
  wire \det_signal.diff_env_W[16]_i_12_n_0 ;
  wire \det_signal.diff_env_W[16]_i_13_n_0 ;
  wire \det_signal.diff_env_W[16]_i_14_n_0 ;
  wire \det_signal.diff_env_W[16]_i_15_n_0 ;
  wire \det_signal.diff_env_W[16]_i_16_n_0 ;
  wire \det_signal.diff_env_W[16]_i_17_n_0 ;
  wire \det_signal.diff_env_W[16]_i_18_n_0 ;
  wire \det_signal.diff_env_W[16]_i_19_n_0 ;
  wire \det_signal.diff_env_W[16]_i_4_n_0 ;
  wire \det_signal.diff_env_W[16]_i_5_n_0 ;
  wire \det_signal.diff_env_W[16]_i_6_n_0 ;
  wire \det_signal.diff_env_W[16]_i_7_n_0 ;
  wire \det_signal.diff_env_W[16]_i_8_n_0 ;
  wire \det_signal.diff_env_W[16]_i_9_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_1 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_2 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_3 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_4 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_5 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_6 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_7 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_1 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_2 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_3 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_4 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_5 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_6 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_7 ;
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
  wire \det_signal.diff_phase_E[15]_i_2_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_3_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_4_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_5_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_6_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_7_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_8_n_0 ;
  wire \det_signal.diff_phase_E[15]_i_9_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_2_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_3_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_4_n_0 ;
  wire \det_signal.diff_phase_E[19]_i_5_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_2_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_3_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_4_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_5_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_6_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_7_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_8_n_0 ;
  wire \det_signal.diff_phase_E[7]_i_9_n_0 ;
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
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_phase_E_reg[7]_i_1_n_7 ;
  wire \det_signal.diff_phase_N[15]_i_2_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_3_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_4_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_5_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_6_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_7_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_8_n_0 ;
  wire \det_signal.diff_phase_N[15]_i_9_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_2_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_3_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_4_n_0 ;
  wire \det_signal.diff_phase_N[19]_i_5_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_2_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_3_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_4_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_5_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_6_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_7_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_8_n_0 ;
  wire \det_signal.diff_phase_N[7]_i_9_n_0 ;
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
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_phase_N_reg[7]_i_1_n_7 ;
  wire \det_signal.diff_phase_W[15]_i_2_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_3_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_4_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_5_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_6_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_7_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_8_n_0 ;
  wire \det_signal.diff_phase_W[15]_i_9_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_2_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_3_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_4_n_0 ;
  wire \det_signal.diff_phase_W[19]_i_5_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_2_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_3_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_4_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_5_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_6_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_7_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_8_n_0 ;
  wire \det_signal.diff_phase_W[7]_i_9_n_0 ;
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
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_0 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_1 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_2 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_3 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_4 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_5 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_6 ;
  wire \det_signal.diff_phase_W_reg[7]_i_1_n_7 ;
  wire \det_signal.div_counter[0]_i_1_n_0 ;
  wire \det_signal.div_counter[1]_i_1_n_0 ;
  wire \det_signal.div_counter[2]_i_1_n_0 ;
  wire \det_signal.div_counter[2]_i_2_n_0 ;
  wire \det_signal.div_counter[3]_i_1_n_0 ;
  wire \det_signal.div_counter[3]_i_2_n_0 ;
  wire \det_signal.div_counter[4]_i_1_n_0 ;
  wire \det_signal.div_counter[4]_i_2_n_0 ;
  wire \det_signal.div_counter[4]_i_3_n_0 ;
  wire \det_signal.div_counter[5]_i_1_n_0 ;
  wire \det_signal.div_counter[5]_i_2_n_0 ;
  wire \det_signal.div_delay[0]_i_1_n_0 ;
  wire \det_signal.div_delay[1]_i_1_n_0 ;
  wire \det_signal.div_delay[2]_i_1_n_0 ;
  wire \det_signal.div_delay[3]_i_1_n_0 ;
  wire \det_signal.div_env_NE[15]_i_2_n_0 ;
  wire \det_signal.div_env_NE[15]_i_3_n_0 ;
  wire \det_signal.div_env_NE[15]_i_4_n_0 ;
  wire \det_signal.div_env_NE[15]_i_5_n_0 ;
  wire \det_signal.div_env_NE[15]_i_6_n_0 ;
  wire \det_signal.div_env_NE[15]_i_7_n_0 ;
  wire \det_signal.div_env_NE[15]_i_8_n_0 ;
  wire \det_signal.div_env_NE[15]_i_9_n_0 ;
  wire \det_signal.div_env_NE[23]_i_2_n_0 ;
  wire \det_signal.div_env_NE[23]_i_3_n_0 ;
  wire \det_signal.div_env_NE[23]_i_4_n_0 ;
  wire \det_signal.div_env_NE[23]_i_5_n_0 ;
  wire \det_signal.div_env_NE[23]_i_6_n_0 ;
  wire \det_signal.div_env_NE[23]_i_7_n_0 ;
  wire \det_signal.div_env_NE[23]_i_8_n_0 ;
  wire \det_signal.div_env_NE[23]_i_9_n_0 ;
  wire \det_signal.div_env_NE[24]_i_1_n_0 ;
  wire \det_signal.div_env_NE[7]_i_2_n_0 ;
  wire \det_signal.div_env_NE[7]_i_3_n_0 ;
  wire \det_signal.div_env_NE[7]_i_4_n_0 ;
  wire \det_signal.div_env_NE[7]_i_5_n_0 ;
  wire \det_signal.div_env_NE[7]_i_6_n_0 ;
  wire \det_signal.div_env_NE[7]_i_7_n_0 ;
  wire \det_signal.div_env_NE[7]_i_8_n_0 ;
  wire \det_signal.div_env_NE[7]_i_9_n_0 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_0 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_1 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_2 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_3 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_4 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_5 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_6 ;
  wire \det_signal.div_env_NE_reg[15]_i_1_n_7 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_0 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_1 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_2 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_3 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_4 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_5 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_6 ;
  wire \det_signal.div_env_NE_reg[23]_i_1_n_7 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_0 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_1 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_2 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_3 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_4 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_5 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_6 ;
  wire \det_signal.div_env_NE_reg[7]_i_1_n_7 ;
  wire \det_signal.div_env_all[0]_i_1_n_0 ;
  wire \det_signal.div_env_all[10]_i_1_n_0 ;
  wire \det_signal.div_env_all[11]_i_1_n_0 ;
  wire \det_signal.div_env_all[12]_i_1_n_0 ;
  wire \det_signal.div_env_all[13]_i_1_n_0 ;
  wire \det_signal.div_env_all[14]_i_1_n_0 ;
  wire \det_signal.div_env_all[15]_i_10_n_0 ;
  wire \det_signal.div_env_all[15]_i_1_n_0 ;
  wire \det_signal.div_env_all[15]_i_3_n_0 ;
  wire \det_signal.div_env_all[15]_i_4_n_0 ;
  wire \det_signal.div_env_all[15]_i_5_n_0 ;
  wire \det_signal.div_env_all[15]_i_6_n_0 ;
  wire \det_signal.div_env_all[15]_i_7_n_0 ;
  wire \det_signal.div_env_all[15]_i_8_n_0 ;
  wire \det_signal.div_env_all[15]_i_9_n_0 ;
  wire \det_signal.div_env_all[16]_i_1_n_0 ;
  wire \det_signal.div_env_all[17]_i_1_n_0 ;
  wire \det_signal.div_env_all[18]_i_1_n_0 ;
  wire \det_signal.div_env_all[19]_i_1_n_0 ;
  wire \det_signal.div_env_all[1]_i_1_n_0 ;
  wire \det_signal.div_env_all[20]_i_1_n_0 ;
  wire \det_signal.div_env_all[21]_i_1_n_0 ;
  wire \det_signal.div_env_all[22]_i_1_n_0 ;
  wire \det_signal.div_env_all[23]_i_10_n_0 ;
  wire \det_signal.div_env_all[23]_i_11_n_0 ;
  wire \det_signal.div_env_all[23]_i_2_n_0 ;
  wire \det_signal.div_env_all[23]_i_4_n_0 ;
  wire \det_signal.div_env_all[23]_i_5_n_0 ;
  wire \det_signal.div_env_all[23]_i_6_n_0 ;
  wire \det_signal.div_env_all[23]_i_7_n_0 ;
  wire \det_signal.div_env_all[23]_i_8_n_0 ;
  wire \det_signal.div_env_all[23]_i_9_n_0 ;
  wire \det_signal.div_env_all[2]_i_1_n_0 ;
  wire \det_signal.div_env_all[31]_i_1_n_0 ;
  wire \det_signal.div_env_all[31]_i_3_n_0 ;
  wire \det_signal.div_env_all[3]_i_1_n_0 ;
  wire \det_signal.div_env_all[4]_i_1_n_0 ;
  wire \det_signal.div_env_all[5]_i_1_n_0 ;
  wire \det_signal.div_env_all[6]_i_1_n_0 ;
  wire \det_signal.div_env_all[7]_i_10_n_0 ;
  wire \det_signal.div_env_all[7]_i_1_n_0 ;
  wire \det_signal.div_env_all[7]_i_3_n_0 ;
  wire \det_signal.div_env_all[7]_i_4_n_0 ;
  wire \det_signal.div_env_all[7]_i_5_n_0 ;
  wire \det_signal.div_env_all[7]_i_6_n_0 ;
  wire \det_signal.div_env_all[7]_i_7_n_0 ;
  wire \det_signal.div_env_all[7]_i_8_n_0 ;
  wire \det_signal.div_env_all[7]_i_9_n_0 ;
  wire \det_signal.div_env_all[8]_i_1_n_0 ;
  wire \det_signal.div_env_all[9]_i_1_n_0 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_0 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_1 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_2 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_3 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_4 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_5 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_6 ;
  wire \det_signal.div_env_all_reg[15]_i_2_n_7 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_0 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_1 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_2 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_3 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_4 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_5 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_6 ;
  wire \det_signal.div_env_all_reg[23]_i_3_n_7 ;
  wire \det_signal.div_env_all_reg[31]_i_2_n_1 ;
  wire \det_signal.div_env_all_reg[31]_i_2_n_2 ;
  wire \det_signal.div_env_all_reg[31]_i_2_n_3 ;
  wire \det_signal.div_env_all_reg[31]_i_2_n_4 ;
  wire \det_signal.div_env_all_reg[31]_i_2_n_5 ;
  wire \det_signal.div_env_all_reg[31]_i_2_n_6 ;
  wire \det_signal.div_env_all_reg[31]_i_2_n_7 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_0 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_1 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_2 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_3 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_4 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_5 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_6 ;
  wire \det_signal.div_env_all_reg[7]_i_2_n_7 ;
  wire \det_signal.div_env_all_reg_n_0_[0] ;
  wire \det_signal.div_env_all_reg_n_0_[10] ;
  wire \det_signal.div_env_all_reg_n_0_[11] ;
  wire \det_signal.div_env_all_reg_n_0_[12] ;
  wire \det_signal.div_env_all_reg_n_0_[13] ;
  wire \det_signal.div_env_all_reg_n_0_[14] ;
  wire \det_signal.div_env_all_reg_n_0_[15] ;
  wire \det_signal.div_env_all_reg_n_0_[16] ;
  wire \det_signal.div_env_all_reg_n_0_[17] ;
  wire \det_signal.div_env_all_reg_n_0_[18] ;
  wire \det_signal.div_env_all_reg_n_0_[19] ;
  wire \det_signal.div_env_all_reg_n_0_[1] ;
  wire \det_signal.div_env_all_reg_n_0_[20] ;
  wire \det_signal.div_env_all_reg_n_0_[21] ;
  wire \det_signal.div_env_all_reg_n_0_[22] ;
  wire \det_signal.div_env_all_reg_n_0_[23] ;
  wire \det_signal.div_env_all_reg_n_0_[24] ;
  wire \det_signal.div_env_all_reg_n_0_[25] ;
  wire \det_signal.div_env_all_reg_n_0_[26] ;
  wire \det_signal.div_env_all_reg_n_0_[27] ;
  wire \det_signal.div_env_all_reg_n_0_[28] ;
  wire \det_signal.div_env_all_reg_n_0_[29] ;
  wire \det_signal.div_env_all_reg_n_0_[2] ;
  wire \det_signal.div_env_all_reg_n_0_[30] ;
  wire \det_signal.div_env_all_reg_n_0_[31] ;
  wire \det_signal.div_env_all_reg_n_0_[3] ;
  wire \det_signal.div_env_all_reg_n_0_[4] ;
  wire \det_signal.div_env_all_reg_n_0_[5] ;
  wire \det_signal.div_env_all_reg_n_0_[6] ;
  wire \det_signal.div_env_all_reg_n_0_[7] ;
  wire \det_signal.div_env_all_reg_n_0_[8] ;
  wire \det_signal.div_env_all_reg_n_0_[9] ;
  wire \det_signal.div_env_sum_EW[15]_i_2_n_0 ;
  wire \det_signal.div_env_sum_EW[15]_i_3_n_0 ;
  wire \det_signal.div_env_sum_EW[15]_i_4_n_0 ;
  wire \det_signal.div_env_sum_EW[15]_i_5_n_0 ;
  wire \det_signal.div_env_sum_EW[15]_i_6_n_0 ;
  wire \det_signal.div_env_sum_EW[15]_i_7_n_0 ;
  wire \det_signal.div_env_sum_EW[15]_i_8_n_0 ;
  wire \det_signal.div_env_sum_EW[15]_i_9_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_2_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_3_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_4_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_5_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_6_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_7_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_8_n_0 ;
  wire \det_signal.div_env_sum_EW[23]_i_9_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_2_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_3_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_4_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_5_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_6_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_7_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_8_n_0 ;
  wire \det_signal.div_env_sum_EW[7]_i_9_n_0 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_0 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_1 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_2 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_3 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_4 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_5 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_6 ;
  wire \det_signal.div_env_sum_EW_reg[15]_i_1_n_7 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_0 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_1 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_2 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_3 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_4 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_5 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_6 ;
  wire \det_signal.div_env_sum_EW_reg[23]_i_1_n_7 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_0 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_1 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_2 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_3 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_4 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_5 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_6 ;
  wire \det_signal.div_env_sum_EW_reg[7]_i_1_n_7 ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[0] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[10] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[11] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[12] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[13] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[14] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[15] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[16] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[17] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[18] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[19] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[1] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[20] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[21] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[22] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[23] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[24] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[2] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[3] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[4] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[5] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[6] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[7] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[8] ;
  wire \det_signal.div_env_sum_EW_reg_n_0_[9] ;
  wire \det_signal.div_env_sum_E[0]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[10]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[11]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[12]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[13]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[14]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[15]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[16]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[17]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[18]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[19]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[1]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[20]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[21]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[22]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[23]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[2]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[31]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[3]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[4]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[5]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[6]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[7]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[8]_i_1_n_0 ;
  wire \det_signal.div_env_sum_E[9]_i_1_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_2_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_3_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_4_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_5_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_6_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_7_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_8_n_0 ;
  wire \det_signal.div_env_sum_NW[15]_i_9_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_2_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_3_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_4_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_5_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_6_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_7_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_8_n_0 ;
  wire \det_signal.div_env_sum_NW[23]_i_9_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_2_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_3_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_4_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_5_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_6_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_7_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_8_n_0 ;
  wire \det_signal.div_env_sum_NW[7]_i_9_n_0 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_0 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_1 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_2 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_3 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_4 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_5 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_6 ;
  wire \det_signal.div_env_sum_NW_reg[15]_i_1_n_7 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_0 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_1 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_2 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_3 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_4 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_5 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_6 ;
  wire \det_signal.div_env_sum_NW_reg[23]_i_1_n_7 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_0 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_1 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_2 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_3 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_4 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_5 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_6 ;
  wire \det_signal.div_env_sum_NW_reg[7]_i_1_n_7 ;
  wire \det_signal.div_env_sum_N[0]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[10]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[11]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[12]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[13]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[14]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[15]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[16]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[17]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[18]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[19]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[1]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[20]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[21]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[22]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[23]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[2]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[31]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[3]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[4]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[5]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[6]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[7]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[8]_i_1_n_0 ;
  wire \det_signal.div_env_sum_N[9]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[0]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[10]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[11]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[12]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[13]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[14]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[15]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[16]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[17]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[18]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[19]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[1]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[20]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[21]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[22]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[23]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[2]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[31]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[3]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[4]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[5]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[6]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[7]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[8]_i_1_n_0 ;
  wire \det_signal.div_env_sum_W[9]_i_1_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_10_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_11_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_12_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_13_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_14_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_15_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_16_n_0 ;
  wire \det_signal.div_hi_freq_sum[15]_i_17_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_10_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_11_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_12_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_13_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_14_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_15_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_16_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_17_n_0 ;
  wire \det_signal.div_hi_freq_sum[23]_i_1_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_10_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_11_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_12_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_13_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_14_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_15_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_16_n_0 ;
  wire \det_signal.div_hi_freq_sum[7]_i_17_n_0 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_0 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_1 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_2 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_3 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_4 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_5 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_6 ;
  wire \det_signal.div_hi_freq_sum_reg[15]_i_1_n_7 ;
  wire \det_signal.div_hi_freq_sum_reg[23]_i_2_n_1 ;
  wire \det_signal.div_hi_freq_sum_reg[23]_i_2_n_2 ;
  wire \det_signal.div_hi_freq_sum_reg[23]_i_2_n_3 ;
  wire \det_signal.div_hi_freq_sum_reg[23]_i_2_n_4 ;
  wire \det_signal.div_hi_freq_sum_reg[23]_i_2_n_5 ;
  wire \det_signal.div_hi_freq_sum_reg[23]_i_2_n_6 ;
  wire \det_signal.div_hi_freq_sum_reg[23]_i_2_n_7 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_0 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_1 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_2 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_3 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_4 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_5 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_6 ;
  wire \det_signal.div_hi_freq_sum_reg[7]_i_1_n_7 ;
  wire \det_signal.div_lo_freq_sum[0]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[10]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[11]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[12]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[13]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[14]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_10_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_11_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_12_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_13_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_14_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_15_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_16_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_17_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_18_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_19_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_4_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_5_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_6_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_7_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_8_n_0 ;
  wire \det_signal.div_lo_freq_sum[15]_i_9_n_0 ;
  wire \det_signal.div_lo_freq_sum[16]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[17]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[18]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[19]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[1]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[20]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[21]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[22]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_10_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_11_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_12_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_13_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_14_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_15_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_16_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_17_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_18_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_19_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_4_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_5_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_6_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_7_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_8_n_0 ;
  wire \det_signal.div_lo_freq_sum[23]_i_9_n_0 ;
  wire \det_signal.div_lo_freq_sum[24]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[25]_i_2_n_0 ;
  wire \det_signal.div_lo_freq_sum[2]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[3]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[4]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[5]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[6]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_10_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_11_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_12_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_13_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_14_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_15_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_16_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_17_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_18_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_19_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_4_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_5_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_6_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_7_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_8_n_0 ;
  wire \det_signal.div_lo_freq_sum[7]_i_9_n_0 ;
  wire \det_signal.div_lo_freq_sum[8]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum[9]_i_1_n_0 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_0 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_1 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_2 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_3 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_4 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_5 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_6 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_2_n_7 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_0 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_1 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_2 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_3 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_4 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_5 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_6 ;
  wire \det_signal.div_lo_freq_sum_reg[15]_i_3_n_7 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_0 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_1 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_2 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_3 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_4 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_5 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_6 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_2_n_7 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_0 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_1 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_2 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_3 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_4 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_5 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_6 ;
  wire \det_signal.div_lo_freq_sum_reg[23]_i_3_n_7 ;
  wire \det_signal.div_lo_freq_sum_reg[25]_i_3_n_7 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_0 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_1 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_2 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_3 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_4 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_5 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_6 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_2_n_7 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_0 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_1 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_2 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_3 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_4 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_5 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_6 ;
  wire \det_signal.div_lo_freq_sum_reg[7]_i_3_n_7 ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[0] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[10] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[11] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[12] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[13] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[14] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[15] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[16] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[17] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[18] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[19] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[1] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[20] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[21] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[22] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[23] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[24] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[25] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[26] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[27] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[28] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[29] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[2] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[30] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[31] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[32] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[33] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[34] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[35] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[36] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[37] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[38] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[39] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[3] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[40] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[41] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[42] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[43] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[44] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[45] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[46] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[47] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[4] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[5] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[6] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[7] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[8] ;
  wire \det_signal.div_phase_sum_EW_reg_n_0_[9] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[0] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[10] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[11] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[12] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[13] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[14] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[15] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[16] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[17] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[18] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[19] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[1] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[20] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[21] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[22] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[23] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[24] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[25] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[26] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[27] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[28] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[29] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[2] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[30] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[31] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[32] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[33] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[34] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[35] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[36] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[37] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[38] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[39] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[3] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[40] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[41] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[42] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[43] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[44] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[45] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[46] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[47] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[4] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[5] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[6] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[7] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[8] ;
  wire \det_signal.div_phase_sum_NE_reg_n_0_[9] ;
  wire \det_signal.div_sample_count[8]_i_2_n_0 ;
  wire \det_signal.div_sample_count_reg_n_0_[0] ;
  wire \det_signal.div_sample_count_reg_n_0_[1] ;
  wire \det_signal.div_sample_count_reg_n_0_[2] ;
  wire \det_signal.div_sample_count_reg_n_0_[3] ;
  wire \det_signal.div_sample_count_reg_n_0_[4] ;
  wire \det_signal.div_sample_count_reg_n_0_[5] ;
  wire \det_signal.div_sample_count_reg_n_0_[6] ;
  wire \det_signal.div_sample_count_reg_n_0_[7] ;
  wire \det_signal.div_sample_count_reg_n_0_[8] ;
  wire \det_signal.div_start_i_1_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_2_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_3_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_4_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_5_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_6_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_7_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_8_n_0 ;
  wire \det_signal.dsp_phase_EW[15]_i_9_n_0 ;
  wire \det_signal.dsp_phase_EW[19]_i_2_n_0 ;
  wire \det_signal.dsp_phase_EW[19]_i_3_n_0 ;
  wire \det_signal.dsp_phase_EW[19]_i_4_n_0 ;
  wire \det_signal.dsp_phase_EW[19]_i_5_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_2_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_3_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_4_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_5_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_6_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_7_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_8_n_0 ;
  wire \det_signal.dsp_phase_EW[7]_i_9_n_0 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_0 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_1 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_2 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_3 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_4 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_5 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_6 ;
  wire \det_signal.dsp_phase_EW_reg[15]_i_1_n_7 ;
  wire \det_signal.dsp_phase_EW_reg[19]_i_1_n_5 ;
  wire \det_signal.dsp_phase_EW_reg[19]_i_1_n_6 ;
  wire \det_signal.dsp_phase_EW_reg[19]_i_1_n_7 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_0 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_1 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_2 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_3 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_4 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_5 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_6 ;
  wire \det_signal.dsp_phase_EW_reg[7]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NE[15]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_0 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_1 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_2 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_3 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_4 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_0 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_1 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_2 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_3 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_4 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NW[15]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_0 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_1 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_2 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_3 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_4 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_0 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_1 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_2 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_3 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_4 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_1_n_7 ;
  wire \det_signal.env_EW[15]_i_2_n_0 ;
  wire \det_signal.env_EW[15]_i_3_n_0 ;
  wire \det_signal.env_EW[15]_i_4_n_0 ;
  wire \det_signal.env_EW[15]_i_5_n_0 ;
  wire \det_signal.env_EW[15]_i_6_n_0 ;
  wire \det_signal.env_EW[15]_i_7_n_0 ;
  wire \det_signal.env_EW[15]_i_8_n_0 ;
  wire \det_signal.env_EW[15]_i_9_n_0 ;
  wire \det_signal.env_EW[7]_i_2_n_0 ;
  wire \det_signal.env_EW[7]_i_3_n_0 ;
  wire \det_signal.env_EW[7]_i_4_n_0 ;
  wire \det_signal.env_EW[7]_i_5_n_0 ;
  wire \det_signal.env_EW[7]_i_6_n_0 ;
  wire \det_signal.env_EW[7]_i_7_n_0 ;
  wire \det_signal.env_EW[7]_i_8_n_0 ;
  wire \det_signal.env_EW[7]_i_9_n_0 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_0 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_1 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_2 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_3 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_4 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_5 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_6 ;
  wire \det_signal.env_EW_reg[15]_i_1_n_7 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_0 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_1 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_2 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_3 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_4 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_5 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_6 ;
  wire \det_signal.env_EW_reg[7]_i_1_n_7 ;
  wire \det_signal.env_NE[15]_i_2_n_0 ;
  wire \det_signal.env_NE[15]_i_3_n_0 ;
  wire \det_signal.env_NE[15]_i_4_n_0 ;
  wire \det_signal.env_NE[15]_i_5_n_0 ;
  wire \det_signal.env_NE[15]_i_6_n_0 ;
  wire \det_signal.env_NE[15]_i_7_n_0 ;
  wire \det_signal.env_NE[15]_i_8_n_0 ;
  wire \det_signal.env_NE[15]_i_9_n_0 ;
  wire \det_signal.env_NE[7]_i_2_n_0 ;
  wire \det_signal.env_NE[7]_i_3_n_0 ;
  wire \det_signal.env_NE[7]_i_4_n_0 ;
  wire \det_signal.env_NE[7]_i_5_n_0 ;
  wire \det_signal.env_NE[7]_i_6_n_0 ;
  wire \det_signal.env_NE[7]_i_7_n_0 ;
  wire \det_signal.env_NE[7]_i_8_n_0 ;
  wire \det_signal.env_NE[7]_i_9_n_0 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_0 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_1 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_2 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_3 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_4 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_5 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_6 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_7 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_0 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_1 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_2 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_3 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_4 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_5 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_6 ;
  wire \det_signal.env_NE_reg[7]_i_1_n_7 ;
  wire \det_signal.env_NW[15]_i_2_n_0 ;
  wire \det_signal.env_NW[15]_i_3_n_0 ;
  wire \det_signal.env_NW[15]_i_4_n_0 ;
  wire \det_signal.env_NW[15]_i_5_n_0 ;
  wire \det_signal.env_NW[15]_i_6_n_0 ;
  wire \det_signal.env_NW[15]_i_7_n_0 ;
  wire \det_signal.env_NW[15]_i_8_n_0 ;
  wire \det_signal.env_NW[15]_i_9_n_0 ;
  wire \det_signal.env_NW[7]_i_2_n_0 ;
  wire \det_signal.env_NW[7]_i_3_n_0 ;
  wire \det_signal.env_NW[7]_i_4_n_0 ;
  wire \det_signal.env_NW[7]_i_5_n_0 ;
  wire \det_signal.env_NW[7]_i_6_n_0 ;
  wire \det_signal.env_NW[7]_i_7_n_0 ;
  wire \det_signal.env_NW[7]_i_8_n_0 ;
  wire \det_signal.env_NW[7]_i_9_n_0 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_0 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_1 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_2 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_3 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_4 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_5 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_6 ;
  wire \det_signal.env_NW_reg[15]_i_1_n_7 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_0 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_1 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_2 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_3 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_4 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_5 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_6 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_7 ;
  wire \det_signal.env_sum_E[15]_i_2_n_0 ;
  wire \det_signal.env_sum_E[15]_i_3_n_0 ;
  wire \det_signal.env_sum_E[15]_i_4_n_0 ;
  wire \det_signal.env_sum_E[15]_i_5_n_0 ;
  wire \det_signal.env_sum_E[15]_i_6_n_0 ;
  wire \det_signal.env_sum_E[15]_i_7_n_0 ;
  wire \det_signal.env_sum_E[15]_i_8_n_0 ;
  wire \det_signal.env_sum_E[15]_i_9_n_0 ;
  wire \det_signal.env_sum_E[23]_i_10_n_0 ;
  wire \det_signal.env_sum_E[23]_i_1_n_0 ;
  wire \det_signal.env_sum_E[23]_i_3_n_0 ;
  wire \det_signal.env_sum_E[23]_i_4_n_0 ;
  wire \det_signal.env_sum_E[23]_i_5_n_0 ;
  wire \det_signal.env_sum_E[23]_i_6_n_0 ;
  wire \det_signal.env_sum_E[23]_i_7_n_0 ;
  wire \det_signal.env_sum_E[23]_i_8_n_0 ;
  wire \det_signal.env_sum_E[23]_i_9_n_0 ;
  wire \det_signal.env_sum_E[7]_i_2_n_0 ;
  wire \det_signal.env_sum_E[7]_i_3_n_0 ;
  wire \det_signal.env_sum_E[7]_i_4_n_0 ;
  wire \det_signal.env_sum_E[7]_i_5_n_0 ;
  wire \det_signal.env_sum_E[7]_i_6_n_0 ;
  wire \det_signal.env_sum_E[7]_i_7_n_0 ;
  wire \det_signal.env_sum_E[7]_i_8_n_0 ;
  wire \det_signal.env_sum_E[7]_i_9_n_0 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_0 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_1 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_2 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_3 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_4 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_5 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_6 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_7 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_1 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_2 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_3 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_4 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_5 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_6 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_7 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_0 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_1 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_2 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_3 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_4 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_5 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_6 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_7 ;
  wire \det_signal.env_sum_N[15]_i_2_n_0 ;
  wire \det_signal.env_sum_N[15]_i_3_n_0 ;
  wire \det_signal.env_sum_N[15]_i_4_n_0 ;
  wire \det_signal.env_sum_N[15]_i_5_n_0 ;
  wire \det_signal.env_sum_N[15]_i_6_n_0 ;
  wire \det_signal.env_sum_N[15]_i_7_n_0 ;
  wire \det_signal.env_sum_N[15]_i_8_n_0 ;
  wire \det_signal.env_sum_N[15]_i_9_n_0 ;
  wire \det_signal.env_sum_N[23]_i_2_n_0 ;
  wire \det_signal.env_sum_N[23]_i_3_n_0 ;
  wire \det_signal.env_sum_N[23]_i_4_n_0 ;
  wire \det_signal.env_sum_N[23]_i_5_n_0 ;
  wire \det_signal.env_sum_N[23]_i_6_n_0 ;
  wire \det_signal.env_sum_N[23]_i_7_n_0 ;
  wire \det_signal.env_sum_N[23]_i_8_n_0 ;
  wire \det_signal.env_sum_N[23]_i_9_n_0 ;
  wire \det_signal.env_sum_N[7]_i_2_n_0 ;
  wire \det_signal.env_sum_N[7]_i_3_n_0 ;
  wire \det_signal.env_sum_N[7]_i_4_n_0 ;
  wire \det_signal.env_sum_N[7]_i_5_n_0 ;
  wire \det_signal.env_sum_N[7]_i_6_n_0 ;
  wire \det_signal.env_sum_N[7]_i_7_n_0 ;
  wire \det_signal.env_sum_N[7]_i_8_n_0 ;
  wire \det_signal.env_sum_N[7]_i_9_n_0 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_0 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_1 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_2 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_3 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_4 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_5 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_6 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_7 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_1 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_2 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_3 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_4 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_5 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_6 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_7 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_0 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_1 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_2 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_3 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_4 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_5 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_6 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_7 ;
  wire \det_signal.env_sum_W[15]_i_2_n_0 ;
  wire \det_signal.env_sum_W[15]_i_3_n_0 ;
  wire \det_signal.env_sum_W[15]_i_4_n_0 ;
  wire \det_signal.env_sum_W[15]_i_5_n_0 ;
  wire \det_signal.env_sum_W[15]_i_6_n_0 ;
  wire \det_signal.env_sum_W[15]_i_7_n_0 ;
  wire \det_signal.env_sum_W[15]_i_8_n_0 ;
  wire \det_signal.env_sum_W[15]_i_9_n_0 ;
  wire \det_signal.env_sum_W[23]_i_2_n_0 ;
  wire \det_signal.env_sum_W[23]_i_3_n_0 ;
  wire \det_signal.env_sum_W[23]_i_4_n_0 ;
  wire \det_signal.env_sum_W[23]_i_5_n_0 ;
  wire \det_signal.env_sum_W[23]_i_6_n_0 ;
  wire \det_signal.env_sum_W[23]_i_7_n_0 ;
  wire \det_signal.env_sum_W[23]_i_8_n_0 ;
  wire \det_signal.env_sum_W[23]_i_9_n_0 ;
  wire \det_signal.env_sum_W[7]_i_2_n_0 ;
  wire \det_signal.env_sum_W[7]_i_3_n_0 ;
  wire \det_signal.env_sum_W[7]_i_4_n_0 ;
  wire \det_signal.env_sum_W[7]_i_5_n_0 ;
  wire \det_signal.env_sum_W[7]_i_6_n_0 ;
  wire \det_signal.env_sum_W[7]_i_7_n_0 ;
  wire \det_signal.env_sum_W[7]_i_8_n_0 ;
  wire \det_signal.env_sum_W[7]_i_9_n_0 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_0 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_1 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_2 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_3 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_4 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_5 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_6 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_7 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_1 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_2 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_3 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_4 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_5 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_6 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_7 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_0 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_1 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_2 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_3 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_4 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_5 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_6 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_7 ;
  wire \det_signal.err_count[0]_i_1_n_0 ;
  wire \det_signal.err_count[1]_i_2_n_0 ;
  wire \det_signal.err_ov_i_1_n_0 ;
  wire \det_signal.err_ov_reg_n_0 ;
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
  wire \det_signal.max_freq[0]_i_1_n_0 ;
  wire \det_signal.max_freq[10]_i_1_n_0 ;
  wire \det_signal.max_freq[11]_i_1_n_0 ;
  wire \det_signal.max_freq[12]_i_1_n_0 ;
  wire \det_signal.max_freq[13]_i_1_n_0 ;
  wire \det_signal.max_freq[14]_i_1_n_0 ;
  wire \det_signal.max_freq[15]_i_1_n_0 ;
  wire \det_signal.max_freq[16]_i_1_n_0 ;
  wire \det_signal.max_freq[17]_i_1_n_0 ;
  wire \det_signal.max_freq[18]_i_1_n_0 ;
  wire \det_signal.max_freq[19]_i_1_n_0 ;
  wire \det_signal.max_freq[1]_i_1_n_0 ;
  wire \det_signal.max_freq[2]_i_1_n_0 ;
  wire \det_signal.max_freq[3]_i_1_n_0 ;
  wire \det_signal.max_freq[4]_i_1_n_0 ;
  wire \det_signal.max_freq[5]_i_1_n_0 ;
  wire \det_signal.max_freq[6]_i_1_n_0 ;
  wire \det_signal.max_freq[7]_i_1_n_0 ;
  wire \det_signal.max_freq[8]_i_1_n_0 ;
  wire \det_signal.max_freq[9]_i_1_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_2_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_3_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_4_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_5_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_6_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_7_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_8_n_0 ;
  wire \det_signal.max_freq_diff[15]_i_9_n_0 ;
  wire \det_signal.max_freq_diff[20]_i_2_n_0 ;
  wire \det_signal.max_freq_diff[20]_i_3_n_0 ;
  wire \det_signal.max_freq_diff[20]_i_4_n_0 ;
  wire \det_signal.max_freq_diff[20]_i_5_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_2_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_3_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_4_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_5_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_6_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_7_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_8_n_0 ;
  wire \det_signal.max_freq_diff[7]_i_9_n_0 ;
  wire [20:0]\det_signal.max_freq_diff_reg0 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_0 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_1 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_2 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_3 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_4 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_5 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_6 ;
  wire \det_signal.max_freq_diff_reg[15]_i_1_n_7 ;
  wire \det_signal.max_freq_diff_reg[20]_i_1_n_4 ;
  wire \det_signal.max_freq_diff_reg[20]_i_1_n_5 ;
  wire \det_signal.max_freq_diff_reg[20]_i_1_n_6 ;
  wire \det_signal.max_freq_diff_reg[20]_i_1_n_7 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_0 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_1 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_2 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_3 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_4 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_5 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_6 ;
  wire \det_signal.max_freq_diff_reg[7]_i_1_n_7 ;
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
  wire \det_signal.min_freq[0]_i_1_n_0 ;
  wire \det_signal.min_freq[10]_i_1_n_0 ;
  wire \det_signal.min_freq[11]_i_1_n_0 ;
  wire \det_signal.min_freq[12]_i_1_n_0 ;
  wire \det_signal.min_freq[13]_i_1_n_0 ;
  wire \det_signal.min_freq[14]_i_1_n_0 ;
  wire \det_signal.min_freq[15]_i_1_n_0 ;
  wire \det_signal.min_freq[16]_i_1_n_0 ;
  wire \det_signal.min_freq[17]_i_1_n_0 ;
  wire \det_signal.min_freq[18]_i_1_n_0 ;
  wire \det_signal.min_freq[19]_i_1_n_0 ;
  wire \det_signal.min_freq[1]_i_1_n_0 ;
  wire \det_signal.min_freq[2]_i_1_n_0 ;
  wire \det_signal.min_freq[3]_i_1_n_0 ;
  wire \det_signal.min_freq[4]_i_1_n_0 ;
  wire \det_signal.min_freq[5]_i_1_n_0 ;
  wire \det_signal.min_freq[6]_i_1_n_0 ;
  wire \det_signal.min_freq[7]_i_1_n_0 ;
  wire \det_signal.min_freq[8]_i_1_n_0 ;
  wire \det_signal.min_freq[9]_i_1_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_2_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_3_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_4_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_5_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_6_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_7_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_8_n_0 ;
  wire \det_signal.min_freq_diff[15]_i_9_n_0 ;
  wire \det_signal.min_freq_diff[20]_i_3_n_0 ;
  wire \det_signal.min_freq_diff[20]_i_4_n_0 ;
  wire \det_signal.min_freq_diff[20]_i_5_n_0 ;
  wire \det_signal.min_freq_diff[20]_i_6_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_2_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_3_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_4_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_5_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_6_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_7_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_8_n_0 ;
  wire \det_signal.min_freq_diff[7]_i_9_n_0 ;
  wire [20:0]\det_signal.min_freq_diff_reg0 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_0 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_1 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_2 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_3 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_4 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_5 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_6 ;
  wire \det_signal.min_freq_diff_reg[15]_i_1_n_7 ;
  wire \det_signal.min_freq_diff_reg[20]_i_2_n_4 ;
  wire \det_signal.min_freq_diff_reg[20]_i_2_n_5 ;
  wire \det_signal.min_freq_diff_reg[20]_i_2_n_6 ;
  wire \det_signal.min_freq_diff_reg[20]_i_2_n_7 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_0 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_1 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_2 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_3 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_4 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_5 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_6 ;
  wire \det_signal.min_freq_diff_reg[7]_i_1_n_7 ;
  wire \det_signal.min_samples[1]_i_1_n_0 ;
  wire \det_signal.min_samples[2]_i_1_n_0 ;
  wire \det_signal.min_samples[3]_i_1_n_0 ;
  wire \det_signal.min_samples[4]_i_1_n_0 ;
  wire \det_signal.min_samples[5]_i_1_n_0 ;
  wire \det_signal.min_samples[6]_i_1_n_0 ;
  wire \det_signal.min_samples[7]_i_1_n_0 ;
  wire \det_signal.min_samples[8]_i_2_n_0 ;
  wire \det_signal.min_samples[8]_i_3_n_0 ;
  wire \det_signal.min_samples_reg_n_0_[0] ;
  wire \det_signal.min_samples_reg_n_0_[1] ;
  wire \det_signal.min_samples_reg_n_0_[2] ;
  wire \det_signal.min_samples_reg_n_0_[3] ;
  wire \det_signal.min_samples_reg_n_0_[4] ;
  wire \det_signal.min_samples_reg_n_0_[5] ;
  wire \det_signal.min_samples_reg_n_0_[6] ;
  wire \det_signal.min_samples_reg_n_0_[7] ;
  wire \det_signal.min_samples_reg_n_0_[8] ;
  wire \det_signal.proc_done_i_1_n_0 ;
  wire \det_signal.proc_done_i_2_n_0 ;
  wire \det_signal.proc_signal_i_1_n_0 ;
  wire \det_signal.run_reg[0]__0 ;
  wire \det_signal.run_reg[1]__0 ;
  wire \det_signal.run_reg[2]__0 ;
  wire \det_signal.sample_count[0]_i_1_n_0 ;
  wire \det_signal.sample_count[1]_i_1_n_0 ;
  wire \det_signal.sample_count[2]_i_1_n_0 ;
  wire \det_signal.sample_count[3]_i_1_n_0 ;
  wire \det_signal.sample_count[4]_i_1_n_0 ;
  wire \det_signal.sample_count[5]_i_1_n_0 ;
  wire \det_signal.sample_count[6]_i_1_n_0 ;
  wire \det_signal.sample_count[7]_i_1_n_0 ;
  wire \det_signal.sample_count[8]_i_2_n_0 ;
  wire \det_signal.sample_count[8]_i_3_n_0 ;
  wire \det_signal.sample_count_ok_i_1_n_0 ;
  wire \det_signal.sample_count_ok_i_2_n_0 ;
  wire \det_signal.sample_count_ok_i_3_n_0 ;
  wire \det_signal.sample_count_ok_i_4_n_0 ;
  wire \det_signal.sample_count_ok_i_5_n_0 ;
  wire \det_signal.signal_done_i_1_n_0 ;
  wire \det_signal.signal_freq[19]_i_1_n_0 ;
  wire \det_signal.start_proc_i_1_n_0 ;
  wire \det_signal.start_proc_i_2_n_0 ;
  wire \det_signal.valid_count_i_1_n_0 ;
  wire \det_signal.valid_count_i_2_n_0 ;
  wire \det_signal.valid_count_reg_n_0 ;
  wire \det_signal.valid_env_reg0 ;
  wire \det_signal.valid_err_reg0 ;
  wire [16:16]diff_env_E0;
  wire [16:16]diff_env_N0;
  wire [16:16]diff_env_W0;
  wire [12:12]diff_err_EW0;
  wire [12:12]diff_err_NE0;
  wire [12:12]diff_err_NW0;
  wire [19:0]diff_phase_E;
  wire [19:0]diff_phase_E03_out;
  wire [19:0]diff_phase_N;
  wire [19:0]diff_phase_N04_out;
  wire [19:0]diff_phase_W;
  wire [19:0]diff_phase_W02_out;
  (* MARK_DEBUG *) wire [5:0]div_counter;
  wire div_counter1;
  (* MARK_DEBUG *) wire [3:0]div_delay;
  wire [24:0]div_env_NE0;
  wire div_env_all;
  wire [31:0]div_env_all0;
  (* MARK_DEBUG *) wire [31:0]div_env_sum_E;
  wire [24:0]div_env_sum_EW0;
  (* MARK_DEBUG *) wire [31:0]div_env_sum_N;
  wire [24:0]div_env_sum_NE;
  wire [24:0]div_env_sum_NW;
  wire [24:0]div_env_sum_NW0;
  (* MARK_DEBUG *) wire [31:0]div_env_sum_W;
  wire [47:0]div_freq_sum;
  wire [23:0]div_hi_freq_sum0_in;
  wire div_lo_freq_sum;
  wire [25:0]div_lo_freq_sum0;
  wire [24:0]div_lo_freq_sum00_in;
  wire [51:32]div_phase_EW;
  wire [51:32]div_phase_NE;
  wire [51:32]div_phase_NW;
  wire div_phase_sum_NE;
  wire [47:0]div_phase_sum_NW;
  wire div_sample_count;
  (* MARK_DEBUG *) wire div_start;
  wire [19:0]dsp_phase_E;
  wire [19:0]dsp_phase_EW;
  wire [19:0]dsp_phase_EW00_out;
  wire [19:0]dsp_phase_N;
  wire [19:0]dsp_phase_NE;
  wire [19:0]dsp_phase_NE01_out;
  wire [19:0]dsp_phase_NW;
  wire [19:0]dsp_phase_NW0;
  wire [19:0]dsp_phase_W;
  wire [0:0]dsp_phase_W__0;
  wire [47:0]dsp_sum_E;
  wire [47:0]dsp_sum_EW;
  wire [47:0]dsp_sum_N;
  wire [47:0]dsp_sum_NE;
  wire [47:0]dsp_sum_NW;
  wire [47:0]dsp_sum_W;
  wire [15:0]env_E;
  wire [16:0]env_EW;
  wire [16:0]env_EW0;
  wire [15:0]env_N;
  wire [16:0]env_NE;
  wire [16:0]env_NE0;
  wire [16:0]env_NW;
  wire [16:0]env_NW0;
  wire [15:0]env_W;
  (* MARK_DEBUG *) wire [23:0]env_sum_E;
  wire [23:0]env_sum_E__0;
  (* MARK_DEBUG *) wire [23:0]env_sum_N;
  wire [23:0]env_sum_N0_in;
  (* MARK_DEBUG *) wire [23:0]env_sum_W;
  wire [23:0]env_sum_W__0;
  wire [11:0]err_EW;
  wire [11:0]err_NE;
  wire [11:0]err_NW;
  (* MARK_DEBUG *) wire [1:0]err_count;
  (* MARK_DEBUG *) wire [19:0]freq;
  (* MARK_DEBUG *) wire has_signal;
  wire has_signal10_out;
  wire max_doa_diff;
  (* MARK_DEBUG *) wire [19:0]max_freq;
  (* MARK_DEBUG *) wire [20:0]max_freq_diff;
  wire max_freq_diff__0;
  wire min_env;
  (* MARK_DEBUG *) wire [19:0]min_freq;
  (* MARK_DEBUG *) wire [20:0]min_freq_diff;
  wire min_samples;
  wire [0:0]min_samples0;
  wire p_0_in21_in;
  wire p_0_in24_in;
  wire p_1_in23_in;
  wire p_1_in26_in;
  wire [22:0]p_1_in__0;
  wire p_2_in22_in;
  wire p_2_in25_in;
  wire [19:0]phase_E;
  wire [19:0]phase_N;
  wire [19:0]phase_W;
  wire [19:0]prev_phase_E;
  wire [19:0]prev_phase_N;
  wire [19:0]prev_phase_W;
  (* MARK_DEBUG *) wire proc_done;
  (* MARK_DEBUG *) wire proc_signal;
  (* MARK_DEBUG *) wire [8:0]sample_count;
  (* MARK_DEBUG *) wire sample_count_ok;
  (* MARK_DEBUG *) wire signal_done;
  wire signal_done__0;
  wire [15:0]signal_env_E;
  wire [15:0]signal_env_N;
  wire [15:0]signal_env_W;
  wire [19:0]signal_freq;
  wire [19:0]signal_phase_EW;
  wire [19:0]signal_phase_NE;
  wire [19:0]signal_phase_NW;
  (* MARK_DEBUG *) wire start_proc;
  wire start_proc6_out;
  (* MARK_DEBUG *) wire valid_env;
  (* MARK_DEBUG *) wire valid_env_E;
  (* MARK_DEBUG *) wire valid_env_N;
  (* MARK_DEBUG *) wire valid_env_W;
  (* MARK_DEBUG *) wire valid_err;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_3_O_UNCONNECTED ;
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
  wire [7:3]\NLW_det_signal.diff_phase_N_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_N_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.diff_phase_W_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.diff_phase_W_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.div_env_NE_reg[24]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.div_env_NE_reg[24]_i_2_O_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.div_env_all_reg[31]_i_2_CO_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.div_env_sum_EW_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.div_env_sum_EW_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.div_env_sum_NW_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.div_env_sum_NW_reg[24]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.div_hi_freq_sum_reg[23]_i_2_CO_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.div_lo_freq_sum_reg[24]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.div_lo_freq_sum_reg[24]_i_2_O_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.div_lo_freq_sum_reg[25]_i_3_CO_UNCONNECTED ;
  wire [7:2]\NLW_det_signal.div_lo_freq_sum_reg[25]_i_3_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.dsp_phase_NE_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_NE_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.env_EW_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_EW_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.env_NE_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_NE_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.env_NW_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_NW_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.env_sum_E_reg[23]_i_2_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.env_sum_N_reg[23]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.env_sum_W_reg[23]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.max_freq_diff_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_det_signal.max_freq_diff_reg[20]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.min_freq_diff_reg[20]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_det_signal.min_freq_diff_reg[20]_i_2_O_UNCONNECTED ;
  wire [39:0]NLW_div_env_E_i_m_axis_dout_tdata_UNCONNECTED;
  wire [39:0]NLW_div_env_N_i_m_axis_dout_tdata_UNCONNECTED;
  wire [39:0]NLW_div_env_W_i_m_axis_dout_tdata_UNCONNECTED;
  wire NLW_div_incr_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [79:0]NLW_div_incr_i_m_axis_dout_tdata_UNCONNECTED;
  wire NLW_div_phase_EW_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [79:0]NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED;
  wire NLW_div_phase_NE_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [79:0]NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED;
  wire NLW_div_phase_NW_i_m_axis_dout_tvalid_UNCONNECTED;
  wire [79:0]NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED;

  assign signal_sample[31] = \<const0> ;
  assign signal_sample[30] = \<const0> ;
  assign signal_sample[29] = \<const0> ;
  assign signal_sample[28] = \<const0> ;
  assign signal_sample[27] = \<const0> ;
  assign signal_sample[26] = \<const0> ;
  assign signal_sample[25] = \<const0> ;
  assign signal_sample[24] = \<const0> ;
  assign signal_sample[23] = \<const0> ;
  assign signal_sample[22] = \<const0> ;
  assign signal_sample[21] = \<const0> ;
  assign signal_sample[20] = \<const0> ;
  assign signal_sample[19] = \<const0> ;
  assign signal_sample[18] = \<const0> ;
  assign signal_sample[17] = \<const0> ;
  assign signal_sample[16] = \<const0> ;
  assign signal_sample[15] = \<const0> ;
  assign signal_sample[14] = \<const0> ;
  assign signal_sample[13] = \<const0> ;
  assign signal_sample[12] = \<const0> ;
  assign signal_sample[11] = \<const0> ;
  assign signal_sample[10] = \<const0> ;
  assign signal_sample[9] = \<const0> ;
  assign signal_sample[8] = \<const0> ;
  assign signal_sample[7] = \<const0> ;
  assign signal_sample[6] = \<const0> ;
  assign signal_sample[5] = \<const0> ;
  assign signal_sample[4] = \<const0> ;
  assign signal_sample[3] = \<const0> ;
  assign signal_sample[2] = \<const0> ;
  assign signal_sample[1] = \<const0> ;
  assign signal_sample[0] = \<const0> ;
  assign signal_size[8] = \<const0> ;
  assign signal_size[7] = \<const0> ;
  assign signal_size[6] = \<const0> ;
  assign signal_size[5] = \<const0> ;
  assign signal_size[4] = \<const0> ;
  assign signal_size[3] = \<const0> ;
  assign signal_size[2] = \<const0> ;
  assign signal_size[1] = \<const0> ;
  assign signal_size[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'h0000FFFF80888888)) 
    \det_signal.acc_reset_i_1 
       (.I0(\det_signal.run_reg[2]__0 ),
        .I1(acc_reset),
        .I2(\det_signal.err_ov_reg_n_0 ),
        .I3(\det_signal.valid_count_reg_n_0 ),
        .I4(has_signal),
        .I5(start_proc6_out),
        .O(\det_signal.acc_reset_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.acc_reset_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.acc_reset_i_1_n_0 ),
        .Q(acc_reset),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.accept_new_burst_i_1 
       (.I0(proc_signal),
        .O(\det_signal.accept_new_burst_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0200)) 
    \det_signal.accept_new_burst_i_2 
       (.I0(div_delay[0]),
        .I1(div_delay[1]),
        .I2(div_delay[3]),
        .I3(div_delay[2]),
        .I4(accept_new_burst),
        .O(\det_signal.accept_new_burst_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \det_signal.accept_new_burst_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.accept_new_burst_i_2_n_0 ),
        .Q(accept_new_burst),
        .S(\det_signal.accept_new_burst_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_10 
       (.I0(\det_signal.min_env_reg_n_0_[9] ),
        .I1(env_E[9]),
        .O(\det_signal.diff_env_E[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_11 
       (.I0(\det_signal.min_env_reg_n_0_[8] ),
        .I1(env_E[8]),
        .O(\det_signal.diff_env_E[16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_12 
       (.I0(\det_signal.min_env_reg_n_0_[7] ),
        .I1(env_E[7]),
        .O(\det_signal.diff_env_E[16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_13 
       (.I0(\det_signal.min_env_reg_n_0_[6] ),
        .I1(env_E[6]),
        .O(\det_signal.diff_env_E[16]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_14 
       (.I0(\det_signal.min_env_reg_n_0_[5] ),
        .I1(env_E[5]),
        .O(\det_signal.diff_env_E[16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_15 
       (.I0(\det_signal.min_env_reg_n_0_[4] ),
        .I1(env_E[4]),
        .O(\det_signal.diff_env_E[16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_16 
       (.I0(\det_signal.min_env_reg_n_0_[3] ),
        .I1(env_E[3]),
        .O(\det_signal.diff_env_E[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_17 
       (.I0(\det_signal.min_env_reg_n_0_[2] ),
        .I1(env_E[2]),
        .O(\det_signal.diff_env_E[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_18 
       (.I0(\det_signal.min_env_reg_n_0_[1] ),
        .I1(env_E[1]),
        .O(\det_signal.diff_env_E[16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_19 
       (.I0(\det_signal.min_env_reg_n_0_[0] ),
        .I1(env_E[0]),
        .O(\det_signal.diff_env_E[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[15] ),
        .I1(env_E[15]),
        .O(\det_signal.diff_env_E[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[14] ),
        .I1(env_E[14]),
        .O(\det_signal.diff_env_E[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[13] ),
        .I1(env_E[13]),
        .O(\det_signal.diff_env_E[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[12] ),
        .I1(env_E[12]),
        .O(\det_signal.diff_env_E[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[11] ),
        .I1(env_E[11]),
        .O(\det_signal.diff_env_E[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_E[16]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[10] ),
        .I1(env_E[10]),
        .O(\det_signal.diff_env_E[16]_i_9_n_0 ));
  FDRE \det_signal.diff_env_E_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_env_E0),
        .Q(p_0_in24_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_1 
       (.CI(\det_signal.diff_env_E_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED [7:1],diff_env_E0}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_2 
       (.CI(\det_signal.diff_env_E_reg[16]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[16]_i_2_n_0 ,\det_signal.diff_env_E_reg[16]_i_2_n_1 ,\det_signal.diff_env_E_reg[16]_i_2_n_2 ,\det_signal.diff_env_E_reg[16]_i_2_n_3 ,\det_signal.diff_env_E_reg[16]_i_2_n_4 ,\det_signal.diff_env_E_reg[16]_i_2_n_5 ,\det_signal.diff_env_E_reg[16]_i_2_n_6 ,\det_signal.diff_env_E_reg[16]_i_2_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[15] ,\det_signal.min_env_reg_n_0_[14] ,\det_signal.min_env_reg_n_0_[13] ,\det_signal.min_env_reg_n_0_[12] ,\det_signal.min_env_reg_n_0_[11] ,\det_signal.min_env_reg_n_0_[10] ,\det_signal.min_env_reg_n_0_[9] ,\det_signal.min_env_reg_n_0_[8] }),
        .O(\NLW_det_signal.diff_env_E_reg[16]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_E[16]_i_4_n_0 ,\det_signal.diff_env_E[16]_i_5_n_0 ,\det_signal.diff_env_E[16]_i_6_n_0 ,\det_signal.diff_env_E[16]_i_7_n_0 ,\det_signal.diff_env_E[16]_i_8_n_0 ,\det_signal.diff_env_E[16]_i_9_n_0 ,\det_signal.diff_env_E[16]_i_10_n_0 ,\det_signal.diff_env_E[16]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_3 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[16]_i_3_n_0 ,\det_signal.diff_env_E_reg[16]_i_3_n_1 ,\det_signal.diff_env_E_reg[16]_i_3_n_2 ,\det_signal.diff_env_E_reg[16]_i_3_n_3 ,\det_signal.diff_env_E_reg[16]_i_3_n_4 ,\det_signal.diff_env_E_reg[16]_i_3_n_5 ,\det_signal.diff_env_E_reg[16]_i_3_n_6 ,\det_signal.diff_env_E_reg[16]_i_3_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[7] ,\det_signal.min_env_reg_n_0_[6] ,\det_signal.min_env_reg_n_0_[5] ,\det_signal.min_env_reg_n_0_[4] ,\det_signal.min_env_reg_n_0_[3] ,\det_signal.min_env_reg_n_0_[2] ,\det_signal.min_env_reg_n_0_[1] ,\det_signal.min_env_reg_n_0_[0] }),
        .O(\NLW_det_signal.diff_env_E_reg[16]_i_3_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_E[16]_i_12_n_0 ,\det_signal.diff_env_E[16]_i_13_n_0 ,\det_signal.diff_env_E[16]_i_14_n_0 ,\det_signal.diff_env_E[16]_i_15_n_0 ,\det_signal.diff_env_E[16]_i_16_n_0 ,\det_signal.diff_env_E[16]_i_17_n_0 ,\det_signal.diff_env_E[16]_i_18_n_0 ,\det_signal.diff_env_E[16]_i_19_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_10 
       (.I0(\det_signal.min_env_reg_n_0_[9] ),
        .I1(env_N[9]),
        .O(\det_signal.diff_env_N[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_11 
       (.I0(\det_signal.min_env_reg_n_0_[8] ),
        .I1(env_N[8]),
        .O(\det_signal.diff_env_N[16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_12 
       (.I0(\det_signal.min_env_reg_n_0_[7] ),
        .I1(env_N[7]),
        .O(\det_signal.diff_env_N[16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_13 
       (.I0(\det_signal.min_env_reg_n_0_[6] ),
        .I1(env_N[6]),
        .O(\det_signal.diff_env_N[16]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_14 
       (.I0(\det_signal.min_env_reg_n_0_[5] ),
        .I1(env_N[5]),
        .O(\det_signal.diff_env_N[16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_15 
       (.I0(\det_signal.min_env_reg_n_0_[4] ),
        .I1(env_N[4]),
        .O(\det_signal.diff_env_N[16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_16 
       (.I0(\det_signal.min_env_reg_n_0_[3] ),
        .I1(env_N[3]),
        .O(\det_signal.diff_env_N[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_17 
       (.I0(\det_signal.min_env_reg_n_0_[2] ),
        .I1(env_N[2]),
        .O(\det_signal.diff_env_N[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_18 
       (.I0(\det_signal.min_env_reg_n_0_[1] ),
        .I1(env_N[1]),
        .O(\det_signal.diff_env_N[16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_19 
       (.I0(\det_signal.min_env_reg_n_0_[0] ),
        .I1(env_N[0]),
        .O(\det_signal.diff_env_N[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[15] ),
        .I1(env_N[15]),
        .O(\det_signal.diff_env_N[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[14] ),
        .I1(env_N[14]),
        .O(\det_signal.diff_env_N[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[13] ),
        .I1(env_N[13]),
        .O(\det_signal.diff_env_N[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[12] ),
        .I1(env_N[12]),
        .O(\det_signal.diff_env_N[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[11] ),
        .I1(env_N[11]),
        .O(\det_signal.diff_env_N[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_N[16]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[10] ),
        .I1(env_N[10]),
        .O(\det_signal.diff_env_N[16]_i_9_n_0 ));
  FDRE \det_signal.diff_env_N_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_env_N0),
        .Q(p_1_in26_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_1 
       (.CI(\det_signal.diff_env_N_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED [7:1],diff_env_N0}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_2 
       (.CI(\det_signal.diff_env_N_reg[16]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[16]_i_2_n_0 ,\det_signal.diff_env_N_reg[16]_i_2_n_1 ,\det_signal.diff_env_N_reg[16]_i_2_n_2 ,\det_signal.diff_env_N_reg[16]_i_2_n_3 ,\det_signal.diff_env_N_reg[16]_i_2_n_4 ,\det_signal.diff_env_N_reg[16]_i_2_n_5 ,\det_signal.diff_env_N_reg[16]_i_2_n_6 ,\det_signal.diff_env_N_reg[16]_i_2_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[15] ,\det_signal.min_env_reg_n_0_[14] ,\det_signal.min_env_reg_n_0_[13] ,\det_signal.min_env_reg_n_0_[12] ,\det_signal.min_env_reg_n_0_[11] ,\det_signal.min_env_reg_n_0_[10] ,\det_signal.min_env_reg_n_0_[9] ,\det_signal.min_env_reg_n_0_[8] }),
        .O(\NLW_det_signal.diff_env_N_reg[16]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_N[16]_i_4_n_0 ,\det_signal.diff_env_N[16]_i_5_n_0 ,\det_signal.diff_env_N[16]_i_6_n_0 ,\det_signal.diff_env_N[16]_i_7_n_0 ,\det_signal.diff_env_N[16]_i_8_n_0 ,\det_signal.diff_env_N[16]_i_9_n_0 ,\det_signal.diff_env_N[16]_i_10_n_0 ,\det_signal.diff_env_N[16]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_3 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[16]_i_3_n_0 ,\det_signal.diff_env_N_reg[16]_i_3_n_1 ,\det_signal.diff_env_N_reg[16]_i_3_n_2 ,\det_signal.diff_env_N_reg[16]_i_3_n_3 ,\det_signal.diff_env_N_reg[16]_i_3_n_4 ,\det_signal.diff_env_N_reg[16]_i_3_n_5 ,\det_signal.diff_env_N_reg[16]_i_3_n_6 ,\det_signal.diff_env_N_reg[16]_i_3_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[7] ,\det_signal.min_env_reg_n_0_[6] ,\det_signal.min_env_reg_n_0_[5] ,\det_signal.min_env_reg_n_0_[4] ,\det_signal.min_env_reg_n_0_[3] ,\det_signal.min_env_reg_n_0_[2] ,\det_signal.min_env_reg_n_0_[1] ,\det_signal.min_env_reg_n_0_[0] }),
        .O(\NLW_det_signal.diff_env_N_reg[16]_i_3_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_N[16]_i_12_n_0 ,\det_signal.diff_env_N[16]_i_13_n_0 ,\det_signal.diff_env_N[16]_i_14_n_0 ,\det_signal.diff_env_N[16]_i_15_n_0 ,\det_signal.diff_env_N[16]_i_16_n_0 ,\det_signal.diff_env_N[16]_i_17_n_0 ,\det_signal.diff_env_N[16]_i_18_n_0 ,\det_signal.diff_env_N[16]_i_19_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_10 
       (.I0(\det_signal.min_env_reg_n_0_[9] ),
        .I1(env_W[9]),
        .O(\det_signal.diff_env_W[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_11 
       (.I0(\det_signal.min_env_reg_n_0_[8] ),
        .I1(env_W[8]),
        .O(\det_signal.diff_env_W[16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_12 
       (.I0(\det_signal.min_env_reg_n_0_[7] ),
        .I1(env_W[7]),
        .O(\det_signal.diff_env_W[16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_13 
       (.I0(\det_signal.min_env_reg_n_0_[6] ),
        .I1(env_W[6]),
        .O(\det_signal.diff_env_W[16]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_14 
       (.I0(\det_signal.min_env_reg_n_0_[5] ),
        .I1(env_W[5]),
        .O(\det_signal.diff_env_W[16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_15 
       (.I0(\det_signal.min_env_reg_n_0_[4] ),
        .I1(env_W[4]),
        .O(\det_signal.diff_env_W[16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_16 
       (.I0(\det_signal.min_env_reg_n_0_[3] ),
        .I1(env_W[3]),
        .O(\det_signal.diff_env_W[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_17 
       (.I0(\det_signal.min_env_reg_n_0_[2] ),
        .I1(env_W[2]),
        .O(\det_signal.diff_env_W[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_18 
       (.I0(\det_signal.min_env_reg_n_0_[1] ),
        .I1(env_W[1]),
        .O(\det_signal.diff_env_W[16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_19 
       (.I0(\det_signal.min_env_reg_n_0_[0] ),
        .I1(env_W[0]),
        .O(\det_signal.diff_env_W[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_4 
       (.I0(\det_signal.min_env_reg_n_0_[15] ),
        .I1(env_W[15]),
        .O(\det_signal.diff_env_W[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_5 
       (.I0(\det_signal.min_env_reg_n_0_[14] ),
        .I1(env_W[14]),
        .O(\det_signal.diff_env_W[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_6 
       (.I0(\det_signal.min_env_reg_n_0_[13] ),
        .I1(env_W[13]),
        .O(\det_signal.diff_env_W[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_7 
       (.I0(\det_signal.min_env_reg_n_0_[12] ),
        .I1(env_W[12]),
        .O(\det_signal.diff_env_W[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_8 
       (.I0(\det_signal.min_env_reg_n_0_[11] ),
        .I1(env_W[11]),
        .O(\det_signal.diff_env_W[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_env_W[16]_i_9 
       (.I0(\det_signal.min_env_reg_n_0_[10] ),
        .I1(env_W[10]),
        .O(\det_signal.diff_env_W[16]_i_9_n_0 ));
  FDRE \det_signal.diff_env_W_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_env_W0),
        .Q(p_2_in25_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_1 
       (.CI(\det_signal.diff_env_W_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED [7:1],diff_env_W0}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_2 
       (.CI(\det_signal.diff_env_W_reg[16]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[16]_i_2_n_0 ,\det_signal.diff_env_W_reg[16]_i_2_n_1 ,\det_signal.diff_env_W_reg[16]_i_2_n_2 ,\det_signal.diff_env_W_reg[16]_i_2_n_3 ,\det_signal.diff_env_W_reg[16]_i_2_n_4 ,\det_signal.diff_env_W_reg[16]_i_2_n_5 ,\det_signal.diff_env_W_reg[16]_i_2_n_6 ,\det_signal.diff_env_W_reg[16]_i_2_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[15] ,\det_signal.min_env_reg_n_0_[14] ,\det_signal.min_env_reg_n_0_[13] ,\det_signal.min_env_reg_n_0_[12] ,\det_signal.min_env_reg_n_0_[11] ,\det_signal.min_env_reg_n_0_[10] ,\det_signal.min_env_reg_n_0_[9] ,\det_signal.min_env_reg_n_0_[8] }),
        .O(\NLW_det_signal.diff_env_W_reg[16]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_W[16]_i_4_n_0 ,\det_signal.diff_env_W[16]_i_5_n_0 ,\det_signal.diff_env_W[16]_i_6_n_0 ,\det_signal.diff_env_W[16]_i_7_n_0 ,\det_signal.diff_env_W[16]_i_8_n_0 ,\det_signal.diff_env_W[16]_i_9_n_0 ,\det_signal.diff_env_W[16]_i_10_n_0 ,\det_signal.diff_env_W[16]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_3 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[16]_i_3_n_0 ,\det_signal.diff_env_W_reg[16]_i_3_n_1 ,\det_signal.diff_env_W_reg[16]_i_3_n_2 ,\det_signal.diff_env_W_reg[16]_i_3_n_3 ,\det_signal.diff_env_W_reg[16]_i_3_n_4 ,\det_signal.diff_env_W_reg[16]_i_3_n_5 ,\det_signal.diff_env_W_reg[16]_i_3_n_6 ,\det_signal.diff_env_W_reg[16]_i_3_n_7 }),
        .DI({\det_signal.min_env_reg_n_0_[7] ,\det_signal.min_env_reg_n_0_[6] ,\det_signal.min_env_reg_n_0_[5] ,\det_signal.min_env_reg_n_0_[4] ,\det_signal.min_env_reg_n_0_[3] ,\det_signal.min_env_reg_n_0_[2] ,\det_signal.min_env_reg_n_0_[1] ,\det_signal.min_env_reg_n_0_[0] }),
        .O(\NLW_det_signal.diff_env_W_reg[16]_i_3_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_W[16]_i_12_n_0 ,\det_signal.diff_env_W[16]_i_13_n_0 ,\det_signal.diff_env_W[16]_i_14_n_0 ,\det_signal.diff_env_W[16]_i_15_n_0 ,\det_signal.diff_env_W[16]_i_16_n_0 ,\det_signal.diff_env_W[16]_i_17_n_0 ,\det_signal.diff_env_W[16]_i_18_n_0 ,\det_signal.diff_env_W[16]_i_19_n_0 }));
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
        .Q(p_2_in22_in),
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
        .Q(p_1_in23_in),
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
        .Q(p_0_in21_in),
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
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_2 
       (.I0(phase_E[15]),
        .I1(prev_phase_E[15]),
        .O(\det_signal.diff_phase_E[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_3 
       (.I0(phase_E[14]),
        .I1(prev_phase_E[14]),
        .O(\det_signal.diff_phase_E[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_4 
       (.I0(phase_E[13]),
        .I1(prev_phase_E[13]),
        .O(\det_signal.diff_phase_E[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_5 
       (.I0(phase_E[12]),
        .I1(prev_phase_E[12]),
        .O(\det_signal.diff_phase_E[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_6 
       (.I0(phase_E[11]),
        .I1(prev_phase_E[11]),
        .O(\det_signal.diff_phase_E[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_7 
       (.I0(phase_E[10]),
        .I1(prev_phase_E[10]),
        .O(\det_signal.diff_phase_E[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_8 
       (.I0(phase_E[9]),
        .I1(prev_phase_E[9]),
        .O(\det_signal.diff_phase_E[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[15]_i_9 
       (.I0(phase_E[8]),
        .I1(prev_phase_E[8]),
        .O(\det_signal.diff_phase_E[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[19]_i_2 
       (.I0(phase_E[19]),
        .I1(prev_phase_E[19]),
        .O(\det_signal.diff_phase_E[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[19]_i_3 
       (.I0(phase_E[18]),
        .I1(prev_phase_E[18]),
        .O(\det_signal.diff_phase_E[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[19]_i_4 
       (.I0(phase_E[17]),
        .I1(prev_phase_E[17]),
        .O(\det_signal.diff_phase_E[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[19]_i_5 
       (.I0(phase_E[16]),
        .I1(prev_phase_E[16]),
        .O(\det_signal.diff_phase_E[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_2 
       (.I0(phase_E[7]),
        .I1(prev_phase_E[7]),
        .O(\det_signal.diff_phase_E[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_3 
       (.I0(phase_E[6]),
        .I1(prev_phase_E[6]),
        .O(\det_signal.diff_phase_E[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_4 
       (.I0(phase_E[5]),
        .I1(prev_phase_E[5]),
        .O(\det_signal.diff_phase_E[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_5 
       (.I0(phase_E[4]),
        .I1(prev_phase_E[4]),
        .O(\det_signal.diff_phase_E[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_6 
       (.I0(phase_E[3]),
        .I1(prev_phase_E[3]),
        .O(\det_signal.diff_phase_E[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_7 
       (.I0(phase_E[2]),
        .I1(prev_phase_E[2]),
        .O(\det_signal.diff_phase_E[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_8 
       (.I0(phase_E[1]),
        .I1(prev_phase_E[1]),
        .O(\det_signal.diff_phase_E[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_E[7]_i_9 
       (.I0(phase_E[0]),
        .I1(prev_phase_E[0]),
        .O(\det_signal.diff_phase_E[7]_i_9_n_0 ));
  FDRE \det_signal.diff_phase_E_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[0]),
        .Q(diff_phase_E[0]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[10]),
        .Q(diff_phase_E[10]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[11]),
        .Q(diff_phase_E[11]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[12]),
        .Q(diff_phase_E[12]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[13]),
        .Q(diff_phase_E[13]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[14]),
        .Q(diff_phase_E[14]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[15]),
        .Q(diff_phase_E[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[15]_i_1 
       (.CI(\det_signal.diff_phase_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[15]_i_1_n_0 ,\det_signal.diff_phase_E_reg[15]_i_1_n_1 ,\det_signal.diff_phase_E_reg[15]_i_1_n_2 ,\det_signal.diff_phase_E_reg[15]_i_1_n_3 ,\det_signal.diff_phase_E_reg[15]_i_1_n_4 ,\det_signal.diff_phase_E_reg[15]_i_1_n_5 ,\det_signal.diff_phase_E_reg[15]_i_1_n_6 ,\det_signal.diff_phase_E_reg[15]_i_1_n_7 }),
        .DI(phase_E[15:8]),
        .O(diff_phase_E03_out[15:8]),
        .S({\det_signal.diff_phase_E[15]_i_2_n_0 ,\det_signal.diff_phase_E[15]_i_3_n_0 ,\det_signal.diff_phase_E[15]_i_4_n_0 ,\det_signal.diff_phase_E[15]_i_5_n_0 ,\det_signal.diff_phase_E[15]_i_6_n_0 ,\det_signal.diff_phase_E[15]_i_7_n_0 ,\det_signal.diff_phase_E[15]_i_8_n_0 ,\det_signal.diff_phase_E[15]_i_9_n_0 }));
  FDRE \det_signal.diff_phase_E_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[16]),
        .Q(diff_phase_E[16]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[17]),
        .Q(diff_phase_E[17]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[18]),
        .Q(diff_phase_E[18]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[19]),
        .Q(diff_phase_E[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[19]_i_1 
       (.CI(\det_signal.diff_phase_E_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_E_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.diff_phase_E_reg[19]_i_1_n_5 ,\det_signal.diff_phase_E_reg[19]_i_1_n_6 ,\det_signal.diff_phase_E_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_E[18:16]}),
        .O({\NLW_det_signal.diff_phase_E_reg[19]_i_1_O_UNCONNECTED [7:4],diff_phase_E03_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_E[19]_i_2_n_0 ,\det_signal.diff_phase_E[19]_i_3_n_0 ,\det_signal.diff_phase_E[19]_i_4_n_0 ,\det_signal.diff_phase_E[19]_i_5_n_0 }));
  FDRE \det_signal.diff_phase_E_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[1]),
        .Q(diff_phase_E[1]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[2]),
        .Q(diff_phase_E[2]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[3]),
        .Q(diff_phase_E[3]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[4]),
        .Q(diff_phase_E[4]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[5]),
        .Q(diff_phase_E[5]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[6]),
        .Q(diff_phase_E[6]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[7]),
        .Q(diff_phase_E[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[7]_i_1_n_0 ,\det_signal.diff_phase_E_reg[7]_i_1_n_1 ,\det_signal.diff_phase_E_reg[7]_i_1_n_2 ,\det_signal.diff_phase_E_reg[7]_i_1_n_3 ,\det_signal.diff_phase_E_reg[7]_i_1_n_4 ,\det_signal.diff_phase_E_reg[7]_i_1_n_5 ,\det_signal.diff_phase_E_reg[7]_i_1_n_6 ,\det_signal.diff_phase_E_reg[7]_i_1_n_7 }),
        .DI(phase_E[7:0]),
        .O(diff_phase_E03_out[7:0]),
        .S({\det_signal.diff_phase_E[7]_i_2_n_0 ,\det_signal.diff_phase_E[7]_i_3_n_0 ,\det_signal.diff_phase_E[7]_i_4_n_0 ,\det_signal.diff_phase_E[7]_i_5_n_0 ,\det_signal.diff_phase_E[7]_i_6_n_0 ,\det_signal.diff_phase_E[7]_i_7_n_0 ,\det_signal.diff_phase_E[7]_i_8_n_0 ,\det_signal.diff_phase_E[7]_i_9_n_0 }));
  FDRE \det_signal.diff_phase_E_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[8]),
        .Q(diff_phase_E[8]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_E03_out[9]),
        .Q(diff_phase_E[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_2 
       (.I0(phase_N[15]),
        .I1(prev_phase_N[15]),
        .O(\det_signal.diff_phase_N[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_3 
       (.I0(phase_N[14]),
        .I1(prev_phase_N[14]),
        .O(\det_signal.diff_phase_N[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_4 
       (.I0(phase_N[13]),
        .I1(prev_phase_N[13]),
        .O(\det_signal.diff_phase_N[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_5 
       (.I0(phase_N[12]),
        .I1(prev_phase_N[12]),
        .O(\det_signal.diff_phase_N[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_6 
       (.I0(phase_N[11]),
        .I1(prev_phase_N[11]),
        .O(\det_signal.diff_phase_N[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_7 
       (.I0(phase_N[10]),
        .I1(prev_phase_N[10]),
        .O(\det_signal.diff_phase_N[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_8 
       (.I0(phase_N[9]),
        .I1(prev_phase_N[9]),
        .O(\det_signal.diff_phase_N[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[15]_i_9 
       (.I0(phase_N[8]),
        .I1(prev_phase_N[8]),
        .O(\det_signal.diff_phase_N[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[19]_i_2 
       (.I0(phase_N[19]),
        .I1(prev_phase_N[19]),
        .O(\det_signal.diff_phase_N[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[19]_i_3 
       (.I0(phase_N[18]),
        .I1(prev_phase_N[18]),
        .O(\det_signal.diff_phase_N[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[19]_i_4 
       (.I0(phase_N[17]),
        .I1(prev_phase_N[17]),
        .O(\det_signal.diff_phase_N[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[19]_i_5 
       (.I0(phase_N[16]),
        .I1(prev_phase_N[16]),
        .O(\det_signal.diff_phase_N[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_2 
       (.I0(phase_N[7]),
        .I1(prev_phase_N[7]),
        .O(\det_signal.diff_phase_N[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_3 
       (.I0(phase_N[6]),
        .I1(prev_phase_N[6]),
        .O(\det_signal.diff_phase_N[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_4 
       (.I0(phase_N[5]),
        .I1(prev_phase_N[5]),
        .O(\det_signal.diff_phase_N[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_5 
       (.I0(phase_N[4]),
        .I1(prev_phase_N[4]),
        .O(\det_signal.diff_phase_N[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_6 
       (.I0(phase_N[3]),
        .I1(prev_phase_N[3]),
        .O(\det_signal.diff_phase_N[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_7 
       (.I0(phase_N[2]),
        .I1(prev_phase_N[2]),
        .O(\det_signal.diff_phase_N[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_8 
       (.I0(phase_N[1]),
        .I1(prev_phase_N[1]),
        .O(\det_signal.diff_phase_N[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_N[7]_i_9 
       (.I0(phase_N[0]),
        .I1(prev_phase_N[0]),
        .O(\det_signal.diff_phase_N[7]_i_9_n_0 ));
  FDRE \det_signal.diff_phase_N_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[0]),
        .Q(diff_phase_N[0]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[10]),
        .Q(diff_phase_N[10]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[11]),
        .Q(diff_phase_N[11]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[12]),
        .Q(diff_phase_N[12]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[13]),
        .Q(diff_phase_N[13]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[14]),
        .Q(diff_phase_N[14]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[15]),
        .Q(diff_phase_N[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[15]_i_1 
       (.CI(\det_signal.diff_phase_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[15]_i_1_n_0 ,\det_signal.diff_phase_N_reg[15]_i_1_n_1 ,\det_signal.diff_phase_N_reg[15]_i_1_n_2 ,\det_signal.diff_phase_N_reg[15]_i_1_n_3 ,\det_signal.diff_phase_N_reg[15]_i_1_n_4 ,\det_signal.diff_phase_N_reg[15]_i_1_n_5 ,\det_signal.diff_phase_N_reg[15]_i_1_n_6 ,\det_signal.diff_phase_N_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(diff_phase_N04_out[15:8]),
        .S({\det_signal.diff_phase_N[15]_i_2_n_0 ,\det_signal.diff_phase_N[15]_i_3_n_0 ,\det_signal.diff_phase_N[15]_i_4_n_0 ,\det_signal.diff_phase_N[15]_i_5_n_0 ,\det_signal.diff_phase_N[15]_i_6_n_0 ,\det_signal.diff_phase_N[15]_i_7_n_0 ,\det_signal.diff_phase_N[15]_i_8_n_0 ,\det_signal.diff_phase_N[15]_i_9_n_0 }));
  FDRE \det_signal.diff_phase_N_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[16]),
        .Q(diff_phase_N[16]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[17]),
        .Q(diff_phase_N[17]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[18]),
        .Q(diff_phase_N[18]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[19]),
        .Q(diff_phase_N[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[19]_i_1 
       (.CI(\det_signal.diff_phase_N_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_N_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.diff_phase_N_reg[19]_i_1_n_5 ,\det_signal.diff_phase_N_reg[19]_i_1_n_6 ,\det_signal.diff_phase_N_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_det_signal.diff_phase_N_reg[19]_i_1_O_UNCONNECTED [7:4],diff_phase_N04_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_N[19]_i_2_n_0 ,\det_signal.diff_phase_N[19]_i_3_n_0 ,\det_signal.diff_phase_N[19]_i_4_n_0 ,\det_signal.diff_phase_N[19]_i_5_n_0 }));
  FDRE \det_signal.diff_phase_N_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[1]),
        .Q(diff_phase_N[1]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[2]),
        .Q(diff_phase_N[2]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[3]),
        .Q(diff_phase_N[3]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[4]),
        .Q(diff_phase_N[4]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[5]),
        .Q(diff_phase_N[5]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[6]),
        .Q(diff_phase_N[6]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[7]),
        .Q(diff_phase_N[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[7]_i_1_n_0 ,\det_signal.diff_phase_N_reg[7]_i_1_n_1 ,\det_signal.diff_phase_N_reg[7]_i_1_n_2 ,\det_signal.diff_phase_N_reg[7]_i_1_n_3 ,\det_signal.diff_phase_N_reg[7]_i_1_n_4 ,\det_signal.diff_phase_N_reg[7]_i_1_n_5 ,\det_signal.diff_phase_N_reg[7]_i_1_n_6 ,\det_signal.diff_phase_N_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(diff_phase_N04_out[7:0]),
        .S({\det_signal.diff_phase_N[7]_i_2_n_0 ,\det_signal.diff_phase_N[7]_i_3_n_0 ,\det_signal.diff_phase_N[7]_i_4_n_0 ,\det_signal.diff_phase_N[7]_i_5_n_0 ,\det_signal.diff_phase_N[7]_i_6_n_0 ,\det_signal.diff_phase_N[7]_i_7_n_0 ,\det_signal.diff_phase_N[7]_i_8_n_0 ,\det_signal.diff_phase_N[7]_i_9_n_0 }));
  FDRE \det_signal.diff_phase_N_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[8]),
        .Q(diff_phase_N[8]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_N04_out[9]),
        .Q(diff_phase_N[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_2 
       (.I0(phase_W[15]),
        .I1(prev_phase_W[15]),
        .O(\det_signal.diff_phase_W[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_3 
       (.I0(phase_W[14]),
        .I1(prev_phase_W[14]),
        .O(\det_signal.diff_phase_W[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_4 
       (.I0(phase_W[13]),
        .I1(prev_phase_W[13]),
        .O(\det_signal.diff_phase_W[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_5 
       (.I0(phase_W[12]),
        .I1(prev_phase_W[12]),
        .O(\det_signal.diff_phase_W[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_6 
       (.I0(phase_W[11]),
        .I1(prev_phase_W[11]),
        .O(\det_signal.diff_phase_W[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_7 
       (.I0(phase_W[10]),
        .I1(prev_phase_W[10]),
        .O(\det_signal.diff_phase_W[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_8 
       (.I0(phase_W[9]),
        .I1(prev_phase_W[9]),
        .O(\det_signal.diff_phase_W[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[15]_i_9 
       (.I0(phase_W[8]),
        .I1(prev_phase_W[8]),
        .O(\det_signal.diff_phase_W[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[19]_i_2 
       (.I0(phase_W[19]),
        .I1(prev_phase_W[19]),
        .O(\det_signal.diff_phase_W[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[19]_i_3 
       (.I0(phase_W[18]),
        .I1(prev_phase_W[18]),
        .O(\det_signal.diff_phase_W[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[19]_i_4 
       (.I0(phase_W[17]),
        .I1(prev_phase_W[17]),
        .O(\det_signal.diff_phase_W[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[19]_i_5 
       (.I0(phase_W[16]),
        .I1(prev_phase_W[16]),
        .O(\det_signal.diff_phase_W[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_2 
       (.I0(phase_W[7]),
        .I1(prev_phase_W[7]),
        .O(\det_signal.diff_phase_W[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_3 
       (.I0(phase_W[6]),
        .I1(prev_phase_W[6]),
        .O(\det_signal.diff_phase_W[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_4 
       (.I0(phase_W[5]),
        .I1(prev_phase_W[5]),
        .O(\det_signal.diff_phase_W[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_5 
       (.I0(phase_W[4]),
        .I1(prev_phase_W[4]),
        .O(\det_signal.diff_phase_W[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_6 
       (.I0(phase_W[3]),
        .I1(prev_phase_W[3]),
        .O(\det_signal.diff_phase_W[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_7 
       (.I0(phase_W[2]),
        .I1(prev_phase_W[2]),
        .O(\det_signal.diff_phase_W[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_8 
       (.I0(phase_W[1]),
        .I1(prev_phase_W[1]),
        .O(\det_signal.diff_phase_W[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.diff_phase_W[7]_i_9 
       (.I0(phase_W[0]),
        .I1(prev_phase_W[0]),
        .O(\det_signal.diff_phase_W[7]_i_9_n_0 ));
  FDRE \det_signal.diff_phase_W_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[0]),
        .Q(diff_phase_W[0]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[10]),
        .Q(diff_phase_W[10]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[11]),
        .Q(diff_phase_W[11]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[12]),
        .Q(diff_phase_W[12]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[13]),
        .Q(diff_phase_W[13]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[14]),
        .Q(diff_phase_W[14]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[15]),
        .Q(diff_phase_W[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[15]_i_1 
       (.CI(\det_signal.diff_phase_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[15]_i_1_n_0 ,\det_signal.diff_phase_W_reg[15]_i_1_n_1 ,\det_signal.diff_phase_W_reg[15]_i_1_n_2 ,\det_signal.diff_phase_W_reg[15]_i_1_n_3 ,\det_signal.diff_phase_W_reg[15]_i_1_n_4 ,\det_signal.diff_phase_W_reg[15]_i_1_n_5 ,\det_signal.diff_phase_W_reg[15]_i_1_n_6 ,\det_signal.diff_phase_W_reg[15]_i_1_n_7 }),
        .DI(phase_W[15:8]),
        .O(diff_phase_W02_out[15:8]),
        .S({\det_signal.diff_phase_W[15]_i_2_n_0 ,\det_signal.diff_phase_W[15]_i_3_n_0 ,\det_signal.diff_phase_W[15]_i_4_n_0 ,\det_signal.diff_phase_W[15]_i_5_n_0 ,\det_signal.diff_phase_W[15]_i_6_n_0 ,\det_signal.diff_phase_W[15]_i_7_n_0 ,\det_signal.diff_phase_W[15]_i_8_n_0 ,\det_signal.diff_phase_W[15]_i_9_n_0 }));
  FDRE \det_signal.diff_phase_W_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[16]),
        .Q(diff_phase_W[16]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[17]),
        .Q(diff_phase_W[17]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[18]),
        .Q(diff_phase_W[18]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[19]),
        .Q(diff_phase_W[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[19]_i_1 
       (.CI(\det_signal.diff_phase_W_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_W_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.diff_phase_W_reg[19]_i_1_n_5 ,\det_signal.diff_phase_W_reg[19]_i_1_n_6 ,\det_signal.diff_phase_W_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_W[18:16]}),
        .O({\NLW_det_signal.diff_phase_W_reg[19]_i_1_O_UNCONNECTED [7:4],diff_phase_W02_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_W[19]_i_2_n_0 ,\det_signal.diff_phase_W[19]_i_3_n_0 ,\det_signal.diff_phase_W[19]_i_4_n_0 ,\det_signal.diff_phase_W[19]_i_5_n_0 }));
  FDRE \det_signal.diff_phase_W_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[1]),
        .Q(diff_phase_W[1]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[2]),
        .Q(diff_phase_W[2]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[3]),
        .Q(diff_phase_W[3]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[4]),
        .Q(diff_phase_W[4]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[5]),
        .Q(diff_phase_W[5]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[6]),
        .Q(diff_phase_W[6]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[7]),
        .Q(diff_phase_W[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[7]_i_1_n_0 ,\det_signal.diff_phase_W_reg[7]_i_1_n_1 ,\det_signal.diff_phase_W_reg[7]_i_1_n_2 ,\det_signal.diff_phase_W_reg[7]_i_1_n_3 ,\det_signal.diff_phase_W_reg[7]_i_1_n_4 ,\det_signal.diff_phase_W_reg[7]_i_1_n_5 ,\det_signal.diff_phase_W_reg[7]_i_1_n_6 ,\det_signal.diff_phase_W_reg[7]_i_1_n_7 }),
        .DI(phase_W[7:0]),
        .O(diff_phase_W02_out[7:0]),
        .S({\det_signal.diff_phase_W[7]_i_2_n_0 ,\det_signal.diff_phase_W[7]_i_3_n_0 ,\det_signal.diff_phase_W[7]_i_4_n_0 ,\det_signal.diff_phase_W[7]_i_5_n_0 ,\det_signal.diff_phase_W[7]_i_6_n_0 ,\det_signal.diff_phase_W[7]_i_7_n_0 ,\det_signal.diff_phase_W[7]_i_8_n_0 ,\det_signal.diff_phase_W[7]_i_9_n_0 }));
  FDRE \det_signal.diff_phase_W_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[8]),
        .Q(diff_phase_W[8]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(diff_phase_W02_out[9]),
        .Q(diff_phase_W[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000006CCCC000C)) 
    \det_signal.div_counter[0]_i_1 
       (.I0(div_counter1),
        .I1(div_counter[0]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[2]),
        .I5(div_delay[3]),
        .O(\det_signal.div_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000078F0F000F0)) 
    \det_signal.div_counter[1]_i_1 
       (.I0(div_counter1),
        .I1(div_counter[0]),
        .I2(div_counter[1]),
        .I3(\det_signal.div_counter[4]_i_3_n_0 ),
        .I4(div_delay[2]),
        .I5(div_delay[3]),
        .O(\det_signal.div_counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000B4F0F000F0)) 
    \det_signal.div_counter[2]_i_1 
       (.I0(\det_signal.div_counter[2]_i_2_n_0 ),
        .I1(div_counter1),
        .I2(div_counter[2]),
        .I3(\det_signal.div_counter[4]_i_3_n_0 ),
        .I4(div_delay[2]),
        .I5(div_delay[3]),
        .O(\det_signal.div_counter[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \det_signal.div_counter[2]_i_2 
       (.I0(div_counter[0]),
        .I1(div_counter[1]),
        .O(\det_signal.div_counter[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000078F0F000F0)) 
    \det_signal.div_counter[3]_i_1 
       (.I0(div_counter1),
        .I1(\det_signal.div_counter[3]_i_2_n_0 ),
        .I2(div_counter[3]),
        .I3(\det_signal.div_counter[4]_i_3_n_0 ),
        .I4(div_delay[2]),
        .I5(div_delay[3]),
        .O(\det_signal.div_counter[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.div_counter[3]_i_2 
       (.I0(div_counter[2]),
        .I1(div_counter[1]),
        .I2(div_counter[0]),
        .O(\det_signal.div_counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000078F0F000F0)) 
    \det_signal.div_counter[4]_i_1 
       (.I0(div_counter1),
        .I1(\det_signal.div_counter[4]_i_2_n_0 ),
        .I2(div_counter[4]),
        .I3(\det_signal.div_counter[4]_i_3_n_0 ),
        .I4(div_delay[2]),
        .I5(div_delay[3]),
        .O(\det_signal.div_counter[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \det_signal.div_counter[4]_i_2 
       (.I0(div_counter[3]),
        .I1(div_counter[0]),
        .I2(div_counter[1]),
        .I3(div_counter[2]),
        .O(\det_signal.div_counter[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \det_signal.div_counter[4]_i_3 
       (.I0(div_delay[0]),
        .I1(div_delay[1]),
        .O(\det_signal.div_counter[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000005CCCC000C)) 
    \det_signal.div_counter[5]_i_1 
       (.I0(\det_signal.div_counter[5]_i_2_n_0 ),
        .I1(div_counter[5]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[2]),
        .I5(div_delay[3]),
        .O(\det_signal.div_counter[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFFFFFF)) 
    \det_signal.div_counter[5]_i_2 
       (.I0(div_counter[4]),
        .I1(div_counter[2]),
        .I2(div_counter[1]),
        .I3(div_counter[0]),
        .I4(div_counter[3]),
        .I5(div_counter[5]),
        .O(\det_signal.div_counter[5]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[0]_i_1_n_0 ),
        .Q(div_counter[0]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[1]_i_1_n_0 ),
        .Q(div_counter[1]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[2]_i_1_n_0 ),
        .Q(div_counter[2]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[3]_i_1_n_0 ),
        .Q(div_counter[3]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[4]_i_1_n_0 ),
        .Q(div_counter[4]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[5]_i_1_n_0 ),
        .Q(div_counter[5]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h3233)) 
    \det_signal.div_delay[0]_i_1 
       (.I0(div_delay[1]),
        .I1(div_delay[0]),
        .I2(div_delay[2]),
        .I3(div_delay[3]),
        .O(\det_signal.div_delay[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0FF0)) 
    \det_signal.div_delay[1]_i_1 
       (.I0(div_delay[3]),
        .I1(div_delay[2]),
        .I2(div_delay[1]),
        .I3(div_delay[0]),
        .O(\det_signal.div_delay[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7878)) 
    \det_signal.div_delay[2]_i_1 
       (.I0(div_delay[1]),
        .I1(div_delay[0]),
        .I2(div_delay[2]),
        .I3(div_delay[3]),
        .O(\det_signal.div_delay[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \det_signal.div_delay[3]_i_1 
       (.I0(div_delay[0]),
        .I1(div_delay[1]),
        .I2(div_delay[2]),
        .I3(div_delay[3]),
        .O(\det_signal.div_delay[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_delay[0]_i_1_n_0 ),
        .Q(div_delay[0]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_delay[1]_i_1_n_0 ),
        .Q(div_delay[1]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_delay[2]_i_1_n_0 ),
        .Q(div_delay[2]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_delay_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_delay[3]_i_1_n_0 ),
        .Q(div_delay[3]),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_2 
       (.I0(env_sum_N[15]),
        .I1(env_sum_E[15]),
        .O(\det_signal.div_env_NE[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_3 
       (.I0(env_sum_N[14]),
        .I1(env_sum_E[14]),
        .O(\det_signal.div_env_NE[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_4 
       (.I0(env_sum_N[13]),
        .I1(env_sum_E[13]),
        .O(\det_signal.div_env_NE[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_5 
       (.I0(env_sum_N[12]),
        .I1(env_sum_E[12]),
        .O(\det_signal.div_env_NE[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_6 
       (.I0(env_sum_N[11]),
        .I1(env_sum_E[11]),
        .O(\det_signal.div_env_NE[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_7 
       (.I0(env_sum_N[10]),
        .I1(env_sum_E[10]),
        .O(\det_signal.div_env_NE[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_8 
       (.I0(env_sum_N[9]),
        .I1(env_sum_E[9]),
        .O(\det_signal.div_env_NE[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[15]_i_9 
       (.I0(env_sum_N[8]),
        .I1(env_sum_E[8]),
        .O(\det_signal.div_env_NE[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_2 
       (.I0(env_sum_N[23]),
        .I1(env_sum_E[23]),
        .O(\det_signal.div_env_NE[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_3 
       (.I0(env_sum_N[22]),
        .I1(env_sum_E[22]),
        .O(\det_signal.div_env_NE[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_4 
       (.I0(env_sum_N[21]),
        .I1(env_sum_E[21]),
        .O(\det_signal.div_env_NE[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_5 
       (.I0(env_sum_N[20]),
        .I1(env_sum_E[20]),
        .O(\det_signal.div_env_NE[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_6 
       (.I0(env_sum_N[19]),
        .I1(env_sum_E[19]),
        .O(\det_signal.div_env_NE[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_7 
       (.I0(env_sum_N[18]),
        .I1(env_sum_E[18]),
        .O(\det_signal.div_env_NE[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_8 
       (.I0(env_sum_N[17]),
        .I1(env_sum_E[17]),
        .O(\det_signal.div_env_NE[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[23]_i_9 
       (.I0(env_sum_N[16]),
        .I1(env_sum_E[16]),
        .O(\det_signal.div_env_NE[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \det_signal.div_env_NE[24]_i_1 
       (.I0(div_delay[3]),
        .I1(proc_signal),
        .I2(div_delay[2]),
        .I3(div_delay[0]),
        .I4(div_delay[1]),
        .O(\det_signal.div_env_NE[24]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_2 
       (.I0(env_sum_N[7]),
        .I1(env_sum_E[7]),
        .O(\det_signal.div_env_NE[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_3 
       (.I0(env_sum_N[6]),
        .I1(env_sum_E[6]),
        .O(\det_signal.div_env_NE[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_4 
       (.I0(env_sum_N[5]),
        .I1(env_sum_E[5]),
        .O(\det_signal.div_env_NE[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_5 
       (.I0(env_sum_N[4]),
        .I1(env_sum_E[4]),
        .O(\det_signal.div_env_NE[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_6 
       (.I0(env_sum_N[3]),
        .I1(env_sum_E[3]),
        .O(\det_signal.div_env_NE[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_7 
       (.I0(env_sum_N[2]),
        .I1(env_sum_E[2]),
        .O(\det_signal.div_env_NE[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_8 
       (.I0(env_sum_N[1]),
        .I1(env_sum_E[1]),
        .O(\det_signal.div_env_NE[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_NE[7]_i_9 
       (.I0(env_sum_N[0]),
        .I1(env_sum_E[0]),
        .O(\det_signal.div_env_NE[7]_i_9_n_0 ));
  FDRE \det_signal.div_env_NE_reg[0] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[0]),
        .Q(div_env_sum_NE[0]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[10] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[10]),
        .Q(div_env_sum_NE[10]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[11] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[11]),
        .Q(div_env_sum_NE[11]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[12] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[12]),
        .Q(div_env_sum_NE[12]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[13] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[13]),
        .Q(div_env_sum_NE[13]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[14] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[14]),
        .Q(div_env_sum_NE[14]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[15] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[15]),
        .Q(div_env_sum_NE[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_NE_reg[15]_i_1 
       (.CI(\det_signal.div_env_NE_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_NE_reg[15]_i_1_n_0 ,\det_signal.div_env_NE_reg[15]_i_1_n_1 ,\det_signal.div_env_NE_reg[15]_i_1_n_2 ,\det_signal.div_env_NE_reg[15]_i_1_n_3 ,\det_signal.div_env_NE_reg[15]_i_1_n_4 ,\det_signal.div_env_NE_reg[15]_i_1_n_5 ,\det_signal.div_env_NE_reg[15]_i_1_n_6 ,\det_signal.div_env_NE_reg[15]_i_1_n_7 }),
        .DI(env_sum_N[15:8]),
        .O(div_env_NE0[15:8]),
        .S({\det_signal.div_env_NE[15]_i_2_n_0 ,\det_signal.div_env_NE[15]_i_3_n_0 ,\det_signal.div_env_NE[15]_i_4_n_0 ,\det_signal.div_env_NE[15]_i_5_n_0 ,\det_signal.div_env_NE[15]_i_6_n_0 ,\det_signal.div_env_NE[15]_i_7_n_0 ,\det_signal.div_env_NE[15]_i_8_n_0 ,\det_signal.div_env_NE[15]_i_9_n_0 }));
  FDRE \det_signal.div_env_NE_reg[16] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[16]),
        .Q(div_env_sum_NE[16]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[17] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[17]),
        .Q(div_env_sum_NE[17]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[18] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[18]),
        .Q(div_env_sum_NE[18]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[19] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[19]),
        .Q(div_env_sum_NE[19]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[1] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[1]),
        .Q(div_env_sum_NE[1]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[20] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[20]),
        .Q(div_env_sum_NE[20]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[21] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[21]),
        .Q(div_env_sum_NE[21]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[22] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[22]),
        .Q(div_env_sum_NE[22]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[23] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[23]),
        .Q(div_env_sum_NE[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_NE_reg[23]_i_1 
       (.CI(\det_signal.div_env_NE_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_NE_reg[23]_i_1_n_0 ,\det_signal.div_env_NE_reg[23]_i_1_n_1 ,\det_signal.div_env_NE_reg[23]_i_1_n_2 ,\det_signal.div_env_NE_reg[23]_i_1_n_3 ,\det_signal.div_env_NE_reg[23]_i_1_n_4 ,\det_signal.div_env_NE_reg[23]_i_1_n_5 ,\det_signal.div_env_NE_reg[23]_i_1_n_6 ,\det_signal.div_env_NE_reg[23]_i_1_n_7 }),
        .DI(env_sum_N[23:16]),
        .O(div_env_NE0[23:16]),
        .S({\det_signal.div_env_NE[23]_i_2_n_0 ,\det_signal.div_env_NE[23]_i_3_n_0 ,\det_signal.div_env_NE[23]_i_4_n_0 ,\det_signal.div_env_NE[23]_i_5_n_0 ,\det_signal.div_env_NE[23]_i_6_n_0 ,\det_signal.div_env_NE[23]_i_7_n_0 ,\det_signal.div_env_NE[23]_i_8_n_0 ,\det_signal.div_env_NE[23]_i_9_n_0 }));
  FDRE \det_signal.div_env_NE_reg[24] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[24]),
        .Q(div_env_sum_NE[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_NE_reg[24]_i_2 
       (.CI(\det_signal.div_env_NE_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.div_env_NE_reg[24]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.div_env_NE_reg[24]_i_2_O_UNCONNECTED [7:1],div_env_NE0[24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.div_env_NE_reg[2] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[2]),
        .Q(div_env_sum_NE[2]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[3] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[3]),
        .Q(div_env_sum_NE[3]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[4] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[4]),
        .Q(div_env_sum_NE[4]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[5] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[5]),
        .Q(div_env_sum_NE[5]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[6] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[6]),
        .Q(div_env_sum_NE[6]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[7] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[7]),
        .Q(div_env_sum_NE[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_NE_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_NE_reg[7]_i_1_n_0 ,\det_signal.div_env_NE_reg[7]_i_1_n_1 ,\det_signal.div_env_NE_reg[7]_i_1_n_2 ,\det_signal.div_env_NE_reg[7]_i_1_n_3 ,\det_signal.div_env_NE_reg[7]_i_1_n_4 ,\det_signal.div_env_NE_reg[7]_i_1_n_5 ,\det_signal.div_env_NE_reg[7]_i_1_n_6 ,\det_signal.div_env_NE_reg[7]_i_1_n_7 }),
        .DI(env_sum_N[7:0]),
        .O(div_env_NE0[7:0]),
        .S({\det_signal.div_env_NE[7]_i_2_n_0 ,\det_signal.div_env_NE[7]_i_3_n_0 ,\det_signal.div_env_NE[7]_i_4_n_0 ,\det_signal.div_env_NE[7]_i_5_n_0 ,\det_signal.div_env_NE[7]_i_6_n_0 ,\det_signal.div_env_NE[7]_i_7_n_0 ,\det_signal.div_env_NE[7]_i_8_n_0 ,\det_signal.div_env_NE[7]_i_9_n_0 }));
  FDRE \det_signal.div_env_NE_reg[8] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[8]),
        .Q(div_env_sum_NE[8]),
        .R(1'b0));
  FDRE \det_signal.div_env_NE_reg[9] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_NE0[9]),
        .Q(div_env_sum_NE[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[0]_i_1 
       (.I0(div_env_all0[0]),
        .I1(div_delay[2]),
        .I2(env_sum_W[0]),
        .O(\det_signal.div_env_all[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[10]_i_1 
       (.I0(div_env_all0[10]),
        .I1(div_delay[2]),
        .I2(env_sum_W[10]),
        .O(\det_signal.div_env_all[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[11]_i_1 
       (.I0(div_env_all0[11]),
        .I1(div_delay[2]),
        .I2(env_sum_W[11]),
        .O(\det_signal.div_env_all[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[12]_i_1 
       (.I0(div_env_all0[12]),
        .I1(div_delay[2]),
        .I2(env_sum_W[12]),
        .O(\det_signal.div_env_all[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[13]_i_1 
       (.I0(div_env_all0[13]),
        .I1(div_delay[2]),
        .I2(env_sum_W[13]),
        .O(\det_signal.div_env_all[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[14]_i_1 
       (.I0(div_env_all0[14]),
        .I1(div_delay[2]),
        .I2(env_sum_W[14]),
        .O(\det_signal.div_env_all[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[15]_i_1 
       (.I0(div_env_all0[15]),
        .I1(div_delay[2]),
        .I2(env_sum_W[15]),
        .O(\det_signal.div_env_all[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_10 
       (.I0(\det_signal.div_env_all_reg_n_0_[8] ),
        .I1(div_env_sum_NE[8]),
        .O(\det_signal.div_env_all[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_3 
       (.I0(\det_signal.div_env_all_reg_n_0_[15] ),
        .I1(div_env_sum_NE[15]),
        .O(\det_signal.div_env_all[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_4 
       (.I0(\det_signal.div_env_all_reg_n_0_[14] ),
        .I1(div_env_sum_NE[14]),
        .O(\det_signal.div_env_all[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_5 
       (.I0(\det_signal.div_env_all_reg_n_0_[13] ),
        .I1(div_env_sum_NE[13]),
        .O(\det_signal.div_env_all[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_6 
       (.I0(\det_signal.div_env_all_reg_n_0_[12] ),
        .I1(div_env_sum_NE[12]),
        .O(\det_signal.div_env_all[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_7 
       (.I0(\det_signal.div_env_all_reg_n_0_[11] ),
        .I1(div_env_sum_NE[11]),
        .O(\det_signal.div_env_all[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_8 
       (.I0(\det_signal.div_env_all_reg_n_0_[10] ),
        .I1(div_env_sum_NE[10]),
        .O(\det_signal.div_env_all[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[15]_i_9 
       (.I0(\det_signal.div_env_all_reg_n_0_[9] ),
        .I1(div_env_sum_NE[9]),
        .O(\det_signal.div_env_all[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[16]_i_1 
       (.I0(div_env_all0[16]),
        .I1(div_delay[2]),
        .I2(env_sum_W[16]),
        .O(\det_signal.div_env_all[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[17]_i_1 
       (.I0(div_env_all0[17]),
        .I1(div_delay[2]),
        .I2(env_sum_W[17]),
        .O(\det_signal.div_env_all[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[18]_i_1 
       (.I0(div_env_all0[18]),
        .I1(div_delay[2]),
        .I2(env_sum_W[18]),
        .O(\det_signal.div_env_all[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[19]_i_1 
       (.I0(div_env_all0[19]),
        .I1(div_delay[2]),
        .I2(env_sum_W[19]),
        .O(\det_signal.div_env_all[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[1]_i_1 
       (.I0(div_env_all0[1]),
        .I1(div_delay[2]),
        .I2(env_sum_W[1]),
        .O(\det_signal.div_env_all[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[20]_i_1 
       (.I0(div_env_all0[20]),
        .I1(div_delay[2]),
        .I2(env_sum_W[20]),
        .O(\det_signal.div_env_all[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[21]_i_1 
       (.I0(div_env_all0[21]),
        .I1(div_delay[2]),
        .I2(env_sum_W[21]),
        .O(\det_signal.div_env_all[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[22]_i_1 
       (.I0(div_env_all0[22]),
        .I1(div_delay[2]),
        .I2(env_sum_W[22]),
        .O(\det_signal.div_env_all[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \det_signal.div_env_all[23]_i_1 
       (.I0(div_delay[3]),
        .I1(proc_signal),
        .I2(div_delay[1]),
        .I3(div_delay[0]),
        .O(div_env_all));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_10 
       (.I0(\det_signal.div_env_all_reg_n_0_[17] ),
        .I1(div_env_sum_NE[17]),
        .O(\det_signal.div_env_all[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_11 
       (.I0(\det_signal.div_env_all_reg_n_0_[16] ),
        .I1(div_env_sum_NE[16]),
        .O(\det_signal.div_env_all[23]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[23]_i_2 
       (.I0(div_env_all0[23]),
        .I1(div_delay[2]),
        .I2(env_sum_W[23]),
        .O(\det_signal.div_env_all[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_4 
       (.I0(\det_signal.div_env_all_reg_n_0_[23] ),
        .I1(div_env_sum_NE[23]),
        .O(\det_signal.div_env_all[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_5 
       (.I0(\det_signal.div_env_all_reg_n_0_[22] ),
        .I1(div_env_sum_NE[22]),
        .O(\det_signal.div_env_all[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_6 
       (.I0(\det_signal.div_env_all_reg_n_0_[21] ),
        .I1(div_env_sum_NE[21]),
        .O(\det_signal.div_env_all[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_7 
       (.I0(\det_signal.div_env_all_reg_n_0_[20] ),
        .I1(div_env_sum_NE[20]),
        .O(\det_signal.div_env_all[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_8 
       (.I0(\det_signal.div_env_all_reg_n_0_[19] ),
        .I1(div_env_sum_NE[19]),
        .O(\det_signal.div_env_all[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[23]_i_9 
       (.I0(\det_signal.div_env_all_reg_n_0_[18] ),
        .I1(div_env_sum_NE[18]),
        .O(\det_signal.div_env_all[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[2]_i_1 
       (.I0(div_env_all0[2]),
        .I1(div_delay[2]),
        .I2(env_sum_W[2]),
        .O(\det_signal.div_env_all[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \det_signal.div_env_all[31]_i_1 
       (.I0(div_delay[0]),
        .I1(div_delay[1]),
        .I2(proc_signal),
        .I3(div_delay[3]),
        .I4(div_delay[2]),
        .O(\det_signal.div_env_all[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[31]_i_3 
       (.I0(\det_signal.div_env_all_reg_n_0_[24] ),
        .I1(div_env_sum_NE[24]),
        .O(\det_signal.div_env_all[31]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[3]_i_1 
       (.I0(div_env_all0[3]),
        .I1(div_delay[2]),
        .I2(env_sum_W[3]),
        .O(\det_signal.div_env_all[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[4]_i_1 
       (.I0(div_env_all0[4]),
        .I1(div_delay[2]),
        .I2(env_sum_W[4]),
        .O(\det_signal.div_env_all[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[5]_i_1 
       (.I0(div_env_all0[5]),
        .I1(div_delay[2]),
        .I2(env_sum_W[5]),
        .O(\det_signal.div_env_all[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[6]_i_1 
       (.I0(div_env_all0[6]),
        .I1(div_delay[2]),
        .I2(env_sum_W[6]),
        .O(\det_signal.div_env_all[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[7]_i_1 
       (.I0(div_env_all0[7]),
        .I1(div_delay[2]),
        .I2(env_sum_W[7]),
        .O(\det_signal.div_env_all[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_10 
       (.I0(\det_signal.div_env_all_reg_n_0_[0] ),
        .I1(div_env_sum_NE[0]),
        .O(\det_signal.div_env_all[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_3 
       (.I0(\det_signal.div_env_all_reg_n_0_[7] ),
        .I1(div_env_sum_NE[7]),
        .O(\det_signal.div_env_all[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_4 
       (.I0(\det_signal.div_env_all_reg_n_0_[6] ),
        .I1(div_env_sum_NE[6]),
        .O(\det_signal.div_env_all[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_5 
       (.I0(\det_signal.div_env_all_reg_n_0_[5] ),
        .I1(div_env_sum_NE[5]),
        .O(\det_signal.div_env_all[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_6 
       (.I0(\det_signal.div_env_all_reg_n_0_[4] ),
        .I1(div_env_sum_NE[4]),
        .O(\det_signal.div_env_all[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_7 
       (.I0(\det_signal.div_env_all_reg_n_0_[3] ),
        .I1(div_env_sum_NE[3]),
        .O(\det_signal.div_env_all[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_8 
       (.I0(\det_signal.div_env_all_reg_n_0_[2] ),
        .I1(div_env_sum_NE[2]),
        .O(\det_signal.div_env_all[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_all[7]_i_9 
       (.I0(\det_signal.div_env_all_reg_n_0_[1] ),
        .I1(div_env_sum_NE[1]),
        .O(\det_signal.div_env_all[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[8]_i_1 
       (.I0(div_env_all0[8]),
        .I1(div_delay[2]),
        .I2(env_sum_W[8]),
        .O(\det_signal.div_env_all[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_env_all[9]_i_1 
       (.I0(div_env_all0[9]),
        .I1(div_delay[2]),
        .I2(env_sum_W[9]),
        .O(\det_signal.div_env_all[9]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[0] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[0]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[10] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[10]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[11] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[11]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[12] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[12]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[13] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[13]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[14] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[14]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[15] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[15]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_all_reg[15]_i_2 
       (.CI(\det_signal.div_env_all_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_all_reg[15]_i_2_n_0 ,\det_signal.div_env_all_reg[15]_i_2_n_1 ,\det_signal.div_env_all_reg[15]_i_2_n_2 ,\det_signal.div_env_all_reg[15]_i_2_n_3 ,\det_signal.div_env_all_reg[15]_i_2_n_4 ,\det_signal.div_env_all_reg[15]_i_2_n_5 ,\det_signal.div_env_all_reg[15]_i_2_n_6 ,\det_signal.div_env_all_reg[15]_i_2_n_7 }),
        .DI({\det_signal.div_env_all_reg_n_0_[15] ,\det_signal.div_env_all_reg_n_0_[14] ,\det_signal.div_env_all_reg_n_0_[13] ,\det_signal.div_env_all_reg_n_0_[12] ,\det_signal.div_env_all_reg_n_0_[11] ,\det_signal.div_env_all_reg_n_0_[10] ,\det_signal.div_env_all_reg_n_0_[9] ,\det_signal.div_env_all_reg_n_0_[8] }),
        .O(div_env_all0[15:8]),
        .S({\det_signal.div_env_all[15]_i_3_n_0 ,\det_signal.div_env_all[15]_i_4_n_0 ,\det_signal.div_env_all[15]_i_5_n_0 ,\det_signal.div_env_all[15]_i_6_n_0 ,\det_signal.div_env_all[15]_i_7_n_0 ,\det_signal.div_env_all[15]_i_8_n_0 ,\det_signal.div_env_all[15]_i_9_n_0 ,\det_signal.div_env_all[15]_i_10_n_0 }));
  FDRE \det_signal.div_env_all_reg[16] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[16]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[17] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[17]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[18] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[18]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[19] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[19]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[1] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[1]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[20] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[20]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[21] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[21]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[22] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[22]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[23] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[23]_i_2_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[23] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_all_reg[23]_i_3 
       (.CI(\det_signal.div_env_all_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_all_reg[23]_i_3_n_0 ,\det_signal.div_env_all_reg[23]_i_3_n_1 ,\det_signal.div_env_all_reg[23]_i_3_n_2 ,\det_signal.div_env_all_reg[23]_i_3_n_3 ,\det_signal.div_env_all_reg[23]_i_3_n_4 ,\det_signal.div_env_all_reg[23]_i_3_n_5 ,\det_signal.div_env_all_reg[23]_i_3_n_6 ,\det_signal.div_env_all_reg[23]_i_3_n_7 }),
        .DI({\det_signal.div_env_all_reg_n_0_[23] ,\det_signal.div_env_all_reg_n_0_[22] ,\det_signal.div_env_all_reg_n_0_[21] ,\det_signal.div_env_all_reg_n_0_[20] ,\det_signal.div_env_all_reg_n_0_[19] ,\det_signal.div_env_all_reg_n_0_[18] ,\det_signal.div_env_all_reg_n_0_[17] ,\det_signal.div_env_all_reg_n_0_[16] }),
        .O(div_env_all0[23:16]),
        .S({\det_signal.div_env_all[23]_i_4_n_0 ,\det_signal.div_env_all[23]_i_5_n_0 ,\det_signal.div_env_all[23]_i_6_n_0 ,\det_signal.div_env_all[23]_i_7_n_0 ,\det_signal.div_env_all[23]_i_8_n_0 ,\det_signal.div_env_all[23]_i_9_n_0 ,\det_signal.div_env_all[23]_i_10_n_0 ,\det_signal.div_env_all[23]_i_11_n_0 }));
  FDRE \det_signal.div_env_all_reg[24] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[24]),
        .Q(\det_signal.div_env_all_reg_n_0_[24] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[25] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[25]),
        .Q(\det_signal.div_env_all_reg_n_0_[25] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[26] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[26]),
        .Q(\det_signal.div_env_all_reg_n_0_[26] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[27] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[27]),
        .Q(\det_signal.div_env_all_reg_n_0_[27] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[28] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[28]),
        .Q(\det_signal.div_env_all_reg_n_0_[28] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[29] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[29]),
        .Q(\det_signal.div_env_all_reg_n_0_[29] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[2] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[2]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[30] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[30]),
        .Q(\det_signal.div_env_all_reg_n_0_[30] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  FDRE \det_signal.div_env_all_reg[31] 
       (.C(clk),
        .CE(div_env_all),
        .D(div_env_all0[31]),
        .Q(\det_signal.div_env_all_reg_n_0_[31] ),
        .R(\det_signal.div_env_all[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_all_reg[31]_i_2 
       (.CI(\det_signal.div_env_all_reg[23]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.div_env_all_reg[31]_i_2_CO_UNCONNECTED [7],\det_signal.div_env_all_reg[31]_i_2_n_1 ,\det_signal.div_env_all_reg[31]_i_2_n_2 ,\det_signal.div_env_all_reg[31]_i_2_n_3 ,\det_signal.div_env_all_reg[31]_i_2_n_4 ,\det_signal.div_env_all_reg[31]_i_2_n_5 ,\det_signal.div_env_all_reg[31]_i_2_n_6 ,\det_signal.div_env_all_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.div_env_all_reg_n_0_[24] }),
        .O(div_env_all0[31:24]),
        .S({\det_signal.div_env_all_reg_n_0_[31] ,\det_signal.div_env_all_reg_n_0_[30] ,\det_signal.div_env_all_reg_n_0_[29] ,\det_signal.div_env_all_reg_n_0_[28] ,\det_signal.div_env_all_reg_n_0_[27] ,\det_signal.div_env_all_reg_n_0_[26] ,\det_signal.div_env_all_reg_n_0_[25] ,\det_signal.div_env_all[31]_i_3_n_0 }));
  FDRE \det_signal.div_env_all_reg[3] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[3]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[4] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[4]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[5] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[5]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[6] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[6]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[7] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[7]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_env_all_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_all_reg[7]_i_2_n_0 ,\det_signal.div_env_all_reg[7]_i_2_n_1 ,\det_signal.div_env_all_reg[7]_i_2_n_2 ,\det_signal.div_env_all_reg[7]_i_2_n_3 ,\det_signal.div_env_all_reg[7]_i_2_n_4 ,\det_signal.div_env_all_reg[7]_i_2_n_5 ,\det_signal.div_env_all_reg[7]_i_2_n_6 ,\det_signal.div_env_all_reg[7]_i_2_n_7 }),
        .DI({\det_signal.div_env_all_reg_n_0_[7] ,\det_signal.div_env_all_reg_n_0_[6] ,\det_signal.div_env_all_reg_n_0_[5] ,\det_signal.div_env_all_reg_n_0_[4] ,\det_signal.div_env_all_reg_n_0_[3] ,\det_signal.div_env_all_reg_n_0_[2] ,\det_signal.div_env_all_reg_n_0_[1] ,\det_signal.div_env_all_reg_n_0_[0] }),
        .O(div_env_all0[7:0]),
        .S({\det_signal.div_env_all[7]_i_3_n_0 ,\det_signal.div_env_all[7]_i_4_n_0 ,\det_signal.div_env_all[7]_i_5_n_0 ,\det_signal.div_env_all[7]_i_6_n_0 ,\det_signal.div_env_all[7]_i_7_n_0 ,\det_signal.div_env_all[7]_i_8_n_0 ,\det_signal.div_env_all[7]_i_9_n_0 ,\det_signal.div_env_all[7]_i_10_n_0 }));
  FDRE \det_signal.div_env_all_reg[8] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[8]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.div_env_all_reg[9] 
       (.C(clk),
        .CE(div_env_all),
        .D(\det_signal.div_env_all[9]_i_1_n_0 ),
        .Q(\det_signal.div_env_all_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_2 
       (.I0(env_sum_E[15]),
        .I1(env_sum_W[15]),
        .O(\det_signal.div_env_sum_EW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_3 
       (.I0(env_sum_E[14]),
        .I1(env_sum_W[14]),
        .O(\det_signal.div_env_sum_EW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_4 
       (.I0(env_sum_E[13]),
        .I1(env_sum_W[13]),
        .O(\det_signal.div_env_sum_EW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_5 
       (.I0(env_sum_E[12]),
        .I1(env_sum_W[12]),
        .O(\det_signal.div_env_sum_EW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_6 
       (.I0(env_sum_E[11]),
        .I1(env_sum_W[11]),
        .O(\det_signal.div_env_sum_EW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_7 
       (.I0(env_sum_E[10]),
        .I1(env_sum_W[10]),
        .O(\det_signal.div_env_sum_EW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_8 
       (.I0(env_sum_E[9]),
        .I1(env_sum_W[9]),
        .O(\det_signal.div_env_sum_EW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[15]_i_9 
       (.I0(env_sum_E[8]),
        .I1(env_sum_W[8]),
        .O(\det_signal.div_env_sum_EW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_2 
       (.I0(env_sum_E[23]),
        .I1(env_sum_W[23]),
        .O(\det_signal.div_env_sum_EW[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_3 
       (.I0(env_sum_E[22]),
        .I1(env_sum_W[22]),
        .O(\det_signal.div_env_sum_EW[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_4 
       (.I0(env_sum_E[21]),
        .I1(env_sum_W[21]),
        .O(\det_signal.div_env_sum_EW[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_5 
       (.I0(env_sum_E[20]),
        .I1(env_sum_W[20]),
        .O(\det_signal.div_env_sum_EW[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_6 
       (.I0(env_sum_E[19]),
        .I1(env_sum_W[19]),
        .O(\det_signal.div_env_sum_EW[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_7 
       (.I0(env_sum_E[18]),
        .I1(env_sum_W[18]),
        .O(\det_signal.div_env_sum_EW[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_8 
       (.I0(env_sum_E[17]),
        .I1(env_sum_W[17]),
        .O(\det_signal.div_env_sum_EW[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[23]_i_9 
       (.I0(env_sum_E[16]),
        .I1(env_sum_W[16]),
        .O(\det_signal.div_env_sum_EW[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_2 
       (.I0(env_sum_E[7]),
        .I1(env_sum_W[7]),
        .O(\det_signal.div_env_sum_EW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_3 
       (.I0(env_sum_E[6]),
        .I1(env_sum_W[6]),
        .O(\det_signal.div_env_sum_EW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_4 
       (.I0(env_sum_E[5]),
        .I1(env_sum_W[5]),
        .O(\det_signal.div_env_sum_EW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_5 
       (.I0(env_sum_E[4]),
        .I1(env_sum_W[4]),
        .O(\det_signal.div_env_sum_EW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_6 
       (.I0(env_sum_E[3]),
        .I1(env_sum_W[3]),
        .O(\det_signal.div_env_sum_EW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_7 
       (.I0(env_sum_E[2]),
        .I1(env_sum_W[2]),
        .O(\det_signal.div_env_sum_EW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_8 
       (.I0(env_sum_E[1]),
        .I1(env_sum_W[1]),
        .O(\det_signal.div_env_sum_EW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_EW[7]_i_9 
       (.I0(env_sum_E[0]),
        .I1(env_sum_W[0]),
        .O(\det_signal.div_env_sum_EW[7]_i_9_n_0 ));
  FDRE \det_signal.div_env_sum_EW_reg[0] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[0]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[10] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[10]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[11] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[11]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[12] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[12]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[13] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[13]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[14] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[14]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[15] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[15]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[15] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_EW_reg[15]_i_1 
       (.CI(\det_signal.div_env_sum_EW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_sum_EW_reg[15]_i_1_n_0 ,\det_signal.div_env_sum_EW_reg[15]_i_1_n_1 ,\det_signal.div_env_sum_EW_reg[15]_i_1_n_2 ,\det_signal.div_env_sum_EW_reg[15]_i_1_n_3 ,\det_signal.div_env_sum_EW_reg[15]_i_1_n_4 ,\det_signal.div_env_sum_EW_reg[15]_i_1_n_5 ,\det_signal.div_env_sum_EW_reg[15]_i_1_n_6 ,\det_signal.div_env_sum_EW_reg[15]_i_1_n_7 }),
        .DI(env_sum_E[15:8]),
        .O(div_env_sum_EW0[15:8]),
        .S({\det_signal.div_env_sum_EW[15]_i_2_n_0 ,\det_signal.div_env_sum_EW[15]_i_3_n_0 ,\det_signal.div_env_sum_EW[15]_i_4_n_0 ,\det_signal.div_env_sum_EW[15]_i_5_n_0 ,\det_signal.div_env_sum_EW[15]_i_6_n_0 ,\det_signal.div_env_sum_EW[15]_i_7_n_0 ,\det_signal.div_env_sum_EW[15]_i_8_n_0 ,\det_signal.div_env_sum_EW[15]_i_9_n_0 }));
  FDRE \det_signal.div_env_sum_EW_reg[16] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[16]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[17] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[17]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[18] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[18]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[19] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[19]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[1] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[1]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[20] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[20]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[21] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[21]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[22] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[22]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[23] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[23]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[23] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_EW_reg[23]_i_1 
       (.CI(\det_signal.div_env_sum_EW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_sum_EW_reg[23]_i_1_n_0 ,\det_signal.div_env_sum_EW_reg[23]_i_1_n_1 ,\det_signal.div_env_sum_EW_reg[23]_i_1_n_2 ,\det_signal.div_env_sum_EW_reg[23]_i_1_n_3 ,\det_signal.div_env_sum_EW_reg[23]_i_1_n_4 ,\det_signal.div_env_sum_EW_reg[23]_i_1_n_5 ,\det_signal.div_env_sum_EW_reg[23]_i_1_n_6 ,\det_signal.div_env_sum_EW_reg[23]_i_1_n_7 }),
        .DI(env_sum_E[23:16]),
        .O(div_env_sum_EW0[23:16]),
        .S({\det_signal.div_env_sum_EW[23]_i_2_n_0 ,\det_signal.div_env_sum_EW[23]_i_3_n_0 ,\det_signal.div_env_sum_EW[23]_i_4_n_0 ,\det_signal.div_env_sum_EW[23]_i_5_n_0 ,\det_signal.div_env_sum_EW[23]_i_6_n_0 ,\det_signal.div_env_sum_EW[23]_i_7_n_0 ,\det_signal.div_env_sum_EW[23]_i_8_n_0 ,\det_signal.div_env_sum_EW[23]_i_9_n_0 }));
  FDRE \det_signal.div_env_sum_EW_reg[24] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[24]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[24] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_EW_reg[24]_i_1 
       (.CI(\det_signal.div_env_sum_EW_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.div_env_sum_EW_reg[24]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.div_env_sum_EW_reg[24]_i_1_O_UNCONNECTED [7:1],div_env_sum_EW0[24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.div_env_sum_EW_reg[2] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[2]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[3] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[3]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[4] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[4]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[5] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[5]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[6] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[6]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[7] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[7]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[7] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_EW_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_sum_EW_reg[7]_i_1_n_0 ,\det_signal.div_env_sum_EW_reg[7]_i_1_n_1 ,\det_signal.div_env_sum_EW_reg[7]_i_1_n_2 ,\det_signal.div_env_sum_EW_reg[7]_i_1_n_3 ,\det_signal.div_env_sum_EW_reg[7]_i_1_n_4 ,\det_signal.div_env_sum_EW_reg[7]_i_1_n_5 ,\det_signal.div_env_sum_EW_reg[7]_i_1_n_6 ,\det_signal.div_env_sum_EW_reg[7]_i_1_n_7 }),
        .DI(env_sum_E[7:0]),
        .O(div_env_sum_EW0[7:0]),
        .S({\det_signal.div_env_sum_EW[7]_i_2_n_0 ,\det_signal.div_env_sum_EW[7]_i_3_n_0 ,\det_signal.div_env_sum_EW[7]_i_4_n_0 ,\det_signal.div_env_sum_EW[7]_i_5_n_0 ,\det_signal.div_env_sum_EW[7]_i_6_n_0 ,\det_signal.div_env_sum_EW[7]_i_7_n_0 ,\det_signal.div_env_sum_EW[7]_i_8_n_0 ,\det_signal.div_env_sum_EW[7]_i_9_n_0 }));
  FDRE \det_signal.div_env_sum_EW_reg[8] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[8]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_EW_reg[9] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_EW0[9]),
        .Q(\det_signal.div_env_sum_EW_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[0]_i_1 
       (.I0(env_sum_E[0]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[0]),
        .O(\det_signal.div_env_sum_E[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[10]_i_1 
       (.I0(env_sum_E[10]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[10]),
        .O(\det_signal.div_env_sum_E[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[11]_i_1 
       (.I0(env_sum_E[11]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[11]),
        .O(\det_signal.div_env_sum_E[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[12]_i_1 
       (.I0(env_sum_E[12]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[12]),
        .O(\det_signal.div_env_sum_E[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[13]_i_1 
       (.I0(env_sum_E[13]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[13]),
        .O(\det_signal.div_env_sum_E[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[14]_i_1 
       (.I0(env_sum_E[14]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[14]),
        .O(\det_signal.div_env_sum_E[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[15]_i_1 
       (.I0(env_sum_E[15]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[15]),
        .O(\det_signal.div_env_sum_E[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[16]_i_1 
       (.I0(env_sum_E[16]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[16]),
        .O(\det_signal.div_env_sum_E[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[17]_i_1 
       (.I0(env_sum_E[17]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[17]),
        .O(\det_signal.div_env_sum_E[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[18]_i_1 
       (.I0(env_sum_E[18]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[18]),
        .O(\det_signal.div_env_sum_E[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[19]_i_1 
       (.I0(env_sum_E[19]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[19]),
        .O(\det_signal.div_env_sum_E[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[1]_i_1 
       (.I0(env_sum_E[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[1]),
        .O(\det_signal.div_env_sum_E[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[20]_i_1 
       (.I0(env_sum_E[20]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[20]),
        .O(\det_signal.div_env_sum_E[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[21]_i_1 
       (.I0(env_sum_E[21]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[21]),
        .O(\det_signal.div_env_sum_E[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[22]_i_1 
       (.I0(env_sum_E[22]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[22]),
        .O(\det_signal.div_env_sum_E[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[23]_i_1 
       (.I0(env_sum_E[23]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[23]),
        .O(\det_signal.div_env_sum_E[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[2]_i_1 
       (.I0(env_sum_E[2]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[2]),
        .O(\det_signal.div_env_sum_E[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \det_signal.div_env_sum_E[31]_i_1 
       (.I0(div_delay[3]),
        .I1(div_delay[1]),
        .I2(div_delay[0]),
        .I3(div_delay[2]),
        .I4(proc_signal),
        .O(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[3]_i_1 
       (.I0(env_sum_E[3]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[3]),
        .O(\det_signal.div_env_sum_E[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[4]_i_1 
       (.I0(env_sum_E[4]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[4]),
        .O(\det_signal.div_env_sum_E[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[5]_i_1 
       (.I0(env_sum_E[5]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[5]),
        .O(\det_signal.div_env_sum_E[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[6]_i_1 
       (.I0(env_sum_E[6]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[6]),
        .O(\det_signal.div_env_sum_E[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[7]_i_1 
       (.I0(env_sum_E[7]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[7]),
        .O(\det_signal.div_env_sum_E[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[8]_i_1 
       (.I0(env_sum_E[8]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[8]),
        .O(\det_signal.div_env_sum_E[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_E[9]_i_1 
       (.I0(env_sum_E[9]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_E[9]),
        .O(\det_signal.div_env_sum_E[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[0] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[0]_i_1_n_0 ),
        .Q(div_env_sum_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[10] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[10]_i_1_n_0 ),
        .Q(div_env_sum_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[11] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[11]_i_1_n_0 ),
        .Q(div_env_sum_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[12] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[12]_i_1_n_0 ),
        .Q(div_env_sum_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[13] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[13]_i_1_n_0 ),
        .Q(div_env_sum_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[14] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[14]_i_1_n_0 ),
        .Q(div_env_sum_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[15] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[15]_i_1_n_0 ),
        .Q(div_env_sum_E[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[16] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[16]_i_1_n_0 ),
        .Q(div_env_sum_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[17] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[17]_i_1_n_0 ),
        .Q(div_env_sum_E[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[18] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[18]_i_1_n_0 ),
        .Q(div_env_sum_E[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[19] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[19]_i_1_n_0 ),
        .Q(div_env_sum_E[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[1] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[1]_i_1_n_0 ),
        .Q(div_env_sum_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[20] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[20]_i_1_n_0 ),
        .Q(div_env_sum_E[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[21] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[21]_i_1_n_0 ),
        .Q(div_env_sum_E[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[22] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[22]_i_1_n_0 ),
        .Q(div_env_sum_E[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[23] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[23]_i_1_n_0 ),
        .Q(div_env_sum_E[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[24] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[24]),
        .Q(div_env_sum_E[24]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[25] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[25]),
        .Q(div_env_sum_E[25]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[26] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[26]),
        .Q(div_env_sum_E[26]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[27] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[27]),
        .Q(div_env_sum_E[27]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[28] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[28]),
        .Q(div_env_sum_E[28]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[29] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[29]),
        .Q(div_env_sum_E[29]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[2] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[2]_i_1_n_0 ),
        .Q(div_env_sum_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[30] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[30]),
        .Q(div_env_sum_E[30]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[31] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_E[31]),
        .Q(div_env_sum_E[31]),
        .R(\det_signal.div_env_sum_E[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[3] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[3]_i_1_n_0 ),
        .Q(div_env_sum_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[4] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[4]_i_1_n_0 ),
        .Q(div_env_sum_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[5] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[5]_i_1_n_0 ),
        .Q(div_env_sum_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[6] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[6]_i_1_n_0 ),
        .Q(div_env_sum_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[7] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[7]_i_1_n_0 ),
        .Q(div_env_sum_E[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[8] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[8]_i_1_n_0 ),
        .Q(div_env_sum_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_E_reg[9] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_E[9]_i_1_n_0 ),
        .Q(div_env_sum_E[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_2 
       (.I0(env_sum_N[15]),
        .I1(env_sum_W[15]),
        .O(\det_signal.div_env_sum_NW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_3 
       (.I0(env_sum_N[14]),
        .I1(env_sum_W[14]),
        .O(\det_signal.div_env_sum_NW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_4 
       (.I0(env_sum_N[13]),
        .I1(env_sum_W[13]),
        .O(\det_signal.div_env_sum_NW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_5 
       (.I0(env_sum_N[12]),
        .I1(env_sum_W[12]),
        .O(\det_signal.div_env_sum_NW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_6 
       (.I0(env_sum_N[11]),
        .I1(env_sum_W[11]),
        .O(\det_signal.div_env_sum_NW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_7 
       (.I0(env_sum_N[10]),
        .I1(env_sum_W[10]),
        .O(\det_signal.div_env_sum_NW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_8 
       (.I0(env_sum_N[9]),
        .I1(env_sum_W[9]),
        .O(\det_signal.div_env_sum_NW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[15]_i_9 
       (.I0(env_sum_N[8]),
        .I1(env_sum_W[8]),
        .O(\det_signal.div_env_sum_NW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_2 
       (.I0(env_sum_N[23]),
        .I1(env_sum_W[23]),
        .O(\det_signal.div_env_sum_NW[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_3 
       (.I0(env_sum_N[22]),
        .I1(env_sum_W[22]),
        .O(\det_signal.div_env_sum_NW[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_4 
       (.I0(env_sum_N[21]),
        .I1(env_sum_W[21]),
        .O(\det_signal.div_env_sum_NW[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_5 
       (.I0(env_sum_N[20]),
        .I1(env_sum_W[20]),
        .O(\det_signal.div_env_sum_NW[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_6 
       (.I0(env_sum_N[19]),
        .I1(env_sum_W[19]),
        .O(\det_signal.div_env_sum_NW[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_7 
       (.I0(env_sum_N[18]),
        .I1(env_sum_W[18]),
        .O(\det_signal.div_env_sum_NW[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_8 
       (.I0(env_sum_N[17]),
        .I1(env_sum_W[17]),
        .O(\det_signal.div_env_sum_NW[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[23]_i_9 
       (.I0(env_sum_N[16]),
        .I1(env_sum_W[16]),
        .O(\det_signal.div_env_sum_NW[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_2 
       (.I0(env_sum_N[7]),
        .I1(env_sum_W[7]),
        .O(\det_signal.div_env_sum_NW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_3 
       (.I0(env_sum_N[6]),
        .I1(env_sum_W[6]),
        .O(\det_signal.div_env_sum_NW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_4 
       (.I0(env_sum_N[5]),
        .I1(env_sum_W[5]),
        .O(\det_signal.div_env_sum_NW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_5 
       (.I0(env_sum_N[4]),
        .I1(env_sum_W[4]),
        .O(\det_signal.div_env_sum_NW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_6 
       (.I0(env_sum_N[3]),
        .I1(env_sum_W[3]),
        .O(\det_signal.div_env_sum_NW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_7 
       (.I0(env_sum_N[2]),
        .I1(env_sum_W[2]),
        .O(\det_signal.div_env_sum_NW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_8 
       (.I0(env_sum_N[1]),
        .I1(env_sum_W[1]),
        .O(\det_signal.div_env_sum_NW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_env_sum_NW[7]_i_9 
       (.I0(env_sum_N[0]),
        .I1(env_sum_W[0]),
        .O(\det_signal.div_env_sum_NW[7]_i_9_n_0 ));
  FDRE \det_signal.div_env_sum_NW_reg[0] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[0]),
        .Q(div_env_sum_NW[0]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[10] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[10]),
        .Q(div_env_sum_NW[10]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[11] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[11]),
        .Q(div_env_sum_NW[11]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[12] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[12]),
        .Q(div_env_sum_NW[12]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[13] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[13]),
        .Q(div_env_sum_NW[13]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[14] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[14]),
        .Q(div_env_sum_NW[14]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[15] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[15]),
        .Q(div_env_sum_NW[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_NW_reg[15]_i_1 
       (.CI(\det_signal.div_env_sum_NW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_sum_NW_reg[15]_i_1_n_0 ,\det_signal.div_env_sum_NW_reg[15]_i_1_n_1 ,\det_signal.div_env_sum_NW_reg[15]_i_1_n_2 ,\det_signal.div_env_sum_NW_reg[15]_i_1_n_3 ,\det_signal.div_env_sum_NW_reg[15]_i_1_n_4 ,\det_signal.div_env_sum_NW_reg[15]_i_1_n_5 ,\det_signal.div_env_sum_NW_reg[15]_i_1_n_6 ,\det_signal.div_env_sum_NW_reg[15]_i_1_n_7 }),
        .DI(env_sum_N[15:8]),
        .O(div_env_sum_NW0[15:8]),
        .S({\det_signal.div_env_sum_NW[15]_i_2_n_0 ,\det_signal.div_env_sum_NW[15]_i_3_n_0 ,\det_signal.div_env_sum_NW[15]_i_4_n_0 ,\det_signal.div_env_sum_NW[15]_i_5_n_0 ,\det_signal.div_env_sum_NW[15]_i_6_n_0 ,\det_signal.div_env_sum_NW[15]_i_7_n_0 ,\det_signal.div_env_sum_NW[15]_i_8_n_0 ,\det_signal.div_env_sum_NW[15]_i_9_n_0 }));
  FDRE \det_signal.div_env_sum_NW_reg[16] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[16]),
        .Q(div_env_sum_NW[16]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[17] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[17]),
        .Q(div_env_sum_NW[17]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[18] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[18]),
        .Q(div_env_sum_NW[18]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[19] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[19]),
        .Q(div_env_sum_NW[19]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[1] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[1]),
        .Q(div_env_sum_NW[1]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[20] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[20]),
        .Q(div_env_sum_NW[20]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[21] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[21]),
        .Q(div_env_sum_NW[21]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[22] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[22]),
        .Q(div_env_sum_NW[22]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[23] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[23]),
        .Q(div_env_sum_NW[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_NW_reg[23]_i_1 
       (.CI(\det_signal.div_env_sum_NW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_sum_NW_reg[23]_i_1_n_0 ,\det_signal.div_env_sum_NW_reg[23]_i_1_n_1 ,\det_signal.div_env_sum_NW_reg[23]_i_1_n_2 ,\det_signal.div_env_sum_NW_reg[23]_i_1_n_3 ,\det_signal.div_env_sum_NW_reg[23]_i_1_n_4 ,\det_signal.div_env_sum_NW_reg[23]_i_1_n_5 ,\det_signal.div_env_sum_NW_reg[23]_i_1_n_6 ,\det_signal.div_env_sum_NW_reg[23]_i_1_n_7 }),
        .DI(env_sum_N[23:16]),
        .O(div_env_sum_NW0[23:16]),
        .S({\det_signal.div_env_sum_NW[23]_i_2_n_0 ,\det_signal.div_env_sum_NW[23]_i_3_n_0 ,\det_signal.div_env_sum_NW[23]_i_4_n_0 ,\det_signal.div_env_sum_NW[23]_i_5_n_0 ,\det_signal.div_env_sum_NW[23]_i_6_n_0 ,\det_signal.div_env_sum_NW[23]_i_7_n_0 ,\det_signal.div_env_sum_NW[23]_i_8_n_0 ,\det_signal.div_env_sum_NW[23]_i_9_n_0 }));
  FDRE \det_signal.div_env_sum_NW_reg[24] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[24]),
        .Q(div_env_sum_NW[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_NW_reg[24]_i_1 
       (.CI(\det_signal.div_env_sum_NW_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.div_env_sum_NW_reg[24]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.div_env_sum_NW_reg[24]_i_1_O_UNCONNECTED [7:1],div_env_sum_NW0[24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.div_env_sum_NW_reg[2] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[2]),
        .Q(div_env_sum_NW[2]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[3] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[3]),
        .Q(div_env_sum_NW[3]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[4] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[4]),
        .Q(div_env_sum_NW[4]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[5] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[5]),
        .Q(div_env_sum_NW[5]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[6] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[6]),
        .Q(div_env_sum_NW[6]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[7] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[7]),
        .Q(div_env_sum_NW[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_env_sum_NW_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_env_sum_NW_reg[7]_i_1_n_0 ,\det_signal.div_env_sum_NW_reg[7]_i_1_n_1 ,\det_signal.div_env_sum_NW_reg[7]_i_1_n_2 ,\det_signal.div_env_sum_NW_reg[7]_i_1_n_3 ,\det_signal.div_env_sum_NW_reg[7]_i_1_n_4 ,\det_signal.div_env_sum_NW_reg[7]_i_1_n_5 ,\det_signal.div_env_sum_NW_reg[7]_i_1_n_6 ,\det_signal.div_env_sum_NW_reg[7]_i_1_n_7 }),
        .DI(env_sum_N[7:0]),
        .O(div_env_sum_NW0[7:0]),
        .S({\det_signal.div_env_sum_NW[7]_i_2_n_0 ,\det_signal.div_env_sum_NW[7]_i_3_n_0 ,\det_signal.div_env_sum_NW[7]_i_4_n_0 ,\det_signal.div_env_sum_NW[7]_i_5_n_0 ,\det_signal.div_env_sum_NW[7]_i_6_n_0 ,\det_signal.div_env_sum_NW[7]_i_7_n_0 ,\det_signal.div_env_sum_NW[7]_i_8_n_0 ,\det_signal.div_env_sum_NW[7]_i_9_n_0 }));
  FDRE \det_signal.div_env_sum_NW_reg[8] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[8]),
        .Q(div_env_sum_NW[8]),
        .R(1'b0));
  FDRE \det_signal.div_env_sum_NW_reg[9] 
       (.C(clk),
        .CE(\det_signal.div_env_NE[24]_i_1_n_0 ),
        .D(div_env_sum_NW0[9]),
        .Q(div_env_sum_NW[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[0]_i_1 
       (.I0(env_sum_N[0]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[0]),
        .O(\det_signal.div_env_sum_N[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[10]_i_1 
       (.I0(env_sum_N[10]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[10]),
        .O(\det_signal.div_env_sum_N[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[11]_i_1 
       (.I0(env_sum_N[11]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[11]),
        .O(\det_signal.div_env_sum_N[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[12]_i_1 
       (.I0(env_sum_N[12]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[12]),
        .O(\det_signal.div_env_sum_N[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[13]_i_1 
       (.I0(env_sum_N[13]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[13]),
        .O(\det_signal.div_env_sum_N[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[14]_i_1 
       (.I0(env_sum_N[14]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[14]),
        .O(\det_signal.div_env_sum_N[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[15]_i_1 
       (.I0(env_sum_N[15]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[15]),
        .O(\det_signal.div_env_sum_N[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[16]_i_1 
       (.I0(env_sum_N[16]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[16]),
        .O(\det_signal.div_env_sum_N[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[17]_i_1 
       (.I0(env_sum_N[17]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[17]),
        .O(\det_signal.div_env_sum_N[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[18]_i_1 
       (.I0(env_sum_N[18]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[18]),
        .O(\det_signal.div_env_sum_N[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[19]_i_1 
       (.I0(env_sum_N[19]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[19]),
        .O(\det_signal.div_env_sum_N[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[1]_i_1 
       (.I0(env_sum_N[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[1]),
        .O(\det_signal.div_env_sum_N[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[20]_i_1 
       (.I0(env_sum_N[20]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[20]),
        .O(\det_signal.div_env_sum_N[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[21]_i_1 
       (.I0(env_sum_N[21]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[21]),
        .O(\det_signal.div_env_sum_N[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[22]_i_1 
       (.I0(env_sum_N[22]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[22]),
        .O(\det_signal.div_env_sum_N[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[23]_i_1 
       (.I0(env_sum_N[23]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[23]),
        .O(\det_signal.div_env_sum_N[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[2]_i_1 
       (.I0(env_sum_N[2]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[2]),
        .O(\det_signal.div_env_sum_N[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \det_signal.div_env_sum_N[31]_i_1 
       (.I0(div_delay[3]),
        .I1(div_delay[1]),
        .I2(div_delay[0]),
        .I3(div_delay[2]),
        .I4(proc_signal),
        .O(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[3]_i_1 
       (.I0(env_sum_N[3]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[3]),
        .O(\det_signal.div_env_sum_N[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[4]_i_1 
       (.I0(env_sum_N[4]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[4]),
        .O(\det_signal.div_env_sum_N[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[5]_i_1 
       (.I0(env_sum_N[5]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[5]),
        .O(\det_signal.div_env_sum_N[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[6]_i_1 
       (.I0(env_sum_N[6]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[6]),
        .O(\det_signal.div_env_sum_N[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[7]_i_1 
       (.I0(env_sum_N[7]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[7]),
        .O(\det_signal.div_env_sum_N[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[8]_i_1 
       (.I0(env_sum_N[8]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[8]),
        .O(\det_signal.div_env_sum_N[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_N[9]_i_1 
       (.I0(env_sum_N[9]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_N[9]),
        .O(\det_signal.div_env_sum_N[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[0] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[0]_i_1_n_0 ),
        .Q(div_env_sum_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[10] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[10]_i_1_n_0 ),
        .Q(div_env_sum_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[11] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[11]_i_1_n_0 ),
        .Q(div_env_sum_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[12] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[12]_i_1_n_0 ),
        .Q(div_env_sum_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[13] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[13]_i_1_n_0 ),
        .Q(div_env_sum_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[14] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[14]_i_1_n_0 ),
        .Q(div_env_sum_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[15] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[15]_i_1_n_0 ),
        .Q(div_env_sum_N[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[16] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[16]_i_1_n_0 ),
        .Q(div_env_sum_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[17] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[17]_i_1_n_0 ),
        .Q(div_env_sum_N[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[18] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[18]_i_1_n_0 ),
        .Q(div_env_sum_N[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[19] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[19]_i_1_n_0 ),
        .Q(div_env_sum_N[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[1] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[1]_i_1_n_0 ),
        .Q(div_env_sum_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[20] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[20]_i_1_n_0 ),
        .Q(div_env_sum_N[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[21] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[21]_i_1_n_0 ),
        .Q(div_env_sum_N[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[22] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[22]_i_1_n_0 ),
        .Q(div_env_sum_N[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[23] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[23]_i_1_n_0 ),
        .Q(div_env_sum_N[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[24] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[24]),
        .Q(div_env_sum_N[24]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[25] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[25]),
        .Q(div_env_sum_N[25]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[26] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[26]),
        .Q(div_env_sum_N[26]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[27] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[27]),
        .Q(div_env_sum_N[27]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[28] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[28]),
        .Q(div_env_sum_N[28]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[29] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[29]),
        .Q(div_env_sum_N[29]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[2] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[2]_i_1_n_0 ),
        .Q(div_env_sum_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[30] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[30]),
        .Q(div_env_sum_N[30]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[31] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_N[31]),
        .Q(div_env_sum_N[31]),
        .R(\det_signal.div_env_sum_N[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[3] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[3]_i_1_n_0 ),
        .Q(div_env_sum_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[4] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[4]_i_1_n_0 ),
        .Q(div_env_sum_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[5] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[5]_i_1_n_0 ),
        .Q(div_env_sum_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[6] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[6]_i_1_n_0 ),
        .Q(div_env_sum_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[7] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[7]_i_1_n_0 ),
        .Q(div_env_sum_N[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[8] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[8]_i_1_n_0 ),
        .Q(div_env_sum_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_N_reg[9] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_N[9]_i_1_n_0 ),
        .Q(div_env_sum_N[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[0]_i_1 
       (.I0(env_sum_W[0]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[0]),
        .O(\det_signal.div_env_sum_W[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[10]_i_1 
       (.I0(env_sum_W[10]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[10]),
        .O(\det_signal.div_env_sum_W[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[11]_i_1 
       (.I0(env_sum_W[11]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[11]),
        .O(\det_signal.div_env_sum_W[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[12]_i_1 
       (.I0(env_sum_W[12]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[12]),
        .O(\det_signal.div_env_sum_W[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[13]_i_1 
       (.I0(env_sum_W[13]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[13]),
        .O(\det_signal.div_env_sum_W[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[14]_i_1 
       (.I0(env_sum_W[14]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[14]),
        .O(\det_signal.div_env_sum_W[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[15]_i_1 
       (.I0(env_sum_W[15]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[15]),
        .O(\det_signal.div_env_sum_W[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[16]_i_1 
       (.I0(env_sum_W[16]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[16]),
        .O(\det_signal.div_env_sum_W[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[17]_i_1 
       (.I0(env_sum_W[17]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[17]),
        .O(\det_signal.div_env_sum_W[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[18]_i_1 
       (.I0(env_sum_W[18]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[18]),
        .O(\det_signal.div_env_sum_W[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[19]_i_1 
       (.I0(env_sum_W[19]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[19]),
        .O(\det_signal.div_env_sum_W[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[1]_i_1 
       (.I0(env_sum_W[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[1]),
        .O(\det_signal.div_env_sum_W[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[20]_i_1 
       (.I0(env_sum_W[20]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[20]),
        .O(\det_signal.div_env_sum_W[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[21]_i_1 
       (.I0(env_sum_W[21]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[21]),
        .O(\det_signal.div_env_sum_W[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[22]_i_1 
       (.I0(env_sum_W[22]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[22]),
        .O(\det_signal.div_env_sum_W[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[23]_i_1 
       (.I0(env_sum_W[23]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[23]),
        .O(\det_signal.div_env_sum_W[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[2]_i_1 
       (.I0(env_sum_W[2]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[2]),
        .O(\det_signal.div_env_sum_W[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \det_signal.div_env_sum_W[31]_i_1 
       (.I0(div_delay[3]),
        .I1(div_delay[1]),
        .I2(div_delay[0]),
        .I3(div_delay[2]),
        .I4(proc_signal),
        .O(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[3]_i_1 
       (.I0(env_sum_W[3]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[3]),
        .O(\det_signal.div_env_sum_W[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[4]_i_1 
       (.I0(env_sum_W[4]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[4]),
        .O(\det_signal.div_env_sum_W[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[5]_i_1 
       (.I0(env_sum_W[5]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[5]),
        .O(\det_signal.div_env_sum_W[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[6]_i_1 
       (.I0(env_sum_W[6]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[6]),
        .O(\det_signal.div_env_sum_W[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[7]_i_1 
       (.I0(env_sum_W[7]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[7]),
        .O(\det_signal.div_env_sum_W[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[8]_i_1 
       (.I0(env_sum_W[8]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[8]),
        .O(\det_signal.div_env_sum_W[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    \det_signal.div_env_sum_W[9]_i_1 
       (.I0(env_sum_W[9]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(div_delay[3]),
        .I5(div_env_sum_W[9]),
        .O(\det_signal.div_env_sum_W[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[0] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[0]_i_1_n_0 ),
        .Q(div_env_sum_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[10] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[10]_i_1_n_0 ),
        .Q(div_env_sum_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[11] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[11]_i_1_n_0 ),
        .Q(div_env_sum_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[12] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[12]_i_1_n_0 ),
        .Q(div_env_sum_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[13] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[13]_i_1_n_0 ),
        .Q(div_env_sum_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[14] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[14]_i_1_n_0 ),
        .Q(div_env_sum_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[15] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[15]_i_1_n_0 ),
        .Q(div_env_sum_W[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[16] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[16]_i_1_n_0 ),
        .Q(div_env_sum_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[17] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[17]_i_1_n_0 ),
        .Q(div_env_sum_W[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[18] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[18]_i_1_n_0 ),
        .Q(div_env_sum_W[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[19] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[19]_i_1_n_0 ),
        .Q(div_env_sum_W[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[1] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[1]_i_1_n_0 ),
        .Q(div_env_sum_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[20] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[20]_i_1_n_0 ),
        .Q(div_env_sum_W[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[21] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[21]_i_1_n_0 ),
        .Q(div_env_sum_W[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[22] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[22]_i_1_n_0 ),
        .Q(div_env_sum_W[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[23] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[23]_i_1_n_0 ),
        .Q(div_env_sum_W[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[24] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[24]),
        .Q(div_env_sum_W[24]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[25] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[25]),
        .Q(div_env_sum_W[25]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[26] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[26]),
        .Q(div_env_sum_W[26]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[27] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[27]),
        .Q(div_env_sum_W[27]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[28] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[28]),
        .Q(div_env_sum_W[28]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[29] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[29]),
        .Q(div_env_sum_W[29]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[2] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[2]_i_1_n_0 ),
        .Q(div_env_sum_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[30] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[30]),
        .Q(div_env_sum_W[30]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[31] 
       (.C(clk),
        .CE(proc_signal),
        .D(div_env_sum_W[31]),
        .Q(div_env_sum_W[31]),
        .R(\det_signal.div_env_sum_W[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[3] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[3]_i_1_n_0 ),
        .Q(div_env_sum_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[4] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[4]_i_1_n_0 ),
        .Q(div_env_sum_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[5] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[5]_i_1_n_0 ),
        .Q(div_env_sum_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[6] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[6]_i_1_n_0 ),
        .Q(div_env_sum_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[7] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[7]_i_1_n_0 ),
        .Q(div_env_sum_W[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[8] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[8]_i_1_n_0 ),
        .Q(div_env_sum_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.div_env_sum_W_reg[9] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.div_env_sum_W[9]_i_1_n_0 ),
        .Q(div_env_sum_W[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_10 
       (.I0(dsp_sum_W[39]),
        .I1(dsp_sum_E[39]),
        .I2(dsp_sum_N[39]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[39]),
        .O(\det_signal.div_hi_freq_sum[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_11 
       (.I0(dsp_sum_W[38]),
        .I1(dsp_sum_E[38]),
        .I2(dsp_sum_N[38]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[38]),
        .O(\det_signal.div_hi_freq_sum[15]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_12 
       (.I0(dsp_sum_W[37]),
        .I1(dsp_sum_E[37]),
        .I2(dsp_sum_N[37]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[37]),
        .O(\det_signal.div_hi_freq_sum[15]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_13 
       (.I0(dsp_sum_W[36]),
        .I1(dsp_sum_E[36]),
        .I2(dsp_sum_N[36]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[36]),
        .O(\det_signal.div_hi_freq_sum[15]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_14 
       (.I0(dsp_sum_W[35]),
        .I1(dsp_sum_E[35]),
        .I2(dsp_sum_N[35]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[35]),
        .O(\det_signal.div_hi_freq_sum[15]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_15 
       (.I0(dsp_sum_W[34]),
        .I1(dsp_sum_E[34]),
        .I2(dsp_sum_N[34]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[34]),
        .O(\det_signal.div_hi_freq_sum[15]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_16 
       (.I0(dsp_sum_W[33]),
        .I1(dsp_sum_E[33]),
        .I2(dsp_sum_N[33]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[33]),
        .O(\det_signal.div_hi_freq_sum[15]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[15]_i_17 
       (.I0(dsp_sum_W[32]),
        .I1(dsp_sum_E[32]),
        .I2(dsp_sum_N[32]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[32]),
        .O(\det_signal.div_hi_freq_sum[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_2 
       (.I0(dsp_sum_E[39]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[39]),
        .I3(div_delay[1]),
        .O(p_1_in__0[15]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_3 
       (.I0(dsp_sum_E[38]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[38]),
        .I3(div_delay[1]),
        .O(p_1_in__0[14]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_4 
       (.I0(dsp_sum_E[37]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[37]),
        .I3(div_delay[1]),
        .O(p_1_in__0[13]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_5 
       (.I0(dsp_sum_E[36]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[36]),
        .I3(div_delay[1]),
        .O(p_1_in__0[12]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_6 
       (.I0(dsp_sum_E[35]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[35]),
        .I3(div_delay[1]),
        .O(p_1_in__0[11]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_7 
       (.I0(dsp_sum_E[34]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[34]),
        .I3(div_delay[1]),
        .O(p_1_in__0[10]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_8 
       (.I0(dsp_sum_E[33]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[33]),
        .I3(div_delay[1]),
        .O(p_1_in__0[9]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[15]_i_9 
       (.I0(dsp_sum_E[32]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[32]),
        .I3(div_delay[1]),
        .O(p_1_in__0[8]));
  LUT5 #(
    .INIT(32'h00404040)) 
    \det_signal.div_hi_freq_sum[23]_i_1 
       (.I0(div_delay[3]),
        .I1(proc_signal),
        .I2(div_delay[2]),
        .I3(div_delay[0]),
        .I4(div_delay[1]),
        .O(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_10 
       (.I0(dsp_sum_W[47]),
        .I1(dsp_sum_E[47]),
        .I2(dsp_sum_N[47]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[47]),
        .O(\det_signal.div_hi_freq_sum[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_11 
       (.I0(dsp_sum_W[46]),
        .I1(dsp_sum_E[46]),
        .I2(dsp_sum_N[46]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[46]),
        .O(\det_signal.div_hi_freq_sum[23]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_12 
       (.I0(dsp_sum_W[45]),
        .I1(dsp_sum_E[45]),
        .I2(dsp_sum_N[45]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[45]),
        .O(\det_signal.div_hi_freq_sum[23]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_13 
       (.I0(dsp_sum_W[44]),
        .I1(dsp_sum_E[44]),
        .I2(dsp_sum_N[44]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[44]),
        .O(\det_signal.div_hi_freq_sum[23]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_14 
       (.I0(dsp_sum_W[43]),
        .I1(dsp_sum_E[43]),
        .I2(dsp_sum_N[43]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[43]),
        .O(\det_signal.div_hi_freq_sum[23]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_15 
       (.I0(dsp_sum_W[42]),
        .I1(dsp_sum_E[42]),
        .I2(dsp_sum_N[42]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[42]),
        .O(\det_signal.div_hi_freq_sum[23]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_16 
       (.I0(dsp_sum_W[41]),
        .I1(dsp_sum_E[41]),
        .I2(dsp_sum_N[41]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[41]),
        .O(\det_signal.div_hi_freq_sum[23]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[23]_i_17 
       (.I0(dsp_sum_W[40]),
        .I1(dsp_sum_E[40]),
        .I2(dsp_sum_N[40]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[40]),
        .O(\det_signal.div_hi_freq_sum[23]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[23]_i_3 
       (.I0(dsp_sum_E[46]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[46]),
        .I3(div_delay[1]),
        .O(p_1_in__0[22]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[23]_i_4 
       (.I0(dsp_sum_E[45]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[45]),
        .I3(div_delay[1]),
        .O(p_1_in__0[21]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[23]_i_5 
       (.I0(dsp_sum_E[44]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[44]),
        .I3(div_delay[1]),
        .O(p_1_in__0[20]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[23]_i_6 
       (.I0(dsp_sum_E[43]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[43]),
        .I3(div_delay[1]),
        .O(p_1_in__0[19]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[23]_i_7 
       (.I0(dsp_sum_E[42]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[42]),
        .I3(div_delay[1]),
        .O(p_1_in__0[18]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[23]_i_8 
       (.I0(dsp_sum_E[41]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[41]),
        .I3(div_delay[1]),
        .O(p_1_in__0[17]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[23]_i_9 
       (.I0(dsp_sum_E[40]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[40]),
        .I3(div_delay[1]),
        .O(p_1_in__0[16]));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[7]_i_10 
       (.I0(dsp_sum_W[31]),
        .I1(dsp_sum_E[31]),
        .I2(dsp_sum_N[31]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[31]),
        .O(\det_signal.div_hi_freq_sum[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[7]_i_11 
       (.I0(dsp_sum_W[30]),
        .I1(dsp_sum_E[30]),
        .I2(dsp_sum_N[30]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[30]),
        .O(\det_signal.div_hi_freq_sum[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[7]_i_12 
       (.I0(dsp_sum_W[29]),
        .I1(dsp_sum_E[29]),
        .I2(dsp_sum_N[29]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[29]),
        .O(\det_signal.div_hi_freq_sum[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[7]_i_13 
       (.I0(dsp_sum_W[28]),
        .I1(dsp_sum_E[28]),
        .I2(dsp_sum_N[28]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[28]),
        .O(\det_signal.div_hi_freq_sum[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[7]_i_14 
       (.I0(dsp_sum_W[27]),
        .I1(dsp_sum_E[27]),
        .I2(dsp_sum_N[27]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[27]),
        .O(\det_signal.div_hi_freq_sum[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFF55FF3C00AA003C)) 
    \det_signal.div_hi_freq_sum[7]_i_15 
       (.I0(dsp_sum_W[26]),
        .I1(dsp_sum_E[26]),
        .I2(dsp_sum_N[26]),
        .I3(div_delay[1]),
        .I4(div_delay[0]),
        .I5(div_freq_sum[26]),
        .O(\det_signal.div_hi_freq_sum[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h5556AAA6)) 
    \det_signal.div_hi_freq_sum[7]_i_16 
       (.I0(p_1_in__0[1]),
        .I1(dsp_sum_N[25]),
        .I2(div_delay[1]),
        .I3(div_delay[0]),
        .I4(div_freq_sum[25]),
        .O(\det_signal.div_hi_freq_sum[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h5556AAA6)) 
    \det_signal.div_hi_freq_sum[7]_i_17 
       (.I0(p_1_in__0[0]),
        .I1(dsp_sum_N[24]),
        .I2(div_delay[1]),
        .I3(div_delay[0]),
        .I4(div_freq_sum[24]),
        .O(\det_signal.div_hi_freq_sum[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[7]_i_2 
       (.I0(dsp_sum_E[31]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[31]),
        .I3(div_delay[1]),
        .O(p_1_in__0[7]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[7]_i_3 
       (.I0(dsp_sum_E[30]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[30]),
        .I3(div_delay[1]),
        .O(p_1_in__0[6]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[7]_i_4 
       (.I0(dsp_sum_E[29]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[29]),
        .I3(div_delay[1]),
        .O(p_1_in__0[5]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[7]_i_5 
       (.I0(dsp_sum_E[28]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[28]),
        .I3(div_delay[1]),
        .O(p_1_in__0[4]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[7]_i_6 
       (.I0(dsp_sum_E[27]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[27]),
        .I3(div_delay[1]),
        .O(p_1_in__0[3]));
  LUT4 #(
    .INIT(16'h00E2)) 
    \det_signal.div_hi_freq_sum[7]_i_7 
       (.I0(dsp_sum_E[26]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[26]),
        .I3(div_delay[1]),
        .O(p_1_in__0[2]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \det_signal.div_hi_freq_sum[7]_i_8 
       (.I0(dsp_sum_E[25]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[25]),
        .I3(div_delay[1]),
        .I4(data2[1]),
        .O(p_1_in__0[1]));
  LUT5 #(
    .INIT(32'hFFE200E2)) 
    \det_signal.div_hi_freq_sum[7]_i_9 
       (.I0(dsp_sum_E[24]),
        .I1(div_delay[0]),
        .I2(dsp_sum_W[24]),
        .I3(div_delay[1]),
        .I4(data2[0]),
        .O(p_1_in__0[0]));
  FDRE \det_signal.div_hi_freq_sum_reg[0] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[0]),
        .Q(div_freq_sum[24]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[10] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[10]),
        .Q(div_freq_sum[34]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[11] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[11]),
        .Q(div_freq_sum[35]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[12] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[12]),
        .Q(div_freq_sum[36]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[13] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[13]),
        .Q(div_freq_sum[37]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[14] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[14]),
        .Q(div_freq_sum[38]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[15] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[15]),
        .Q(div_freq_sum[39]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_hi_freq_sum_reg[15]_i_1 
       (.CI(\det_signal.div_hi_freq_sum_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_hi_freq_sum_reg[15]_i_1_n_0 ,\det_signal.div_hi_freq_sum_reg[15]_i_1_n_1 ,\det_signal.div_hi_freq_sum_reg[15]_i_1_n_2 ,\det_signal.div_hi_freq_sum_reg[15]_i_1_n_3 ,\det_signal.div_hi_freq_sum_reg[15]_i_1_n_4 ,\det_signal.div_hi_freq_sum_reg[15]_i_1_n_5 ,\det_signal.div_hi_freq_sum_reg[15]_i_1_n_6 ,\det_signal.div_hi_freq_sum_reg[15]_i_1_n_7 }),
        .DI(p_1_in__0[15:8]),
        .O(div_hi_freq_sum0_in[15:8]),
        .S({\det_signal.div_hi_freq_sum[15]_i_10_n_0 ,\det_signal.div_hi_freq_sum[15]_i_11_n_0 ,\det_signal.div_hi_freq_sum[15]_i_12_n_0 ,\det_signal.div_hi_freq_sum[15]_i_13_n_0 ,\det_signal.div_hi_freq_sum[15]_i_14_n_0 ,\det_signal.div_hi_freq_sum[15]_i_15_n_0 ,\det_signal.div_hi_freq_sum[15]_i_16_n_0 ,\det_signal.div_hi_freq_sum[15]_i_17_n_0 }));
  FDRE \det_signal.div_hi_freq_sum_reg[16] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[16]),
        .Q(div_freq_sum[40]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[17] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[17]),
        .Q(div_freq_sum[41]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[18] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[18]),
        .Q(div_freq_sum[42]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[19] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[19]),
        .Q(div_freq_sum[43]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[1] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[1]),
        .Q(div_freq_sum[25]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[20] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[20]),
        .Q(div_freq_sum[44]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[21] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[21]),
        .Q(div_freq_sum[45]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[22] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[22]),
        .Q(div_freq_sum[46]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[23] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[23]),
        .Q(div_freq_sum[47]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_hi_freq_sum_reg[23]_i_2 
       (.CI(\det_signal.div_hi_freq_sum_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.div_hi_freq_sum_reg[23]_i_2_CO_UNCONNECTED [7],\det_signal.div_hi_freq_sum_reg[23]_i_2_n_1 ,\det_signal.div_hi_freq_sum_reg[23]_i_2_n_2 ,\det_signal.div_hi_freq_sum_reg[23]_i_2_n_3 ,\det_signal.div_hi_freq_sum_reg[23]_i_2_n_4 ,\det_signal.div_hi_freq_sum_reg[23]_i_2_n_5 ,\det_signal.div_hi_freq_sum_reg[23]_i_2_n_6 ,\det_signal.div_hi_freq_sum_reg[23]_i_2_n_7 }),
        .DI({1'b0,p_1_in__0[22:16]}),
        .O(div_hi_freq_sum0_in[23:16]),
        .S({\det_signal.div_hi_freq_sum[23]_i_10_n_0 ,\det_signal.div_hi_freq_sum[23]_i_11_n_0 ,\det_signal.div_hi_freq_sum[23]_i_12_n_0 ,\det_signal.div_hi_freq_sum[23]_i_13_n_0 ,\det_signal.div_hi_freq_sum[23]_i_14_n_0 ,\det_signal.div_hi_freq_sum[23]_i_15_n_0 ,\det_signal.div_hi_freq_sum[23]_i_16_n_0 ,\det_signal.div_hi_freq_sum[23]_i_17_n_0 }));
  FDRE \det_signal.div_hi_freq_sum_reg[2] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[2]),
        .Q(div_freq_sum[26]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[3] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[3]),
        .Q(div_freq_sum[27]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[4] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[4]),
        .Q(div_freq_sum[28]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[5] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[5]),
        .Q(div_freq_sum[29]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[6] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[6]),
        .Q(div_freq_sum[30]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[7] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[7]),
        .Q(div_freq_sum[31]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.div_hi_freq_sum_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_hi_freq_sum_reg[7]_i_1_n_0 ,\det_signal.div_hi_freq_sum_reg[7]_i_1_n_1 ,\det_signal.div_hi_freq_sum_reg[7]_i_1_n_2 ,\det_signal.div_hi_freq_sum_reg[7]_i_1_n_3 ,\det_signal.div_hi_freq_sum_reg[7]_i_1_n_4 ,\det_signal.div_hi_freq_sum_reg[7]_i_1_n_5 ,\det_signal.div_hi_freq_sum_reg[7]_i_1_n_6 ,\det_signal.div_hi_freq_sum_reg[7]_i_1_n_7 }),
        .DI(p_1_in__0[7:0]),
        .O(div_hi_freq_sum0_in[7:0]),
        .S({\det_signal.div_hi_freq_sum[7]_i_10_n_0 ,\det_signal.div_hi_freq_sum[7]_i_11_n_0 ,\det_signal.div_hi_freq_sum[7]_i_12_n_0 ,\det_signal.div_hi_freq_sum[7]_i_13_n_0 ,\det_signal.div_hi_freq_sum[7]_i_14_n_0 ,\det_signal.div_hi_freq_sum[7]_i_15_n_0 ,\det_signal.div_hi_freq_sum[7]_i_16_n_0 ,\det_signal.div_hi_freq_sum[7]_i_17_n_0 }));
  FDRE \det_signal.div_hi_freq_sum_reg[8] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[8]),
        .Q(div_freq_sum[32]),
        .R(1'b0));
  FDRE \det_signal.div_hi_freq_sum_reg[9] 
       (.C(clk),
        .CE(\det_signal.div_hi_freq_sum[23]_i_1_n_0 ),
        .D(div_hi_freq_sum0_in[9]),
        .Q(div_freq_sum[33]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[0]_i_1 
       (.I0(div_lo_freq_sum0[0]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[0]),
        .O(\det_signal.div_lo_freq_sum[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[10]_i_1 
       (.I0(div_lo_freq_sum0[10]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[10]),
        .O(\det_signal.div_lo_freq_sum[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[11]_i_1 
       (.I0(div_lo_freq_sum0[11]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[11]),
        .O(\det_signal.div_lo_freq_sum[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[12]_i_1 
       (.I0(div_lo_freq_sum0[12]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[12]),
        .O(\det_signal.div_lo_freq_sum[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[13]_i_1 
       (.I0(div_lo_freq_sum0[13]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[13]),
        .O(\det_signal.div_lo_freq_sum[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[14]_i_1 
       (.I0(div_lo_freq_sum0[14]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[14]),
        .O(\det_signal.div_lo_freq_sum[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[15]_i_1 
       (.I0(div_lo_freq_sum0[15]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[15]),
        .O(\det_signal.div_lo_freq_sum[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_10 
       (.I0(div_freq_sum[9]),
        .I1(dsp_sum_W[9]),
        .O(\det_signal.div_lo_freq_sum[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_11 
       (.I0(div_freq_sum[8]),
        .I1(dsp_sum_W[8]),
        .O(\det_signal.div_lo_freq_sum[15]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_12 
       (.I0(dsp_sum_N[15]),
        .I1(dsp_sum_E[15]),
        .O(\det_signal.div_lo_freq_sum[15]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_13 
       (.I0(dsp_sum_N[14]),
        .I1(dsp_sum_E[14]),
        .O(\det_signal.div_lo_freq_sum[15]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_14 
       (.I0(dsp_sum_N[13]),
        .I1(dsp_sum_E[13]),
        .O(\det_signal.div_lo_freq_sum[15]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_15 
       (.I0(dsp_sum_N[12]),
        .I1(dsp_sum_E[12]),
        .O(\det_signal.div_lo_freq_sum[15]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_16 
       (.I0(dsp_sum_N[11]),
        .I1(dsp_sum_E[11]),
        .O(\det_signal.div_lo_freq_sum[15]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_17 
       (.I0(dsp_sum_N[10]),
        .I1(dsp_sum_E[10]),
        .O(\det_signal.div_lo_freq_sum[15]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_18 
       (.I0(dsp_sum_N[9]),
        .I1(dsp_sum_E[9]),
        .O(\det_signal.div_lo_freq_sum[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_19 
       (.I0(dsp_sum_N[8]),
        .I1(dsp_sum_E[8]),
        .O(\det_signal.div_lo_freq_sum[15]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_4 
       (.I0(div_freq_sum[15]),
        .I1(dsp_sum_W[15]),
        .O(\det_signal.div_lo_freq_sum[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_5 
       (.I0(div_freq_sum[14]),
        .I1(dsp_sum_W[14]),
        .O(\det_signal.div_lo_freq_sum[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_6 
       (.I0(div_freq_sum[13]),
        .I1(dsp_sum_W[13]),
        .O(\det_signal.div_lo_freq_sum[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_7 
       (.I0(div_freq_sum[12]),
        .I1(dsp_sum_W[12]),
        .O(\det_signal.div_lo_freq_sum[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_8 
       (.I0(div_freq_sum[11]),
        .I1(dsp_sum_W[11]),
        .O(\det_signal.div_lo_freq_sum[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[15]_i_9 
       (.I0(div_freq_sum[10]),
        .I1(dsp_sum_W[10]),
        .O(\det_signal.div_lo_freq_sum[15]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[16]_i_1 
       (.I0(div_lo_freq_sum0[16]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[16]),
        .O(\det_signal.div_lo_freq_sum[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[17]_i_1 
       (.I0(div_lo_freq_sum0[17]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[17]),
        .O(\det_signal.div_lo_freq_sum[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[18]_i_1 
       (.I0(div_lo_freq_sum0[18]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[18]),
        .O(\det_signal.div_lo_freq_sum[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[19]_i_1 
       (.I0(div_lo_freq_sum0[19]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[19]),
        .O(\det_signal.div_lo_freq_sum[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[1]_i_1 
       (.I0(div_lo_freq_sum0[1]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[1]),
        .O(\det_signal.div_lo_freq_sum[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[20]_i_1 
       (.I0(div_lo_freq_sum0[20]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[20]),
        .O(\det_signal.div_lo_freq_sum[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[21]_i_1 
       (.I0(div_lo_freq_sum0[21]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[21]),
        .O(\det_signal.div_lo_freq_sum[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[22]_i_1 
       (.I0(div_lo_freq_sum0[22]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[22]),
        .O(\det_signal.div_lo_freq_sum[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[23]_i_1 
       (.I0(div_lo_freq_sum0[23]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[23]),
        .O(\det_signal.div_lo_freq_sum[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_10 
       (.I0(div_freq_sum[17]),
        .I1(dsp_sum_W[17]),
        .O(\det_signal.div_lo_freq_sum[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_11 
       (.I0(div_freq_sum[16]),
        .I1(dsp_sum_W[16]),
        .O(\det_signal.div_lo_freq_sum[23]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_12 
       (.I0(dsp_sum_N[23]),
        .I1(dsp_sum_E[23]),
        .O(\det_signal.div_lo_freq_sum[23]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_13 
       (.I0(dsp_sum_N[22]),
        .I1(dsp_sum_E[22]),
        .O(\det_signal.div_lo_freq_sum[23]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_14 
       (.I0(dsp_sum_N[21]),
        .I1(dsp_sum_E[21]),
        .O(\det_signal.div_lo_freq_sum[23]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_15 
       (.I0(dsp_sum_N[20]),
        .I1(dsp_sum_E[20]),
        .O(\det_signal.div_lo_freq_sum[23]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_16 
       (.I0(dsp_sum_N[19]),
        .I1(dsp_sum_E[19]),
        .O(\det_signal.div_lo_freq_sum[23]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_17 
       (.I0(dsp_sum_N[18]),
        .I1(dsp_sum_E[18]),
        .O(\det_signal.div_lo_freq_sum[23]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_18 
       (.I0(dsp_sum_N[17]),
        .I1(dsp_sum_E[17]),
        .O(\det_signal.div_lo_freq_sum[23]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_19 
       (.I0(dsp_sum_N[16]),
        .I1(dsp_sum_E[16]),
        .O(\det_signal.div_lo_freq_sum[23]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_4 
       (.I0(div_freq_sum[23]),
        .I1(dsp_sum_W[23]),
        .O(\det_signal.div_lo_freq_sum[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_5 
       (.I0(div_freq_sum[22]),
        .I1(dsp_sum_W[22]),
        .O(\det_signal.div_lo_freq_sum[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_6 
       (.I0(div_freq_sum[21]),
        .I1(dsp_sum_W[21]),
        .O(\det_signal.div_lo_freq_sum[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_7 
       (.I0(div_freq_sum[20]),
        .I1(dsp_sum_W[20]),
        .O(\det_signal.div_lo_freq_sum[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_8 
       (.I0(div_freq_sum[19]),
        .I1(dsp_sum_W[19]),
        .O(\det_signal.div_lo_freq_sum[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[23]_i_9 
       (.I0(div_freq_sum[18]),
        .I1(dsp_sum_W[18]),
        .O(\det_signal.div_lo_freq_sum[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[24]_i_1 
       (.I0(div_lo_freq_sum0[24]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[24]),
        .O(\det_signal.div_lo_freq_sum[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \det_signal.div_lo_freq_sum[25]_i_1 
       (.I0(div_delay[1]),
        .I1(div_delay[2]),
        .I2(div_delay[3]),
        .I3(proc_signal),
        .O(div_lo_freq_sum));
  LUT2 #(
    .INIT(4'h8)) 
    \det_signal.div_lo_freq_sum[25]_i_2 
       (.I0(div_delay[0]),
        .I1(div_lo_freq_sum0[25]),
        .O(\det_signal.div_lo_freq_sum[25]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[2]_i_1 
       (.I0(div_lo_freq_sum0[2]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[2]),
        .O(\det_signal.div_lo_freq_sum[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[3]_i_1 
       (.I0(div_lo_freq_sum0[3]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[3]),
        .O(\det_signal.div_lo_freq_sum[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[4]_i_1 
       (.I0(div_lo_freq_sum0[4]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[4]),
        .O(\det_signal.div_lo_freq_sum[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[5]_i_1 
       (.I0(div_lo_freq_sum0[5]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[5]),
        .O(\det_signal.div_lo_freq_sum[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[6]_i_1 
       (.I0(div_lo_freq_sum0[6]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[6]),
        .O(\det_signal.div_lo_freq_sum[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[7]_i_1 
       (.I0(div_lo_freq_sum0[7]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[7]),
        .O(\det_signal.div_lo_freq_sum[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_10 
       (.I0(div_freq_sum[1]),
        .I1(dsp_sum_W[1]),
        .O(\det_signal.div_lo_freq_sum[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_11 
       (.I0(div_freq_sum[0]),
        .I1(dsp_sum_W[0]),
        .O(\det_signal.div_lo_freq_sum[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_12 
       (.I0(dsp_sum_N[7]),
        .I1(dsp_sum_E[7]),
        .O(\det_signal.div_lo_freq_sum[7]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_13 
       (.I0(dsp_sum_N[6]),
        .I1(dsp_sum_E[6]),
        .O(\det_signal.div_lo_freq_sum[7]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_14 
       (.I0(dsp_sum_N[5]),
        .I1(dsp_sum_E[5]),
        .O(\det_signal.div_lo_freq_sum[7]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_15 
       (.I0(dsp_sum_N[4]),
        .I1(dsp_sum_E[4]),
        .O(\det_signal.div_lo_freq_sum[7]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_16 
       (.I0(dsp_sum_N[3]),
        .I1(dsp_sum_E[3]),
        .O(\det_signal.div_lo_freq_sum[7]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_17 
       (.I0(dsp_sum_N[2]),
        .I1(dsp_sum_E[2]),
        .O(\det_signal.div_lo_freq_sum[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_18 
       (.I0(dsp_sum_N[1]),
        .I1(dsp_sum_E[1]),
        .O(\det_signal.div_lo_freq_sum[7]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_19 
       (.I0(dsp_sum_N[0]),
        .I1(dsp_sum_E[0]),
        .O(\det_signal.div_lo_freq_sum[7]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_4 
       (.I0(div_freq_sum[7]),
        .I1(dsp_sum_W[7]),
        .O(\det_signal.div_lo_freq_sum[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_5 
       (.I0(div_freq_sum[6]),
        .I1(dsp_sum_W[6]),
        .O(\det_signal.div_lo_freq_sum[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_6 
       (.I0(div_freq_sum[5]),
        .I1(dsp_sum_W[5]),
        .O(\det_signal.div_lo_freq_sum[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_7 
       (.I0(div_freq_sum[4]),
        .I1(dsp_sum_W[4]),
        .O(\det_signal.div_lo_freq_sum[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_8 
       (.I0(div_freq_sum[3]),
        .I1(dsp_sum_W[3]),
        .O(\det_signal.div_lo_freq_sum[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_lo_freq_sum[7]_i_9 
       (.I0(div_freq_sum[2]),
        .I1(dsp_sum_W[2]),
        .O(\det_signal.div_lo_freq_sum[7]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[8]_i_1 
       (.I0(div_lo_freq_sum0[8]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[8]),
        .O(\det_signal.div_lo_freq_sum[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \det_signal.div_lo_freq_sum[9]_i_1 
       (.I0(div_lo_freq_sum0[9]),
        .I1(div_delay[0]),
        .I2(div_lo_freq_sum00_in[9]),
        .O(\det_signal.div_lo_freq_sum[9]_i_1_n_0 ));
  FDRE \det_signal.div_lo_freq_sum_reg[0] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[0]_i_1_n_0 ),
        .Q(div_freq_sum[0]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[10] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[10]_i_1_n_0 ),
        .Q(div_freq_sum[10]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[11] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[11]_i_1_n_0 ),
        .Q(div_freq_sum[11]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[12] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[12]_i_1_n_0 ),
        .Q(div_freq_sum[12]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[13] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[13]_i_1_n_0 ),
        .Q(div_freq_sum[13]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[14] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[14]_i_1_n_0 ),
        .Q(div_freq_sum[14]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[15] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[15]_i_1_n_0 ),
        .Q(div_freq_sum[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[15]_i_2 
       (.CI(\det_signal.div_lo_freq_sum_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_lo_freq_sum_reg[15]_i_2_n_0 ,\det_signal.div_lo_freq_sum_reg[15]_i_2_n_1 ,\det_signal.div_lo_freq_sum_reg[15]_i_2_n_2 ,\det_signal.div_lo_freq_sum_reg[15]_i_2_n_3 ,\det_signal.div_lo_freq_sum_reg[15]_i_2_n_4 ,\det_signal.div_lo_freq_sum_reg[15]_i_2_n_5 ,\det_signal.div_lo_freq_sum_reg[15]_i_2_n_6 ,\det_signal.div_lo_freq_sum_reg[15]_i_2_n_7 }),
        .DI(div_freq_sum[15:8]),
        .O(div_lo_freq_sum0[15:8]),
        .S({\det_signal.div_lo_freq_sum[15]_i_4_n_0 ,\det_signal.div_lo_freq_sum[15]_i_5_n_0 ,\det_signal.div_lo_freq_sum[15]_i_6_n_0 ,\det_signal.div_lo_freq_sum[15]_i_7_n_0 ,\det_signal.div_lo_freq_sum[15]_i_8_n_0 ,\det_signal.div_lo_freq_sum[15]_i_9_n_0 ,\det_signal.div_lo_freq_sum[15]_i_10_n_0 ,\det_signal.div_lo_freq_sum[15]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[15]_i_3 
       (.CI(\det_signal.div_lo_freq_sum_reg[7]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_lo_freq_sum_reg[15]_i_3_n_0 ,\det_signal.div_lo_freq_sum_reg[15]_i_3_n_1 ,\det_signal.div_lo_freq_sum_reg[15]_i_3_n_2 ,\det_signal.div_lo_freq_sum_reg[15]_i_3_n_3 ,\det_signal.div_lo_freq_sum_reg[15]_i_3_n_4 ,\det_signal.div_lo_freq_sum_reg[15]_i_3_n_5 ,\det_signal.div_lo_freq_sum_reg[15]_i_3_n_6 ,\det_signal.div_lo_freq_sum_reg[15]_i_3_n_7 }),
        .DI(dsp_sum_N[15:8]),
        .O(div_lo_freq_sum00_in[15:8]),
        .S({\det_signal.div_lo_freq_sum[15]_i_12_n_0 ,\det_signal.div_lo_freq_sum[15]_i_13_n_0 ,\det_signal.div_lo_freq_sum[15]_i_14_n_0 ,\det_signal.div_lo_freq_sum[15]_i_15_n_0 ,\det_signal.div_lo_freq_sum[15]_i_16_n_0 ,\det_signal.div_lo_freq_sum[15]_i_17_n_0 ,\det_signal.div_lo_freq_sum[15]_i_18_n_0 ,\det_signal.div_lo_freq_sum[15]_i_19_n_0 }));
  FDRE \det_signal.div_lo_freq_sum_reg[16] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[16]_i_1_n_0 ),
        .Q(div_freq_sum[16]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[17] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[17]_i_1_n_0 ),
        .Q(div_freq_sum[17]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[18] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[18]_i_1_n_0 ),
        .Q(div_freq_sum[18]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[19] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[19]_i_1_n_0 ),
        .Q(div_freq_sum[19]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[1] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[1]_i_1_n_0 ),
        .Q(div_freq_sum[1]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[20] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[20]_i_1_n_0 ),
        .Q(div_freq_sum[20]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[21] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[21]_i_1_n_0 ),
        .Q(div_freq_sum[21]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[22] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[22]_i_1_n_0 ),
        .Q(div_freq_sum[22]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[23] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[23]_i_1_n_0 ),
        .Q(div_freq_sum[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[23]_i_2 
       (.CI(\det_signal.div_lo_freq_sum_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_lo_freq_sum_reg[23]_i_2_n_0 ,\det_signal.div_lo_freq_sum_reg[23]_i_2_n_1 ,\det_signal.div_lo_freq_sum_reg[23]_i_2_n_2 ,\det_signal.div_lo_freq_sum_reg[23]_i_2_n_3 ,\det_signal.div_lo_freq_sum_reg[23]_i_2_n_4 ,\det_signal.div_lo_freq_sum_reg[23]_i_2_n_5 ,\det_signal.div_lo_freq_sum_reg[23]_i_2_n_6 ,\det_signal.div_lo_freq_sum_reg[23]_i_2_n_7 }),
        .DI(div_freq_sum[23:16]),
        .O(div_lo_freq_sum0[23:16]),
        .S({\det_signal.div_lo_freq_sum[23]_i_4_n_0 ,\det_signal.div_lo_freq_sum[23]_i_5_n_0 ,\det_signal.div_lo_freq_sum[23]_i_6_n_0 ,\det_signal.div_lo_freq_sum[23]_i_7_n_0 ,\det_signal.div_lo_freq_sum[23]_i_8_n_0 ,\det_signal.div_lo_freq_sum[23]_i_9_n_0 ,\det_signal.div_lo_freq_sum[23]_i_10_n_0 ,\det_signal.div_lo_freq_sum[23]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[23]_i_3 
       (.CI(\det_signal.div_lo_freq_sum_reg[15]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_lo_freq_sum_reg[23]_i_3_n_0 ,\det_signal.div_lo_freq_sum_reg[23]_i_3_n_1 ,\det_signal.div_lo_freq_sum_reg[23]_i_3_n_2 ,\det_signal.div_lo_freq_sum_reg[23]_i_3_n_3 ,\det_signal.div_lo_freq_sum_reg[23]_i_3_n_4 ,\det_signal.div_lo_freq_sum_reg[23]_i_3_n_5 ,\det_signal.div_lo_freq_sum_reg[23]_i_3_n_6 ,\det_signal.div_lo_freq_sum_reg[23]_i_3_n_7 }),
        .DI(dsp_sum_N[23:16]),
        .O(div_lo_freq_sum00_in[23:16]),
        .S({\det_signal.div_lo_freq_sum[23]_i_12_n_0 ,\det_signal.div_lo_freq_sum[23]_i_13_n_0 ,\det_signal.div_lo_freq_sum[23]_i_14_n_0 ,\det_signal.div_lo_freq_sum[23]_i_15_n_0 ,\det_signal.div_lo_freq_sum[23]_i_16_n_0 ,\det_signal.div_lo_freq_sum[23]_i_17_n_0 ,\det_signal.div_lo_freq_sum[23]_i_18_n_0 ,\det_signal.div_lo_freq_sum[23]_i_19_n_0 }));
  FDRE \det_signal.div_lo_freq_sum_reg[24] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[24]_i_1_n_0 ),
        .Q(data2[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[24]_i_2 
       (.CI(\det_signal.div_lo_freq_sum_reg[23]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.div_lo_freq_sum_reg[24]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.div_lo_freq_sum_reg[24]_i_2_O_UNCONNECTED [7:1],div_lo_freq_sum00_in[24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.div_lo_freq_sum_reg[25] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[25]_i_2_n_0 ),
        .Q(data2[1]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[25]_i_3 
       (.CI(\det_signal.div_lo_freq_sum_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.div_lo_freq_sum_reg[25]_i_3_CO_UNCONNECTED [7:1],\det_signal.div_lo_freq_sum_reg[25]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.div_lo_freq_sum_reg[25]_i_3_O_UNCONNECTED [7:2],div_lo_freq_sum0[25:24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data2}));
  FDRE \det_signal.div_lo_freq_sum_reg[2] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[2]_i_1_n_0 ),
        .Q(div_freq_sum[2]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[3] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[3]_i_1_n_0 ),
        .Q(div_freq_sum[3]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[4] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[4]_i_1_n_0 ),
        .Q(div_freq_sum[4]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[5] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[5]_i_1_n_0 ),
        .Q(div_freq_sum[5]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[6] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[6]_i_1_n_0 ),
        .Q(div_freq_sum[6]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[7] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[7]_i_1_n_0 ),
        .Q(div_freq_sum[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_lo_freq_sum_reg[7]_i_2_n_0 ,\det_signal.div_lo_freq_sum_reg[7]_i_2_n_1 ,\det_signal.div_lo_freq_sum_reg[7]_i_2_n_2 ,\det_signal.div_lo_freq_sum_reg[7]_i_2_n_3 ,\det_signal.div_lo_freq_sum_reg[7]_i_2_n_4 ,\det_signal.div_lo_freq_sum_reg[7]_i_2_n_5 ,\det_signal.div_lo_freq_sum_reg[7]_i_2_n_6 ,\det_signal.div_lo_freq_sum_reg[7]_i_2_n_7 }),
        .DI(div_freq_sum[7:0]),
        .O(div_lo_freq_sum0[7:0]),
        .S({\det_signal.div_lo_freq_sum[7]_i_4_n_0 ,\det_signal.div_lo_freq_sum[7]_i_5_n_0 ,\det_signal.div_lo_freq_sum[7]_i_6_n_0 ,\det_signal.div_lo_freq_sum[7]_i_7_n_0 ,\det_signal.div_lo_freq_sum[7]_i_8_n_0 ,\det_signal.div_lo_freq_sum[7]_i_9_n_0 ,\det_signal.div_lo_freq_sum[7]_i_10_n_0 ,\det_signal.div_lo_freq_sum[7]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.div_lo_freq_sum_reg[7]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.div_lo_freq_sum_reg[7]_i_3_n_0 ,\det_signal.div_lo_freq_sum_reg[7]_i_3_n_1 ,\det_signal.div_lo_freq_sum_reg[7]_i_3_n_2 ,\det_signal.div_lo_freq_sum_reg[7]_i_3_n_3 ,\det_signal.div_lo_freq_sum_reg[7]_i_3_n_4 ,\det_signal.div_lo_freq_sum_reg[7]_i_3_n_5 ,\det_signal.div_lo_freq_sum_reg[7]_i_3_n_6 ,\det_signal.div_lo_freq_sum_reg[7]_i_3_n_7 }),
        .DI(dsp_sum_N[7:0]),
        .O(div_lo_freq_sum00_in[7:0]),
        .S({\det_signal.div_lo_freq_sum[7]_i_12_n_0 ,\det_signal.div_lo_freq_sum[7]_i_13_n_0 ,\det_signal.div_lo_freq_sum[7]_i_14_n_0 ,\det_signal.div_lo_freq_sum[7]_i_15_n_0 ,\det_signal.div_lo_freq_sum[7]_i_16_n_0 ,\det_signal.div_lo_freq_sum[7]_i_17_n_0 ,\det_signal.div_lo_freq_sum[7]_i_18_n_0 ,\det_signal.div_lo_freq_sum[7]_i_19_n_0 }));
  FDRE \det_signal.div_lo_freq_sum_reg[8] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[8]_i_1_n_0 ),
        .Q(div_freq_sum[8]),
        .R(1'b0));
  FDRE \det_signal.div_lo_freq_sum_reg[9] 
       (.C(clk),
        .CE(div_lo_freq_sum),
        .D(\det_signal.div_lo_freq_sum[9]_i_1_n_0 ),
        .Q(div_freq_sum[9]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[0] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[0]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[10] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[10]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[11] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[11]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[12] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[12]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[13] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[13]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[14] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[14]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[15] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[15]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[16] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[16]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[17] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[17]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[18] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[18]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[19] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[19]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[1] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[1]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[20] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[20]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[21] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[21]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[22] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[22]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[23] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[23]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[24] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[24]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[25] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[25]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[26] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[26]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[27] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[27]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[28] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[28]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[29] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[29]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[2] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[2]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[30] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[30]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[31] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[31]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[32] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[32]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[33] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[33]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[34] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[34]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[35] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[35]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[36] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[36]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[37] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[37]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[38] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[38]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[39] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[39]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[3] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[3]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[40] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[40]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[41] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[41]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[42] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[42]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[43] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[43]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[44] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[44]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[45] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[45]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[46] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[46]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[47] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[47]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[4] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[4]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[5] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[5]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[6] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[6]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[7] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[7]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[8] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[8]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_EW_reg[9] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_EW[9]),
        .Q(\det_signal.div_phase_sum_EW_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00100000)) 
    \det_signal.div_phase_sum_NE[47]_i_1 
       (.I0(div_delay[0]),
        .I1(div_delay[1]),
        .I2(div_delay[2]),
        .I3(div_delay[3]),
        .I4(proc_signal),
        .O(div_phase_sum_NE));
  FDRE \det_signal.div_phase_sum_NE_reg[0] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[0]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[10] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[10]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[11] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[11]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[12] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[12]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[13] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[13]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[14] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[14]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[15] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[15]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[16] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[16]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[17] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[17]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[17] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[18] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[18]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[19] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[19]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[1] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[1]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[20] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[20]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[20] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[21] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[21]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[21] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[22] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[22]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[22] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[23] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[23]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[23] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[24] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[24]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[25] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[25]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[25] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[26] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[26]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[26] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[27] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[27]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[27] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[28] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[28]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[28] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[29] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[29]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[29] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[2] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[2]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[30] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[30]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[30] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[31] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[31]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[31] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[32] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[32]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[32] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[33] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[33]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[33] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[34] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[34]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[34] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[35] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[35]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[35] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[36] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[36]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[36] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[37] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[37]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[37] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[38] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[38]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[38] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[39] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[39]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[39] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[3] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[3]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[40] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[40]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[40] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[41] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[41]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[41] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[42] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[42]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[42] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[43] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[43]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[43] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[44] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[44]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[44] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[45] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[45]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[45] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[46] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[46]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[46] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[47] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[47]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[47] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[4] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[4]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[5] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[5]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[6] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[6]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[7] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[7]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[8] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[8]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NE_reg[9] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NE[9]),
        .Q(\det_signal.div_phase_sum_NE_reg_n_0_[9] ),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[0] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[0]),
        .Q(div_phase_sum_NW[0]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[10] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[10]),
        .Q(div_phase_sum_NW[10]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[11] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[11]),
        .Q(div_phase_sum_NW[11]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[12] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[12]),
        .Q(div_phase_sum_NW[12]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[13] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[13]),
        .Q(div_phase_sum_NW[13]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[14] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[14]),
        .Q(div_phase_sum_NW[14]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[15] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[15]),
        .Q(div_phase_sum_NW[15]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[16] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[16]),
        .Q(div_phase_sum_NW[16]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[17] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[17]),
        .Q(div_phase_sum_NW[17]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[18] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[18]),
        .Q(div_phase_sum_NW[18]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[19] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[19]),
        .Q(div_phase_sum_NW[19]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[1] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[1]),
        .Q(div_phase_sum_NW[1]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[20] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[20]),
        .Q(div_phase_sum_NW[20]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[21] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[21]),
        .Q(div_phase_sum_NW[21]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[22] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[22]),
        .Q(div_phase_sum_NW[22]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[23] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[23]),
        .Q(div_phase_sum_NW[23]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[24] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[24]),
        .Q(div_phase_sum_NW[24]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[25] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[25]),
        .Q(div_phase_sum_NW[25]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[26] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[26]),
        .Q(div_phase_sum_NW[26]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[27] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[27]),
        .Q(div_phase_sum_NW[27]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[28] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[28]),
        .Q(div_phase_sum_NW[28]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[29] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[29]),
        .Q(div_phase_sum_NW[29]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[2] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[2]),
        .Q(div_phase_sum_NW[2]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[30] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[30]),
        .Q(div_phase_sum_NW[30]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[31] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[31]),
        .Q(div_phase_sum_NW[31]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[32] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[32]),
        .Q(div_phase_sum_NW[32]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[33] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[33]),
        .Q(div_phase_sum_NW[33]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[34] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[34]),
        .Q(div_phase_sum_NW[34]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[35] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[35]),
        .Q(div_phase_sum_NW[35]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[36] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[36]),
        .Q(div_phase_sum_NW[36]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[37] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[37]),
        .Q(div_phase_sum_NW[37]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[38] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[38]),
        .Q(div_phase_sum_NW[38]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[39] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[39]),
        .Q(div_phase_sum_NW[39]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[3] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[3]),
        .Q(div_phase_sum_NW[3]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[40] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[40]),
        .Q(div_phase_sum_NW[40]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[41] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[41]),
        .Q(div_phase_sum_NW[41]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[42] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[42]),
        .Q(div_phase_sum_NW[42]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[43] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[43]),
        .Q(div_phase_sum_NW[43]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[44] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[44]),
        .Q(div_phase_sum_NW[44]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[45] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[45]),
        .Q(div_phase_sum_NW[45]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[46] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[46]),
        .Q(div_phase_sum_NW[46]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[47] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[47]),
        .Q(div_phase_sum_NW[47]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[4] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[4]),
        .Q(div_phase_sum_NW[4]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[5] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[5]),
        .Q(div_phase_sum_NW[5]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[6] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[6]),
        .Q(div_phase_sum_NW[6]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[7] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[7]),
        .Q(div_phase_sum_NW[7]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[8] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[8]),
        .Q(div_phase_sum_NW[8]),
        .R(1'b0));
  FDRE \det_signal.div_phase_sum_NW_reg[9] 
       (.C(clk),
        .CE(div_phase_sum_NE),
        .D(dsp_sum_NW[9]),
        .Q(div_phase_sum_NW[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \det_signal.div_sample_count[8]_i_1 
       (.I0(sample_count[6]),
        .I1(sample_count[5]),
        .I2(sample_count[4]),
        .I3(sample_count[3]),
        .I4(\det_signal.div_sample_count[8]_i_2_n_0 ),
        .I5(has_signal),
        .O(div_sample_count));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \det_signal.div_sample_count[8]_i_2 
       (.I0(sample_count[0]),
        .I1(sample_count[1]),
        .I2(sample_count[2]),
        .I3(sample_count[8]),
        .I4(sample_count[7]),
        .O(\det_signal.div_sample_count[8]_i_2_n_0 ));
  FDRE \det_signal.div_sample_count_reg[0] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[0]),
        .Q(\det_signal.div_sample_count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[1] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[1]),
        .Q(\det_signal.div_sample_count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[2] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[2]),
        .Q(\det_signal.div_sample_count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[3] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[3]),
        .Q(\det_signal.div_sample_count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[4] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[4]),
        .Q(\det_signal.div_sample_count_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[5] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[5]),
        .Q(\det_signal.div_sample_count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[6] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[6]),
        .Q(\det_signal.div_sample_count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[7] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[7]),
        .Q(\det_signal.div_sample_count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \det_signal.div_sample_count_reg[8] 
       (.C(clk),
        .CE(div_sample_count),
        .D(sample_count[8]),
        .Q(\det_signal.div_sample_count_reg_n_0_[8] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4000)) 
    \det_signal.div_start_i_1 
       (.I0(div_delay[3]),
        .I1(div_delay[2]),
        .I2(div_delay[1]),
        .I3(div_delay[0]),
        .O(\det_signal.div_start_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_start_i_1_n_0 ),
        .Q(div_start),
        .R(\det_signal.accept_new_burst_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_2 
       (.I0(phase_E[15]),
        .I1(phase_W[15]),
        .O(\det_signal.dsp_phase_EW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_3 
       (.I0(phase_E[14]),
        .I1(phase_W[14]),
        .O(\det_signal.dsp_phase_EW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_4 
       (.I0(phase_E[13]),
        .I1(phase_W[13]),
        .O(\det_signal.dsp_phase_EW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_5 
       (.I0(phase_E[12]),
        .I1(phase_W[12]),
        .O(\det_signal.dsp_phase_EW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_6 
       (.I0(phase_E[11]),
        .I1(phase_W[11]),
        .O(\det_signal.dsp_phase_EW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_7 
       (.I0(phase_E[10]),
        .I1(phase_W[10]),
        .O(\det_signal.dsp_phase_EW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_8 
       (.I0(phase_E[9]),
        .I1(phase_W[9]),
        .O(\det_signal.dsp_phase_EW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[15]_i_9 
       (.I0(phase_E[8]),
        .I1(phase_W[8]),
        .O(\det_signal.dsp_phase_EW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[19]_i_2 
       (.I0(phase_E[19]),
        .I1(phase_W[19]),
        .O(\det_signal.dsp_phase_EW[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[19]_i_3 
       (.I0(phase_E[18]),
        .I1(phase_W[18]),
        .O(\det_signal.dsp_phase_EW[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[19]_i_4 
       (.I0(phase_E[17]),
        .I1(phase_W[17]),
        .O(\det_signal.dsp_phase_EW[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[19]_i_5 
       (.I0(phase_E[16]),
        .I1(phase_W[16]),
        .O(\det_signal.dsp_phase_EW[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_2 
       (.I0(phase_E[7]),
        .I1(phase_W[7]),
        .O(\det_signal.dsp_phase_EW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_3 
       (.I0(phase_E[6]),
        .I1(phase_W[6]),
        .O(\det_signal.dsp_phase_EW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_4 
       (.I0(phase_E[5]),
        .I1(phase_W[5]),
        .O(\det_signal.dsp_phase_EW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_5 
       (.I0(phase_E[4]),
        .I1(phase_W[4]),
        .O(\det_signal.dsp_phase_EW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_6 
       (.I0(phase_E[3]),
        .I1(phase_W[3]),
        .O(\det_signal.dsp_phase_EW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_7 
       (.I0(phase_E[2]),
        .I1(phase_W[2]),
        .O(\det_signal.dsp_phase_EW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_8 
       (.I0(phase_E[1]),
        .I1(phase_W[1]),
        .O(\det_signal.dsp_phase_EW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_EW[7]_i_9 
       (.I0(phase_E[0]),
        .I1(phase_W[0]),
        .O(\det_signal.dsp_phase_EW[7]_i_9_n_0 ));
  FDRE \det_signal.dsp_phase_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[0]),
        .Q(dsp_phase_EW[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[10]),
        .Q(dsp_phase_EW[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[11]),
        .Q(dsp_phase_EW[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[12]),
        .Q(dsp_phase_EW[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[13]),
        .Q(dsp_phase_EW[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[14]),
        .Q(dsp_phase_EW[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[15]),
        .Q(dsp_phase_EW[15]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_EW_reg[15]_i_1 
       (.CI(\det_signal.dsp_phase_EW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_EW_reg[15]_i_1_n_0 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_1 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_2 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_3 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_4 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_5 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_6 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_7 }),
        .DI(phase_E[15:8]),
        .O(dsp_phase_EW00_out[15:8]),
        .S({\det_signal.dsp_phase_EW[15]_i_2_n_0 ,\det_signal.dsp_phase_EW[15]_i_3_n_0 ,\det_signal.dsp_phase_EW[15]_i_4_n_0 ,\det_signal.dsp_phase_EW[15]_i_5_n_0 ,\det_signal.dsp_phase_EW[15]_i_6_n_0 ,\det_signal.dsp_phase_EW[15]_i_7_n_0 ,\det_signal.dsp_phase_EW[15]_i_8_n_0 ,\det_signal.dsp_phase_EW[15]_i_9_n_0 }));
  FDRE \det_signal.dsp_phase_EW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[16]),
        .Q(dsp_phase_EW[16]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[17]),
        .Q(dsp_phase_EW[17]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[18]),
        .Q(dsp_phase_EW[18]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[19]),
        .Q(dsp_phase_EW[19]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_EW_reg[19]_i_1 
       (.CI(\det_signal.dsp_phase_EW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_EW_reg[19]_i_1_n_5 ,\det_signal.dsp_phase_EW_reg[19]_i_1_n_6 ,\det_signal.dsp_phase_EW_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_E[18:16]}),
        .O({\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_O_UNCONNECTED [7:4],dsp_phase_EW00_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_EW[19]_i_2_n_0 ,\det_signal.dsp_phase_EW[19]_i_3_n_0 ,\det_signal.dsp_phase_EW[19]_i_4_n_0 ,\det_signal.dsp_phase_EW[19]_i_5_n_0 }));
  FDRE \det_signal.dsp_phase_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[1]),
        .Q(dsp_phase_EW[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[2]),
        .Q(dsp_phase_EW[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[3]),
        .Q(dsp_phase_EW[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[4]),
        .Q(dsp_phase_EW[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[5]),
        .Q(dsp_phase_EW[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[6]),
        .Q(dsp_phase_EW[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[7]),
        .Q(dsp_phase_EW[7]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_EW_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_EW_reg[7]_i_1_n_0 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_1 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_2 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_3 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_4 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_5 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_6 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_7 }),
        .DI(phase_E[7:0]),
        .O(dsp_phase_EW00_out[7:0]),
        .S({\det_signal.dsp_phase_EW[7]_i_2_n_0 ,\det_signal.dsp_phase_EW[7]_i_3_n_0 ,\det_signal.dsp_phase_EW[7]_i_4_n_0 ,\det_signal.dsp_phase_EW[7]_i_5_n_0 ,\det_signal.dsp_phase_EW[7]_i_6_n_0 ,\det_signal.dsp_phase_EW[7]_i_7_n_0 ,\det_signal.dsp_phase_EW[7]_i_8_n_0 ,\det_signal.dsp_phase_EW[7]_i_9_n_0 }));
  FDRE \det_signal.dsp_phase_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[8]),
        .Q(dsp_phase_EW[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_EW00_out[9]),
        .Q(dsp_phase_EW[9]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[0]),
        .Q(dsp_phase_E[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[10]),
        .Q(dsp_phase_E[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[11]),
        .Q(dsp_phase_E[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[12]),
        .Q(dsp_phase_E[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[13]),
        .Q(dsp_phase_E[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[14]),
        .Q(dsp_phase_E[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[15]),
        .Q(dsp_phase_E[15]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[16]),
        .Q(dsp_phase_E[16]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[17]),
        .Q(dsp_phase_E[17]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[18]),
        .Q(dsp_phase_E[18]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[19]),
        .Q(dsp_phase_E[19]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[1]),
        .Q(dsp_phase_E[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[2]),
        .Q(dsp_phase_E[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[3]),
        .Q(dsp_phase_E[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[4]),
        .Q(dsp_phase_E[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[5]),
        .Q(dsp_phase_E[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[6]),
        .Q(dsp_phase_E[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[7]),
        .Q(dsp_phase_E[7]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[8]),
        .Q(dsp_phase_E[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_E_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[9]),
        .Q(dsp_phase_E[9]),
        .R(dsp_phase_W__0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_2 
       (.I0(phase_N[15]),
        .I1(phase_E[15]),
        .O(\det_signal.dsp_phase_NE[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_3 
       (.I0(phase_N[14]),
        .I1(phase_E[14]),
        .O(\det_signal.dsp_phase_NE[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_4 
       (.I0(phase_N[13]),
        .I1(phase_E[13]),
        .O(\det_signal.dsp_phase_NE[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_5 
       (.I0(phase_N[12]),
        .I1(phase_E[12]),
        .O(\det_signal.dsp_phase_NE[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_6 
       (.I0(phase_N[11]),
        .I1(phase_E[11]),
        .O(\det_signal.dsp_phase_NE[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_7 
       (.I0(phase_N[10]),
        .I1(phase_E[10]),
        .O(\det_signal.dsp_phase_NE[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_8 
       (.I0(phase_N[9]),
        .I1(phase_E[9]),
        .O(\det_signal.dsp_phase_NE[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[15]_i_9 
       (.I0(phase_N[8]),
        .I1(phase_E[8]),
        .O(\det_signal.dsp_phase_NE[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[19]_i_2 
       (.I0(phase_N[19]),
        .I1(phase_E[19]),
        .O(\det_signal.dsp_phase_NE[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[19]_i_3 
       (.I0(phase_N[18]),
        .I1(phase_E[18]),
        .O(\det_signal.dsp_phase_NE[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[19]_i_4 
       (.I0(phase_N[17]),
        .I1(phase_E[17]),
        .O(\det_signal.dsp_phase_NE[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[19]_i_5 
       (.I0(phase_N[16]),
        .I1(phase_E[16]),
        .O(\det_signal.dsp_phase_NE[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_2 
       (.I0(phase_N[7]),
        .I1(phase_E[7]),
        .O(\det_signal.dsp_phase_NE[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_3 
       (.I0(phase_N[6]),
        .I1(phase_E[6]),
        .O(\det_signal.dsp_phase_NE[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_4 
       (.I0(phase_N[5]),
        .I1(phase_E[5]),
        .O(\det_signal.dsp_phase_NE[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_5 
       (.I0(phase_N[4]),
        .I1(phase_E[4]),
        .O(\det_signal.dsp_phase_NE[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_6 
       (.I0(phase_N[3]),
        .I1(phase_E[3]),
        .O(\det_signal.dsp_phase_NE[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_7 
       (.I0(phase_N[2]),
        .I1(phase_E[2]),
        .O(\det_signal.dsp_phase_NE[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_8 
       (.I0(phase_N[1]),
        .I1(phase_E[1]),
        .O(\det_signal.dsp_phase_NE[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NE[7]_i_9 
       (.I0(phase_N[0]),
        .I1(phase_E[0]),
        .O(\det_signal.dsp_phase_NE[7]_i_9_n_0 ));
  FDRE \det_signal.dsp_phase_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[0]),
        .Q(dsp_phase_NE[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[10]),
        .Q(dsp_phase_NE[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[11]),
        .Q(dsp_phase_NE[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[12]),
        .Q(dsp_phase_NE[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[13]),
        .Q(dsp_phase_NE[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[14]),
        .Q(dsp_phase_NE[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[15]),
        .Q(dsp_phase_NE[15]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[15]_i_1 
       (.CI(\det_signal.dsp_phase_NE_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NE_reg[15]_i_1_n_0 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_1 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_2 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_3 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_4 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_5 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_6 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(dsp_phase_NE01_out[15:8]),
        .S({\det_signal.dsp_phase_NE[15]_i_2_n_0 ,\det_signal.dsp_phase_NE[15]_i_3_n_0 ,\det_signal.dsp_phase_NE[15]_i_4_n_0 ,\det_signal.dsp_phase_NE[15]_i_5_n_0 ,\det_signal.dsp_phase_NE[15]_i_6_n_0 ,\det_signal.dsp_phase_NE[15]_i_7_n_0 ,\det_signal.dsp_phase_NE[15]_i_8_n_0 ,\det_signal.dsp_phase_NE[15]_i_9_n_0 }));
  FDRE \det_signal.dsp_phase_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[16]),
        .Q(dsp_phase_NE[16]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[17]),
        .Q(dsp_phase_NE[17]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[18]),
        .Q(dsp_phase_NE[18]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[19]),
        .Q(dsp_phase_NE[19]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[19]_i_1 
       (.CI(\det_signal.dsp_phase_NE_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_NE_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_NE_reg[19]_i_1_n_5 ,\det_signal.dsp_phase_NE_reg[19]_i_1_n_6 ,\det_signal.dsp_phase_NE_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_det_signal.dsp_phase_NE_reg[19]_i_1_O_UNCONNECTED [7:4],dsp_phase_NE01_out[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_NE[19]_i_2_n_0 ,\det_signal.dsp_phase_NE[19]_i_3_n_0 ,\det_signal.dsp_phase_NE[19]_i_4_n_0 ,\det_signal.dsp_phase_NE[19]_i_5_n_0 }));
  FDRE \det_signal.dsp_phase_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[1]),
        .Q(dsp_phase_NE[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[2]),
        .Q(dsp_phase_NE[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[3]),
        .Q(dsp_phase_NE[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[4]),
        .Q(dsp_phase_NE[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[5]),
        .Q(dsp_phase_NE[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[6]),
        .Q(dsp_phase_NE[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[7]),
        .Q(dsp_phase_NE[7]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NE_reg[7]_i_1_n_0 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_1 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_2 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_3 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_4 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_5 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_6 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(dsp_phase_NE01_out[7:0]),
        .S({\det_signal.dsp_phase_NE[7]_i_2_n_0 ,\det_signal.dsp_phase_NE[7]_i_3_n_0 ,\det_signal.dsp_phase_NE[7]_i_4_n_0 ,\det_signal.dsp_phase_NE[7]_i_5_n_0 ,\det_signal.dsp_phase_NE[7]_i_6_n_0 ,\det_signal.dsp_phase_NE[7]_i_7_n_0 ,\det_signal.dsp_phase_NE[7]_i_8_n_0 ,\det_signal.dsp_phase_NE[7]_i_9_n_0 }));
  FDRE \det_signal.dsp_phase_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[8]),
        .Q(dsp_phase_NE[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NE01_out[9]),
        .Q(dsp_phase_NE[9]),
        .R(dsp_phase_W__0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_2 
       (.I0(phase_N[15]),
        .I1(phase_W[15]),
        .O(\det_signal.dsp_phase_NW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_3 
       (.I0(phase_N[14]),
        .I1(phase_W[14]),
        .O(\det_signal.dsp_phase_NW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_4 
       (.I0(phase_N[13]),
        .I1(phase_W[13]),
        .O(\det_signal.dsp_phase_NW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_5 
       (.I0(phase_N[12]),
        .I1(phase_W[12]),
        .O(\det_signal.dsp_phase_NW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_6 
       (.I0(phase_N[11]),
        .I1(phase_W[11]),
        .O(\det_signal.dsp_phase_NW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_7 
       (.I0(phase_N[10]),
        .I1(phase_W[10]),
        .O(\det_signal.dsp_phase_NW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_8 
       (.I0(phase_N[9]),
        .I1(phase_W[9]),
        .O(\det_signal.dsp_phase_NW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[15]_i_9 
       (.I0(phase_N[8]),
        .I1(phase_W[8]),
        .O(\det_signal.dsp_phase_NW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[19]_i_2 
       (.I0(phase_N[19]),
        .I1(phase_W[19]),
        .O(\det_signal.dsp_phase_NW[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[19]_i_3 
       (.I0(phase_N[18]),
        .I1(phase_W[18]),
        .O(\det_signal.dsp_phase_NW[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[19]_i_4 
       (.I0(phase_N[17]),
        .I1(phase_W[17]),
        .O(\det_signal.dsp_phase_NW[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[19]_i_5 
       (.I0(phase_N[16]),
        .I1(phase_W[16]),
        .O(\det_signal.dsp_phase_NW[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_2 
       (.I0(phase_N[7]),
        .I1(phase_W[7]),
        .O(\det_signal.dsp_phase_NW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_3 
       (.I0(phase_N[6]),
        .I1(phase_W[6]),
        .O(\det_signal.dsp_phase_NW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_4 
       (.I0(phase_N[5]),
        .I1(phase_W[5]),
        .O(\det_signal.dsp_phase_NW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_5 
       (.I0(phase_N[4]),
        .I1(phase_W[4]),
        .O(\det_signal.dsp_phase_NW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_6 
       (.I0(phase_N[3]),
        .I1(phase_W[3]),
        .O(\det_signal.dsp_phase_NW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_7 
       (.I0(phase_N[2]),
        .I1(phase_W[2]),
        .O(\det_signal.dsp_phase_NW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_8 
       (.I0(phase_N[1]),
        .I1(phase_W[1]),
        .O(\det_signal.dsp_phase_NW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.dsp_phase_NW[7]_i_9 
       (.I0(phase_N[0]),
        .I1(phase_W[0]),
        .O(\det_signal.dsp_phase_NW[7]_i_9_n_0 ));
  FDRE \det_signal.dsp_phase_NW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[0]),
        .Q(dsp_phase_NW[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[10]),
        .Q(dsp_phase_NW[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[11]),
        .Q(dsp_phase_NW[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[12]),
        .Q(dsp_phase_NW[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[13]),
        .Q(dsp_phase_NW[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[14]),
        .Q(dsp_phase_NW[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[15]),
        .Q(dsp_phase_NW[15]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[15]_i_1 
       (.CI(\det_signal.dsp_phase_NW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NW_reg[15]_i_1_n_0 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_1 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_2 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_3 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_4 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_5 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_6 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(dsp_phase_NW0[15:8]),
        .S({\det_signal.dsp_phase_NW[15]_i_2_n_0 ,\det_signal.dsp_phase_NW[15]_i_3_n_0 ,\det_signal.dsp_phase_NW[15]_i_4_n_0 ,\det_signal.dsp_phase_NW[15]_i_5_n_0 ,\det_signal.dsp_phase_NW[15]_i_6_n_0 ,\det_signal.dsp_phase_NW[15]_i_7_n_0 ,\det_signal.dsp_phase_NW[15]_i_8_n_0 ,\det_signal.dsp_phase_NW[15]_i_9_n_0 }));
  FDRE \det_signal.dsp_phase_NW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[16]),
        .Q(dsp_phase_NW[16]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[17]),
        .Q(dsp_phase_NW[17]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[18]),
        .Q(dsp_phase_NW[18]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[19]),
        .Q(dsp_phase_NW[19]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[19]_i_1 
       (.CI(\det_signal.dsp_phase_NW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_NW_reg[19]_i_1_n_5 ,\det_signal.dsp_phase_NW_reg[19]_i_1_n_6 ,\det_signal.dsp_phase_NW_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_O_UNCONNECTED [7:4],dsp_phase_NW0[19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_NW[19]_i_2_n_0 ,\det_signal.dsp_phase_NW[19]_i_3_n_0 ,\det_signal.dsp_phase_NW[19]_i_4_n_0 ,\det_signal.dsp_phase_NW[19]_i_5_n_0 }));
  FDRE \det_signal.dsp_phase_NW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[1]),
        .Q(dsp_phase_NW[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[2]),
        .Q(dsp_phase_NW[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[3]),
        .Q(dsp_phase_NW[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[4]),
        .Q(dsp_phase_NW[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[5]),
        .Q(dsp_phase_NW[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[6]),
        .Q(dsp_phase_NW[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[7]),
        .Q(dsp_phase_NW[7]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NW_reg[7]_i_1_n_0 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_1 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_2 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_3 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_4 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_5 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_6 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(dsp_phase_NW0[7:0]),
        .S({\det_signal.dsp_phase_NW[7]_i_2_n_0 ,\det_signal.dsp_phase_NW[7]_i_3_n_0 ,\det_signal.dsp_phase_NW[7]_i_4_n_0 ,\det_signal.dsp_phase_NW[7]_i_5_n_0 ,\det_signal.dsp_phase_NW[7]_i_6_n_0 ,\det_signal.dsp_phase_NW[7]_i_7_n_0 ,\det_signal.dsp_phase_NW[7]_i_8_n_0 ,\det_signal.dsp_phase_NW[7]_i_9_n_0 }));
  FDRE \det_signal.dsp_phase_NW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[8]),
        .Q(dsp_phase_NW[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_NW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(dsp_phase_NW0[9]),
        .Q(dsp_phase_NW[9]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[0]),
        .Q(dsp_phase_N[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[10]),
        .Q(dsp_phase_N[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[11]),
        .Q(dsp_phase_N[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[12]),
        .Q(dsp_phase_N[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[13]),
        .Q(dsp_phase_N[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[14]),
        .Q(dsp_phase_N[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[15]),
        .Q(dsp_phase_N[15]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[16]),
        .Q(dsp_phase_N[16]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[17]),
        .Q(dsp_phase_N[17]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[18]),
        .Q(dsp_phase_N[18]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[19]),
        .Q(dsp_phase_N[19]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[1]),
        .Q(dsp_phase_N[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[2]),
        .Q(dsp_phase_N[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[3]),
        .Q(dsp_phase_N[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[4]),
        .Q(dsp_phase_N[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[5]),
        .Q(dsp_phase_N[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[6]),
        .Q(dsp_phase_N[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[7]),
        .Q(dsp_phase_N[7]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[8]),
        .Q(dsp_phase_N[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_N_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[9]),
        .Q(dsp_phase_N[9]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[0]),
        .Q(dsp_phase_W[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[10]),
        .Q(dsp_phase_W[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[11]),
        .Q(dsp_phase_W[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[12]),
        .Q(dsp_phase_W[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[13]),
        .Q(dsp_phase_W[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[14]),
        .Q(dsp_phase_W[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[15]),
        .Q(dsp_phase_W[15]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[16]),
        .Q(dsp_phase_W[16]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[17]),
        .Q(dsp_phase_W[17]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[18]),
        .Q(dsp_phase_W[18]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[19]),
        .Q(dsp_phase_W[19]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[1]),
        .Q(dsp_phase_W[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[2]),
        .Q(dsp_phase_W[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[3]),
        .Q(dsp_phase_W[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[4]),
        .Q(dsp_phase_W[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[5]),
        .Q(dsp_phase_W[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[6]),
        .Q(dsp_phase_W[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[7]),
        .Q(dsp_phase_W[7]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[8]),
        .Q(dsp_phase_W[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.dsp_phase_W_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[9]),
        .Q(dsp_phase_W[9]),
        .R(dsp_phase_W__0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_2 
       (.I0(env_E[15]),
        .I1(env_W[15]),
        .O(\det_signal.env_EW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_3 
       (.I0(env_E[14]),
        .I1(env_W[14]),
        .O(\det_signal.env_EW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_4 
       (.I0(env_E[13]),
        .I1(env_W[13]),
        .O(\det_signal.env_EW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_5 
       (.I0(env_E[12]),
        .I1(env_W[12]),
        .O(\det_signal.env_EW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_6 
       (.I0(env_E[11]),
        .I1(env_W[11]),
        .O(\det_signal.env_EW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_7 
       (.I0(env_E[10]),
        .I1(env_W[10]),
        .O(\det_signal.env_EW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_8 
       (.I0(env_E[9]),
        .I1(env_W[9]),
        .O(\det_signal.env_EW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[15]_i_9 
       (.I0(env_E[8]),
        .I1(env_W[8]),
        .O(\det_signal.env_EW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_2 
       (.I0(env_E[7]),
        .I1(env_W[7]),
        .O(\det_signal.env_EW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_3 
       (.I0(env_E[6]),
        .I1(env_W[6]),
        .O(\det_signal.env_EW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_4 
       (.I0(env_E[5]),
        .I1(env_W[5]),
        .O(\det_signal.env_EW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_5 
       (.I0(env_E[4]),
        .I1(env_W[4]),
        .O(\det_signal.env_EW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_6 
       (.I0(env_E[3]),
        .I1(env_W[3]),
        .O(\det_signal.env_EW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_7 
       (.I0(env_E[2]),
        .I1(env_W[2]),
        .O(\det_signal.env_EW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_8 
       (.I0(env_E[1]),
        .I1(env_W[1]),
        .O(\det_signal.env_EW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_EW[7]_i_9 
       (.I0(env_E[0]),
        .I1(env_W[0]),
        .O(\det_signal.env_EW[7]_i_9_n_0 ));
  FDRE \det_signal.env_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[0]),
        .Q(env_EW[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[10]),
        .Q(env_EW[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[11]),
        .Q(env_EW[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[12]),
        .Q(env_EW[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[13]),
        .Q(env_EW[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[14]),
        .Q(env_EW[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[15]),
        .Q(env_EW[15]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_EW_reg[15]_i_1 
       (.CI(\det_signal.env_EW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_EW_reg[15]_i_1_n_0 ,\det_signal.env_EW_reg[15]_i_1_n_1 ,\det_signal.env_EW_reg[15]_i_1_n_2 ,\det_signal.env_EW_reg[15]_i_1_n_3 ,\det_signal.env_EW_reg[15]_i_1_n_4 ,\det_signal.env_EW_reg[15]_i_1_n_5 ,\det_signal.env_EW_reg[15]_i_1_n_6 ,\det_signal.env_EW_reg[15]_i_1_n_7 }),
        .DI(env_E[15:8]),
        .O(env_EW0[15:8]),
        .S({\det_signal.env_EW[15]_i_2_n_0 ,\det_signal.env_EW[15]_i_3_n_0 ,\det_signal.env_EW[15]_i_4_n_0 ,\det_signal.env_EW[15]_i_5_n_0 ,\det_signal.env_EW[15]_i_6_n_0 ,\det_signal.env_EW[15]_i_7_n_0 ,\det_signal.env_EW[15]_i_8_n_0 ,\det_signal.env_EW[15]_i_9_n_0 }));
  FDRE \det_signal.env_EW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[16]),
        .Q(env_EW[16]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_EW_reg[16]_i_1 
       (.CI(\det_signal.env_EW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.env_EW_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_EW_reg[16]_i_1_O_UNCONNECTED [7:1],env_EW0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.env_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[1]),
        .Q(env_EW[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[2]),
        .Q(env_EW[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[3]),
        .Q(env_EW[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[4]),
        .Q(env_EW[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[5]),
        .Q(env_EW[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[6]),
        .Q(env_EW[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[7]),
        .Q(env_EW[7]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_EW_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_EW_reg[7]_i_1_n_0 ,\det_signal.env_EW_reg[7]_i_1_n_1 ,\det_signal.env_EW_reg[7]_i_1_n_2 ,\det_signal.env_EW_reg[7]_i_1_n_3 ,\det_signal.env_EW_reg[7]_i_1_n_4 ,\det_signal.env_EW_reg[7]_i_1_n_5 ,\det_signal.env_EW_reg[7]_i_1_n_6 ,\det_signal.env_EW_reg[7]_i_1_n_7 }),
        .DI(env_E[7:0]),
        .O(env_EW0[7:0]),
        .S({\det_signal.env_EW[7]_i_2_n_0 ,\det_signal.env_EW[7]_i_3_n_0 ,\det_signal.env_EW[7]_i_4_n_0 ,\det_signal.env_EW[7]_i_5_n_0 ,\det_signal.env_EW[7]_i_6_n_0 ,\det_signal.env_EW[7]_i_7_n_0 ,\det_signal.env_EW[7]_i_8_n_0 ,\det_signal.env_EW[7]_i_9_n_0 }));
  FDRE \det_signal.env_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[8]),
        .Q(env_EW[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[9]),
        .Q(env_EW[9]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_E_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[36]),
        .Q(env_E[0]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[46]),
        .Q(env_E[10]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[47]),
        .Q(env_E[11]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[48]),
        .Q(env_E[12]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[49]),
        .Q(env_E[13]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[50]),
        .Q(env_E[14]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[51]),
        .Q(env_E[15]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[37]),
        .Q(env_E[1]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[38]),
        .Q(env_E[2]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[39]),
        .Q(env_E[3]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[40]),
        .Q(env_E[4]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[41]),
        .Q(env_E[5]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[42]),
        .Q(env_E[6]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[43]),
        .Q(env_E[7]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[44]),
        .Q(env_E[8]),
        .R(1'b0));
  FDRE \det_signal.env_E_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[45]),
        .Q(env_E[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_2 
       (.I0(env_N[15]),
        .I1(env_E[15]),
        .O(\det_signal.env_NE[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_3 
       (.I0(env_N[14]),
        .I1(env_E[14]),
        .O(\det_signal.env_NE[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_4 
       (.I0(env_N[13]),
        .I1(env_E[13]),
        .O(\det_signal.env_NE[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_5 
       (.I0(env_N[12]),
        .I1(env_E[12]),
        .O(\det_signal.env_NE[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_6 
       (.I0(env_N[11]),
        .I1(env_E[11]),
        .O(\det_signal.env_NE[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_7 
       (.I0(env_N[10]),
        .I1(env_E[10]),
        .O(\det_signal.env_NE[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_8 
       (.I0(env_N[9]),
        .I1(env_E[9]),
        .O(\det_signal.env_NE[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[15]_i_9 
       (.I0(env_N[8]),
        .I1(env_E[8]),
        .O(\det_signal.env_NE[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_2 
       (.I0(env_N[7]),
        .I1(env_E[7]),
        .O(\det_signal.env_NE[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_3 
       (.I0(env_N[6]),
        .I1(env_E[6]),
        .O(\det_signal.env_NE[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_4 
       (.I0(env_N[5]),
        .I1(env_E[5]),
        .O(\det_signal.env_NE[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_5 
       (.I0(env_N[4]),
        .I1(env_E[4]),
        .O(\det_signal.env_NE[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_6 
       (.I0(env_N[3]),
        .I1(env_E[3]),
        .O(\det_signal.env_NE[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_7 
       (.I0(env_N[2]),
        .I1(env_E[2]),
        .O(\det_signal.env_NE[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_8 
       (.I0(env_N[1]),
        .I1(env_E[1]),
        .O(\det_signal.env_NE[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NE[7]_i_9 
       (.I0(env_N[0]),
        .I1(env_E[0]),
        .O(\det_signal.env_NE[7]_i_9_n_0 ));
  FDRE \det_signal.env_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[0]),
        .Q(env_NE[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[10]),
        .Q(env_NE[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[11]),
        .Q(env_NE[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[12]),
        .Q(env_NE[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[13]),
        .Q(env_NE[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[14]),
        .Q(env_NE[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[15]),
        .Q(env_NE[15]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_NE_reg[15]_i_1 
       (.CI(\det_signal.env_NE_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_NE_reg[15]_i_1_n_0 ,\det_signal.env_NE_reg[15]_i_1_n_1 ,\det_signal.env_NE_reg[15]_i_1_n_2 ,\det_signal.env_NE_reg[15]_i_1_n_3 ,\det_signal.env_NE_reg[15]_i_1_n_4 ,\det_signal.env_NE_reg[15]_i_1_n_5 ,\det_signal.env_NE_reg[15]_i_1_n_6 ,\det_signal.env_NE_reg[15]_i_1_n_7 }),
        .DI(env_N[15:8]),
        .O(env_NE0[15:8]),
        .S({\det_signal.env_NE[15]_i_2_n_0 ,\det_signal.env_NE[15]_i_3_n_0 ,\det_signal.env_NE[15]_i_4_n_0 ,\det_signal.env_NE[15]_i_5_n_0 ,\det_signal.env_NE[15]_i_6_n_0 ,\det_signal.env_NE[15]_i_7_n_0 ,\det_signal.env_NE[15]_i_8_n_0 ,\det_signal.env_NE[15]_i_9_n_0 }));
  FDRE \det_signal.env_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[16]),
        .Q(env_NE[16]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_NE_reg[16]_i_1 
       (.CI(\det_signal.env_NE_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.env_NE_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_NE_reg[16]_i_1_O_UNCONNECTED [7:1],env_NE0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.env_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[1]),
        .Q(env_NE[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[2]),
        .Q(env_NE[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[3]),
        .Q(env_NE[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[4]),
        .Q(env_NE[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[5]),
        .Q(env_NE[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[6]),
        .Q(env_NE[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[7]),
        .Q(env_NE[7]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_NE_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_NE_reg[7]_i_1_n_0 ,\det_signal.env_NE_reg[7]_i_1_n_1 ,\det_signal.env_NE_reg[7]_i_1_n_2 ,\det_signal.env_NE_reg[7]_i_1_n_3 ,\det_signal.env_NE_reg[7]_i_1_n_4 ,\det_signal.env_NE_reg[7]_i_1_n_5 ,\det_signal.env_NE_reg[7]_i_1_n_6 ,\det_signal.env_NE_reg[7]_i_1_n_7 }),
        .DI(env_N[7:0]),
        .O(env_NE0[7:0]),
        .S({\det_signal.env_NE[7]_i_2_n_0 ,\det_signal.env_NE[7]_i_3_n_0 ,\det_signal.env_NE[7]_i_4_n_0 ,\det_signal.env_NE[7]_i_5_n_0 ,\det_signal.env_NE[7]_i_6_n_0 ,\det_signal.env_NE[7]_i_7_n_0 ,\det_signal.env_NE[7]_i_8_n_0 ,\det_signal.env_NE[7]_i_9_n_0 }));
  FDRE \det_signal.env_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[8]),
        .Q(env_NE[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NE0[9]),
        .Q(env_NE[9]),
        .R(dsp_phase_W__0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_2 
       (.I0(env_N[15]),
        .I1(env_W[15]),
        .O(\det_signal.env_NW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_3 
       (.I0(env_N[14]),
        .I1(env_W[14]),
        .O(\det_signal.env_NW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_4 
       (.I0(env_N[13]),
        .I1(env_W[13]),
        .O(\det_signal.env_NW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_5 
       (.I0(env_N[12]),
        .I1(env_W[12]),
        .O(\det_signal.env_NW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_6 
       (.I0(env_N[11]),
        .I1(env_W[11]),
        .O(\det_signal.env_NW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_7 
       (.I0(env_N[10]),
        .I1(env_W[10]),
        .O(\det_signal.env_NW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_8 
       (.I0(env_N[9]),
        .I1(env_W[9]),
        .O(\det_signal.env_NW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[15]_i_9 
       (.I0(env_N[8]),
        .I1(env_W[8]),
        .O(\det_signal.env_NW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_2 
       (.I0(env_N[7]),
        .I1(env_W[7]),
        .O(\det_signal.env_NW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_3 
       (.I0(env_N[6]),
        .I1(env_W[6]),
        .O(\det_signal.env_NW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_4 
       (.I0(env_N[5]),
        .I1(env_W[5]),
        .O(\det_signal.env_NW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_5 
       (.I0(env_N[4]),
        .I1(env_W[4]),
        .O(\det_signal.env_NW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_6 
       (.I0(env_N[3]),
        .I1(env_W[3]),
        .O(\det_signal.env_NW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_7 
       (.I0(env_N[2]),
        .I1(env_W[2]),
        .O(\det_signal.env_NW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_8 
       (.I0(env_N[1]),
        .I1(env_W[1]),
        .O(\det_signal.env_NW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_NW[7]_i_9 
       (.I0(env_N[0]),
        .I1(env_W[0]),
        .O(\det_signal.env_NW[7]_i_9_n_0 ));
  FDRE \det_signal.env_NW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[0]),
        .Q(env_NW[0]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[10]),
        .Q(env_NW[10]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[11]),
        .Q(env_NW[11]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[12]),
        .Q(env_NW[12]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[13]),
        .Q(env_NW[13]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[14]),
        .Q(env_NW[14]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[15]),
        .Q(env_NW[15]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_NW_reg[15]_i_1 
       (.CI(\det_signal.env_NW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_NW_reg[15]_i_1_n_0 ,\det_signal.env_NW_reg[15]_i_1_n_1 ,\det_signal.env_NW_reg[15]_i_1_n_2 ,\det_signal.env_NW_reg[15]_i_1_n_3 ,\det_signal.env_NW_reg[15]_i_1_n_4 ,\det_signal.env_NW_reg[15]_i_1_n_5 ,\det_signal.env_NW_reg[15]_i_1_n_6 ,\det_signal.env_NW_reg[15]_i_1_n_7 }),
        .DI(env_N[15:8]),
        .O(env_NW0[15:8]),
        .S({\det_signal.env_NW[15]_i_2_n_0 ,\det_signal.env_NW[15]_i_3_n_0 ,\det_signal.env_NW[15]_i_4_n_0 ,\det_signal.env_NW[15]_i_5_n_0 ,\det_signal.env_NW[15]_i_6_n_0 ,\det_signal.env_NW[15]_i_7_n_0 ,\det_signal.env_NW[15]_i_8_n_0 ,\det_signal.env_NW[15]_i_9_n_0 }));
  FDRE \det_signal.env_NW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[16]),
        .Q(env_NW[16]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_NW_reg[16]_i_1 
       (.CI(\det_signal.env_NW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.env_NW_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_NW_reg[16]_i_1_O_UNCONNECTED [7:1],env_NW0[16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.env_NW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[1]),
        .Q(env_NW[1]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[2]),
        .Q(env_NW[2]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[3]),
        .Q(env_NW[3]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[4]),
        .Q(env_NW[4]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[5]),
        .Q(env_NW[5]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[6]),
        .Q(env_NW[6]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[7]),
        .Q(env_NW[7]),
        .R(dsp_phase_W__0));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \det_signal.env_NW_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_NW_reg[7]_i_1_n_0 ,\det_signal.env_NW_reg[7]_i_1_n_1 ,\det_signal.env_NW_reg[7]_i_1_n_2 ,\det_signal.env_NW_reg[7]_i_1_n_3 ,\det_signal.env_NW_reg[7]_i_1_n_4 ,\det_signal.env_NW_reg[7]_i_1_n_5 ,\det_signal.env_NW_reg[7]_i_1_n_6 ,\det_signal.env_NW_reg[7]_i_1_n_7 }),
        .DI(env_N[7:0]),
        .O(env_NW0[7:0]),
        .S({\det_signal.env_NW[7]_i_2_n_0 ,\det_signal.env_NW[7]_i_3_n_0 ,\det_signal.env_NW[7]_i_4_n_0 ,\det_signal.env_NW[7]_i_5_n_0 ,\det_signal.env_NW[7]_i_6_n_0 ,\det_signal.env_NW[7]_i_7_n_0 ,\det_signal.env_NW[7]_i_8_n_0 ,\det_signal.env_NW[7]_i_9_n_0 }));
  FDRE \det_signal.env_NW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[8]),
        .Q(env_NW[8]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_NW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[9]),
        .Q(env_NW[9]),
        .R(dsp_phase_W__0));
  FDRE \det_signal.env_N_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[0]),
        .Q(env_N[0]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[10]),
        .Q(env_N[10]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[11]),
        .Q(env_N[11]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[12]),
        .Q(env_N[12]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[13]),
        .Q(env_N[13]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[14]),
        .Q(env_N[14]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[15]),
        .Q(env_N[15]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[1]),
        .Q(env_N[1]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[2]),
        .Q(env_N[2]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[3]),
        .Q(env_N[3]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[4]),
        .Q(env_N[4]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[5]),
        .Q(env_N[5]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[6]),
        .Q(env_N[6]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[7]),
        .Q(env_N[7]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[8]),
        .Q(env_N[8]),
        .R(1'b0));
  FDRE \det_signal.env_N_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[9]),
        .Q(env_N[9]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[72]),
        .Q(env_W[0]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[82]),
        .Q(env_W[10]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[83]),
        .Q(env_W[11]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[84]),
        .Q(env_W[12]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[85]),
        .Q(env_W[13]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[86]),
        .Q(env_W[14]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[87]),
        .Q(env_W[15]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[73]),
        .Q(env_W[1]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[74]),
        .Q(env_W[2]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[75]),
        .Q(env_W[3]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[76]),
        .Q(env_W[4]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[77]),
        .Q(env_W[5]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[78]),
        .Q(env_W[6]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[79]),
        .Q(env_W[7]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[80]),
        .Q(env_W[8]),
        .R(1'b0));
  FDRE \det_signal.env_W_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[81]),
        .Q(env_W[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_2 
       (.I0(acc_reset),
        .I1(env_sum_E[15]),
        .I2(env_E[15]),
        .O(\det_signal.env_sum_E[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_3 
       (.I0(acc_reset),
        .I1(env_sum_E[14]),
        .I2(env_E[14]),
        .O(\det_signal.env_sum_E[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_4 
       (.I0(acc_reset),
        .I1(env_sum_E[13]),
        .I2(env_E[13]),
        .O(\det_signal.env_sum_E[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_5 
       (.I0(acc_reset),
        .I1(env_sum_E[12]),
        .I2(env_E[12]),
        .O(\det_signal.env_sum_E[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_6 
       (.I0(acc_reset),
        .I1(env_sum_E[11]),
        .I2(env_E[11]),
        .O(\det_signal.env_sum_E[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_7 
       (.I0(acc_reset),
        .I1(env_sum_E[10]),
        .I2(env_E[10]),
        .O(\det_signal.env_sum_E[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_8 
       (.I0(acc_reset),
        .I1(env_sum_E[9]),
        .I2(env_E[9]),
        .O(\det_signal.env_sum_E[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_9 
       (.I0(acc_reset),
        .I1(env_sum_E[8]),
        .I2(env_E[8]),
        .O(\det_signal.env_sum_E[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \det_signal.env_sum_E[23]_i_1 
       (.I0(has_signal),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_10 
       (.I0(env_sum_E[16]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_3 
       (.I0(env_sum_E[23]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_4 
       (.I0(env_sum_E[22]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_5 
       (.I0(env_sum_E[21]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_6 
       (.I0(env_sum_E[20]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_7 
       (.I0(env_sum_E[19]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_8 
       (.I0(env_sum_E[18]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_9 
       (.I0(env_sum_E[17]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_E[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_2 
       (.I0(acc_reset),
        .I1(env_sum_E[7]),
        .I2(env_E[7]),
        .O(\det_signal.env_sum_E[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_3 
       (.I0(acc_reset),
        .I1(env_sum_E[6]),
        .I2(env_E[6]),
        .O(\det_signal.env_sum_E[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_4 
       (.I0(acc_reset),
        .I1(env_sum_E[5]),
        .I2(env_E[5]),
        .O(\det_signal.env_sum_E[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_5 
       (.I0(acc_reset),
        .I1(env_sum_E[4]),
        .I2(env_E[4]),
        .O(\det_signal.env_sum_E[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_6 
       (.I0(acc_reset),
        .I1(env_sum_E[3]),
        .I2(env_E[3]),
        .O(\det_signal.env_sum_E[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_7 
       (.I0(acc_reset),
        .I1(env_sum_E[2]),
        .I2(env_E[2]),
        .O(\det_signal.env_sum_E[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_8 
       (.I0(acc_reset),
        .I1(env_sum_E[1]),
        .I2(env_E[1]),
        .O(\det_signal.env_sum_E[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_9 
       (.I0(acc_reset),
        .I1(env_sum_E[0]),
        .I2(env_E[0]),
        .O(\det_signal.env_sum_E[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[0]),
        .Q(env_sum_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[10]),
        .Q(env_sum_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[11]),
        .Q(env_sum_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[12]),
        .Q(env_sum_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[13]),
        .Q(env_sum_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[14]),
        .Q(env_sum_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[15]),
        .Q(env_sum_E[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_E_reg[15]_i_1 
       (.CI(\det_signal.env_sum_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_E_reg[15]_i_1_n_0 ,\det_signal.env_sum_E_reg[15]_i_1_n_1 ,\det_signal.env_sum_E_reg[15]_i_1_n_2 ,\det_signal.env_sum_E_reg[15]_i_1_n_3 ,\det_signal.env_sum_E_reg[15]_i_1_n_4 ,\det_signal.env_sum_E_reg[15]_i_1_n_5 ,\det_signal.env_sum_E_reg[15]_i_1_n_6 ,\det_signal.env_sum_E_reg[15]_i_1_n_7 }),
        .DI(env_E[15:8]),
        .O(env_sum_E__0[15:8]),
        .S({\det_signal.env_sum_E[15]_i_2_n_0 ,\det_signal.env_sum_E[15]_i_3_n_0 ,\det_signal.env_sum_E[15]_i_4_n_0 ,\det_signal.env_sum_E[15]_i_5_n_0 ,\det_signal.env_sum_E[15]_i_6_n_0 ,\det_signal.env_sum_E[15]_i_7_n_0 ,\det_signal.env_sum_E[15]_i_8_n_0 ,\det_signal.env_sum_E[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[16] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[16]),
        .Q(env_sum_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[17] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[17]),
        .Q(env_sum_E[17]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[18] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[18]),
        .Q(env_sum_E[18]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[19] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[19]),
        .Q(env_sum_E[19]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[1]),
        .Q(env_sum_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[20] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[20]),
        .Q(env_sum_E[20]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[21] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[21]),
        .Q(env_sum_E[21]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[22] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[22]),
        .Q(env_sum_E[22]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[23] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[23]),
        .Q(env_sum_E[23]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_E_reg[23]_i_2 
       (.CI(\det_signal.env_sum_E_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_sum_E_reg[23]_i_2_CO_UNCONNECTED [7],\det_signal.env_sum_E_reg[23]_i_2_n_1 ,\det_signal.env_sum_E_reg[23]_i_2_n_2 ,\det_signal.env_sum_E_reg[23]_i_2_n_3 ,\det_signal.env_sum_E_reg[23]_i_2_n_4 ,\det_signal.env_sum_E_reg[23]_i_2_n_5 ,\det_signal.env_sum_E_reg[23]_i_2_n_6 ,\det_signal.env_sum_E_reg[23]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(env_sum_E__0[23:16]),
        .S({\det_signal.env_sum_E[23]_i_3_n_0 ,\det_signal.env_sum_E[23]_i_4_n_0 ,\det_signal.env_sum_E[23]_i_5_n_0 ,\det_signal.env_sum_E[23]_i_6_n_0 ,\det_signal.env_sum_E[23]_i_7_n_0 ,\det_signal.env_sum_E[23]_i_8_n_0 ,\det_signal.env_sum_E[23]_i_9_n_0 ,\det_signal.env_sum_E[23]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[2]),
        .Q(env_sum_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[3]),
        .Q(env_sum_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[4]),
        .Q(env_sum_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[5]),
        .Q(env_sum_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[6]),
        .Q(env_sum_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[7]),
        .Q(env_sum_E[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_E_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_E_reg[7]_i_1_n_0 ,\det_signal.env_sum_E_reg[7]_i_1_n_1 ,\det_signal.env_sum_E_reg[7]_i_1_n_2 ,\det_signal.env_sum_E_reg[7]_i_1_n_3 ,\det_signal.env_sum_E_reg[7]_i_1_n_4 ,\det_signal.env_sum_E_reg[7]_i_1_n_5 ,\det_signal.env_sum_E_reg[7]_i_1_n_6 ,\det_signal.env_sum_E_reg[7]_i_1_n_7 }),
        .DI(env_E[7:0]),
        .O(env_sum_E__0[7:0]),
        .S({\det_signal.env_sum_E[7]_i_2_n_0 ,\det_signal.env_sum_E[7]_i_3_n_0 ,\det_signal.env_sum_E[7]_i_4_n_0 ,\det_signal.env_sum_E[7]_i_5_n_0 ,\det_signal.env_sum_E[7]_i_6_n_0 ,\det_signal.env_sum_E[7]_i_7_n_0 ,\det_signal.env_sum_E[7]_i_8_n_0 ,\det_signal.env_sum_E[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[8]),
        .Q(env_sum_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_E__0[9]),
        .Q(env_sum_E[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_2 
       (.I0(acc_reset),
        .I1(env_sum_N[15]),
        .I2(env_N[15]),
        .O(\det_signal.env_sum_N[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_3 
       (.I0(acc_reset),
        .I1(env_sum_N[14]),
        .I2(env_N[14]),
        .O(\det_signal.env_sum_N[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_4 
       (.I0(acc_reset),
        .I1(env_sum_N[13]),
        .I2(env_N[13]),
        .O(\det_signal.env_sum_N[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_5 
       (.I0(acc_reset),
        .I1(env_sum_N[12]),
        .I2(env_N[12]),
        .O(\det_signal.env_sum_N[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_6 
       (.I0(acc_reset),
        .I1(env_sum_N[11]),
        .I2(env_N[11]),
        .O(\det_signal.env_sum_N[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_7 
       (.I0(acc_reset),
        .I1(env_sum_N[10]),
        .I2(env_N[10]),
        .O(\det_signal.env_sum_N[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_8 
       (.I0(acc_reset),
        .I1(env_sum_N[9]),
        .I2(env_N[9]),
        .O(\det_signal.env_sum_N[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_9 
       (.I0(acc_reset),
        .I1(env_sum_N[8]),
        .I2(env_N[8]),
        .O(\det_signal.env_sum_N[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_2 
       (.I0(env_sum_N[23]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_3 
       (.I0(env_sum_N[22]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_4 
       (.I0(env_sum_N[21]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_5 
       (.I0(env_sum_N[20]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_6 
       (.I0(env_sum_N[19]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_7 
       (.I0(env_sum_N[18]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_8 
       (.I0(env_sum_N[17]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_9 
       (.I0(env_sum_N[16]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_N[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_2 
       (.I0(acc_reset),
        .I1(env_sum_N[7]),
        .I2(env_N[7]),
        .O(\det_signal.env_sum_N[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_3 
       (.I0(acc_reset),
        .I1(env_sum_N[6]),
        .I2(env_N[6]),
        .O(\det_signal.env_sum_N[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_4 
       (.I0(acc_reset),
        .I1(env_sum_N[5]),
        .I2(env_N[5]),
        .O(\det_signal.env_sum_N[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_5 
       (.I0(acc_reset),
        .I1(env_sum_N[4]),
        .I2(env_N[4]),
        .O(\det_signal.env_sum_N[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_6 
       (.I0(acc_reset),
        .I1(env_sum_N[3]),
        .I2(env_N[3]),
        .O(\det_signal.env_sum_N[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_7 
       (.I0(acc_reset),
        .I1(env_sum_N[2]),
        .I2(env_N[2]),
        .O(\det_signal.env_sum_N[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_8 
       (.I0(acc_reset),
        .I1(env_sum_N[1]),
        .I2(env_N[1]),
        .O(\det_signal.env_sum_N[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_9 
       (.I0(acc_reset),
        .I1(env_sum_N[0]),
        .I2(env_N[0]),
        .O(\det_signal.env_sum_N[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[0]),
        .Q(env_sum_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[10]),
        .Q(env_sum_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[11]),
        .Q(env_sum_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[12]),
        .Q(env_sum_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[13]),
        .Q(env_sum_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[14]),
        .Q(env_sum_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[15]),
        .Q(env_sum_N[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_N_reg[15]_i_1 
       (.CI(\det_signal.env_sum_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_N_reg[15]_i_1_n_0 ,\det_signal.env_sum_N_reg[15]_i_1_n_1 ,\det_signal.env_sum_N_reg[15]_i_1_n_2 ,\det_signal.env_sum_N_reg[15]_i_1_n_3 ,\det_signal.env_sum_N_reg[15]_i_1_n_4 ,\det_signal.env_sum_N_reg[15]_i_1_n_5 ,\det_signal.env_sum_N_reg[15]_i_1_n_6 ,\det_signal.env_sum_N_reg[15]_i_1_n_7 }),
        .DI(env_N[15:8]),
        .O(env_sum_N0_in[15:8]),
        .S({\det_signal.env_sum_N[15]_i_2_n_0 ,\det_signal.env_sum_N[15]_i_3_n_0 ,\det_signal.env_sum_N[15]_i_4_n_0 ,\det_signal.env_sum_N[15]_i_5_n_0 ,\det_signal.env_sum_N[15]_i_6_n_0 ,\det_signal.env_sum_N[15]_i_7_n_0 ,\det_signal.env_sum_N[15]_i_8_n_0 ,\det_signal.env_sum_N[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[16] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[16]),
        .Q(env_sum_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[17] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[17]),
        .Q(env_sum_N[17]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[18] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[18]),
        .Q(env_sum_N[18]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[19] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[19]),
        .Q(env_sum_N[19]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[1]),
        .Q(env_sum_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[20] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[20]),
        .Q(env_sum_N[20]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[21] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[21]),
        .Q(env_sum_N[21]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[22] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[22]),
        .Q(env_sum_N[22]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[23] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[23]),
        .Q(env_sum_N[23]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_N_reg[23]_i_1 
       (.CI(\det_signal.env_sum_N_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_sum_N_reg[23]_i_1_CO_UNCONNECTED [7],\det_signal.env_sum_N_reg[23]_i_1_n_1 ,\det_signal.env_sum_N_reg[23]_i_1_n_2 ,\det_signal.env_sum_N_reg[23]_i_1_n_3 ,\det_signal.env_sum_N_reg[23]_i_1_n_4 ,\det_signal.env_sum_N_reg[23]_i_1_n_5 ,\det_signal.env_sum_N_reg[23]_i_1_n_6 ,\det_signal.env_sum_N_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(env_sum_N0_in[23:16]),
        .S({\det_signal.env_sum_N[23]_i_2_n_0 ,\det_signal.env_sum_N[23]_i_3_n_0 ,\det_signal.env_sum_N[23]_i_4_n_0 ,\det_signal.env_sum_N[23]_i_5_n_0 ,\det_signal.env_sum_N[23]_i_6_n_0 ,\det_signal.env_sum_N[23]_i_7_n_0 ,\det_signal.env_sum_N[23]_i_8_n_0 ,\det_signal.env_sum_N[23]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[2]),
        .Q(env_sum_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[3]),
        .Q(env_sum_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[4]),
        .Q(env_sum_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[5]),
        .Q(env_sum_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[6]),
        .Q(env_sum_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[7]),
        .Q(env_sum_N[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_N_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_N_reg[7]_i_1_n_0 ,\det_signal.env_sum_N_reg[7]_i_1_n_1 ,\det_signal.env_sum_N_reg[7]_i_1_n_2 ,\det_signal.env_sum_N_reg[7]_i_1_n_3 ,\det_signal.env_sum_N_reg[7]_i_1_n_4 ,\det_signal.env_sum_N_reg[7]_i_1_n_5 ,\det_signal.env_sum_N_reg[7]_i_1_n_6 ,\det_signal.env_sum_N_reg[7]_i_1_n_7 }),
        .DI(env_N[7:0]),
        .O(env_sum_N0_in[7:0]),
        .S({\det_signal.env_sum_N[7]_i_2_n_0 ,\det_signal.env_sum_N[7]_i_3_n_0 ,\det_signal.env_sum_N[7]_i_4_n_0 ,\det_signal.env_sum_N[7]_i_5_n_0 ,\det_signal.env_sum_N[7]_i_6_n_0 ,\det_signal.env_sum_N[7]_i_7_n_0 ,\det_signal.env_sum_N[7]_i_8_n_0 ,\det_signal.env_sum_N[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[8]),
        .Q(env_sum_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_N0_in[9]),
        .Q(env_sum_N[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_2 
       (.I0(acc_reset),
        .I1(env_sum_W[15]),
        .I2(env_W[15]),
        .O(\det_signal.env_sum_W[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_3 
       (.I0(acc_reset),
        .I1(env_sum_W[14]),
        .I2(env_W[14]),
        .O(\det_signal.env_sum_W[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_4 
       (.I0(acc_reset),
        .I1(env_sum_W[13]),
        .I2(env_W[13]),
        .O(\det_signal.env_sum_W[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_5 
       (.I0(acc_reset),
        .I1(env_sum_W[12]),
        .I2(env_W[12]),
        .O(\det_signal.env_sum_W[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_6 
       (.I0(acc_reset),
        .I1(env_sum_W[11]),
        .I2(env_W[11]),
        .O(\det_signal.env_sum_W[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_7 
       (.I0(acc_reset),
        .I1(env_sum_W[10]),
        .I2(env_W[10]),
        .O(\det_signal.env_sum_W[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_8 
       (.I0(acc_reset),
        .I1(env_sum_W[9]),
        .I2(env_W[9]),
        .O(\det_signal.env_sum_W[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_9 
       (.I0(acc_reset),
        .I1(env_sum_W[8]),
        .I2(env_W[8]),
        .O(\det_signal.env_sum_W[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_2 
       (.I0(env_sum_W[23]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_3 
       (.I0(env_sum_W[22]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_4 
       (.I0(env_sum_W[21]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_5 
       (.I0(env_sum_W[20]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_6 
       (.I0(env_sum_W[19]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_7 
       (.I0(env_sum_W[18]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_8 
       (.I0(env_sum_W[17]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_9 
       (.I0(env_sum_W[16]),
        .I1(acc_reset),
        .O(\det_signal.env_sum_W[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_2 
       (.I0(acc_reset),
        .I1(env_sum_W[7]),
        .I2(env_W[7]),
        .O(\det_signal.env_sum_W[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_3 
       (.I0(acc_reset),
        .I1(env_sum_W[6]),
        .I2(env_W[6]),
        .O(\det_signal.env_sum_W[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_4 
       (.I0(acc_reset),
        .I1(env_sum_W[5]),
        .I2(env_W[5]),
        .O(\det_signal.env_sum_W[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_5 
       (.I0(acc_reset),
        .I1(env_sum_W[4]),
        .I2(env_W[4]),
        .O(\det_signal.env_sum_W[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_6 
       (.I0(acc_reset),
        .I1(env_sum_W[3]),
        .I2(env_W[3]),
        .O(\det_signal.env_sum_W[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_7 
       (.I0(acc_reset),
        .I1(env_sum_W[2]),
        .I2(env_W[2]),
        .O(\det_signal.env_sum_W[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_8 
       (.I0(acc_reset),
        .I1(env_sum_W[1]),
        .I2(env_W[1]),
        .O(\det_signal.env_sum_W[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_9 
       (.I0(acc_reset),
        .I1(env_sum_W[0]),
        .I2(env_W[0]),
        .O(\det_signal.env_sum_W[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[0]),
        .Q(env_sum_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[10]),
        .Q(env_sum_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[11]),
        .Q(env_sum_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[12]),
        .Q(env_sum_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[13]),
        .Q(env_sum_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[14]),
        .Q(env_sum_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[15]),
        .Q(env_sum_W[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_W_reg[15]_i_1 
       (.CI(\det_signal.env_sum_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_W_reg[15]_i_1_n_0 ,\det_signal.env_sum_W_reg[15]_i_1_n_1 ,\det_signal.env_sum_W_reg[15]_i_1_n_2 ,\det_signal.env_sum_W_reg[15]_i_1_n_3 ,\det_signal.env_sum_W_reg[15]_i_1_n_4 ,\det_signal.env_sum_W_reg[15]_i_1_n_5 ,\det_signal.env_sum_W_reg[15]_i_1_n_6 ,\det_signal.env_sum_W_reg[15]_i_1_n_7 }),
        .DI(env_W[15:8]),
        .O(env_sum_W__0[15:8]),
        .S({\det_signal.env_sum_W[15]_i_2_n_0 ,\det_signal.env_sum_W[15]_i_3_n_0 ,\det_signal.env_sum_W[15]_i_4_n_0 ,\det_signal.env_sum_W[15]_i_5_n_0 ,\det_signal.env_sum_W[15]_i_6_n_0 ,\det_signal.env_sum_W[15]_i_7_n_0 ,\det_signal.env_sum_W[15]_i_8_n_0 ,\det_signal.env_sum_W[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[16] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[16]),
        .Q(env_sum_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[17] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[17]),
        .Q(env_sum_W[17]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[18] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[18]),
        .Q(env_sum_W[18]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[19] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[19]),
        .Q(env_sum_W[19]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[1]),
        .Q(env_sum_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[20] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[20]),
        .Q(env_sum_W[20]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[21] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[21]),
        .Q(env_sum_W[21]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[22] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[22]),
        .Q(env_sum_W[22]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[23] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[23]),
        .Q(env_sum_W[23]),
        .R(\det_signal.env_sum_E[23]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_W_reg[23]_i_1 
       (.CI(\det_signal.env_sum_W_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_sum_W_reg[23]_i_1_CO_UNCONNECTED [7],\det_signal.env_sum_W_reg[23]_i_1_n_1 ,\det_signal.env_sum_W_reg[23]_i_1_n_2 ,\det_signal.env_sum_W_reg[23]_i_1_n_3 ,\det_signal.env_sum_W_reg[23]_i_1_n_4 ,\det_signal.env_sum_W_reg[23]_i_1_n_5 ,\det_signal.env_sum_W_reg[23]_i_1_n_6 ,\det_signal.env_sum_W_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(env_sum_W__0[23:16]),
        .S({\det_signal.env_sum_W[23]_i_2_n_0 ,\det_signal.env_sum_W[23]_i_3_n_0 ,\det_signal.env_sum_W[23]_i_4_n_0 ,\det_signal.env_sum_W[23]_i_5_n_0 ,\det_signal.env_sum_W[23]_i_6_n_0 ,\det_signal.env_sum_W[23]_i_7_n_0 ,\det_signal.env_sum_W[23]_i_8_n_0 ,\det_signal.env_sum_W[23]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[2]),
        .Q(env_sum_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[3]),
        .Q(env_sum_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[4]),
        .Q(env_sum_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[5]),
        .Q(env_sum_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[6]),
        .Q(env_sum_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[7]),
        .Q(env_sum_W[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_W_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_W_reg[7]_i_1_n_0 ,\det_signal.env_sum_W_reg[7]_i_1_n_1 ,\det_signal.env_sum_W_reg[7]_i_1_n_2 ,\det_signal.env_sum_W_reg[7]_i_1_n_3 ,\det_signal.env_sum_W_reg[7]_i_1_n_4 ,\det_signal.env_sum_W_reg[7]_i_1_n_5 ,\det_signal.env_sum_W_reg[7]_i_1_n_6 ,\det_signal.env_sum_W_reg[7]_i_1_n_7 }),
        .DI(env_W[7:0]),
        .O(env_sum_W__0[7:0]),
        .S({\det_signal.env_sum_W[7]_i_2_n_0 ,\det_signal.env_sum_W[7]_i_3_n_0 ,\det_signal.env_sum_W[7]_i_4_n_0 ,\det_signal.env_sum_W[7]_i_5_n_0 ,\det_signal.env_sum_W[7]_i_6_n_0 ,\det_signal.env_sum_W[7]_i_7_n_0 ,\det_signal.env_sum_W[7]_i_8_n_0 ,\det_signal.env_sum_W[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[8]),
        .Q(env_sum_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(env_sum_W__0[9]),
        .Q(env_sum_W[9]),
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
    .INIT(32'hDF200000)) 
    \det_signal.err_count[0]_i_1 
       (.I0(\det_signal.valid_count_reg_n_0 ),
        .I1(\det_signal.err_ov_reg_n_0 ),
        .I2(has_signal),
        .I3(err_count[0]),
        .I4(\det_signal.run_reg[2]__0 ),
        .O(\det_signal.err_count[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \det_signal.err_count[1]_i_1 
       (.I0(\det_signal.run_reg[2]__0 ),
        .I1(valid_env),
        .I2(valid_err),
        .I3(accept_new_burst),
        .I4(\det_signal.valid_count_reg_n_0 ),
        .O(start_proc6_out));
  LUT6 #(
    .INIT(64'hF7FF000008000000)) 
    \det_signal.err_count[1]_i_2 
       (.I0(err_count[0]),
        .I1(has_signal),
        .I2(\det_signal.err_ov_reg_n_0 ),
        .I3(\det_signal.valid_count_reg_n_0 ),
        .I4(\det_signal.run_reg[2]__0 ),
        .I5(err_count[1]),
        .O(\det_signal.err_count[1]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.err_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_count[0]_i_1_n_0 ),
        .Q(err_count[0]),
        .R(start_proc6_out));
  (* KEEP = "yes" *) 
  FDRE \det_signal.err_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_count[1]_i_2_n_0 ),
        .Q(err_count[1]),
        .R(start_proc6_out));
  LUT4 #(
    .INIT(16'h8F80)) 
    \det_signal.err_ov_i_1 
       (.I0(err_count[0]),
        .I1(err_count[1]),
        .I2(\det_signal.run_reg[1]__0 ),
        .I3(\det_signal.err_ov_reg_n_0 ),
        .O(\det_signal.err_ov_i_1_n_0 ));
  FDRE \det_signal.err_ov_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_ov_i_1_n_0 ),
        .Q(\det_signal.err_ov_reg_n_0 ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF2000)) 
    \det_signal.has_signal_i_1 
       (.I0(\det_signal.valid_count_reg_n_0 ),
        .I1(\det_signal.err_ov_reg_n_0 ),
        .I2(has_signal),
        .I3(\det_signal.run_reg[2]__0 ),
        .I4(start_proc6_out),
        .O(has_signal10_out));
  (* KEEP = "yes" *) 
  FDRE \det_signal.has_signal_reg 
       (.C(clk),
        .CE(1'b1),
        .D(has_signal10_out),
        .Q(has_signal),
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
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[0]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[0]),
        .I5(config_data[0]),
        .O(\det_signal.max_freq[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[10]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[10]),
        .I5(config_data[10]),
        .O(\det_signal.max_freq[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[11]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[11]),
        .I5(config_data[11]),
        .O(\det_signal.max_freq[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[12]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[12]),
        .I5(config_data[12]),
        .O(\det_signal.max_freq[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[13]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[13]),
        .I5(config_data[13]),
        .O(\det_signal.max_freq[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[14]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[14]),
        .I5(config_data[14]),
        .O(\det_signal.max_freq[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[15]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[15]),
        .I5(config_data[15]),
        .O(\det_signal.max_freq[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[16]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[16]),
        .I5(config_data[16]),
        .O(\det_signal.max_freq[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[17]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[17]),
        .I5(config_data[17]),
        .O(\det_signal.max_freq[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[18]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[18]),
        .I5(config_data[18]),
        .O(\det_signal.max_freq[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[19]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[19]),
        .I5(config_data[19]),
        .O(\det_signal.max_freq[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[1]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[1]),
        .I5(config_data[1]),
        .O(\det_signal.max_freq[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[2]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[2]),
        .I5(config_data[2]),
        .O(\det_signal.max_freq[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[3]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[3]),
        .I5(config_data[3]),
        .O(\det_signal.max_freq[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[4]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[4]),
        .I5(config_data[4]),
        .O(\det_signal.max_freq[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[5]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[5]),
        .I5(config_data[5]),
        .O(\det_signal.max_freq[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[6]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[6]),
        .I5(config_data[6]),
        .O(\det_signal.max_freq[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[7]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[7]),
        .I5(config_data[7]),
        .O(\det_signal.max_freq[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[8]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[8]),
        .I5(config_data[8]),
        .O(\det_signal.max_freq[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0010FFEF0000)) 
    \det_signal.max_freq[9]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(config_adr[2]),
        .I4(max_freq[9]),
        .I5(config_data[9]),
        .O(\det_signal.max_freq[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_2 
       (.I0(freq[15]),
        .I1(max_freq[15]),
        .O(\det_signal.max_freq_diff[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_3 
       (.I0(freq[14]),
        .I1(max_freq[14]),
        .O(\det_signal.max_freq_diff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_4 
       (.I0(freq[13]),
        .I1(max_freq[13]),
        .O(\det_signal.max_freq_diff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_5 
       (.I0(freq[12]),
        .I1(max_freq[12]),
        .O(\det_signal.max_freq_diff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_6 
       (.I0(freq[11]),
        .I1(max_freq[11]),
        .O(\det_signal.max_freq_diff[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_7 
       (.I0(freq[10]),
        .I1(max_freq[10]),
        .O(\det_signal.max_freq_diff[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_8 
       (.I0(freq[9]),
        .I1(max_freq[9]),
        .O(\det_signal.max_freq_diff[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[15]_i_9 
       (.I0(freq[8]),
        .I1(max_freq[8]),
        .O(\det_signal.max_freq_diff[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[20]_i_2 
       (.I0(freq[19]),
        .I1(max_freq[19]),
        .O(\det_signal.max_freq_diff[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[20]_i_3 
       (.I0(freq[18]),
        .I1(max_freq[18]),
        .O(\det_signal.max_freq_diff[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[20]_i_4 
       (.I0(freq[17]),
        .I1(max_freq[17]),
        .O(\det_signal.max_freq_diff[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[20]_i_5 
       (.I0(freq[16]),
        .I1(max_freq[16]),
        .O(\det_signal.max_freq_diff[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_2 
       (.I0(freq[7]),
        .I1(max_freq[7]),
        .O(\det_signal.max_freq_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_3 
       (.I0(freq[6]),
        .I1(max_freq[6]),
        .O(\det_signal.max_freq_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_4 
       (.I0(freq[5]),
        .I1(max_freq[5]),
        .O(\det_signal.max_freq_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_5 
       (.I0(freq[4]),
        .I1(max_freq[4]),
        .O(\det_signal.max_freq_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_6 
       (.I0(freq[3]),
        .I1(max_freq[3]),
        .O(\det_signal.max_freq_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_7 
       (.I0(freq[2]),
        .I1(max_freq[2]),
        .O(\det_signal.max_freq_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_8 
       (.I0(freq[1]),
        .I1(max_freq[1]),
        .O(\det_signal.max_freq_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.max_freq_diff[7]_i_9 
       (.I0(freq[0]),
        .I1(max_freq[0]),
        .O(\det_signal.max_freq_diff[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[0] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [0]),
        .Q(max_freq_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[10] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [10]),
        .Q(max_freq_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[11] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [11]),
        .Q(max_freq_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[12] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [12]),
        .Q(max_freq_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[13] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [13]),
        .Q(max_freq_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[14] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [14]),
        .Q(max_freq_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[15] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [15]),
        .Q(max_freq_diff[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.max_freq_diff_reg[15]_i_1 
       (.CI(\det_signal.max_freq_diff_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.max_freq_diff_reg[15]_i_1_n_0 ,\det_signal.max_freq_diff_reg[15]_i_1_n_1 ,\det_signal.max_freq_diff_reg[15]_i_1_n_2 ,\det_signal.max_freq_diff_reg[15]_i_1_n_3 ,\det_signal.max_freq_diff_reg[15]_i_1_n_4 ,\det_signal.max_freq_diff_reg[15]_i_1_n_5 ,\det_signal.max_freq_diff_reg[15]_i_1_n_6 ,\det_signal.max_freq_diff_reg[15]_i_1_n_7 }),
        .DI(freq[15:8]),
        .O(\det_signal.max_freq_diff_reg0 [15:8]),
        .S({\det_signal.max_freq_diff[15]_i_2_n_0 ,\det_signal.max_freq_diff[15]_i_3_n_0 ,\det_signal.max_freq_diff[15]_i_4_n_0 ,\det_signal.max_freq_diff[15]_i_5_n_0 ,\det_signal.max_freq_diff[15]_i_6_n_0 ,\det_signal.max_freq_diff[15]_i_7_n_0 ,\det_signal.max_freq_diff[15]_i_8_n_0 ,\det_signal.max_freq_diff[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[16] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [16]),
        .Q(max_freq_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[17] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [17]),
        .Q(max_freq_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[18] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [18]),
        .Q(max_freq_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[19] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [19]),
        .Q(max_freq_diff[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[1] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [1]),
        .Q(max_freq_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[20] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [20]),
        .Q(max_freq_diff[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.max_freq_diff_reg[20]_i_1 
       (.CI(\det_signal.max_freq_diff_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.max_freq_diff_reg[20]_i_1_CO_UNCONNECTED [7:4],\det_signal.max_freq_diff_reg[20]_i_1_n_4 ,\det_signal.max_freq_diff_reg[20]_i_1_n_5 ,\det_signal.max_freq_diff_reg[20]_i_1_n_6 ,\det_signal.max_freq_diff_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,freq[19:16]}),
        .O({\NLW_det_signal.max_freq_diff_reg[20]_i_1_O_UNCONNECTED [7:5],\det_signal.max_freq_diff_reg0 [20:16]}),
        .S({1'b0,1'b0,1'b0,1'b1,\det_signal.max_freq_diff[20]_i_2_n_0 ,\det_signal.max_freq_diff[20]_i_3_n_0 ,\det_signal.max_freq_diff[20]_i_4_n_0 ,\det_signal.max_freq_diff[20]_i_5_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[2] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [2]),
        .Q(max_freq_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[3] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [3]),
        .Q(max_freq_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[4] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [4]),
        .Q(max_freq_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[5] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [5]),
        .Q(max_freq_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[6] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [6]),
        .Q(max_freq_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[7] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [7]),
        .Q(max_freq_diff[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.max_freq_diff_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.max_freq_diff_reg[7]_i_1_n_0 ,\det_signal.max_freq_diff_reg[7]_i_1_n_1 ,\det_signal.max_freq_diff_reg[7]_i_1_n_2 ,\det_signal.max_freq_diff_reg[7]_i_1_n_3 ,\det_signal.max_freq_diff_reg[7]_i_1_n_4 ,\det_signal.max_freq_diff_reg[7]_i_1_n_5 ,\det_signal.max_freq_diff_reg[7]_i_1_n_6 ,\det_signal.max_freq_diff_reg[7]_i_1_n_7 }),
        .DI(freq[7:0]),
        .O(\det_signal.max_freq_diff_reg0 [7:0]),
        .S({\det_signal.max_freq_diff[7]_i_2_n_0 ,\det_signal.max_freq_diff[7]_i_3_n_0 ,\det_signal.max_freq_diff[7]_i_4_n_0 ,\det_signal.max_freq_diff[7]_i_5_n_0 ,\det_signal.max_freq_diff[7]_i_6_n_0 ,\det_signal.max_freq_diff[7]_i_7_n_0 ,\det_signal.max_freq_diff[7]_i_8_n_0 ,\det_signal.max_freq_diff[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[8] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [8]),
        .Q(max_freq_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_diff_reg[9] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.max_freq_diff_reg0 [9]),
        .Q(max_freq_diff[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[0] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[0]_i_1_n_0 ),
        .Q(max_freq[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[10] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[10]_i_1_n_0 ),
        .Q(max_freq[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[11] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[11]_i_1_n_0 ),
        .Q(max_freq[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[12] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[12]_i_1_n_0 ),
        .Q(max_freq[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[13] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[13]_i_1_n_0 ),
        .Q(max_freq[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[14] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[14]_i_1_n_0 ),
        .Q(max_freq[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[15] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[15]_i_1_n_0 ),
        .Q(max_freq[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[16] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[16]_i_1_n_0 ),
        .Q(max_freq[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[17] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[17]_i_1_n_0 ),
        .Q(max_freq[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[18] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[18]_i_1_n_0 ),
        .Q(max_freq[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[19] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[19]_i_1_n_0 ),
        .Q(max_freq[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[1] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[1]_i_1_n_0 ),
        .Q(max_freq[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[2] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[2]_i_1_n_0 ),
        .Q(max_freq[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[3] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[3]_i_1_n_0 ),
        .Q(max_freq[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[4] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[4]_i_1_n_0 ),
        .Q(max_freq[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[5] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[5]_i_1_n_0 ),
        .Q(max_freq[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[6] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[6]_i_1_n_0 ),
        .Q(max_freq[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[7] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[7]_i_1_n_0 ),
        .Q(max_freq[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[8] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[8]_i_1_n_0 ),
        .Q(max_freq[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.max_freq_reg[9] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.max_freq[9]_i_1_n_0 ),
        .Q(max_freq[9]),
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
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[0]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[0]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[0]),
        .O(\det_signal.min_freq[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[10]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[10]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[10]),
        .O(\det_signal.min_freq[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[11]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[11]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[11]),
        .O(\det_signal.min_freq[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[12]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[12]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[12]),
        .O(\det_signal.min_freq[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[13]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[13]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[13]),
        .O(\det_signal.min_freq[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[14]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[14]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[14]),
        .O(\det_signal.min_freq[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[15]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[15]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[15]),
        .O(\det_signal.min_freq[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[16]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[16]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[16]),
        .O(\det_signal.min_freq[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[17]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[17]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[17]),
        .O(\det_signal.min_freq[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[18]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[18]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[18]),
        .O(\det_signal.min_freq[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[19]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[19]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[19]),
        .O(\det_signal.min_freq[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[1]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[1]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[1]),
        .O(\det_signal.min_freq[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[2]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[2]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[2]),
        .O(\det_signal.min_freq[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[3]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[3]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[3]),
        .O(\det_signal.min_freq[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[4]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[4]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[4]),
        .O(\det_signal.min_freq[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[5]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[5]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[5]),
        .O(\det_signal.min_freq[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[6]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[6]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[6]),
        .O(\det_signal.min_freq[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[7]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[7]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[7]),
        .O(\det_signal.min_freq[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[8]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[8]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[8]),
        .O(\det_signal.min_freq[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000040)) 
    \det_signal.min_freq[9]_i_1 
       (.I0(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I1(config_data[9]),
        .I2(config_adr[0]),
        .I3(config_adr[1]),
        .I4(config_adr[2]),
        .I5(min_freq[9]),
        .O(\det_signal.min_freq[9]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_2 
       (.I0(freq[15]),
        .I1(min_freq[15]),
        .O(\det_signal.min_freq_diff[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_3 
       (.I0(freq[14]),
        .I1(min_freq[14]),
        .O(\det_signal.min_freq_diff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_4 
       (.I0(freq[13]),
        .I1(min_freq[13]),
        .O(\det_signal.min_freq_diff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_5 
       (.I0(freq[12]),
        .I1(min_freq[12]),
        .O(\det_signal.min_freq_diff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_6 
       (.I0(freq[11]),
        .I1(min_freq[11]),
        .O(\det_signal.min_freq_diff[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_7 
       (.I0(freq[10]),
        .I1(min_freq[10]),
        .O(\det_signal.min_freq_diff[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_8 
       (.I0(freq[9]),
        .I1(min_freq[9]),
        .O(\det_signal.min_freq_diff[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[15]_i_9 
       (.I0(freq[8]),
        .I1(min_freq[8]),
        .O(\det_signal.min_freq_diff[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    \det_signal.min_freq_diff[20]_i_1 
       (.I0(div_counter[0]),
        .I1(div_counter[1]),
        .I2(div_counter[5]),
        .I3(div_counter[4]),
        .I4(div_counter[3]),
        .I5(div_counter[2]),
        .O(max_freq_diff__0));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[20]_i_3 
       (.I0(freq[19]),
        .I1(min_freq[19]),
        .O(\det_signal.min_freq_diff[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[20]_i_4 
       (.I0(freq[18]),
        .I1(min_freq[18]),
        .O(\det_signal.min_freq_diff[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[20]_i_5 
       (.I0(freq[17]),
        .I1(min_freq[17]),
        .O(\det_signal.min_freq_diff[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[20]_i_6 
       (.I0(freq[16]),
        .I1(min_freq[16]),
        .O(\det_signal.min_freq_diff[20]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_2 
       (.I0(freq[7]),
        .I1(min_freq[7]),
        .O(\det_signal.min_freq_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_3 
       (.I0(freq[6]),
        .I1(min_freq[6]),
        .O(\det_signal.min_freq_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_4 
       (.I0(freq[5]),
        .I1(min_freq[5]),
        .O(\det_signal.min_freq_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_5 
       (.I0(freq[4]),
        .I1(min_freq[4]),
        .O(\det_signal.min_freq_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_6 
       (.I0(freq[3]),
        .I1(min_freq[3]),
        .O(\det_signal.min_freq_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_7 
       (.I0(freq[2]),
        .I1(min_freq[2]),
        .O(\det_signal.min_freq_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_8 
       (.I0(freq[1]),
        .I1(min_freq[1]),
        .O(\det_signal.min_freq_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_freq_diff[7]_i_9 
       (.I0(freq[0]),
        .I1(min_freq[0]),
        .O(\det_signal.min_freq_diff[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[0] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [0]),
        .Q(min_freq_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[10] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [10]),
        .Q(min_freq_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[11] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [11]),
        .Q(min_freq_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[12] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [12]),
        .Q(min_freq_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[13] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [13]),
        .Q(min_freq_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[14] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [14]),
        .Q(min_freq_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[15] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [15]),
        .Q(min_freq_diff[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.min_freq_diff_reg[15]_i_1 
       (.CI(\det_signal.min_freq_diff_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.min_freq_diff_reg[15]_i_1_n_0 ,\det_signal.min_freq_diff_reg[15]_i_1_n_1 ,\det_signal.min_freq_diff_reg[15]_i_1_n_2 ,\det_signal.min_freq_diff_reg[15]_i_1_n_3 ,\det_signal.min_freq_diff_reg[15]_i_1_n_4 ,\det_signal.min_freq_diff_reg[15]_i_1_n_5 ,\det_signal.min_freq_diff_reg[15]_i_1_n_6 ,\det_signal.min_freq_diff_reg[15]_i_1_n_7 }),
        .DI(freq[15:8]),
        .O(\det_signal.min_freq_diff_reg0 [15:8]),
        .S({\det_signal.min_freq_diff[15]_i_2_n_0 ,\det_signal.min_freq_diff[15]_i_3_n_0 ,\det_signal.min_freq_diff[15]_i_4_n_0 ,\det_signal.min_freq_diff[15]_i_5_n_0 ,\det_signal.min_freq_diff[15]_i_6_n_0 ,\det_signal.min_freq_diff[15]_i_7_n_0 ,\det_signal.min_freq_diff[15]_i_8_n_0 ,\det_signal.min_freq_diff[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[16] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [16]),
        .Q(min_freq_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[17] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [17]),
        .Q(min_freq_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[18] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [18]),
        .Q(min_freq_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[19] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [19]),
        .Q(min_freq_diff[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[1] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [1]),
        .Q(min_freq_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[20] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [20]),
        .Q(min_freq_diff[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.min_freq_diff_reg[20]_i_2 
       (.CI(\det_signal.min_freq_diff_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.min_freq_diff_reg[20]_i_2_CO_UNCONNECTED [7:4],\det_signal.min_freq_diff_reg[20]_i_2_n_4 ,\det_signal.min_freq_diff_reg[20]_i_2_n_5 ,\det_signal.min_freq_diff_reg[20]_i_2_n_6 ,\det_signal.min_freq_diff_reg[20]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,freq[19:16]}),
        .O({\NLW_det_signal.min_freq_diff_reg[20]_i_2_O_UNCONNECTED [7:5],\det_signal.min_freq_diff_reg0 [20:16]}),
        .S({1'b0,1'b0,1'b0,1'b1,\det_signal.min_freq_diff[20]_i_3_n_0 ,\det_signal.min_freq_diff[20]_i_4_n_0 ,\det_signal.min_freq_diff[20]_i_5_n_0 ,\det_signal.min_freq_diff[20]_i_6_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[2] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [2]),
        .Q(min_freq_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[3] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [3]),
        .Q(min_freq_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[4] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [4]),
        .Q(min_freq_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[5] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [5]),
        .Q(min_freq_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[6] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [6]),
        .Q(min_freq_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[7] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [7]),
        .Q(min_freq_diff[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.min_freq_diff_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\det_signal.min_freq_diff_reg[7]_i_1_n_0 ,\det_signal.min_freq_diff_reg[7]_i_1_n_1 ,\det_signal.min_freq_diff_reg[7]_i_1_n_2 ,\det_signal.min_freq_diff_reg[7]_i_1_n_3 ,\det_signal.min_freq_diff_reg[7]_i_1_n_4 ,\det_signal.min_freq_diff_reg[7]_i_1_n_5 ,\det_signal.min_freq_diff_reg[7]_i_1_n_6 ,\det_signal.min_freq_diff_reg[7]_i_1_n_7 }),
        .DI(freq[7:0]),
        .O(\det_signal.min_freq_diff_reg0 [7:0]),
        .S({\det_signal.min_freq_diff[7]_i_2_n_0 ,\det_signal.min_freq_diff[7]_i_3_n_0 ,\det_signal.min_freq_diff[7]_i_4_n_0 ,\det_signal.min_freq_diff[7]_i_5_n_0 ,\det_signal.min_freq_diff[7]_i_6_n_0 ,\det_signal.min_freq_diff[7]_i_7_n_0 ,\det_signal.min_freq_diff[7]_i_8_n_0 ,\det_signal.min_freq_diff[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[8] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [8]),
        .Q(min_freq_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_diff_reg[9] 
       (.C(clk),
        .CE(max_freq_diff__0),
        .D(\det_signal.min_freq_diff_reg0 [9]),
        .Q(min_freq_diff[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[0] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[0]_i_1_n_0 ),
        .Q(min_freq[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[10] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[10]_i_1_n_0 ),
        .Q(min_freq[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[11] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[11]_i_1_n_0 ),
        .Q(min_freq[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[12] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[12]_i_1_n_0 ),
        .Q(min_freq[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[13] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[13]_i_1_n_0 ),
        .Q(min_freq[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[14] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[14]_i_1_n_0 ),
        .Q(min_freq[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[15] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[15]_i_1_n_0 ),
        .Q(min_freq[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[16] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[16]_i_1_n_0 ),
        .Q(min_freq[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[17] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[17]_i_1_n_0 ),
        .Q(min_freq[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[18] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[18]_i_1_n_0 ),
        .Q(min_freq[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[19] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[19]_i_1_n_0 ),
        .Q(min_freq[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[1] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[1]_i_1_n_0 ),
        .Q(min_freq[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[2] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[2]_i_1_n_0 ),
        .Q(min_freq[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[3] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[3]_i_1_n_0 ),
        .Q(min_freq[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[4] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[4]_i_1_n_0 ),
        .Q(min_freq[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[5] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[5]_i_1_n_0 ),
        .Q(min_freq[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[6] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[6]_i_1_n_0 ),
        .Q(min_freq[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[7] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[7]_i_1_n_0 ),
        .Q(min_freq[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[8] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[8]_i_1_n_0 ),
        .Q(min_freq[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.min_freq_reg[9] 
       (.C(clk),
        .CE(config_wr),
        .D(\det_signal.min_freq[9]_i_1_n_0 ),
        .Q(min_freq[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.min_samples[0]_i_1 
       (.I0(config_data[0]),
        .O(min_samples0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_samples[1]_i_1 
       (.I0(config_data[0]),
        .I1(config_data[1]),
        .O(\det_signal.min_samples[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \det_signal.min_samples[2]_i_1 
       (.I0(config_data[1]),
        .I1(config_data[0]),
        .I2(config_data[2]),
        .O(\det_signal.min_samples[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \det_signal.min_samples[3]_i_1 
       (.I0(config_data[2]),
        .I1(config_data[0]),
        .I2(config_data[1]),
        .I3(config_data[3]),
        .O(\det_signal.min_samples[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \det_signal.min_samples[4]_i_1 
       (.I0(config_data[3]),
        .I1(config_data[1]),
        .I2(config_data[0]),
        .I3(config_data[2]),
        .I4(config_data[4]),
        .O(\det_signal.min_samples[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \det_signal.min_samples[5]_i_1 
       (.I0(config_data[4]),
        .I1(config_data[2]),
        .I2(config_data[0]),
        .I3(config_data[1]),
        .I4(config_data[3]),
        .I5(config_data[5]),
        .O(\det_signal.min_samples[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \det_signal.min_samples[6]_i_1 
       (.I0(\det_signal.min_samples[8]_i_3_n_0 ),
        .I1(config_data[6]),
        .O(\det_signal.min_samples[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \det_signal.min_samples[7]_i_1 
       (.I0(config_data[6]),
        .I1(\det_signal.min_samples[8]_i_3_n_0 ),
        .I2(config_data[7]),
        .O(\det_signal.min_samples[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \det_signal.min_samples[8]_i_1 
       (.I0(config_wr),
        .I1(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I2(config_adr[2]),
        .I3(config_adr[0]),
        .I4(config_adr[1]),
        .O(min_samples));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \det_signal.min_samples[8]_i_2 
       (.I0(config_data[7]),
        .I1(\det_signal.min_samples[8]_i_3_n_0 ),
        .I2(config_data[6]),
        .I3(config_data[8]),
        .O(\det_signal.min_samples[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \det_signal.min_samples[8]_i_3 
       (.I0(config_data[4]),
        .I1(config_data[2]),
        .I2(config_data[0]),
        .I3(config_data[1]),
        .I4(config_data[3]),
        .I5(config_data[5]),
        .O(\det_signal.min_samples[8]_i_3_n_0 ));
  FDRE \det_signal.min_samples_reg[0] 
       (.C(clk),
        .CE(min_samples),
        .D(min_samples0),
        .Q(\det_signal.min_samples_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[1] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[1]_i_1_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[2] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[2]_i_1_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[3] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[3]_i_1_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[4] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[4]_i_1_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[5] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[5]_i_1_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[6] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[6]_i_1_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[7] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[7]_i_1_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \det_signal.min_samples_reg[8] 
       (.C(clk),
        .CE(min_samples),
        .D(\det_signal.min_samples[8]_i_2_n_0 ),
        .Q(\det_signal.min_samples_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[52]),
        .Q(phase_E[0]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[62]),
        .Q(phase_E[10]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[63]),
        .Q(phase_E[11]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[64]),
        .Q(phase_E[12]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[65]),
        .Q(phase_E[13]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[66]),
        .Q(phase_E[14]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[67]),
        .Q(phase_E[15]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[16] 
       (.C(clk),
        .CE(active),
        .D(data[68]),
        .Q(phase_E[16]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[17] 
       (.C(clk),
        .CE(active),
        .D(data[69]),
        .Q(phase_E[17]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[18] 
       (.C(clk),
        .CE(active),
        .D(data[70]),
        .Q(phase_E[18]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[19] 
       (.C(clk),
        .CE(active),
        .D(data[71]),
        .Q(phase_E[19]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[53]),
        .Q(phase_E[1]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[54]),
        .Q(phase_E[2]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[55]),
        .Q(phase_E[3]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[56]),
        .Q(phase_E[4]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[57]),
        .Q(phase_E[5]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[58]),
        .Q(phase_E[6]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[59]),
        .Q(phase_E[7]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[60]),
        .Q(phase_E[8]),
        .R(1'b0));
  FDRE \det_signal.phase_E_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[61]),
        .Q(phase_E[9]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[16]),
        .Q(phase_N[0]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[26]),
        .Q(phase_N[10]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[27]),
        .Q(phase_N[11]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[28]),
        .Q(phase_N[12]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[29]),
        .Q(phase_N[13]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[30]),
        .Q(phase_N[14]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[31]),
        .Q(phase_N[15]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[16] 
       (.C(clk),
        .CE(active),
        .D(data[32]),
        .Q(phase_N[16]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[17] 
       (.C(clk),
        .CE(active),
        .D(data[33]),
        .Q(phase_N[17]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[18] 
       (.C(clk),
        .CE(active),
        .D(data[34]),
        .Q(phase_N[18]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[19] 
       (.C(clk),
        .CE(active),
        .D(data[35]),
        .Q(phase_N[19]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[17]),
        .Q(phase_N[1]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[18]),
        .Q(phase_N[2]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[19]),
        .Q(phase_N[3]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[20]),
        .Q(phase_N[4]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[21]),
        .Q(phase_N[5]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[22]),
        .Q(phase_N[6]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[23]),
        .Q(phase_N[7]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[24]),
        .Q(phase_N[8]),
        .R(1'b0));
  FDRE \det_signal.phase_N_reg[9] 
       (.C(clk),
        .CE(active),
        .D(data[25]),
        .Q(phase_N[9]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[0] 
       (.C(clk),
        .CE(active),
        .D(data[88]),
        .Q(phase_W[0]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[10] 
       (.C(clk),
        .CE(active),
        .D(data[98]),
        .Q(phase_W[10]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[11] 
       (.C(clk),
        .CE(active),
        .D(data[99]),
        .Q(phase_W[11]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[12] 
       (.C(clk),
        .CE(active),
        .D(data[100]),
        .Q(phase_W[12]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[13] 
       (.C(clk),
        .CE(active),
        .D(data[101]),
        .Q(phase_W[13]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[14] 
       (.C(clk),
        .CE(active),
        .D(data[102]),
        .Q(phase_W[14]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[15] 
       (.C(clk),
        .CE(active),
        .D(data[103]),
        .Q(phase_W[15]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[16] 
       (.C(clk),
        .CE(active),
        .D(data[104]),
        .Q(phase_W[16]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[17] 
       (.C(clk),
        .CE(active),
        .D(data[105]),
        .Q(phase_W[17]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[18] 
       (.C(clk),
        .CE(active),
        .D(data[106]),
        .Q(phase_W[18]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[19] 
       (.C(clk),
        .CE(active),
        .D(data[107]),
        .Q(phase_W[19]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[1] 
       (.C(clk),
        .CE(active),
        .D(data[89]),
        .Q(phase_W[1]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[2] 
       (.C(clk),
        .CE(active),
        .D(data[90]),
        .Q(phase_W[2]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[3] 
       (.C(clk),
        .CE(active),
        .D(data[91]),
        .Q(phase_W[3]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[4] 
       (.C(clk),
        .CE(active),
        .D(data[92]),
        .Q(phase_W[4]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[5] 
       (.C(clk),
        .CE(active),
        .D(data[93]),
        .Q(phase_W[5]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[6] 
       (.C(clk),
        .CE(active),
        .D(data[94]),
        .Q(phase_W[6]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[7] 
       (.C(clk),
        .CE(active),
        .D(data[95]),
        .Q(phase_W[7]),
        .R(1'b0));
  FDRE \det_signal.phase_W_reg[8] 
       (.C(clk),
        .CE(active),
        .D(data[96]),
        .Q(phase_W[8]),
        .R(1'b0));
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
  LUT6 #(
    .INIT(64'hBFFFFFFB80000008)) 
    \det_signal.proc_done_i_1 
       (.I0(div_counter[5]),
        .I1(\det_signal.proc_done_i_2_n_0 ),
        .I2(div_counter[4]),
        .I3(div_counter[3]),
        .I4(div_counter[2]),
        .I5(proc_done),
        .O(\det_signal.proc_done_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h90000009)) 
    \det_signal.proc_done_i_2 
       (.I0(div_counter[4]),
        .I1(div_counter[5]),
        .I2(div_counter[1]),
        .I3(div_counter[0]),
        .I4(div_counter[2]),
        .O(\det_signal.proc_done_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.proc_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.proc_done_i_1_n_0 ),
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
    \det_signal.sample_count[0]_i_1 
       (.I0(sample_count[0]),
        .O(\det_signal.sample_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.sample_count[1]_i_1 
       (.I0(sample_count[0]),
        .I1(sample_count[1]),
        .O(\det_signal.sample_count[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \det_signal.sample_count[2]_i_1 
       (.I0(sample_count[0]),
        .I1(sample_count[1]),
        .I2(sample_count[2]),
        .O(\det_signal.sample_count[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \det_signal.sample_count[3]_i_1 
       (.I0(sample_count[1]),
        .I1(sample_count[0]),
        .I2(sample_count[2]),
        .I3(sample_count[3]),
        .O(\det_signal.sample_count[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \det_signal.sample_count[4]_i_1 
       (.I0(sample_count[2]),
        .I1(sample_count[0]),
        .I2(sample_count[1]),
        .I3(sample_count[3]),
        .I4(sample_count[4]),
        .O(\det_signal.sample_count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \det_signal.sample_count[5]_i_1 
       (.I0(sample_count[3]),
        .I1(sample_count[1]),
        .I2(sample_count[0]),
        .I3(sample_count[2]),
        .I4(sample_count[4]),
        .I5(sample_count[5]),
        .O(\det_signal.sample_count[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.sample_count[6]_i_1 
       (.I0(\det_signal.sample_count[8]_i_3_n_0 ),
        .I1(sample_count[6]),
        .O(\det_signal.sample_count[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \det_signal.sample_count[7]_i_1 
       (.I0(\det_signal.sample_count[8]_i_3_n_0 ),
        .I1(sample_count[6]),
        .I2(sample_count[7]),
        .O(\det_signal.sample_count[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.sample_count[8]_i_1 
       (.I0(has_signal),
        .O(dsp_phase_W__0));
  LUT4 #(
    .INIT(16'h7F80)) 
    \det_signal.sample_count[8]_i_2 
       (.I0(sample_count[6]),
        .I1(\det_signal.sample_count[8]_i_3_n_0 ),
        .I2(sample_count[7]),
        .I3(sample_count[8]),
        .O(\det_signal.sample_count[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \det_signal.sample_count[8]_i_3 
       (.I0(sample_count[5]),
        .I1(sample_count[3]),
        .I2(sample_count[1]),
        .I3(sample_count[0]),
        .I4(sample_count[2]),
        .I5(sample_count[4]),
        .O(\det_signal.sample_count[8]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF800080008000)) 
    \det_signal.sample_count_ok_i_1 
       (.I0(\det_signal.sample_count_ok_i_2_n_0 ),
        .I1(\det_signal.sample_count_ok_i_3_n_0 ),
        .I2(\det_signal.sample_count_ok_i_4_n_0 ),
        .I3(\det_signal.sample_count_ok_i_5_n_0 ),
        .I4(has_signal),
        .I5(sample_count_ok),
        .O(\det_signal.sample_count_ok_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \det_signal.sample_count_ok_i_2 
       (.I0(\det_signal.min_samples_reg_n_0_[1] ),
        .I1(sample_count[1]),
        .I2(\det_signal.min_samples_reg_n_0_[0] ),
        .I3(sample_count[0]),
        .I4(sample_count[2]),
        .I5(\det_signal.min_samples_reg_n_0_[2] ),
        .O(\det_signal.sample_count_ok_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \det_signal.sample_count_ok_i_3 
       (.I0(sample_count[7]),
        .I1(\det_signal.min_samples_reg_n_0_[7] ),
        .I2(has_signal),
        .O(\det_signal.sample_count_ok_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \det_signal.sample_count_ok_i_4 
       (.I0(sample_count[8]),
        .I1(\det_signal.min_samples_reg_n_0_[8] ),
        .I2(sample_count[6]),
        .I3(\det_signal.min_samples_reg_n_0_[6] ),
        .O(\det_signal.sample_count_ok_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \det_signal.sample_count_ok_i_5 
       (.I0(\det_signal.min_samples_reg_n_0_[4] ),
        .I1(sample_count[4]),
        .I2(\det_signal.min_samples_reg_n_0_[3] ),
        .I3(sample_count[3]),
        .I4(sample_count[5]),
        .I5(\det_signal.min_samples_reg_n_0_[5] ),
        .O(\det_signal.sample_count_ok_i_5_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_ok_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count_ok_i_1_n_0 ),
        .Q(sample_count_ok),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[0]_i_1_n_0 ),
        .Q(sample_count[0]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[1]_i_1_n_0 ),
        .Q(sample_count[1]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[2]_i_1_n_0 ),
        .Q(sample_count[2]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[3]_i_1_n_0 ),
        .Q(sample_count[3]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[4]_i_1_n_0 ),
        .Q(sample_count[4]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[5]_i_1_n_0 ),
        .Q(sample_count[5]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[6]_i_1_n_0 ),
        .Q(sample_count[6]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[7]_i_1_n_0 ),
        .Q(sample_count[7]),
        .R(dsp_phase_W__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.sample_count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.sample_count[8]_i_2_n_0 ),
        .Q(sample_count[8]),
        .R(dsp_phase_W__0));
  LUT6 #(
    .INIT(64'h00000000FFAE00AE)) 
    \det_signal.signal_done_i_1 
       (.I0(signal_done),
        .I1(max_freq_diff[20]),
        .I2(min_freq_diff[20]),
        .I3(div_counter1),
        .I4(signal_done),
        .I5(signal_done__0),
        .O(\det_signal.signal_done_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \det_signal.signal_done_i_2 
       (.I0(div_counter[2]),
        .I1(div_counter[3]),
        .I2(div_counter[0]),
        .I3(div_counter[1]),
        .I4(div_counter[5]),
        .I5(div_counter[4]),
        .O(signal_done__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.signal_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.signal_done_i_1_n_0 ),
        .Q(signal_done),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[0] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[0]),
        .Q(signal_env_E[0]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[10] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[10]),
        .Q(signal_env_E[10]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[11] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[11]),
        .Q(signal_env_E[11]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[12] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[12]),
        .Q(signal_env_E[12]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[13] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[13]),
        .Q(signal_env_E[13]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[14] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[14]),
        .Q(signal_env_E[14]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[15] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[15]),
        .Q(signal_env_E[15]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[1] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[1]),
        .Q(signal_env_E[1]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[2] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[2]),
        .Q(signal_env_E[2]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[3] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[3]),
        .Q(signal_env_E[3]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[4] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[4]),
        .Q(signal_env_E[4]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[5] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[5]),
        .Q(signal_env_E[5]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[6] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[6]),
        .Q(signal_env_E[6]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[7] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[7]),
        .Q(signal_env_E[7]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[8] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[8]),
        .Q(signal_env_E[8]),
        .R(1'b0));
  FDRE \det_signal.signal_env_E_reg[9] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_E[9]),
        .Q(signal_env_E[9]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[0] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[0]),
        .Q(signal_env_N[0]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[10] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[10]),
        .Q(signal_env_N[10]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[11] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[11]),
        .Q(signal_env_N[11]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[12] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[12]),
        .Q(signal_env_N[12]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[13] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[13]),
        .Q(signal_env_N[13]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[14] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[14]),
        .Q(signal_env_N[14]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[15] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[15]),
        .Q(signal_env_N[15]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[1] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[1]),
        .Q(signal_env_N[1]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[2] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[2]),
        .Q(signal_env_N[2]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[3] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[3]),
        .Q(signal_env_N[3]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[4] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[4]),
        .Q(signal_env_N[4]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[5] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[5]),
        .Q(signal_env_N[5]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[6] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[6]),
        .Q(signal_env_N[6]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[7] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[7]),
        .Q(signal_env_N[7]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[8] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[8]),
        .Q(signal_env_N[8]),
        .R(1'b0));
  FDRE \det_signal.signal_env_N_reg[9] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_N[9]),
        .Q(signal_env_N[9]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[0] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[0]),
        .Q(signal_env_W[0]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[10] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[10]),
        .Q(signal_env_W[10]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[11] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[11]),
        .Q(signal_env_W[11]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[12] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[12]),
        .Q(signal_env_W[12]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[13] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[13]),
        .Q(signal_env_W[13]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[14] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[14]),
        .Q(signal_env_W[14]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[15] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[15]),
        .Q(signal_env_W[15]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[1] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[1]),
        .Q(signal_env_W[1]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[2] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[2]),
        .Q(signal_env_W[2]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[3] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[3]),
        .Q(signal_env_W[3]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[4] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[4]),
        .Q(signal_env_W[4]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[5] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[5]),
        .Q(signal_env_W[5]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[6] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[6]),
        .Q(signal_env_W[6]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[7] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[7]),
        .Q(signal_env_W[7]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[8] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[8]),
        .Q(signal_env_W[8]),
        .R(1'b0));
  FDRE \det_signal.signal_env_W_reg[9] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(avg_env_W[9]),
        .Q(signal_env_W[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h04)) 
    \det_signal.signal_freq[19]_i_1 
       (.I0(min_freq_diff[20]),
        .I1(max_freq_diff[20]),
        .I2(div_counter1),
        .O(\det_signal.signal_freq[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \det_signal.signal_freq[19]_i_2 
       (.I0(div_counter[5]),
        .I1(div_counter[4]),
        .I2(div_counter[3]),
        .I3(div_counter[2]),
        .I4(div_counter[1]),
        .I5(div_counter[0]),
        .O(div_counter1));
  FDRE \det_signal.signal_freq_reg[0] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[0]),
        .Q(signal_freq[0]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[10] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[10]),
        .Q(signal_freq[10]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[11] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[11]),
        .Q(signal_freq[11]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[12] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[12]),
        .Q(signal_freq[12]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[13] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[13]),
        .Q(signal_freq[13]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[14] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[14]),
        .Q(signal_freq[14]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[15] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[15]),
        .Q(signal_freq[15]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[16] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[16]),
        .Q(signal_freq[16]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[17] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[17]),
        .Q(signal_freq[17]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[18] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[18]),
        .Q(signal_freq[18]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[19] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[19]),
        .Q(signal_freq[19]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[1] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[1]),
        .Q(signal_freq[1]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[2] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[2]),
        .Q(signal_freq[2]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[3] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[3]),
        .Q(signal_freq[3]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[4] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[4]),
        .Q(signal_freq[4]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[5] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[5]),
        .Q(signal_freq[5]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[6] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[6]),
        .Q(signal_freq[6]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[7] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[7]),
        .Q(signal_freq[7]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[8] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[8]),
        .Q(signal_freq[8]),
        .R(1'b0));
  FDRE \det_signal.signal_freq_reg[9] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(freq[9]),
        .Q(signal_freq[9]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[0] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[32]),
        .Q(signal_phase_EW[0]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[10] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[42]),
        .Q(signal_phase_EW[10]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[11] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[43]),
        .Q(signal_phase_EW[11]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[12] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[44]),
        .Q(signal_phase_EW[12]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[13] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[45]),
        .Q(signal_phase_EW[13]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[14] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[46]),
        .Q(signal_phase_EW[14]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[15] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[47]),
        .Q(signal_phase_EW[15]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[16] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[48]),
        .Q(signal_phase_EW[16]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[17] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[49]),
        .Q(signal_phase_EW[17]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[18] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[50]),
        .Q(signal_phase_EW[18]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[19] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[51]),
        .Q(signal_phase_EW[19]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[1] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[33]),
        .Q(signal_phase_EW[1]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[2] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[34]),
        .Q(signal_phase_EW[2]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[3] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[35]),
        .Q(signal_phase_EW[3]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[4] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[36]),
        .Q(signal_phase_EW[4]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[5] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[37]),
        .Q(signal_phase_EW[5]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[6] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[38]),
        .Q(signal_phase_EW[6]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[7] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[39]),
        .Q(signal_phase_EW[7]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[8] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[40]),
        .Q(signal_phase_EW[8]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_EW_reg[9] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_EW[41]),
        .Q(signal_phase_EW[9]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[0] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[32]),
        .Q(signal_phase_NE[0]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[10] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[42]),
        .Q(signal_phase_NE[10]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[11] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[43]),
        .Q(signal_phase_NE[11]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[12] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[44]),
        .Q(signal_phase_NE[12]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[13] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[45]),
        .Q(signal_phase_NE[13]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[14] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[46]),
        .Q(signal_phase_NE[14]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[15] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[47]),
        .Q(signal_phase_NE[15]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[16] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[48]),
        .Q(signal_phase_NE[16]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[17] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[49]),
        .Q(signal_phase_NE[17]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[18] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[50]),
        .Q(signal_phase_NE[18]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[19] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[51]),
        .Q(signal_phase_NE[19]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[1] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[33]),
        .Q(signal_phase_NE[1]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[2] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[34]),
        .Q(signal_phase_NE[2]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[3] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[35]),
        .Q(signal_phase_NE[3]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[4] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[36]),
        .Q(signal_phase_NE[4]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[5] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[37]),
        .Q(signal_phase_NE[5]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[6] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[38]),
        .Q(signal_phase_NE[6]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[7] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[39]),
        .Q(signal_phase_NE[7]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[8] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[40]),
        .Q(signal_phase_NE[8]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NE_reg[9] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NE[41]),
        .Q(signal_phase_NE[9]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[0] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[32]),
        .Q(signal_phase_NW[0]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[10] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[42]),
        .Q(signal_phase_NW[10]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[11] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[43]),
        .Q(signal_phase_NW[11]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[12] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[44]),
        .Q(signal_phase_NW[12]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[13] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[45]),
        .Q(signal_phase_NW[13]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[14] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[46]),
        .Q(signal_phase_NW[14]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[15] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[47]),
        .Q(signal_phase_NW[15]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[16] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[48]),
        .Q(signal_phase_NW[16]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[17] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[49]),
        .Q(signal_phase_NW[17]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[18] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[50]),
        .Q(signal_phase_NW[18]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[19] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[51]),
        .Q(signal_phase_NW[19]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[1] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[33]),
        .Q(signal_phase_NW[1]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[2] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[34]),
        .Q(signal_phase_NW[2]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[3] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[35]),
        .Q(signal_phase_NW[3]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[4] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[36]),
        .Q(signal_phase_NW[4]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[5] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[37]),
        .Q(signal_phase_NW[5]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[6] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[38]),
        .Q(signal_phase_NW[6]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[7] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[39]),
        .Q(signal_phase_NW[7]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[8] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[40]),
        .Q(signal_phase_NW[8]),
        .R(1'b0));
  FDRE \det_signal.signal_phase_NW_reg[9] 
       (.C(clk),
        .CE(\det_signal.signal_freq[19]_i_1_n_0 ),
        .D(div_phase_NW[41]),
        .Q(signal_phase_NW[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00A8)) 
    \det_signal.start_proc_i_1 
       (.I0(\det_signal.start_proc_i_2_n_0 ),
        .I1(sample_count_ok),
        .I2(start_proc),
        .I3(start_proc6_out),
        .O(\det_signal.start_proc_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8808)) 
    \det_signal.start_proc_i_2 
       (.I0(\det_signal.run_reg[2]__0 ),
        .I1(has_signal),
        .I2(\det_signal.valid_count_reg_n_0 ),
        .I3(\det_signal.err_ov_reg_n_0 ),
        .O(\det_signal.start_proc_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.start_proc_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.start_proc_i_1_n_0 ),
        .Q(start_proc),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFAFAFACAFAFAFAFA)) 
    \det_signal.valid_count_i_1 
       (.I0(\det_signal.valid_count_reg_n_0 ),
        .I1(sample_count[0]),
        .I2(\det_signal.run_reg[1]__0 ),
        .I3(sample_count[2]),
        .I4(sample_count[1]),
        .I5(\det_signal.valid_count_i_2_n_0 ),
        .O(\det_signal.valid_count_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \det_signal.valid_count_i_2 
       (.I0(sample_count[4]),
        .I1(sample_count[3]),
        .I2(sample_count[5]),
        .I3(sample_count[6]),
        .I4(sample_count[8]),
        .I5(sample_count[7]),
        .O(\det_signal.valid_count_i_2_n_0 ));
  FDRE \det_signal.valid_count_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.valid_count_i_1_n_0 ),
        .Q(\det_signal.valid_count_reg_n_0 ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.valid_env_i_1 
       (.I0(p_0_in24_in),
        .I1(p_2_in25_in),
        .I2(p_1_in26_in),
        .O(\det_signal.valid_env_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.valid_env_reg 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.valid_env_reg0 ),
        .Q(valid_env),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.valid_err_i_1 
       (.I0(p_0_in21_in),
        .I1(p_2_in22_in),
        .I2(p_1_in23_in),
        .O(\det_signal.valid_err_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.valid_err_reg 
       (.C(clk),
        .CE(\det_signal.run_reg[1]__0 ),
        .D(\det_signal.valid_err_reg0 ),
        .Q(valid_err),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "div_env,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_env div_env_E_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_env_E_i_m_axis_dout_tdata_UNCONNECTED[39:32],avg_env_E,NLW_div_env_E_i_m_axis_dout_tdata_UNCONNECTED[15:0]}),
        .m_axis_dout_tvalid(valid_env_E),
        .s_axis_dividend_tdata(div_env_sum_E[23:0]),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.div_sample_count_reg_n_0_[8] ,\det_signal.div_sample_count_reg_n_0_[7] ,\det_signal.div_sample_count_reg_n_0_[6] ,\det_signal.div_sample_count_reg_n_0_[5] ,\det_signal.div_sample_count_reg_n_0_[4] ,\det_signal.div_sample_count_reg_n_0_[3] ,\det_signal.div_sample_count_reg_n_0_[2] ,\det_signal.div_sample_count_reg_n_0_[1] ,\det_signal.div_sample_count_reg_n_0_[0] }),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_env,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_env div_env_N_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_env_N_i_m_axis_dout_tdata_UNCONNECTED[39:32],avg_env_N,NLW_div_env_N_i_m_axis_dout_tdata_UNCONNECTED[15:0]}),
        .m_axis_dout_tvalid(valid_env_N),
        .s_axis_dividend_tdata(div_env_sum_N[23:0]),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.div_sample_count_reg_n_0_[8] ,\det_signal.div_sample_count_reg_n_0_[7] ,\det_signal.div_sample_count_reg_n_0_[6] ,\det_signal.div_sample_count_reg_n_0_[5] ,\det_signal.div_sample_count_reg_n_0_[4] ,\det_signal.div_sample_count_reg_n_0_[3] ,\det_signal.div_sample_count_reg_n_0_[2] ,\det_signal.div_sample_count_reg_n_0_[1] ,\det_signal.div_sample_count_reg_n_0_[0] }),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_env,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_env_HD5 div_env_W_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_env_W_i_m_axis_dout_tdata_UNCONNECTED[39:32],avg_env_W,NLW_div_env_W_i_m_axis_dout_tdata_UNCONNECTED[15:0]}),
        .m_axis_dout_tvalid(valid_env_W),
        .s_axis_dividend_tdata(div_env_sum_W[23:0]),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.div_sample_count_reg_n_0_[8] ,\det_signal.div_sample_count_reg_n_0_[7] ,\det_signal.div_sample_count_reg_n_0_[6] ,\det_signal.div_sample_count_reg_n_0_[5] ,\det_signal.div_sample_count_reg_n_0_[4] ,\det_signal.div_sample_count_reg_n_0_[3] ,\det_signal.div_sample_count_reg_n_0_[2] ,\det_signal.div_sample_count_reg_n_0_[1] ,\det_signal.div_sample_count_reg_n_0_[0] }),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_weighted div_incr_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_incr_i_m_axis_dout_tdata_UNCONNECTED[79:52],freq,NLW_div_incr_i_m_axis_dout_tdata_UNCONNECTED[31:0]}),
        .m_axis_dout_tvalid(NLW_div_incr_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_dividend_tdata(div_freq_sum),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata({\det_signal.div_env_all_reg_n_0_[31] ,\det_signal.div_env_all_reg_n_0_[30] ,\det_signal.div_env_all_reg_n_0_[29] ,\det_signal.div_env_all_reg_n_0_[28] ,\det_signal.div_env_all_reg_n_0_[27] ,\det_signal.div_env_all_reg_n_0_[26] ,\det_signal.div_env_all_reg_n_0_[25] ,\det_signal.div_env_all_reg_n_0_[24] ,\det_signal.div_env_all_reg_n_0_[23] ,\det_signal.div_env_all_reg_n_0_[22] ,\det_signal.div_env_all_reg_n_0_[21] ,\det_signal.div_env_all_reg_n_0_[20] ,\det_signal.div_env_all_reg_n_0_[19] ,\det_signal.div_env_all_reg_n_0_[18] ,\det_signal.div_env_all_reg_n_0_[17] ,\det_signal.div_env_all_reg_n_0_[16] ,\det_signal.div_env_all_reg_n_0_[15] ,\det_signal.div_env_all_reg_n_0_[14] ,\det_signal.div_env_all_reg_n_0_[13] ,\det_signal.div_env_all_reg_n_0_[12] ,\det_signal.div_env_all_reg_n_0_[11] ,\det_signal.div_env_all_reg_n_0_[10] ,\det_signal.div_env_all_reg_n_0_[9] ,\det_signal.div_env_all_reg_n_0_[8] ,\det_signal.div_env_all_reg_n_0_[7] ,\det_signal.div_env_all_reg_n_0_[6] ,\det_signal.div_env_all_reg_n_0_[5] ,\det_signal.div_env_all_reg_n_0_[4] ,\det_signal.div_env_all_reg_n_0_[3] ,\det_signal.div_env_all_reg_n_0_[2] ,\det_signal.div_env_all_reg_n_0_[1] ,\det_signal.div_env_all_reg_n_0_[0] }),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_weighted_HD6 div_phase_EW_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED[79:52],div_phase_EW,NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED[31:0]}),
        .m_axis_dout_tvalid(NLW_div_phase_EW_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_dividend_tdata({\det_signal.div_phase_sum_EW_reg_n_0_[47] ,\det_signal.div_phase_sum_EW_reg_n_0_[46] ,\det_signal.div_phase_sum_EW_reg_n_0_[45] ,\det_signal.div_phase_sum_EW_reg_n_0_[44] ,\det_signal.div_phase_sum_EW_reg_n_0_[43] ,\det_signal.div_phase_sum_EW_reg_n_0_[42] ,\det_signal.div_phase_sum_EW_reg_n_0_[41] ,\det_signal.div_phase_sum_EW_reg_n_0_[40] ,\det_signal.div_phase_sum_EW_reg_n_0_[39] ,\det_signal.div_phase_sum_EW_reg_n_0_[38] ,\det_signal.div_phase_sum_EW_reg_n_0_[37] ,\det_signal.div_phase_sum_EW_reg_n_0_[36] ,\det_signal.div_phase_sum_EW_reg_n_0_[35] ,\det_signal.div_phase_sum_EW_reg_n_0_[34] ,\det_signal.div_phase_sum_EW_reg_n_0_[33] ,\det_signal.div_phase_sum_EW_reg_n_0_[32] ,\det_signal.div_phase_sum_EW_reg_n_0_[31] ,\det_signal.div_phase_sum_EW_reg_n_0_[30] ,\det_signal.div_phase_sum_EW_reg_n_0_[29] ,\det_signal.div_phase_sum_EW_reg_n_0_[28] ,\det_signal.div_phase_sum_EW_reg_n_0_[27] ,\det_signal.div_phase_sum_EW_reg_n_0_[26] ,\det_signal.div_phase_sum_EW_reg_n_0_[25] ,\det_signal.div_phase_sum_EW_reg_n_0_[24] ,\det_signal.div_phase_sum_EW_reg_n_0_[23] ,\det_signal.div_phase_sum_EW_reg_n_0_[22] ,\det_signal.div_phase_sum_EW_reg_n_0_[21] ,\det_signal.div_phase_sum_EW_reg_n_0_[20] ,\det_signal.div_phase_sum_EW_reg_n_0_[19] ,\det_signal.div_phase_sum_EW_reg_n_0_[18] ,\det_signal.div_phase_sum_EW_reg_n_0_[17] ,\det_signal.div_phase_sum_EW_reg_n_0_[16] ,\det_signal.div_phase_sum_EW_reg_n_0_[15] ,\det_signal.div_phase_sum_EW_reg_n_0_[14] ,\det_signal.div_phase_sum_EW_reg_n_0_[13] ,\det_signal.div_phase_sum_EW_reg_n_0_[12] ,\det_signal.div_phase_sum_EW_reg_n_0_[11] ,\det_signal.div_phase_sum_EW_reg_n_0_[10] ,\det_signal.div_phase_sum_EW_reg_n_0_[9] ,\det_signal.div_phase_sum_EW_reg_n_0_[8] ,\det_signal.div_phase_sum_EW_reg_n_0_[7] ,\det_signal.div_phase_sum_EW_reg_n_0_[6] ,\det_signal.div_phase_sum_EW_reg_n_0_[5] ,\det_signal.div_phase_sum_EW_reg_n_0_[4] ,\det_signal.div_phase_sum_EW_reg_n_0_[3] ,\det_signal.div_phase_sum_EW_reg_n_0_[2] ,\det_signal.div_phase_sum_EW_reg_n_0_[1] ,\det_signal.div_phase_sum_EW_reg_n_0_[0] }),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.div_env_sum_EW_reg_n_0_[24] ,\det_signal.div_env_sum_EW_reg_n_0_[23] ,\det_signal.div_env_sum_EW_reg_n_0_[22] ,\det_signal.div_env_sum_EW_reg_n_0_[21] ,\det_signal.div_env_sum_EW_reg_n_0_[20] ,\det_signal.div_env_sum_EW_reg_n_0_[19] ,\det_signal.div_env_sum_EW_reg_n_0_[18] ,\det_signal.div_env_sum_EW_reg_n_0_[17] ,\det_signal.div_env_sum_EW_reg_n_0_[16] ,\det_signal.div_env_sum_EW_reg_n_0_[15] ,\det_signal.div_env_sum_EW_reg_n_0_[14] ,\det_signal.div_env_sum_EW_reg_n_0_[13] ,\det_signal.div_env_sum_EW_reg_n_0_[12] ,\det_signal.div_env_sum_EW_reg_n_0_[11] ,\det_signal.div_env_sum_EW_reg_n_0_[10] ,\det_signal.div_env_sum_EW_reg_n_0_[9] ,\det_signal.div_env_sum_EW_reg_n_0_[8] ,\det_signal.div_env_sum_EW_reg_n_0_[7] ,\det_signal.div_env_sum_EW_reg_n_0_[6] ,\det_signal.div_env_sum_EW_reg_n_0_[5] ,\det_signal.div_env_sum_EW_reg_n_0_[4] ,\det_signal.div_env_sum_EW_reg_n_0_[3] ,\det_signal.div_env_sum_EW_reg_n_0_[2] ,\det_signal.div_env_sum_EW_reg_n_0_[1] ,\det_signal.div_env_sum_EW_reg_n_0_[0] }),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_weighted div_phase_NE_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED[79:52],div_phase_NE,NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED[31:0]}),
        .m_axis_dout_tvalid(NLW_div_phase_NE_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_dividend_tdata({\det_signal.div_phase_sum_NE_reg_n_0_[47] ,\det_signal.div_phase_sum_NE_reg_n_0_[46] ,\det_signal.div_phase_sum_NE_reg_n_0_[45] ,\det_signal.div_phase_sum_NE_reg_n_0_[44] ,\det_signal.div_phase_sum_NE_reg_n_0_[43] ,\det_signal.div_phase_sum_NE_reg_n_0_[42] ,\det_signal.div_phase_sum_NE_reg_n_0_[41] ,\det_signal.div_phase_sum_NE_reg_n_0_[40] ,\det_signal.div_phase_sum_NE_reg_n_0_[39] ,\det_signal.div_phase_sum_NE_reg_n_0_[38] ,\det_signal.div_phase_sum_NE_reg_n_0_[37] ,\det_signal.div_phase_sum_NE_reg_n_0_[36] ,\det_signal.div_phase_sum_NE_reg_n_0_[35] ,\det_signal.div_phase_sum_NE_reg_n_0_[34] ,\det_signal.div_phase_sum_NE_reg_n_0_[33] ,\det_signal.div_phase_sum_NE_reg_n_0_[32] ,\det_signal.div_phase_sum_NE_reg_n_0_[31] ,\det_signal.div_phase_sum_NE_reg_n_0_[30] ,\det_signal.div_phase_sum_NE_reg_n_0_[29] ,\det_signal.div_phase_sum_NE_reg_n_0_[28] ,\det_signal.div_phase_sum_NE_reg_n_0_[27] ,\det_signal.div_phase_sum_NE_reg_n_0_[26] ,\det_signal.div_phase_sum_NE_reg_n_0_[25] ,\det_signal.div_phase_sum_NE_reg_n_0_[24] ,\det_signal.div_phase_sum_NE_reg_n_0_[23] ,\det_signal.div_phase_sum_NE_reg_n_0_[22] ,\det_signal.div_phase_sum_NE_reg_n_0_[21] ,\det_signal.div_phase_sum_NE_reg_n_0_[20] ,\det_signal.div_phase_sum_NE_reg_n_0_[19] ,\det_signal.div_phase_sum_NE_reg_n_0_[18] ,\det_signal.div_phase_sum_NE_reg_n_0_[17] ,\det_signal.div_phase_sum_NE_reg_n_0_[16] ,\det_signal.div_phase_sum_NE_reg_n_0_[15] ,\det_signal.div_phase_sum_NE_reg_n_0_[14] ,\det_signal.div_phase_sum_NE_reg_n_0_[13] ,\det_signal.div_phase_sum_NE_reg_n_0_[12] ,\det_signal.div_phase_sum_NE_reg_n_0_[11] ,\det_signal.div_phase_sum_NE_reg_n_0_[10] ,\det_signal.div_phase_sum_NE_reg_n_0_[9] ,\det_signal.div_phase_sum_NE_reg_n_0_[8] ,\det_signal.div_phase_sum_NE_reg_n_0_[7] ,\det_signal.div_phase_sum_NE_reg_n_0_[6] ,\det_signal.div_phase_sum_NE_reg_n_0_[5] ,\det_signal.div_phase_sum_NE_reg_n_0_[4] ,\det_signal.div_phase_sum_NE_reg_n_0_[3] ,\det_signal.div_phase_sum_NE_reg_n_0_[2] ,\det_signal.div_phase_sum_NE_reg_n_0_[1] ,\det_signal.div_phase_sum_NE_reg_n_0_[0] }),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,div_env_sum_NE}),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_weighted div_phase_NW_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED[79:52],div_phase_NW,NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED[31:0]}),
        .m_axis_dout_tvalid(NLW_div_phase_NW_i_m_axis_dout_tvalid_UNCONNECTED),
        .s_axis_dividend_tdata(div_phase_sum_NW),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,div_env_sum_NW}),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_incr_env dsp_incr_env_E
       (.A({1'b0,dsp_phase_E}),
        .B({1'b0,env_E}),
        .CLK(clk),
        .P(dsp_sum_E),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_incr_env dsp_incr_env_N
       (.A({1'b0,dsp_phase_N}),
        .B({1'b0,env_N}),
        .CLK(clk),
        .P(dsp_sum_N),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_incr_env_HD7 dsp_incr_env_W
       (.A({1'b0,dsp_phase_W}),
        .B({1'b0,env_W}),
        .CLK(clk),
        .P(dsp_sum_W),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  dsp_phase_env_HD8 dsp_phase_env_EW
       (.A(dsp_phase_EW),
        .B({1'b0,env_EW}),
        .CLK(clk),
        .P(dsp_sum_EW),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_phase_env dsp_phase_env_NE
       (.A(dsp_phase_NE),
        .B({1'b0,env_NE}),
        .CLK(clk),
        .P(dsp_sum_NE),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_low_0_0_dsp_phase_env dsp_phase_env_NW
       (.A(dsp_phase_NW),
        .B({1'b0,env_NW}),
        .CLK(clk),
        .P(dsp_sum_NW),
        .SCLRP(acc_reset));
  (* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_3 ila_i
       (.clk(clk),
        .probe0(active),
        .probe1(env_sum_N),
        .probe10(valid_env_W),
        .probe11(avg_env_N),
        .probe12(avg_env_E),
        .probe13(avg_env_W),
        .probe14(has_signal),
        .probe15(valid_env),
        .probe16(valid_err),
        .probe17(err_count),
        .probe18(sample_count),
        .probe19(sample_count_ok),
        .probe2(env_sum_E),
        .probe20(accept_new_burst),
        .probe21(acc_reset),
        .probe22(start_proc),
        .probe23(proc_signal),
        .probe24(div_start),
        .probe25(div_delay),
        .probe26(div_counter),
        .probe27(min_freq),
        .probe28(max_freq),
        .probe29(min_freq_diff),
        .probe3(env_sum_W),
        .probe30(max_freq_diff),
        .probe31(div_counter),
        .probe32(proc_done),
        .probe33(signal_done),
        .probe4(freq),
        .probe5(div_env_sum_N),
        .probe6(div_env_sum_E),
        .probe7(div_env_sum_W),
        .probe8(valid_env_N),
        .probe9(valid_env_E));
endmodule

(* CHECK_LICENSE_TYPE = "div_env,div_gen_v5_1_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "div_env" *) 
(* X_CORE_INFO = "div_gen_v5_1_24,Vivado 2025.1" *) 
module ps_comp_low_0_0_div_env
   (aclk,
    s_axis_divisor_tvalid,
    s_axis_divisor_tdata,
    s_axis_dividend_tvalid,
    s_axis_dividend_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVISOR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_divisor_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA" *) input [15:0]s_axis_divisor_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVIDEND" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_dividend_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA" *) input [23:0]s_axis_dividend_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [39:0]m_axis_dout_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "div_env,div_gen_v5_1_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "div_env" *) 
(* X_CORE_INFO = "div_gen_v5_1_24,Vivado 2025.1" *) 
module ps_comp_low_0_0_div_env_HD5
   (aclk,
    m_axis_dout_tvalid,
    s_axis_dividend_tvalid,
    s_axis_divisor_tvalid,
    m_axis_dout_tdata,
    s_axis_dividend_tdata,
    s_axis_divisor_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVIDEND" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_dividend_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVISOR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 2, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_divisor_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [39:0]m_axis_dout_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA" *) input [23:0]s_axis_dividend_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA" *) input [15:0]s_axis_divisor_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "div_k,div_gen_v5_1_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "div_k" *) 
(* X_CORE_INFO = "div_gen_v5_1_24,Vivado 2025.1" *) 
module ps_comp_low_0_0_div_k
   (aclk,
    s_axis_divisor_tvalid,
    s_axis_divisor_tdata,
    s_axis_dividend_tvalid,
    s_axis_dividend_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVISOR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 3, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_divisor_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA" *) input [23:0]s_axis_divisor_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVIDEND" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 5, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_dividend_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA" *) input [39:0]s_axis_dividend_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [63:0]m_axis_dout_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "div_weighted" *) 
(* X_CORE_INFO = "div_gen_v5_1_24,Vivado 2025.1" *) 
module ps_comp_low_0_0_div_weighted
   (aclk,
    s_axis_divisor_tvalid,
    s_axis_divisor_tdata,
    s_axis_dividend_tvalid,
    s_axis_dividend_tdata,
    m_axis_dout_tvalid,
    m_axis_dout_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVISOR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_divisor_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA" *) input [31:0]s_axis_divisor_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVIDEND" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_dividend_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA" *) input [47:0]s_axis_dividend_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [79:0]m_axis_dout_tdata;


endmodule

(* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "div_weighted" *) 
(* X_CORE_INFO = "div_gen_v5_1_24,Vivado 2025.1" *) 
module ps_comp_low_0_0_div_weighted_HD6
   (aclk,
    m_axis_dout_tvalid,
    s_axis_dividend_tvalid,
    s_axis_divisor_tvalid,
    m_axis_dout_tdata,
    s_axis_dividend_tdata,
    s_axis_divisor_tdata);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* X_INTERFACE_MODE = "slave aclk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF S_AXIS_DIVIDEND:S_AXIS_DIVISOR:M_AXIS_DOUT, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 1000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TVALID" *) (* X_INTERFACE_MODE = "master M_AXIS_DOUT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_DOUT, TDATA_NUM_BYTES 10, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_dout_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVIDEND" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVIDEND, TDATA_NUM_BYTES 6, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_dividend_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TVALID" *) (* X_INTERFACE_MODE = "slave S_AXIS_DIVISOR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS_DIVISOR, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, LAYERED_METADATA undef, INSERT_VIP 0" *) input s_axis_divisor_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_DOUT TDATA" *) output [79:0]m_axis_dout_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVIDEND TDATA" *) input [47:0]s_axis_dividend_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS_DIVISOR TDATA" *) input [31:0]s_axis_divisor_tdata;


endmodule

(* ORIG_REF_NAME = "doa_calc" *) (* keep_hierarchy = "soft" *) 
module ps_comp_low_0_0_doa_calc
   (clk,
    reset,
    config_wr,
    config_adr,
    config_data,
    start,
    freq,
    env_N,
    env_E,
    env_W,
    phase_NE,
    phase_NW,
    phase_EW);
  input clk;
  input reset;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  input start;
  input [19:0]freq;
  input [15:0]env_N;
  input [15:0]env_E;
  input [15:0]env_W;
  input [19:0]phase_NE;
  input [19:0]phase_NW;
  input [19:0]phase_EW;

  (* MARK_DEBUG *) wire [19:0]angle_EW;
  (* MARK_DEBUG *) wire [19:0]angle_NE;
  (* MARK_DEBUG *) wire [19:0]angle_NW;
  wire clk;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_wr;
  wire \doa_calc.inv_dij[31]_i_2_n_0 ;
  wire \doa_calc.shadow_limit[0]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[10]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[11]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[12]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[13]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[14]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[15]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[16]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[17]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[18]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[19]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[1]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[2]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[3]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[4]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[5]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[6]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[7]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[8]_i_1_n_0 ;
  wire \doa_calc.shadow_limit[9]_i_1_n_0 ;
  (* MARK_DEBUG *) wire done_EW;
  (* MARK_DEBUG *) wire done_NE;
  (* MARK_DEBUG *) wire done_NW;
  (* MARK_DEBUG *) wire [15:0]env_E;
  (* MARK_DEBUG *) wire [15:0]env_N;
  (* MARK_DEBUG *) wire [15:0]env_W;
  (* MARK_DEBUG *) wire [19:0]freq;
  (* MARK_DEBUG *) wire [31:0]inv_dij;
  (* MARK_DEBUG *) wire [19:0]k;
  wire [31:0]p_0_in__0;
  (* MARK_DEBUG *) wire [19:0]phase_EW;
  (* MARK_DEBUG *) wire [19:0]phase_NE;
  (* MARK_DEBUG *) wire [19:0]phase_NW;
  wire reset;
  (* MARK_DEBUG *) wire shadow_EW;
  (* MARK_DEBUG *) wire shadow_NE;
  (* MARK_DEBUG *) wire shadow_NW;
  (* MARK_DEBUG *) wire [19:0]shadow_limit;
  (* MARK_DEBUG *) wire start;
  (* MARK_DEBUG *) wire valid_k;
  wire [63:0]NLW_div_k_i_m_axis_dout_tdata_UNCONNECTED;
  wire NLW_doa_EW_i_fail_UNCONNECTED;
  wire NLW_doa_NE_i_fail_UNCONNECTED;
  wire NLW_doa_NW_i_fail_UNCONNECTED;

  (* CHECK_LICENSE_TYPE = "div_k,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_low_0_0_div_k div_k_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_k_i_m_axis_dout_tdata_UNCONNECTED[63:44],k,NLW_div_k_i_m_axis_dout_tdata_UNCONNECTED[23:0]}),
        .m_axis_dout_tvalid(valid_k),
        .s_axis_dividend_tdata({1'b0,inv_dij,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_dividend_tvalid(start),
        .s_axis_divisor_tdata({1'b0,1'b0,1'b0,1'b0,freq}),
        .s_axis_divisor_tvalid(start));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_low_0_0_doa_pair doa_EW_i
       (.angle(angle_EW),
        .clk(clk),
        .done(done_EW),
        .fail(NLW_doa_EW_i_fail_UNCONNECTED),
        .k(k),
        .phase(phase_EW),
        .reset(reset),
        .shadow(shadow_EW),
        .shadow_limit(shadow_limit),
        .start(valid_k));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_low_0_0_doa_pair__xdcDup__1 doa_NE_i
       (.angle(angle_NE),
        .clk(clk),
        .done(done_NE),
        .fail(NLW_doa_NE_i_fail_UNCONNECTED),
        .k(k),
        .phase(phase_NE),
        .reset(reset),
        .shadow(shadow_NE),
        .shadow_limit(shadow_limit),
        .start(valid_k));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_low_0_0_doa_pair__xdcDup__2 doa_NW_i
       (.angle(angle_NW),
        .clk(clk),
        .done(done_NW),
        .fail(NLW_doa_NW_i_fail_UNCONNECTED),
        .k(k),
        .phase(phase_NW),
        .reset(reset),
        .shadow(shadow_NW),
        .shadow_limit(shadow_limit),
        .start(valid_k));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[0]_i_1 
       (.I0(inv_dij[0]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[0]),
        .O(p_0_in__0[0]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[10]_i_1 
       (.I0(inv_dij[10]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[10]),
        .O(p_0_in__0[10]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[11]_i_1 
       (.I0(inv_dij[11]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[11]),
        .O(p_0_in__0[11]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[12]_i_1 
       (.I0(inv_dij[12]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[12]),
        .O(p_0_in__0[12]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[13]_i_1 
       (.I0(inv_dij[13]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[13]),
        .O(p_0_in__0[13]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[14]_i_1 
       (.I0(inv_dij[14]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[14]),
        .O(p_0_in__0[14]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[15]_i_1 
       (.I0(inv_dij[15]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[15]),
        .O(p_0_in__0[15]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[16]_i_1 
       (.I0(inv_dij[16]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[16]),
        .O(p_0_in__0[16]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[17]_i_1 
       (.I0(inv_dij[17]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[17]),
        .O(p_0_in__0[17]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[18]_i_1 
       (.I0(inv_dij[18]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[18]),
        .O(p_0_in__0[18]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[19]_i_1 
       (.I0(inv_dij[19]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[19]),
        .O(p_0_in__0[19]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[1]_i_1 
       (.I0(inv_dij[1]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[1]),
        .O(p_0_in__0[1]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[20]_i_1 
       (.I0(inv_dij[20]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[20]),
        .O(p_0_in__0[20]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[21]_i_1 
       (.I0(inv_dij[21]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[21]),
        .O(p_0_in__0[21]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[22]_i_1 
       (.I0(inv_dij[22]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[22]),
        .O(p_0_in__0[22]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[23]_i_1 
       (.I0(inv_dij[23]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[23]),
        .O(p_0_in__0[23]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[24]_i_1 
       (.I0(inv_dij[24]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[24]),
        .O(p_0_in__0[24]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[25]_i_1 
       (.I0(inv_dij[25]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[25]),
        .O(p_0_in__0[25]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[26]_i_1 
       (.I0(inv_dij[26]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[26]),
        .O(p_0_in__0[26]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[27]_i_1 
       (.I0(inv_dij[27]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[27]),
        .O(p_0_in__0[27]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[28]_i_1 
       (.I0(inv_dij[28]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[28]),
        .O(p_0_in__0[28]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[29]_i_1 
       (.I0(inv_dij[29]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[29]),
        .O(p_0_in__0[29]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[2]_i_1 
       (.I0(inv_dij[2]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[2]),
        .O(p_0_in__0[2]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[30]_i_1 
       (.I0(inv_dij[30]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[30]),
        .O(p_0_in__0[30]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[31]_i_1 
       (.I0(inv_dij[31]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[31]),
        .O(p_0_in__0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \doa_calc.inv_dij[31]_i_2 
       (.I0(config_adr[6]),
        .I1(config_adr[7]),
        .I2(config_adr[4]),
        .I3(config_adr[5]),
        .I4(config_adr[2]),
        .I5(config_adr[3]),
        .O(\doa_calc.inv_dij[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[3]_i_1 
       (.I0(inv_dij[3]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[3]),
        .O(p_0_in__0[3]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[4]_i_1 
       (.I0(inv_dij[4]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[4]),
        .O(p_0_in__0[4]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[5]_i_1 
       (.I0(inv_dij[5]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[5]),
        .O(p_0_in__0[5]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[6]_i_1 
       (.I0(inv_dij[6]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[6]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[7]_i_1 
       (.I0(inv_dij[7]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[7]),
        .O(p_0_in__0[7]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[8]_i_1 
       (.I0(inv_dij[8]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[8]),
        .O(p_0_in__0[8]));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.inv_dij[9]_i_1 
       (.I0(inv_dij[9]),
        .I1(config_adr[0]),
        .I2(config_adr[1]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[9]),
        .O(p_0_in__0[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[0] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[0]),
        .Q(inv_dij[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[10] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[10]),
        .Q(inv_dij[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[11] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[11]),
        .Q(inv_dij[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[12] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[12]),
        .Q(inv_dij[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[13] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[13]),
        .Q(inv_dij[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[14] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[14]),
        .Q(inv_dij[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[15] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[15]),
        .Q(inv_dij[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[16] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[16]),
        .Q(inv_dij[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[17] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[17]),
        .Q(inv_dij[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[18] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[18]),
        .Q(inv_dij[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[19] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[19]),
        .Q(inv_dij[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[1] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[1]),
        .Q(inv_dij[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[20] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[20]),
        .Q(inv_dij[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[21] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[21]),
        .Q(inv_dij[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[22] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[22]),
        .Q(inv_dij[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[23] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[23]),
        .Q(inv_dij[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[24] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[24]),
        .Q(inv_dij[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[25] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[25]),
        .Q(inv_dij[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[26] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[26]),
        .Q(inv_dij[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[27] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[27]),
        .Q(inv_dij[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[28] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[28]),
        .Q(inv_dij[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[29] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[29]),
        .Q(inv_dij[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[2] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[2]),
        .Q(inv_dij[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[30] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[30]),
        .Q(inv_dij[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[31] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[31]),
        .Q(inv_dij[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[3] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[3]),
        .Q(inv_dij[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[4] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[4]),
        .Q(inv_dij[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[5] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[5]),
        .Q(inv_dij[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[6] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[6]),
        .Q(inv_dij[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[7] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[7]),
        .Q(inv_dij[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[8] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[8]),
        .Q(inv_dij[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.inv_dij_reg[9] 
       (.C(clk),
        .CE(config_wr),
        .D(p_0_in__0[9]),
        .Q(inv_dij[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[0]_i_1 
       (.I0(shadow_limit[0]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[0]),
        .O(\doa_calc.shadow_limit[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[10]_i_1 
       (.I0(shadow_limit[10]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[10]),
        .O(\doa_calc.shadow_limit[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[11]_i_1 
       (.I0(shadow_limit[11]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[11]),
        .O(\doa_calc.shadow_limit[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[12]_i_1 
       (.I0(shadow_limit[12]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[12]),
        .O(\doa_calc.shadow_limit[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[13]_i_1 
       (.I0(shadow_limit[13]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[13]),
        .O(\doa_calc.shadow_limit[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[14]_i_1 
       (.I0(shadow_limit[14]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[14]),
        .O(\doa_calc.shadow_limit[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[15]_i_1 
       (.I0(shadow_limit[15]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[15]),
        .O(\doa_calc.shadow_limit[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[16]_i_1 
       (.I0(shadow_limit[16]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[16]),
        .O(\doa_calc.shadow_limit[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[17]_i_1 
       (.I0(shadow_limit[17]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[17]),
        .O(\doa_calc.shadow_limit[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[18]_i_1 
       (.I0(shadow_limit[18]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[18]),
        .O(\doa_calc.shadow_limit[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[19]_i_1 
       (.I0(shadow_limit[19]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[19]),
        .O(\doa_calc.shadow_limit[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[1]_i_1 
       (.I0(shadow_limit[1]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[1]),
        .O(\doa_calc.shadow_limit[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[2]_i_1 
       (.I0(shadow_limit[2]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[2]),
        .O(\doa_calc.shadow_limit[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[3]_i_1 
       (.I0(shadow_limit[3]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[3]),
        .O(\doa_calc.shadow_limit[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[4]_i_1 
       (.I0(shadow_limit[4]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[4]),
        .O(\doa_calc.shadow_limit[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[5]_i_1 
       (.I0(shadow_limit[5]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[5]),
        .O(\doa_calc.shadow_limit[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[6]_i_1 
       (.I0(shadow_limit[6]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[6]),
        .O(\doa_calc.shadow_limit[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[7]_i_1 
       (.I0(shadow_limit[7]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[7]),
        .O(\doa_calc.shadow_limit[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[8]_i_1 
       (.I0(shadow_limit[8]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[8]),
        .O(\doa_calc.shadow_limit[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAEAAA2)) 
    \doa_calc.shadow_limit[9]_i_1 
       (.I0(shadow_limit[9]),
        .I1(config_adr[1]),
        .I2(config_adr[0]),
        .I3(\doa_calc.inv_dij[31]_i_2_n_0 ),
        .I4(config_data[9]),
        .O(\doa_calc.shadow_limit[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[0] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[0]_i_1_n_0 ),
        .Q(shadow_limit[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[10] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[10]_i_1_n_0 ),
        .Q(shadow_limit[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[11] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[11]_i_1_n_0 ),
        .Q(shadow_limit[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[12] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[12]_i_1_n_0 ),
        .Q(shadow_limit[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[13] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[13]_i_1_n_0 ),
        .Q(shadow_limit[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[14] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[14]_i_1_n_0 ),
        .Q(shadow_limit[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[15] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[15]_i_1_n_0 ),
        .Q(shadow_limit[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[16] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[16]_i_1_n_0 ),
        .Q(shadow_limit[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[17] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[17]_i_1_n_0 ),
        .Q(shadow_limit[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[18] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[18]_i_1_n_0 ),
        .Q(shadow_limit[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[19] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[19]_i_1_n_0 ),
        .Q(shadow_limit[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[1] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[1]_i_1_n_0 ),
        .Q(shadow_limit[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[2] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[2]_i_1_n_0 ),
        .Q(shadow_limit[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[3] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[3]_i_1_n_0 ),
        .Q(shadow_limit[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[4] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[4]_i_1_n_0 ),
        .Q(shadow_limit[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[5] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[5]_i_1_n_0 ),
        .Q(shadow_limit[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[6] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[6]_i_1_n_0 ),
        .Q(shadow_limit[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[7] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[7]_i_1_n_0 ),
        .Q(shadow_limit[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[8] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[8]_i_1_n_0 ),
        .Q(shadow_limit[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_calc.shadow_limit_reg[9] 
       (.C(clk),
        .CE(config_wr),
        .D(\doa_calc.shadow_limit[9]_i_1_n_0 ),
        .Q(shadow_limit[9]),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "ila_6,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_6 ila_i
       (.clk(clk),
        .probe0(inv_dij),
        .probe1(shadow_limit),
        .probe10(valid_k),
        .probe11(k),
        .probe12(done_NE),
        .probe13(done_NW),
        .probe14(done_EW),
        .probe15(shadow_NE),
        .probe16(shadow_NW),
        .probe17(shadow_EW),
        .probe18(angle_NE),
        .probe19(angle_NW),
        .probe2(start),
        .probe20(angle_EW),
        .probe3(freq),
        .probe4(env_N),
        .probe5(env_E),
        .probe6(env_W),
        .probe7(phase_NE),
        .probe8(phase_NW),
        .probe9(phase_EW));
endmodule

(* ORIG_REF_NAME = "doa_pair" *) (* keep_hierarchy = "soft" *) 
module ps_comp_low_0_0_doa_pair
   (clk,
    reset,
    start,
    k,
    shadow_limit,
    phase,
    done,
    fail,
    shadow,
    angle);
  input clk;
  input reset;
  input start;
  input [19:0]k;
  input [19:0]shadow_limit;
  input [19:0]phase;
  output done;
  output fail;
  output shadow;
  output [19:0]angle;

  wire add;
  (* MARK_DEBUG *) wire [19:0]angle;
  (* MARK_DEBUG *) wire calc_diff;
  (* MARK_DEBUG *) wire check_raw;
  wire check_raw__0;
  wire clk;
  wire [18:0]coeff;
  (* MARK_DEBUG *) wire [5:0]counter;
  wire [5:0]counter__0;
  wire [39:19]cp;
  wire \doa_pair.add_i_1_n_0 ;
  wire \doa_pair.add_i_2_n_0 ;
  wire \doa_pair.angle[19]_i_1_n_0 ;
  wire \doa_pair.check_raw_i_2_n_0 ;
  wire \doa_pair.coeff_reg_n_0_[0] ;
  wire \doa_pair.coeff_reg_n_0_[10] ;
  wire \doa_pair.coeff_reg_n_0_[11] ;
  wire \doa_pair.coeff_reg_n_0_[12] ;
  wire \doa_pair.coeff_reg_n_0_[13] ;
  wire \doa_pair.coeff_reg_n_0_[14] ;
  wire \doa_pair.coeff_reg_n_0_[15] ;
  wire \doa_pair.coeff_reg_n_0_[16] ;
  wire \doa_pair.coeff_reg_n_0_[18] ;
  wire \doa_pair.coeff_reg_n_0_[1] ;
  wire \doa_pair.coeff_reg_n_0_[2] ;
  wire \doa_pair.coeff_reg_n_0_[3] ;
  wire \doa_pair.coeff_reg_n_0_[4] ;
  wire \doa_pair.coeff_reg_n_0_[5] ;
  wire \doa_pair.coeff_reg_n_0_[6] ;
  wire \doa_pair.coeff_reg_n_0_[7] ;
  wire \doa_pair.coeff_reg_n_0_[8] ;
  wire \doa_pair.coeff_reg_n_0_[9] ;
  wire \doa_pair.counter[0]_i_2_n_0 ;
  wire \doa_pair.counter[1]_i_1_n_0 ;
  wire \doa_pair.counter[2]_i_1_n_0 ;
  wire \doa_pair.counter[5]_i_1_n_0 ;
  wire \doa_pair.counter[5]_i_3_n_0 ;
  wire \doa_pair.done_i_1_n_0 ;
  wire \doa_pair.done_reg0 ;
  wire \doa_pair.fail_i_1_n_0 ;
  wire \doa_pair.fail_i_3_n_0 ;
  wire \doa_pair.fail_i_4_n_0 ;
  wire \doa_pair.has_ov_i_1_n_0 ;
  wire \doa_pair.has_ov_i_2_n_0 ;
  wire \doa_pair.ignore_i_1_n_0 ;
  wire \doa_pair.ignore_i_2_n_0 ;
  wire \doa_pair.ignore_i_3_n_0 ;
  wire \doa_pair.ignore_i_4_n_0 ;
  wire \doa_pair.ignore_i_5_n_0 ;
  wire \doa_pair.ignore_i_6_n_0 ;
  wire \doa_pair.ignore_i_7_n_0 ;
  wire \doa_pair.ignore_i_8_n_0 ;
  wire \doa_pair.ignore_reg_n_0 ;
  wire \doa_pair.ind[0]_i_1_n_0 ;
  wire \doa_pair.ind[3]_i_1_n_0 ;
  wire \doa_pair.ind_reg_n_0_[0] ;
  wire \doa_pair.ind_reg_n_0_[1] ;
  wire \doa_pair.ind_reg_n_0_[2] ;
  wire \doa_pair.ind_reg_n_0_[3] ;
  wire \doa_pair.init_i_1_n_0 ;
  wire \doa_pair.init_i_2_n_0 ;
  wire \doa_pair.ov[5]_i_1_n_0 ;
  wire \doa_pair.run_i_1_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_6_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_7_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_8_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_9_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_6_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_7_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_8_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_9_n_0 ;
  wire [19:0]\doa_pair.shadow_diff_reg0 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_0 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_1 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_2 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_3 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_4 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_7 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_7 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_0 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_1 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_2 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_3 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_4 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_7 ;
  wire \doa_pair.shadow_i_1_n_0 ;
  wire \doa_pair.shadow_i_2_n_0 ;
  wire \doa_pair.shadow_i_3_n_0 ;
  wire \doa_pair.sum[15]_i_10_n_0 ;
  wire \doa_pair.sum[15]_i_11_n_0 ;
  wire \doa_pair.sum[15]_i_12_n_0 ;
  wire \doa_pair.sum[15]_i_13_n_0 ;
  wire \doa_pair.sum[15]_i_14_n_0 ;
  wire \doa_pair.sum[15]_i_15_n_0 ;
  wire \doa_pair.sum[15]_i_16_n_0 ;
  wire \doa_pair.sum[15]_i_17_n_0 ;
  wire \doa_pair.sum[15]_i_2_n_0 ;
  wire \doa_pair.sum[15]_i_3_n_0 ;
  wire \doa_pair.sum[15]_i_4_n_0 ;
  wire \doa_pair.sum[15]_i_5_n_0 ;
  wire \doa_pair.sum[15]_i_6_n_0 ;
  wire \doa_pair.sum[15]_i_7_n_0 ;
  wire \doa_pair.sum[15]_i_8_n_0 ;
  wire \doa_pair.sum[15]_i_9_n_0 ;
  wire \doa_pair.sum[20]_i_10_n_0 ;
  wire \doa_pair.sum[20]_i_2_n_0 ;
  wire \doa_pair.sum[20]_i_3_n_0 ;
  wire \doa_pair.sum[20]_i_4_n_0 ;
  wire \doa_pair.sum[20]_i_5_n_0 ;
  wire \doa_pair.sum[20]_i_6_n_0 ;
  wire \doa_pair.sum[20]_i_7_n_0 ;
  wire \doa_pair.sum[20]_i_8_n_0 ;
  wire \doa_pair.sum[20]_i_9_n_0 ;
  wire \doa_pair.sum[7]_i_10_n_0 ;
  wire \doa_pair.sum[7]_i_11_n_0 ;
  wire \doa_pair.sum[7]_i_12_n_0 ;
  wire \doa_pair.sum[7]_i_13_n_0 ;
  wire \doa_pair.sum[7]_i_14_n_0 ;
  wire \doa_pair.sum[7]_i_15_n_0 ;
  wire \doa_pair.sum[7]_i_16_n_0 ;
  wire \doa_pair.sum[7]_i_17_n_0 ;
  wire \doa_pair.sum[7]_i_2_n_0 ;
  wire \doa_pair.sum[7]_i_3_n_0 ;
  wire \doa_pair.sum[7]_i_4_n_0 ;
  wire \doa_pair.sum[7]_i_5_n_0 ;
  wire \doa_pair.sum[7]_i_6_n_0 ;
  wire \doa_pair.sum[7]_i_7_n_0 ;
  wire \doa_pair.sum[7]_i_8_n_0 ;
  wire \doa_pair.sum[7]_i_9_n_0 ;
  wire \doa_pair.sum_reg[15]_i_1_n_0 ;
  wire \doa_pair.sum_reg[15]_i_1_n_1 ;
  wire \doa_pair.sum_reg[15]_i_1_n_10 ;
  wire \doa_pair.sum_reg[15]_i_1_n_11 ;
  wire \doa_pair.sum_reg[15]_i_1_n_12 ;
  wire \doa_pair.sum_reg[15]_i_1_n_13 ;
  wire \doa_pair.sum_reg[15]_i_1_n_14 ;
  wire \doa_pair.sum_reg[15]_i_1_n_15 ;
  wire \doa_pair.sum_reg[15]_i_1_n_2 ;
  wire \doa_pair.sum_reg[15]_i_1_n_3 ;
  wire \doa_pair.sum_reg[15]_i_1_n_4 ;
  wire \doa_pair.sum_reg[15]_i_1_n_5 ;
  wire \doa_pair.sum_reg[15]_i_1_n_6 ;
  wire \doa_pair.sum_reg[15]_i_1_n_7 ;
  wire \doa_pair.sum_reg[15]_i_1_n_8 ;
  wire \doa_pair.sum_reg[15]_i_1_n_9 ;
  wire \doa_pair.sum_reg[20]_i_1_n_11 ;
  wire \doa_pair.sum_reg[20]_i_1_n_12 ;
  wire \doa_pair.sum_reg[20]_i_1_n_13 ;
  wire \doa_pair.sum_reg[20]_i_1_n_14 ;
  wire \doa_pair.sum_reg[20]_i_1_n_15 ;
  wire \doa_pair.sum_reg[20]_i_1_n_4 ;
  wire \doa_pair.sum_reg[20]_i_1_n_5 ;
  wire \doa_pair.sum_reg[20]_i_1_n_6 ;
  wire \doa_pair.sum_reg[20]_i_1_n_7 ;
  wire \doa_pair.sum_reg[7]_i_1_n_0 ;
  wire \doa_pair.sum_reg[7]_i_1_n_1 ;
  wire \doa_pair.sum_reg[7]_i_1_n_10 ;
  wire \doa_pair.sum_reg[7]_i_1_n_11 ;
  wire \doa_pair.sum_reg[7]_i_1_n_12 ;
  wire \doa_pair.sum_reg[7]_i_1_n_13 ;
  wire \doa_pair.sum_reg[7]_i_1_n_14 ;
  wire \doa_pair.sum_reg[7]_i_1_n_15 ;
  wire \doa_pair.sum_reg[7]_i_1_n_2 ;
  wire \doa_pair.sum_reg[7]_i_1_n_3 ;
  wire \doa_pair.sum_reg[7]_i_1_n_4 ;
  wire \doa_pair.sum_reg[7]_i_1_n_5 ;
  wire \doa_pair.sum_reg[7]_i_1_n_6 ;
  wire \doa_pair.sum_reg[7]_i_1_n_7 ;
  wire \doa_pair.sum_reg[7]_i_1_n_8 ;
  wire \doa_pair.sum_reg[7]_i_1_n_9 ;
  wire \doa_pair.x[19]_i_1_n_0 ;
  wire \doa_pair.x_abs[0]_i_1_n_0 ;
  wire \doa_pair.x_abs[10]_i_1_n_0 ;
  wire \doa_pair.x_abs[11]_i_1_n_0 ;
  wire \doa_pair.x_abs[12]_i_1_n_0 ;
  wire \doa_pair.x_abs[13]_i_1_n_0 ;
  wire \doa_pair.x_abs[14]_i_1_n_0 ;
  wire \doa_pair.x_abs[15]_i_1_n_0 ;
  wire \doa_pair.x_abs[16]_i_1_n_0 ;
  wire \doa_pair.x_abs[17]_i_1_n_0 ;
  wire \doa_pair.x_abs[18]_i_1_n_0 ;
  wire \doa_pair.x_abs[19]_i_1_n_0 ;
  wire \doa_pair.x_abs[1]_i_1_n_0 ;
  wire \doa_pair.x_abs[2]_i_1_n_0 ;
  wire \doa_pair.x_abs[3]_i_1_n_0 ;
  wire \doa_pair.x_abs[4]_i_1_n_0 ;
  wire \doa_pair.x_abs[5]_i_1_n_0 ;
  wire \doa_pair.x_abs[6]_i_1_n_0 ;
  wire \doa_pair.x_abs[7]_i_1_n_0 ;
  wire \doa_pair.x_abs[8]_i_1_n_0 ;
  wire \doa_pair.x_abs[9]_i_1_n_0 ;
  wire \doa_pair.x_raw[20]_i_1_n_0 ;
  (* MARK_DEBUG *) wire done;
  (* MARK_DEBUG *) wire fail;
  wire fail2_out;
  wire fail__0;
  wire g0_b0_n_0;
  (* MARK_DEBUG *) wire has_diff;
  (* MARK_DEBUG *) wire has_ov;
  (* MARK_DEBUG *) wire has_shadow_diff;
  wire [3:1]ind;
  (* MARK_DEBUG *) wire init;
  wire [19:0]k;
  (* MARK_DEBUG *) wire [5:0]ov;
  wire [19:0]p;
  wire p_0_in__0;
  wire [18:0]p_1_in;
  wire [19:0]phase;
  wire [39:16]prod;
  wire reset;
  (* MARK_DEBUG *) wire run;
  (* MARK_DEBUG *) wire shadow;
  (* MARK_DEBUG *) wire [19:0]shadow_diff;
  wire [19:0]shadow_limit;
  (* MARK_DEBUG *) wire start;
  (* MARK_DEBUG *) wire [20:0]sum;
  (* MARK_DEBUG *) wire [19:0]x;
  wire [38:19]x2;
  wire [19:0]x__0;
  (* MARK_DEBUG *) wire [19:0]x_abs;
  (* MARK_DEBUG *) wire [18:0]x_diff;
  (* MARK_DEBUG *) wire [20:0]x_raw;
  wire [38:19]xp;
  wire [7:3]\NLW_doa_pair.shadow_diff_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_doa_pair.shadow_diff_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_doa_pair.sum_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_doa_pair.sum_reg[20]_i_1_O_UNCONNECTED ;
  wire [18:0]NLW_mul_c_i_P_UNCONNECTED;
  wire [15:0]NLW_mul_doa_i_P_UNCONNECTED;
  wire [39:0]NLW_mul_x2_i_P_UNCONNECTED;
  wire [39:0]NLW_mul_x_i_P_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.add_i_1 
       (.I0(g0_b0_n_0),
        .I1(\doa_pair.add_i_2_n_0 ),
        .I2(add),
        .O(\doa_pair.add_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1E39271EE49C78E5)) 
    \doa_pair.add_i_2 
       (.I0(counter[0]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[2]),
        .I4(counter[1]),
        .I5(counter[5]),
        .O(\doa_pair.add_i_2_n_0 ));
  FDRE \doa_pair.add_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.add_i_1_n_0 ),
        .Q(add),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01000000)) 
    \doa_pair.angle[19]_i_1 
       (.I0(fail),
        .I1(reset),
        .I2(start),
        .I3(\doa_pair.counter[0]_i_2_n_0 ),
        .I4(run),
        .O(\doa_pair.angle[19]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[0] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[0]),
        .Q(angle[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[10] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[10]),
        .Q(angle[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[11] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[11]),
        .Q(angle[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[12] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[12]),
        .Q(angle[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[13] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[13]),
        .Q(angle[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[14] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[14]),
        .Q(angle[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[15] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[15]),
        .Q(angle[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[16] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[16]),
        .Q(angle[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[17] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[17]),
        .Q(angle[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[18] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[18]),
        .Q(angle[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[19] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[19]),
        .Q(angle[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[1] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[1]),
        .Q(angle[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[2] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[2]),
        .Q(angle[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[3] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[3]),
        .Q(angle[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[4] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[4]),
        .Q(angle[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[5] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[5]),
        .Q(angle[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[6] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[6]),
        .Q(angle[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[7] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[7]),
        .Q(angle[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[8] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[8]),
        .Q(angle[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[9] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[9]),
        .Q(angle[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.calc_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(check_raw),
        .Q(calc_diff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h09)) 
    \doa_pair.check_raw_i_1 
       (.I0(ov[5]),
        .I1(ov[4]),
        .I2(\doa_pair.check_raw_i_2_n_0 ),
        .O(check_raw__0));
  LUT6 #(
    .INIT(64'hC1FFFFFFFFFFFF43)) 
    \doa_pair.check_raw_i_2 
       (.I0(check_raw),
        .I1(ov[1]),
        .I2(ov[0]),
        .I3(ov[4]),
        .I4(ov[3]),
        .I5(ov[2]),
        .O(\doa_pair.check_raw_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.check_raw_reg 
       (.C(clk),
        .CE(1'b1),
        .D(check_raw__0),
        .Q(check_raw),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'hF514)) 
    \doa_pair.coeff[0]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8EC7)) 
    \doa_pair.coeff[10]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h372A)) 
    \doa_pair.coeff[11]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h00ED)) 
    \doa_pair.coeff[12]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[1] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[2] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h0026)) 
    \doa_pair.coeff[13]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[1] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \doa_pair.coeff[14]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \doa_pair.coeff[15]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \doa_pair.coeff[16]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \doa_pair.coeff[18]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[18]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8600)) 
    \doa_pair.coeff[1]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5095)) 
    \doa_pair.coeff[2]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[1] ),
        .O(coeff[2]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h2F9D)) 
    \doa_pair.coeff[3]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hDAA6)) 
    \doa_pair.coeff[4]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h5EE8)) 
    \doa_pair.coeff[5]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0A35)) 
    \doa_pair.coeff[6]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[2] ),
        .O(coeff[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h22F5)) 
    \doa_pair.coeff[7]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h2D17)) 
    \doa_pair.coeff[8]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hD8E7)) 
    \doa_pair.coeff[9]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[9]));
  FDRE \doa_pair.coeff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[0]),
        .Q(\doa_pair.coeff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[10]),
        .Q(\doa_pair.coeff_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[11]),
        .Q(\doa_pair.coeff_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[12]),
        .Q(\doa_pair.coeff_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[13]),
        .Q(\doa_pair.coeff_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[14]),
        .Q(\doa_pair.coeff_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[15]),
        .Q(\doa_pair.coeff_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[16]),
        .Q(\doa_pair.coeff_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[18]),
        .Q(\doa_pair.coeff_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[1]),
        .Q(\doa_pair.coeff_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[2]),
        .Q(\doa_pair.coeff_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[3]),
        .Q(\doa_pair.coeff_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[4]),
        .Q(\doa_pair.coeff_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[5]),
        .Q(\doa_pair.coeff_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[6]),
        .Q(\doa_pair.coeff_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[7]),
        .Q(\doa_pair.coeff_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[8]),
        .Q(\doa_pair.coeff_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[9]),
        .Q(\doa_pair.coeff_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \doa_pair.counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\doa_pair.counter[0]_i_2_n_0 ),
        .I2(run),
        .O(counter__0[0]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \doa_pair.counter[0]_i_2 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[5]),
        .O(\doa_pair.counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \doa_pair.counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(run),
        .O(\doa_pair.counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \doa_pair.counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(run),
        .I3(counter[0]),
        .O(\doa_pair.counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \doa_pair.counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(run),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(counter__0[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \doa_pair.counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(run),
        .I5(counter[0]),
        .O(counter__0[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    \doa_pair.counter[5]_i_1 
       (.I0(start),
        .I1(reset),
        .I2(fail),
        .O(\doa_pair.counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \doa_pair.counter[5]_i_2 
       (.I0(counter[5]),
        .I1(\doa_pair.counter[5]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(counter__0[5]));
  LUT3 #(
    .INIT(8'h7F)) 
    \doa_pair.counter[5]_i_3 
       (.I0(counter[0]),
        .I1(run),
        .I2(counter[1]),
        .O(\doa_pair.counter[5]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[0]),
        .Q(counter[0]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[3]),
        .Q(counter[3]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[4]),
        .Q(counter[4]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[5]),
        .Q(counter[5]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \doa_pair.done_i_1 
       (.I0(start),
        .I1(reset),
        .I2(fail),
        .O(\doa_pair.done_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.done_i_2 
       (.I0(\doa_pair.counter[0]_i_2_n_0 ),
        .I1(run),
        .I2(done),
        .O(\doa_pair.done_reg0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.done_reg0 ),
        .Q(done),
        .R(\doa_pair.done_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCB8FFFFCCB80000)) 
    \doa_pair.fail_i_1 
       (.I0(fail2_out),
        .I1(\doa_pair.fail_i_3_n_0 ),
        .I2(has_ov),
        .I3(\doa_pair.fail_i_4_n_0 ),
        .I4(fail__0),
        .I5(fail),
        .O(\doa_pair.fail_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \doa_pair.fail_i_2 
       (.I0(has_shadow_diff),
        .I1(shadow_diff[19]),
        .O(fail2_out));
  LUT5 #(
    .INIT(32'h20000004)) 
    \doa_pair.fail_i_3 
       (.I0(ov[2]),
        .I1(ov[1]),
        .I2(ov[5]),
        .I3(ov[4]),
        .I4(ov[3]),
        .O(\doa_pair.fail_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8001800000018001)) 
    \doa_pair.fail_i_4 
       (.I0(ov[5]),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[0]),
        .I5(ov[1]),
        .O(\doa_pair.fail_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAB)) 
    \doa_pair.fail_i_5 
       (.I0(has_ov),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[5]),
        .O(fail__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.fail_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.fail_i_1_n_0 ),
        .Q(fail),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.has_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(calc_diff),
        .Q(has_diff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.has_ov_i_1 
       (.I0(has_ov),
        .I1(\doa_pair.has_ov_i_2_n_0 ),
        .I2(counter[1]),
        .O(\doa_pair.has_ov_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \doa_pair.has_ov_i_2 
       (.I0(counter[2]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(counter[3]),
        .I4(counter[0]),
        .O(\doa_pair.has_ov_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.has_ov_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.has_ov_i_1_n_0 ),
        .Q(has_ov),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.has_shadow_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(has_diff),
        .Q(has_shadow_diff),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \doa_pair.ignore_i_1 
       (.I0(xp[37]),
        .I1(\doa_pair.ignore_i_2_n_0 ),
        .I2(xp[38]),
        .I3(add),
        .I4(run),
        .I5(\doa_pair.ignore_reg_n_0 ),
        .O(\doa_pair.ignore_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_2 
       (.I0(\doa_pair.ignore_i_3_n_0 ),
        .I1(\doa_pair.ignore_i_4_n_0 ),
        .I2(xp[33]),
        .I3(xp[31]),
        .I4(xp[32]),
        .I5(\doa_pair.ignore_i_5_n_0 ),
        .O(\doa_pair.ignore_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \doa_pair.ignore_i_3 
       (.I0(xp[36]),
        .I1(xp[35]),
        .O(\doa_pair.ignore_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_4 
       (.I0(\doa_pair.ignore_i_6_n_0 ),
        .I1(\doa_pair.ignore_i_7_n_0 ),
        .I2(xp[27]),
        .I3(xp[25]),
        .I4(xp[26]),
        .I5(\doa_pair.ignore_i_8_n_0 ),
        .O(\doa_pair.ignore_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \doa_pair.ignore_i_5 
       (.I0(xp[36]),
        .I1(xp[34]),
        .I2(xp[35]),
        .O(\doa_pair.ignore_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \doa_pair.ignore_i_6 
       (.I0(xp[30]),
        .I1(xp[29]),
        .O(\doa_pair.ignore_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_7 
       (.I0(xp[20]),
        .I1(xp[19]),
        .I2(xp[21]),
        .I3(xp[24]),
        .I4(xp[22]),
        .I5(xp[23]),
        .O(\doa_pair.ignore_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \doa_pair.ignore_i_8 
       (.I0(xp[30]),
        .I1(xp[28]),
        .I2(xp[29]),
        .O(\doa_pair.ignore_i_8_n_0 ));
  FDRE \doa_pair.ignore_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.ignore_i_1_n_0 ),
        .Q(\doa_pair.ignore_reg_n_0 ),
        .R(\doa_pair.done_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5554)) 
    \doa_pair.ind[0]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[3]),
        .O(\doa_pair.ind[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \doa_pair.ind[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[3]),
        .O(ind[1]));
  LUT4 #(
    .INIT(16'hFC4C)) 
    \doa_pair.ind[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[5]),
        .O(ind[2]));
  LUT6 #(
    .INIT(64'h0118866100866110)) 
    \doa_pair.ind[3]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[1]),
        .O(\doa_pair.ind[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \doa_pair.ind[3]_i_2 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(ind[3]));
  FDRE \doa_pair.ind_reg[0] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(\doa_pair.ind[0]_i_1_n_0 ),
        .Q(\doa_pair.ind_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[1] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[1]),
        .Q(\doa_pair.ind_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[2] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[2]),
        .Q(\doa_pair.ind_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[3] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[3]),
        .Q(\doa_pair.ind_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000001)) 
    \doa_pair.init_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[5]),
        .I3(counter[1]),
        .I4(\doa_pair.init_i_2_n_0 ),
        .I5(init),
        .O(\doa_pair.init_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \doa_pair.init_i_2 
       (.I0(counter[4]),
        .I1(counter[2]),
        .O(\doa_pair.init_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.init_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.init_i_1_n_0 ),
        .Q(init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \doa_pair.ov[5]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[2]),
        .O(\doa_pair.ov[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \doa_pair.ov[5]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[2]),
        .O(p_0_in__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[0] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[34]),
        .Q(ov[0]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[1] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[35]),
        .Q(ov[1]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[2] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[36]),
        .Q(ov[2]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[3] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[37]),
        .Q(ov[3]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[4] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[38]),
        .Q(ov[4]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \doa_pair.ov_reg[5] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[39]),
        .Q(ov[5]),
        .S(\doa_pair.ov[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000F2)) 
    \doa_pair.run_i_1 
       (.I0(run),
        .I1(\doa_pair.counter[0]_i_2_n_0 ),
        .I2(start),
        .I3(reset),
        .I4(fail),
        .O(\doa_pair.run_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.run_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.run_i_1_n_0 ),
        .Q(run),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_2 
       (.I0(x_diff[15]),
        .I1(shadow_limit[15]),
        .O(\doa_pair.shadow_diff[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_3 
       (.I0(x_diff[14]),
        .I1(shadow_limit[14]),
        .O(\doa_pair.shadow_diff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_4 
       (.I0(x_diff[13]),
        .I1(shadow_limit[13]),
        .O(\doa_pair.shadow_diff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_5 
       (.I0(x_diff[12]),
        .I1(shadow_limit[12]),
        .O(\doa_pair.shadow_diff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_6 
       (.I0(x_diff[11]),
        .I1(shadow_limit[11]),
        .O(\doa_pair.shadow_diff[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_7 
       (.I0(x_diff[10]),
        .I1(shadow_limit[10]),
        .O(\doa_pair.shadow_diff[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_8 
       (.I0(x_diff[9]),
        .I1(shadow_limit[9]),
        .O(\doa_pair.shadow_diff[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_9 
       (.I0(x_diff[8]),
        .I1(shadow_limit[8]),
        .O(\doa_pair.shadow_diff[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \doa_pair.shadow_diff[19]_i_2 
       (.I0(shadow_limit[19]),
        .O(\doa_pair.shadow_diff[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_3 
       (.I0(x_diff[18]),
        .I1(shadow_limit[18]),
        .O(\doa_pair.shadow_diff[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_4 
       (.I0(x_diff[17]),
        .I1(shadow_limit[17]),
        .O(\doa_pair.shadow_diff[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_5 
       (.I0(x_diff[16]),
        .I1(shadow_limit[16]),
        .O(\doa_pair.shadow_diff[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_2 
       (.I0(x_diff[7]),
        .I1(shadow_limit[7]),
        .O(\doa_pair.shadow_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_3 
       (.I0(x_diff[6]),
        .I1(shadow_limit[6]),
        .O(\doa_pair.shadow_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_4 
       (.I0(x_diff[5]),
        .I1(shadow_limit[5]),
        .O(\doa_pair.shadow_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_5 
       (.I0(x_diff[4]),
        .I1(shadow_limit[4]),
        .O(\doa_pair.shadow_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_6 
       (.I0(x_diff[3]),
        .I1(shadow_limit[3]),
        .O(\doa_pair.shadow_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_7 
       (.I0(x_diff[2]),
        .I1(shadow_limit[2]),
        .O(\doa_pair.shadow_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_8 
       (.I0(x_diff[1]),
        .I1(shadow_limit[1]),
        .O(\doa_pair.shadow_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_9 
       (.I0(x_diff[0]),
        .I1(shadow_limit[0]),
        .O(\doa_pair.shadow_diff[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[0] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [0]),
        .Q(shadow_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[10] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [10]),
        .Q(shadow_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[11] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [11]),
        .Q(shadow_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[12] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [12]),
        .Q(shadow_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[13] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [13]),
        .Q(shadow_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[14] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [14]),
        .Q(shadow_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[15] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [15]),
        .Q(shadow_diff[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[15]_i_1 
       (.CI(\doa_pair.shadow_diff_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\doa_pair.shadow_diff_reg[15]_i_1_n_0 ,\doa_pair.shadow_diff_reg[15]_i_1_n_1 ,\doa_pair.shadow_diff_reg[15]_i_1_n_2 ,\doa_pair.shadow_diff_reg[15]_i_1_n_3 ,\doa_pair.shadow_diff_reg[15]_i_1_n_4 ,\doa_pair.shadow_diff_reg[15]_i_1_n_5 ,\doa_pair.shadow_diff_reg[15]_i_1_n_6 ,\doa_pair.shadow_diff_reg[15]_i_1_n_7 }),
        .DI(x_diff[15:8]),
        .O(\doa_pair.shadow_diff_reg0 [15:8]),
        .S({\doa_pair.shadow_diff[15]_i_2_n_0 ,\doa_pair.shadow_diff[15]_i_3_n_0 ,\doa_pair.shadow_diff[15]_i_4_n_0 ,\doa_pair.shadow_diff[15]_i_5_n_0 ,\doa_pair.shadow_diff[15]_i_6_n_0 ,\doa_pair.shadow_diff[15]_i_7_n_0 ,\doa_pair.shadow_diff[15]_i_8_n_0 ,\doa_pair.shadow_diff[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[16] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [16]),
        .Q(shadow_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[17] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [17]),
        .Q(shadow_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[18] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [18]),
        .Q(shadow_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[19] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [19]),
        .Q(shadow_diff[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[19]_i_1 
       (.CI(\doa_pair.shadow_diff_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_doa_pair.shadow_diff_reg[19]_i_1_CO_UNCONNECTED [7:3],\doa_pair.shadow_diff_reg[19]_i_1_n_5 ,\doa_pair.shadow_diff_reg[19]_i_1_n_6 ,\doa_pair.shadow_diff_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,x_diff[18:16]}),
        .O({\NLW_doa_pair.shadow_diff_reg[19]_i_1_O_UNCONNECTED [7:4],\doa_pair.shadow_diff_reg0 [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\doa_pair.shadow_diff[19]_i_2_n_0 ,\doa_pair.shadow_diff[19]_i_3_n_0 ,\doa_pair.shadow_diff[19]_i_4_n_0 ,\doa_pair.shadow_diff[19]_i_5_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[1] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [1]),
        .Q(shadow_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[2] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [2]),
        .Q(shadow_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[3] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [3]),
        .Q(shadow_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[4] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [4]),
        .Q(shadow_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[5] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [5]),
        .Q(shadow_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[6] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [6]),
        .Q(shadow_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[7] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [7]),
        .Q(shadow_diff[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\doa_pair.shadow_diff_reg[7]_i_1_n_0 ,\doa_pair.shadow_diff_reg[7]_i_1_n_1 ,\doa_pair.shadow_diff_reg[7]_i_1_n_2 ,\doa_pair.shadow_diff_reg[7]_i_1_n_3 ,\doa_pair.shadow_diff_reg[7]_i_1_n_4 ,\doa_pair.shadow_diff_reg[7]_i_1_n_5 ,\doa_pair.shadow_diff_reg[7]_i_1_n_6 ,\doa_pair.shadow_diff_reg[7]_i_1_n_7 }),
        .DI(x_diff[7:0]),
        .O(\doa_pair.shadow_diff_reg0 [7:0]),
        .S({\doa_pair.shadow_diff[7]_i_2_n_0 ,\doa_pair.shadow_diff[7]_i_3_n_0 ,\doa_pair.shadow_diff[7]_i_4_n_0 ,\doa_pair.shadow_diff[7]_i_5_n_0 ,\doa_pair.shadow_diff[7]_i_6_n_0 ,\doa_pair.shadow_diff[7]_i_7_n_0 ,\doa_pair.shadow_diff[7]_i_8_n_0 ,\doa_pair.shadow_diff[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[8] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [8]),
        .Q(shadow_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[9] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [9]),
        .Q(shadow_diff[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \doa_pair.shadow_i_1 
       (.I0(\doa_pair.shadow_i_2_n_0 ),
        .I1(ov[5]),
        .I2(ov[2]),
        .I3(\doa_pair.shadow_i_3_n_0 ),
        .I4(ov[4]),
        .I5(ov[3]),
        .O(\doa_pair.shadow_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55DF4080)) 
    \doa_pair.shadow_i_2 
       (.I0(ov[1]),
        .I1(shadow_diff[19]),
        .I2(has_shadow_diff),
        .I3(ov[0]),
        .I4(shadow),
        .O(\doa_pair.shadow_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E0A0E0)) 
    \doa_pair.shadow_i_3 
       (.I0(ov[1]),
        .I1(ov[0]),
        .I2(shadow),
        .I3(has_shadow_diff),
        .I4(shadow_diff[19]),
        .O(\doa_pair.shadow_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.shadow_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.shadow_i_1_n_0 ),
        .Q(shadow),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_10 
       (.I0(cp[34]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[15]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_11 
       (.I0(cp[33]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[14]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_12 
       (.I0(cp[32]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[13]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_13 
       (.I0(cp[31]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[12]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_14 
       (.I0(cp[30]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[11]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_15 
       (.I0(cp[29]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[10]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_16 
       (.I0(cp[28]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[9]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_17 
       (.I0(cp[27]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[8]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[34]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[33]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[32]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[31]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_6 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[30]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_7 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[29]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_8 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[28]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_9 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[27]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_10 
       (.I0(cp[35]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[16]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[38]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[37]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[36]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[35]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_6 
       (.I0(cp[39]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[20]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_7 
       (.I0(cp[38]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[19]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_8 
       (.I0(cp[37]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[18]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_9 
       (.I0(cp[36]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[17]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_10 
       (.I0(cp[26]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[7]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_11 
       (.I0(cp[25]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[6]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_12 
       (.I0(cp[24]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[5]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_13 
       (.I0(cp[23]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[4]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_14 
       (.I0(cp[22]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[3]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_15 
       (.I0(cp[21]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[2]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_16 
       (.I0(cp[20]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[1]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_17 
       (.I0(cp[19]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[0]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[26]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[25]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[24]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[23]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_6 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[22]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_7 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[21]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_8 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[20]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_9 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[19]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_15 ),
        .Q(sum[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_13 ),
        .Q(sum[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_12 ),
        .Q(sum[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_11 ),
        .Q(sum[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_10 ),
        .Q(sum[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_9 ),
        .Q(sum[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_8 ),
        .Q(sum[15]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[15]_i_1 
       (.CI(\doa_pair.sum_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\doa_pair.sum_reg[15]_i_1_n_0 ,\doa_pair.sum_reg[15]_i_1_n_1 ,\doa_pair.sum_reg[15]_i_1_n_2 ,\doa_pair.sum_reg[15]_i_1_n_3 ,\doa_pair.sum_reg[15]_i_1_n_4 ,\doa_pair.sum_reg[15]_i_1_n_5 ,\doa_pair.sum_reg[15]_i_1_n_6 ,\doa_pair.sum_reg[15]_i_1_n_7 }),
        .DI({\doa_pair.sum[15]_i_2_n_0 ,\doa_pair.sum[15]_i_3_n_0 ,\doa_pair.sum[15]_i_4_n_0 ,\doa_pair.sum[15]_i_5_n_0 ,\doa_pair.sum[15]_i_6_n_0 ,\doa_pair.sum[15]_i_7_n_0 ,\doa_pair.sum[15]_i_8_n_0 ,\doa_pair.sum[15]_i_9_n_0 }),
        .O({\doa_pair.sum_reg[15]_i_1_n_8 ,\doa_pair.sum_reg[15]_i_1_n_9 ,\doa_pair.sum_reg[15]_i_1_n_10 ,\doa_pair.sum_reg[15]_i_1_n_11 ,\doa_pair.sum_reg[15]_i_1_n_12 ,\doa_pair.sum_reg[15]_i_1_n_13 ,\doa_pair.sum_reg[15]_i_1_n_14 ,\doa_pair.sum_reg[15]_i_1_n_15 }),
        .S({\doa_pair.sum[15]_i_10_n_0 ,\doa_pair.sum[15]_i_11_n_0 ,\doa_pair.sum[15]_i_12_n_0 ,\doa_pair.sum[15]_i_13_n_0 ,\doa_pair.sum[15]_i_14_n_0 ,\doa_pair.sum[15]_i_15_n_0 ,\doa_pair.sum[15]_i_16_n_0 ,\doa_pair.sum[15]_i_17_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_15 ),
        .Q(sum[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_14 ),
        .Q(sum[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_13 ),
        .Q(sum[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_12 ),
        .Q(sum[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_14 ),
        .Q(sum[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_11 ),
        .Q(sum[20]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[20]_i_1 
       (.CI(\doa_pair.sum_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_doa_pair.sum_reg[20]_i_1_CO_UNCONNECTED [7:4],\doa_pair.sum_reg[20]_i_1_n_4 ,\doa_pair.sum_reg[20]_i_1_n_5 ,\doa_pair.sum_reg[20]_i_1_n_6 ,\doa_pair.sum_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\doa_pair.sum[20]_i_2_n_0 ,\doa_pair.sum[20]_i_3_n_0 ,\doa_pair.sum[20]_i_4_n_0 ,\doa_pair.sum[20]_i_5_n_0 }),
        .O({\NLW_doa_pair.sum_reg[20]_i_1_O_UNCONNECTED [7:5],\doa_pair.sum_reg[20]_i_1_n_11 ,\doa_pair.sum_reg[20]_i_1_n_12 ,\doa_pair.sum_reg[20]_i_1_n_13 ,\doa_pair.sum_reg[20]_i_1_n_14 ,\doa_pair.sum_reg[20]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,\doa_pair.sum[20]_i_6_n_0 ,\doa_pair.sum[20]_i_7_n_0 ,\doa_pair.sum[20]_i_8_n_0 ,\doa_pair.sum[20]_i_9_n_0 ,\doa_pair.sum[20]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_13 ),
        .Q(sum[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_12 ),
        .Q(sum[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_11 ),
        .Q(sum[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_10 ),
        .Q(sum[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_9 ),
        .Q(sum[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_8 ),
        .Q(sum[7]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\doa_pair.sum_reg[7]_i_1_n_0 ,\doa_pair.sum_reg[7]_i_1_n_1 ,\doa_pair.sum_reg[7]_i_1_n_2 ,\doa_pair.sum_reg[7]_i_1_n_3 ,\doa_pair.sum_reg[7]_i_1_n_4 ,\doa_pair.sum_reg[7]_i_1_n_5 ,\doa_pair.sum_reg[7]_i_1_n_6 ,\doa_pair.sum_reg[7]_i_1_n_7 }),
        .DI({\doa_pair.sum[7]_i_2_n_0 ,\doa_pair.sum[7]_i_3_n_0 ,\doa_pair.sum[7]_i_4_n_0 ,\doa_pair.sum[7]_i_5_n_0 ,\doa_pair.sum[7]_i_6_n_0 ,\doa_pair.sum[7]_i_7_n_0 ,\doa_pair.sum[7]_i_8_n_0 ,\doa_pair.sum[7]_i_9_n_0 }),
        .O({\doa_pair.sum_reg[7]_i_1_n_8 ,\doa_pair.sum_reg[7]_i_1_n_9 ,\doa_pair.sum_reg[7]_i_1_n_10 ,\doa_pair.sum_reg[7]_i_1_n_11 ,\doa_pair.sum_reg[7]_i_1_n_12 ,\doa_pair.sum_reg[7]_i_1_n_13 ,\doa_pair.sum_reg[7]_i_1_n_14 ,\doa_pair.sum_reg[7]_i_1_n_15 }),
        .S({\doa_pair.sum[7]_i_10_n_0 ,\doa_pair.sum[7]_i_11_n_0 ,\doa_pair.sum[7]_i_12_n_0 ,\doa_pair.sum[7]_i_13_n_0 ,\doa_pair.sum[7]_i_14_n_0 ,\doa_pair.sum[7]_i_15_n_0 ,\doa_pair.sum[7]_i_16_n_0 ,\doa_pair.sum[7]_i_17_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_15 ),
        .Q(sum[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_14 ),
        .Q(sum[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF6)) 
    \doa_pair.x[0]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[16]),
        .O(x__0[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[10]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[26]),
        .O(x__0[10]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[11]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[27]),
        .O(x__0[11]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[12]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[28]),
        .O(x__0[12]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[13]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[29]),
        .O(x__0[13]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[14]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[30]),
        .O(x__0[14]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[15]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[31]),
        .O(x__0[15]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[16]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[32]),
        .O(x__0[16]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[17]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[33]),
        .O(x__0[17]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[18]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[34]),
        .O(x__0[18]));
  LUT6 #(
    .INIT(64'h8000800180010001)) 
    \doa_pair.x[19]_i_1 
       (.I0(ov[5]),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[1]),
        .I5(ov[0]),
        .O(\doa_pair.x[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \doa_pair.x[19]_i_2 
       (.I0(ov[5]),
        .I1(prod[35]),
        .I2(ov[1]),
        .O(x__0[19]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[1]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[17]),
        .O(x__0[1]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[2]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[18]),
        .O(x__0[2]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[3]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[19]),
        .O(x__0[3]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[4]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[20]),
        .O(x__0[4]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[5]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[21]),
        .O(x__0[5]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[6]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[22]),
        .O(x__0[6]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[7]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[23]),
        .O(x__0[7]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[8]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[24]),
        .O(x__0[8]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[9]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[25]),
        .O(x__0[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[0]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[0]),
        .O(\doa_pair.x_abs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[10]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[10]),
        .O(\doa_pair.x_abs[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[11]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[11]),
        .O(\doa_pair.x_abs[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[12]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[12]),
        .O(\doa_pair.x_abs[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[13]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[13]),
        .O(\doa_pair.x_abs[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[14]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[14]),
        .O(\doa_pair.x_abs[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[15]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[15]),
        .O(\doa_pair.x_abs[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[16]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[16]),
        .O(\doa_pair.x_abs[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[17]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[17]),
        .O(\doa_pair.x_abs[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[18]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[18]),
        .O(\doa_pair.x_abs[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[19]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[19]),
        .O(\doa_pair.x_abs[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[1]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[1]),
        .O(\doa_pair.x_abs[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[2]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[2]),
        .O(\doa_pair.x_abs[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[3]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[3]),
        .O(\doa_pair.x_abs[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[4]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[4]),
        .O(\doa_pair.x_abs[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[5]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[5]),
        .O(\doa_pair.x_abs[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[6]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[6]),
        .O(\doa_pair.x_abs[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[7]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[7]),
        .O(\doa_pair.x_abs[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[8]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[8]),
        .O(\doa_pair.x_abs[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[9]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[9]),
        .O(\doa_pair.x_abs[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[0] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[0]_i_1_n_0 ),
        .Q(x_abs[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[10] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[10]_i_1_n_0 ),
        .Q(x_abs[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[11] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[11]_i_1_n_0 ),
        .Q(x_abs[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[12] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[12]_i_1_n_0 ),
        .Q(x_abs[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[13] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[13]_i_1_n_0 ),
        .Q(x_abs[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[14] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[14]_i_1_n_0 ),
        .Q(x_abs[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[15] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[15]_i_1_n_0 ),
        .Q(x_abs[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[16] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[16]_i_1_n_0 ),
        .Q(x_abs[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[17] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[17]_i_1_n_0 ),
        .Q(x_abs[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[18] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[18]_i_1_n_0 ),
        .Q(x_abs[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[19] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[19]_i_1_n_0 ),
        .Q(x_abs[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[1] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[1]_i_1_n_0 ),
        .Q(x_abs[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[2] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[2]_i_1_n_0 ),
        .Q(x_abs[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[3] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[3]_i_1_n_0 ),
        .Q(x_abs[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[4] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[4]_i_1_n_0 ),
        .Q(x_abs[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[5] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[5]_i_1_n_0 ),
        .Q(x_abs[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[6] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[6]_i_1_n_0 ),
        .Q(x_abs[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[7] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[7]_i_1_n_0 ),
        .Q(x_abs[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[8] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[8]_i_1_n_0 ),
        .Q(x_abs[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[9] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[9]_i_1_n_0 ),
        .Q(x_abs[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[0]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[10]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[10]),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[11]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[11]),
        .O(p_1_in[11]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[12]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[12]),
        .O(p_1_in[12]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[13]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[13]),
        .O(p_1_in[13]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[14]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[14]),
        .O(p_1_in[14]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[15]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[15]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[16]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[16]),
        .O(p_1_in[16]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[17]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[17]),
        .O(p_1_in[17]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[18]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[18]),
        .O(p_1_in[18]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[1]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[1]),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[2]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[2]),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[3]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[3]),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[4]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[4]),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[5]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[5]),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[6]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[6]),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[7]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[7]),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[8]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[8]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[9]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[9]),
        .O(p_1_in[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[0] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[0]),
        .Q(x_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[10] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[10]),
        .Q(x_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[11] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[11]),
        .Q(x_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[12] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[12]),
        .Q(x_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[13] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[13]),
        .Q(x_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[14] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[14]),
        .Q(x_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[15] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[15]),
        .Q(x_diff[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[16] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[16]),
        .Q(x_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[17] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[17]),
        .Q(x_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[18] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[18]),
        .Q(x_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[1] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[1]),
        .Q(x_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[2] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[2]),
        .Q(x_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[3] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[3]),
        .Q(x_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[4] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[4]),
        .Q(x_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[5] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[5]),
        .Q(x_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[6] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[6]),
        .Q(x_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[7] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[7]),
        .Q(x_diff[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[8] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[8]),
        .Q(x_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[9] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[9]),
        .Q(x_diff[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2800000000000014)) 
    \doa_pair.x_raw[20]_i_1 
       (.I0(ov[5]),
        .I1(ov[0]),
        .I2(ov[1]),
        .I3(ov[4]),
        .I4(ov[3]),
        .I5(ov[2]),
        .O(\doa_pair.x_raw[20]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[0] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[16]),
        .Q(x_raw[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[10] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[26]),
        .Q(x_raw[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[11] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[27]),
        .Q(x_raw[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[12] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[28]),
        .Q(x_raw[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[13] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[29]),
        .Q(x_raw[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[14] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[30]),
        .Q(x_raw[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[15] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[31]),
        .Q(x_raw[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[16] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[32]),
        .Q(x_raw[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[17] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[33]),
        .Q(x_raw[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[18] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[34]),
        .Q(x_raw[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[19] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[35]),
        .Q(x_raw[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[1] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[17]),
        .Q(x_raw[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[20] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[36]),
        .Q(x_raw[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[2] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[18]),
        .Q(x_raw[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[3] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[19]),
        .Q(x_raw[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[4] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[20]),
        .Q(x_raw[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[5] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[21]),
        .Q(x_raw[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[6] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[22]),
        .Q(x_raw[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[7] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[23]),
        .Q(x_raw[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[8] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[24]),
        .Q(x_raw[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[9] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[25]),
        .Q(x_raw[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[0] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[0]),
        .Q(x[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[10] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[10]),
        .Q(x[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[11] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[11]),
        .Q(x[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[12] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[12]),
        .Q(x[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[13] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[13]),
        .Q(x[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[14] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[14]),
        .Q(x[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[15] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[15]),
        .Q(x[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[16] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[16]),
        .Q(x[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[17] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[17]),
        .Q(x[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[18] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[18]),
        .Q(x[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[19] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[19]),
        .Q(x[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[1] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[1]),
        .Q(x[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[2] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[2]),
        .Q(x[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[3] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[3]),
        .Q(x[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[4] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[4]),
        .Q(x[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[5] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[5]),
        .Q(x[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[6] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[6]),
        .Q(x[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[7] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[7]),
        .Q(x[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[8] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[8]),
        .Q(x[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[9] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[9]),
        .Q(x[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0049249249249200)) 
    g0_b0
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(g0_b0_n_0));
  (* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_7_HD3 ila_i
       (.clk(clk),
        .probe0(start),
        .probe1(counter),
        .probe10(has_diff),
        .probe11(x_diff),
        .probe12(has_shadow_diff),
        .probe13(shadow_diff),
        .probe14(shadow),
        .probe15(x),
        .probe16(sum),
        .probe17(done),
        .probe18(fail),
        .probe19(angle),
        .probe2(run),
        .probe3(init),
        .probe4(has_ov),
        .probe5(ov),
        .probe6(check_raw),
        .probe7(x_raw),
        .probe8(x_abs),
        .probe9(calc_diff));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20_HD4 mul_c_i
       (.A({1'b0,\doa_pair.coeff_reg_n_0_[18] ,1'b0,\doa_pair.coeff_reg_n_0_[16] ,\doa_pair.coeff_reg_n_0_[15] ,\doa_pair.coeff_reg_n_0_[14] ,\doa_pair.coeff_reg_n_0_[13] ,\doa_pair.coeff_reg_n_0_[12] ,\doa_pair.coeff_reg_n_0_[11] ,\doa_pair.coeff_reg_n_0_[10] ,\doa_pair.coeff_reg_n_0_[9] ,\doa_pair.coeff_reg_n_0_[8] ,\doa_pair.coeff_reg_n_0_[7] ,\doa_pair.coeff_reg_n_0_[6] ,\doa_pair.coeff_reg_n_0_[5] ,\doa_pair.coeff_reg_n_0_[4] ,\doa_pair.coeff_reg_n_0_[3] ,\doa_pair.coeff_reg_n_0_[2] ,\doa_pair.coeff_reg_n_0_[1] ,\doa_pair.coeff_reg_n_0_[0] }),
        .B(p),
        .CLK(clk),
        .P({cp,NLW_mul_c_i_P_UNCONNECTED[18:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_doa_i
       (.A(k),
        .B(phase),
        .CLK(clk),
        .P({prod,NLW_mul_doa_i_P_UNCONNECTED[15:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_x2_i
       (.A(x),
        .B(x),
        .CLK(clk),
        .P({NLW_mul_x2_i_P_UNCONNECTED[39],x2,NLW_mul_x2_i_P_UNCONNECTED[18:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_x_i
       (.A(x2),
        .B(p),
        .CLK(clk),
        .P({NLW_mul_x_i_P_UNCONNECTED[39],xp,NLW_mul_x_i_P_UNCONNECTED[18:0]}));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_1
       (.I0(x[19]),
        .I1(init),
        .I2(xp[38]),
        .O(p[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_10
       (.I0(x[10]),
        .I1(init),
        .I2(xp[29]),
        .O(p[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_11
       (.I0(x[9]),
        .I1(init),
        .I2(xp[28]),
        .O(p[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_12
       (.I0(x[8]),
        .I1(init),
        .I2(xp[27]),
        .O(p[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_13
       (.I0(x[7]),
        .I1(init),
        .I2(xp[26]),
        .O(p[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_14
       (.I0(x[6]),
        .I1(init),
        .I2(xp[25]),
        .O(p[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_15
       (.I0(x[5]),
        .I1(init),
        .I2(xp[24]),
        .O(p[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_16
       (.I0(x[4]),
        .I1(init),
        .I2(xp[23]),
        .O(p[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_17
       (.I0(x[3]),
        .I1(init),
        .I2(xp[22]),
        .O(p[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_18
       (.I0(x[2]),
        .I1(init),
        .I2(xp[21]),
        .O(p[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_19
       (.I0(x[1]),
        .I1(init),
        .I2(xp[20]),
        .O(p[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_2
       (.I0(x[18]),
        .I1(init),
        .I2(xp[37]),
        .O(p[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_20
       (.I0(x[0]),
        .I1(init),
        .I2(xp[19]),
        .O(p[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_3
       (.I0(x[17]),
        .I1(init),
        .I2(xp[36]),
        .O(p[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_4
       (.I0(x[16]),
        .I1(init),
        .I2(xp[35]),
        .O(p[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_5
       (.I0(x[15]),
        .I1(init),
        .I2(xp[34]),
        .O(p[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_6
       (.I0(x[14]),
        .I1(init),
        .I2(xp[33]),
        .O(p[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_7
       (.I0(x[13]),
        .I1(init),
        .I2(xp[32]),
        .O(p[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_8
       (.I0(x[12]),
        .I1(init),
        .I2(xp[31]),
        .O(p[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_9
       (.I0(x[11]),
        .I1(init),
        .I2(xp[30]),
        .O(p[11]));
endmodule

(* ORIG_REF_NAME = "doa_pair" *) (* keep_hierarchy = "soft" *) 
module ps_comp_low_0_0_doa_pair__xdcDup__1
   (clk,
    reset,
    start,
    k,
    shadow_limit,
    phase,
    done,
    fail,
    shadow,
    angle);
  input clk;
  input reset;
  input start;
  input [19:0]k;
  input [19:0]shadow_limit;
  input [19:0]phase;
  output done;
  output fail;
  output shadow;
  output [19:0]angle;

  wire add;
  (* MARK_DEBUG *) wire [19:0]angle;
  (* MARK_DEBUG *) wire calc_diff;
  (* MARK_DEBUG *) wire check_raw;
  wire check_raw__0;
  wire clk;
  wire [18:0]coeff;
  (* MARK_DEBUG *) wire [5:0]counter;
  wire [5:0]counter__0;
  wire [39:19]cp;
  wire \doa_pair.add_i_1_n_0 ;
  wire \doa_pair.add_i_2_n_0 ;
  wire \doa_pair.angle[19]_i_1_n_0 ;
  wire \doa_pair.check_raw_i_2_n_0 ;
  wire \doa_pair.coeff_reg_n_0_[0] ;
  wire \doa_pair.coeff_reg_n_0_[10] ;
  wire \doa_pair.coeff_reg_n_0_[11] ;
  wire \doa_pair.coeff_reg_n_0_[12] ;
  wire \doa_pair.coeff_reg_n_0_[13] ;
  wire \doa_pair.coeff_reg_n_0_[14] ;
  wire \doa_pair.coeff_reg_n_0_[15] ;
  wire \doa_pair.coeff_reg_n_0_[16] ;
  wire \doa_pair.coeff_reg_n_0_[18] ;
  wire \doa_pair.coeff_reg_n_0_[1] ;
  wire \doa_pair.coeff_reg_n_0_[2] ;
  wire \doa_pair.coeff_reg_n_0_[3] ;
  wire \doa_pair.coeff_reg_n_0_[4] ;
  wire \doa_pair.coeff_reg_n_0_[5] ;
  wire \doa_pair.coeff_reg_n_0_[6] ;
  wire \doa_pair.coeff_reg_n_0_[7] ;
  wire \doa_pair.coeff_reg_n_0_[8] ;
  wire \doa_pair.coeff_reg_n_0_[9] ;
  wire \doa_pair.counter[0]_i_2_n_0 ;
  wire \doa_pair.counter[1]_i_1_n_0 ;
  wire \doa_pair.counter[2]_i_1_n_0 ;
  wire \doa_pair.counter[5]_i_1_n_0 ;
  wire \doa_pair.counter[5]_i_3_n_0 ;
  wire \doa_pair.done_i_1_n_0 ;
  wire \doa_pair.done_reg0 ;
  wire \doa_pair.fail_i_1_n_0 ;
  wire \doa_pair.fail_i_3_n_0 ;
  wire \doa_pair.fail_i_4_n_0 ;
  wire \doa_pair.has_ov_i_1_n_0 ;
  wire \doa_pair.has_ov_i_2_n_0 ;
  wire \doa_pair.ignore_i_1_n_0 ;
  wire \doa_pair.ignore_i_2_n_0 ;
  wire \doa_pair.ignore_i_3_n_0 ;
  wire \doa_pair.ignore_i_4_n_0 ;
  wire \doa_pair.ignore_i_5_n_0 ;
  wire \doa_pair.ignore_i_6_n_0 ;
  wire \doa_pair.ignore_i_7_n_0 ;
  wire \doa_pair.ignore_i_8_n_0 ;
  wire \doa_pair.ignore_reg_n_0 ;
  wire \doa_pair.ind[0]_i_1_n_0 ;
  wire \doa_pair.ind[3]_i_1_n_0 ;
  wire \doa_pair.ind_reg_n_0_[0] ;
  wire \doa_pair.ind_reg_n_0_[1] ;
  wire \doa_pair.ind_reg_n_0_[2] ;
  wire \doa_pair.ind_reg_n_0_[3] ;
  wire \doa_pair.init_i_1_n_0 ;
  wire \doa_pair.init_i_2_n_0 ;
  wire \doa_pair.ov[5]_i_1_n_0 ;
  wire \doa_pair.run_i_1_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_6_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_7_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_8_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_9_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_6_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_7_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_8_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_9_n_0 ;
  wire [19:0]\doa_pair.shadow_diff_reg0 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_0 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_1 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_2 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_3 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_4 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_7 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_7 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_0 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_1 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_2 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_3 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_4 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_7 ;
  wire \doa_pair.shadow_i_1_n_0 ;
  wire \doa_pair.shadow_i_2_n_0 ;
  wire \doa_pair.shadow_i_3_n_0 ;
  wire \doa_pair.sum[15]_i_10_n_0 ;
  wire \doa_pair.sum[15]_i_11_n_0 ;
  wire \doa_pair.sum[15]_i_12_n_0 ;
  wire \doa_pair.sum[15]_i_13_n_0 ;
  wire \doa_pair.sum[15]_i_14_n_0 ;
  wire \doa_pair.sum[15]_i_15_n_0 ;
  wire \doa_pair.sum[15]_i_16_n_0 ;
  wire \doa_pair.sum[15]_i_17_n_0 ;
  wire \doa_pair.sum[15]_i_2_n_0 ;
  wire \doa_pair.sum[15]_i_3_n_0 ;
  wire \doa_pair.sum[15]_i_4_n_0 ;
  wire \doa_pair.sum[15]_i_5_n_0 ;
  wire \doa_pair.sum[15]_i_6_n_0 ;
  wire \doa_pair.sum[15]_i_7_n_0 ;
  wire \doa_pair.sum[15]_i_8_n_0 ;
  wire \doa_pair.sum[15]_i_9_n_0 ;
  wire \doa_pair.sum[20]_i_10_n_0 ;
  wire \doa_pair.sum[20]_i_2_n_0 ;
  wire \doa_pair.sum[20]_i_3_n_0 ;
  wire \doa_pair.sum[20]_i_4_n_0 ;
  wire \doa_pair.sum[20]_i_5_n_0 ;
  wire \doa_pair.sum[20]_i_6_n_0 ;
  wire \doa_pair.sum[20]_i_7_n_0 ;
  wire \doa_pair.sum[20]_i_8_n_0 ;
  wire \doa_pair.sum[20]_i_9_n_0 ;
  wire \doa_pair.sum[7]_i_10_n_0 ;
  wire \doa_pair.sum[7]_i_11_n_0 ;
  wire \doa_pair.sum[7]_i_12_n_0 ;
  wire \doa_pair.sum[7]_i_13_n_0 ;
  wire \doa_pair.sum[7]_i_14_n_0 ;
  wire \doa_pair.sum[7]_i_15_n_0 ;
  wire \doa_pair.sum[7]_i_16_n_0 ;
  wire \doa_pair.sum[7]_i_17_n_0 ;
  wire \doa_pair.sum[7]_i_2_n_0 ;
  wire \doa_pair.sum[7]_i_3_n_0 ;
  wire \doa_pair.sum[7]_i_4_n_0 ;
  wire \doa_pair.sum[7]_i_5_n_0 ;
  wire \doa_pair.sum[7]_i_6_n_0 ;
  wire \doa_pair.sum[7]_i_7_n_0 ;
  wire \doa_pair.sum[7]_i_8_n_0 ;
  wire \doa_pair.sum[7]_i_9_n_0 ;
  wire \doa_pair.sum_reg[15]_i_1_n_0 ;
  wire \doa_pair.sum_reg[15]_i_1_n_1 ;
  wire \doa_pair.sum_reg[15]_i_1_n_10 ;
  wire \doa_pair.sum_reg[15]_i_1_n_11 ;
  wire \doa_pair.sum_reg[15]_i_1_n_12 ;
  wire \doa_pair.sum_reg[15]_i_1_n_13 ;
  wire \doa_pair.sum_reg[15]_i_1_n_14 ;
  wire \doa_pair.sum_reg[15]_i_1_n_15 ;
  wire \doa_pair.sum_reg[15]_i_1_n_2 ;
  wire \doa_pair.sum_reg[15]_i_1_n_3 ;
  wire \doa_pair.sum_reg[15]_i_1_n_4 ;
  wire \doa_pair.sum_reg[15]_i_1_n_5 ;
  wire \doa_pair.sum_reg[15]_i_1_n_6 ;
  wire \doa_pair.sum_reg[15]_i_1_n_7 ;
  wire \doa_pair.sum_reg[15]_i_1_n_8 ;
  wire \doa_pair.sum_reg[15]_i_1_n_9 ;
  wire \doa_pair.sum_reg[20]_i_1_n_11 ;
  wire \doa_pair.sum_reg[20]_i_1_n_12 ;
  wire \doa_pair.sum_reg[20]_i_1_n_13 ;
  wire \doa_pair.sum_reg[20]_i_1_n_14 ;
  wire \doa_pair.sum_reg[20]_i_1_n_15 ;
  wire \doa_pair.sum_reg[20]_i_1_n_4 ;
  wire \doa_pair.sum_reg[20]_i_1_n_5 ;
  wire \doa_pair.sum_reg[20]_i_1_n_6 ;
  wire \doa_pair.sum_reg[20]_i_1_n_7 ;
  wire \doa_pair.sum_reg[7]_i_1_n_0 ;
  wire \doa_pair.sum_reg[7]_i_1_n_1 ;
  wire \doa_pair.sum_reg[7]_i_1_n_10 ;
  wire \doa_pair.sum_reg[7]_i_1_n_11 ;
  wire \doa_pair.sum_reg[7]_i_1_n_12 ;
  wire \doa_pair.sum_reg[7]_i_1_n_13 ;
  wire \doa_pair.sum_reg[7]_i_1_n_14 ;
  wire \doa_pair.sum_reg[7]_i_1_n_15 ;
  wire \doa_pair.sum_reg[7]_i_1_n_2 ;
  wire \doa_pair.sum_reg[7]_i_1_n_3 ;
  wire \doa_pair.sum_reg[7]_i_1_n_4 ;
  wire \doa_pair.sum_reg[7]_i_1_n_5 ;
  wire \doa_pair.sum_reg[7]_i_1_n_6 ;
  wire \doa_pair.sum_reg[7]_i_1_n_7 ;
  wire \doa_pair.sum_reg[7]_i_1_n_8 ;
  wire \doa_pair.sum_reg[7]_i_1_n_9 ;
  wire \doa_pair.x[19]_i_1_n_0 ;
  wire \doa_pair.x_abs[0]_i_1_n_0 ;
  wire \doa_pair.x_abs[10]_i_1_n_0 ;
  wire \doa_pair.x_abs[11]_i_1_n_0 ;
  wire \doa_pair.x_abs[12]_i_1_n_0 ;
  wire \doa_pair.x_abs[13]_i_1_n_0 ;
  wire \doa_pair.x_abs[14]_i_1_n_0 ;
  wire \doa_pair.x_abs[15]_i_1_n_0 ;
  wire \doa_pair.x_abs[16]_i_1_n_0 ;
  wire \doa_pair.x_abs[17]_i_1_n_0 ;
  wire \doa_pair.x_abs[18]_i_1_n_0 ;
  wire \doa_pair.x_abs[19]_i_1_n_0 ;
  wire \doa_pair.x_abs[1]_i_1_n_0 ;
  wire \doa_pair.x_abs[2]_i_1_n_0 ;
  wire \doa_pair.x_abs[3]_i_1_n_0 ;
  wire \doa_pair.x_abs[4]_i_1_n_0 ;
  wire \doa_pair.x_abs[5]_i_1_n_0 ;
  wire \doa_pair.x_abs[6]_i_1_n_0 ;
  wire \doa_pair.x_abs[7]_i_1_n_0 ;
  wire \doa_pair.x_abs[8]_i_1_n_0 ;
  wire \doa_pair.x_abs[9]_i_1_n_0 ;
  wire \doa_pair.x_raw[20]_i_1_n_0 ;
  (* MARK_DEBUG *) wire done;
  (* MARK_DEBUG *) wire fail;
  wire fail2_out;
  wire fail__0;
  wire g0_b0_n_0;
  (* MARK_DEBUG *) wire has_diff;
  (* MARK_DEBUG *) wire has_ov;
  (* MARK_DEBUG *) wire has_shadow_diff;
  wire [3:1]ind;
  (* MARK_DEBUG *) wire init;
  wire [19:0]k;
  (* MARK_DEBUG *) wire [5:0]ov;
  wire [19:0]p;
  wire p_0_in__0;
  wire [18:0]p_1_in;
  wire [19:0]phase;
  wire [39:16]prod;
  wire reset;
  (* MARK_DEBUG *) wire run;
  (* MARK_DEBUG *) wire shadow;
  (* MARK_DEBUG *) wire [19:0]shadow_diff;
  wire [19:0]shadow_limit;
  (* MARK_DEBUG *) wire start;
  (* MARK_DEBUG *) wire [20:0]sum;
  (* MARK_DEBUG *) wire [19:0]x;
  wire [38:19]x2;
  wire [19:0]x__0;
  (* MARK_DEBUG *) wire [19:0]x_abs;
  (* MARK_DEBUG *) wire [18:0]x_diff;
  (* MARK_DEBUG *) wire [20:0]x_raw;
  wire [38:19]xp;
  wire [7:3]\NLW_doa_pair.shadow_diff_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_doa_pair.shadow_diff_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_doa_pair.sum_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_doa_pair.sum_reg[20]_i_1_O_UNCONNECTED ;
  wire [18:0]NLW_mul_c_i_P_UNCONNECTED;
  wire [15:0]NLW_mul_doa_i_P_UNCONNECTED;
  wire [39:0]NLW_mul_x2_i_P_UNCONNECTED;
  wire [39:0]NLW_mul_x_i_P_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.add_i_1 
       (.I0(g0_b0_n_0),
        .I1(\doa_pair.add_i_2_n_0 ),
        .I2(add),
        .O(\doa_pair.add_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1E39271EE49C78E5)) 
    \doa_pair.add_i_2 
       (.I0(counter[0]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[2]),
        .I4(counter[1]),
        .I5(counter[5]),
        .O(\doa_pair.add_i_2_n_0 ));
  FDRE \doa_pair.add_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.add_i_1_n_0 ),
        .Q(add),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01000000)) 
    \doa_pair.angle[19]_i_1 
       (.I0(fail),
        .I1(reset),
        .I2(start),
        .I3(\doa_pair.counter[0]_i_2_n_0 ),
        .I4(run),
        .O(\doa_pair.angle[19]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[0] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[0]),
        .Q(angle[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[10] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[10]),
        .Q(angle[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[11] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[11]),
        .Q(angle[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[12] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[12]),
        .Q(angle[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[13] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[13]),
        .Q(angle[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[14] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[14]),
        .Q(angle[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[15] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[15]),
        .Q(angle[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[16] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[16]),
        .Q(angle[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[17] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[17]),
        .Q(angle[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[18] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[18]),
        .Q(angle[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[19] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[19]),
        .Q(angle[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[1] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[1]),
        .Q(angle[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[2] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[2]),
        .Q(angle[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[3] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[3]),
        .Q(angle[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[4] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[4]),
        .Q(angle[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[5] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[5]),
        .Q(angle[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[6] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[6]),
        .Q(angle[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[7] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[7]),
        .Q(angle[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[8] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[8]),
        .Q(angle[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[9] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[9]),
        .Q(angle[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.calc_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(check_raw),
        .Q(calc_diff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h09)) 
    \doa_pair.check_raw_i_1 
       (.I0(ov[5]),
        .I1(ov[4]),
        .I2(\doa_pair.check_raw_i_2_n_0 ),
        .O(check_raw__0));
  LUT6 #(
    .INIT(64'hC1FFFFFFFFFFFF43)) 
    \doa_pair.check_raw_i_2 
       (.I0(check_raw),
        .I1(ov[1]),
        .I2(ov[0]),
        .I3(ov[4]),
        .I4(ov[3]),
        .I5(ov[2]),
        .O(\doa_pair.check_raw_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.check_raw_reg 
       (.C(clk),
        .CE(1'b1),
        .D(check_raw__0),
        .Q(check_raw),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF514)) 
    \doa_pair.coeff[0]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h8EC7)) 
    \doa_pair.coeff[10]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[10]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h372A)) 
    \doa_pair.coeff[11]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[11]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h00ED)) 
    \doa_pair.coeff[12]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[1] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[2] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[12]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0026)) 
    \doa_pair.coeff[13]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[1] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[13]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \doa_pair.coeff[14]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[14]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \doa_pair.coeff[15]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[15]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \doa_pair.coeff[16]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[16]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \doa_pair.coeff[18]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[18]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8600)) 
    \doa_pair.coeff[1]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5095)) 
    \doa_pair.coeff[2]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[1] ),
        .O(coeff[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2F9D)) 
    \doa_pair.coeff[3]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hDAA6)) 
    \doa_pair.coeff[4]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h5EE8)) 
    \doa_pair.coeff[5]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0A35)) 
    \doa_pair.coeff[6]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[2] ),
        .O(coeff[6]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h22F5)) 
    \doa_pair.coeff[7]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[7]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h2D17)) 
    \doa_pair.coeff[8]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[8]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hD8E7)) 
    \doa_pair.coeff[9]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[9]));
  FDRE \doa_pair.coeff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[0]),
        .Q(\doa_pair.coeff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[10]),
        .Q(\doa_pair.coeff_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[11]),
        .Q(\doa_pair.coeff_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[12]),
        .Q(\doa_pair.coeff_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[13]),
        .Q(\doa_pair.coeff_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[14]),
        .Q(\doa_pair.coeff_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[15]),
        .Q(\doa_pair.coeff_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[16]),
        .Q(\doa_pair.coeff_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[18]),
        .Q(\doa_pair.coeff_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[1]),
        .Q(\doa_pair.coeff_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[2]),
        .Q(\doa_pair.coeff_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[3]),
        .Q(\doa_pair.coeff_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[4]),
        .Q(\doa_pair.coeff_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[5]),
        .Q(\doa_pair.coeff_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[6]),
        .Q(\doa_pair.coeff_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[7]),
        .Q(\doa_pair.coeff_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[8]),
        .Q(\doa_pair.coeff_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[9]),
        .Q(\doa_pair.coeff_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \doa_pair.counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\doa_pair.counter[0]_i_2_n_0 ),
        .I2(run),
        .O(counter__0[0]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \doa_pair.counter[0]_i_2 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[5]),
        .O(\doa_pair.counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \doa_pair.counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(run),
        .O(\doa_pair.counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \doa_pair.counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(run),
        .I3(counter[0]),
        .O(\doa_pair.counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \doa_pair.counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(run),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(counter__0[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \doa_pair.counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(run),
        .I5(counter[0]),
        .O(counter__0[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    \doa_pair.counter[5]_i_1 
       (.I0(start),
        .I1(reset),
        .I2(fail),
        .O(\doa_pair.counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \doa_pair.counter[5]_i_2 
       (.I0(counter[5]),
        .I1(\doa_pair.counter[5]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(counter__0[5]));
  LUT3 #(
    .INIT(8'h7F)) 
    \doa_pair.counter[5]_i_3 
       (.I0(counter[0]),
        .I1(run),
        .I2(counter[1]),
        .O(\doa_pair.counter[5]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[0]),
        .Q(counter[0]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[3]),
        .Q(counter[3]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[4]),
        .Q(counter[4]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[5]),
        .Q(counter[5]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \doa_pair.done_i_1 
       (.I0(start),
        .I1(reset),
        .I2(fail),
        .O(\doa_pair.done_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.done_i_2 
       (.I0(\doa_pair.counter[0]_i_2_n_0 ),
        .I1(run),
        .I2(done),
        .O(\doa_pair.done_reg0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.done_reg0 ),
        .Q(done),
        .R(\doa_pair.done_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCB8FFFFCCB80000)) 
    \doa_pair.fail_i_1 
       (.I0(fail2_out),
        .I1(\doa_pair.fail_i_3_n_0 ),
        .I2(has_ov),
        .I3(\doa_pair.fail_i_4_n_0 ),
        .I4(fail__0),
        .I5(fail),
        .O(\doa_pair.fail_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \doa_pair.fail_i_2 
       (.I0(has_shadow_diff),
        .I1(shadow_diff[19]),
        .O(fail2_out));
  LUT5 #(
    .INIT(32'h20000004)) 
    \doa_pair.fail_i_3 
       (.I0(ov[2]),
        .I1(ov[1]),
        .I2(ov[5]),
        .I3(ov[4]),
        .I4(ov[3]),
        .O(\doa_pair.fail_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8001800000018001)) 
    \doa_pair.fail_i_4 
       (.I0(ov[5]),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[0]),
        .I5(ov[1]),
        .O(\doa_pair.fail_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAB)) 
    \doa_pair.fail_i_5 
       (.I0(has_ov),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[5]),
        .O(fail__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.fail_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.fail_i_1_n_0 ),
        .Q(fail),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.has_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(calc_diff),
        .Q(has_diff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.has_ov_i_1 
       (.I0(has_ov),
        .I1(\doa_pair.has_ov_i_2_n_0 ),
        .I2(counter[1]),
        .O(\doa_pair.has_ov_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \doa_pair.has_ov_i_2 
       (.I0(counter[2]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(counter[3]),
        .I4(counter[0]),
        .O(\doa_pair.has_ov_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.has_ov_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.has_ov_i_1_n_0 ),
        .Q(has_ov),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.has_shadow_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(has_diff),
        .Q(has_shadow_diff),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \doa_pair.ignore_i_1 
       (.I0(xp[37]),
        .I1(\doa_pair.ignore_i_2_n_0 ),
        .I2(xp[38]),
        .I3(add),
        .I4(run),
        .I5(\doa_pair.ignore_reg_n_0 ),
        .O(\doa_pair.ignore_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_2 
       (.I0(\doa_pair.ignore_i_3_n_0 ),
        .I1(\doa_pair.ignore_i_4_n_0 ),
        .I2(xp[33]),
        .I3(xp[31]),
        .I4(xp[32]),
        .I5(\doa_pair.ignore_i_5_n_0 ),
        .O(\doa_pair.ignore_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \doa_pair.ignore_i_3 
       (.I0(xp[36]),
        .I1(xp[35]),
        .O(\doa_pair.ignore_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_4 
       (.I0(\doa_pair.ignore_i_6_n_0 ),
        .I1(\doa_pair.ignore_i_7_n_0 ),
        .I2(xp[27]),
        .I3(xp[25]),
        .I4(xp[26]),
        .I5(\doa_pair.ignore_i_8_n_0 ),
        .O(\doa_pair.ignore_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \doa_pair.ignore_i_5 
       (.I0(xp[36]),
        .I1(xp[34]),
        .I2(xp[35]),
        .O(\doa_pair.ignore_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \doa_pair.ignore_i_6 
       (.I0(xp[30]),
        .I1(xp[29]),
        .O(\doa_pair.ignore_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_7 
       (.I0(xp[20]),
        .I1(xp[19]),
        .I2(xp[21]),
        .I3(xp[24]),
        .I4(xp[22]),
        .I5(xp[23]),
        .O(\doa_pair.ignore_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \doa_pair.ignore_i_8 
       (.I0(xp[30]),
        .I1(xp[28]),
        .I2(xp[29]),
        .O(\doa_pair.ignore_i_8_n_0 ));
  FDRE \doa_pair.ignore_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.ignore_i_1_n_0 ),
        .Q(\doa_pair.ignore_reg_n_0 ),
        .R(\doa_pair.done_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5554)) 
    \doa_pair.ind[0]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[3]),
        .O(\doa_pair.ind[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \doa_pair.ind[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[3]),
        .O(ind[1]));
  LUT4 #(
    .INIT(16'hFC4C)) 
    \doa_pair.ind[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[5]),
        .O(ind[2]));
  LUT6 #(
    .INIT(64'h0118866100866110)) 
    \doa_pair.ind[3]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[1]),
        .O(\doa_pair.ind[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \doa_pair.ind[3]_i_2 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(ind[3]));
  FDRE \doa_pair.ind_reg[0] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(\doa_pair.ind[0]_i_1_n_0 ),
        .Q(\doa_pair.ind_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[1] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[1]),
        .Q(\doa_pair.ind_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[2] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[2]),
        .Q(\doa_pair.ind_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[3] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[3]),
        .Q(\doa_pair.ind_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000001)) 
    \doa_pair.init_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[5]),
        .I3(counter[1]),
        .I4(\doa_pair.init_i_2_n_0 ),
        .I5(init),
        .O(\doa_pair.init_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \doa_pair.init_i_2 
       (.I0(counter[4]),
        .I1(counter[2]),
        .O(\doa_pair.init_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.init_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.init_i_1_n_0 ),
        .Q(init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \doa_pair.ov[5]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[2]),
        .O(\doa_pair.ov[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \doa_pair.ov[5]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[2]),
        .O(p_0_in__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[0] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[34]),
        .Q(ov[0]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[1] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[35]),
        .Q(ov[1]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[2] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[36]),
        .Q(ov[2]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[3] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[37]),
        .Q(ov[3]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[4] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[38]),
        .Q(ov[4]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \doa_pair.ov_reg[5] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[39]),
        .Q(ov[5]),
        .S(\doa_pair.ov[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000F2)) 
    \doa_pair.run_i_1 
       (.I0(run),
        .I1(\doa_pair.counter[0]_i_2_n_0 ),
        .I2(start),
        .I3(reset),
        .I4(fail),
        .O(\doa_pair.run_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.run_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.run_i_1_n_0 ),
        .Q(run),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_2 
       (.I0(x_diff[15]),
        .I1(shadow_limit[15]),
        .O(\doa_pair.shadow_diff[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_3 
       (.I0(x_diff[14]),
        .I1(shadow_limit[14]),
        .O(\doa_pair.shadow_diff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_4 
       (.I0(x_diff[13]),
        .I1(shadow_limit[13]),
        .O(\doa_pair.shadow_diff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_5 
       (.I0(x_diff[12]),
        .I1(shadow_limit[12]),
        .O(\doa_pair.shadow_diff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_6 
       (.I0(x_diff[11]),
        .I1(shadow_limit[11]),
        .O(\doa_pair.shadow_diff[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_7 
       (.I0(x_diff[10]),
        .I1(shadow_limit[10]),
        .O(\doa_pair.shadow_diff[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_8 
       (.I0(x_diff[9]),
        .I1(shadow_limit[9]),
        .O(\doa_pair.shadow_diff[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_9 
       (.I0(x_diff[8]),
        .I1(shadow_limit[8]),
        .O(\doa_pair.shadow_diff[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \doa_pair.shadow_diff[19]_i_2 
       (.I0(shadow_limit[19]),
        .O(\doa_pair.shadow_diff[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_3 
       (.I0(x_diff[18]),
        .I1(shadow_limit[18]),
        .O(\doa_pair.shadow_diff[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_4 
       (.I0(x_diff[17]),
        .I1(shadow_limit[17]),
        .O(\doa_pair.shadow_diff[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_5 
       (.I0(x_diff[16]),
        .I1(shadow_limit[16]),
        .O(\doa_pair.shadow_diff[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_2 
       (.I0(x_diff[7]),
        .I1(shadow_limit[7]),
        .O(\doa_pair.shadow_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_3 
       (.I0(x_diff[6]),
        .I1(shadow_limit[6]),
        .O(\doa_pair.shadow_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_4 
       (.I0(x_diff[5]),
        .I1(shadow_limit[5]),
        .O(\doa_pair.shadow_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_5 
       (.I0(x_diff[4]),
        .I1(shadow_limit[4]),
        .O(\doa_pair.shadow_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_6 
       (.I0(x_diff[3]),
        .I1(shadow_limit[3]),
        .O(\doa_pair.shadow_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_7 
       (.I0(x_diff[2]),
        .I1(shadow_limit[2]),
        .O(\doa_pair.shadow_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_8 
       (.I0(x_diff[1]),
        .I1(shadow_limit[1]),
        .O(\doa_pair.shadow_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_9 
       (.I0(x_diff[0]),
        .I1(shadow_limit[0]),
        .O(\doa_pair.shadow_diff[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[0] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [0]),
        .Q(shadow_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[10] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [10]),
        .Q(shadow_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[11] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [11]),
        .Q(shadow_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[12] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [12]),
        .Q(shadow_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[13] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [13]),
        .Q(shadow_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[14] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [14]),
        .Q(shadow_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[15] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [15]),
        .Q(shadow_diff[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[15]_i_1 
       (.CI(\doa_pair.shadow_diff_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\doa_pair.shadow_diff_reg[15]_i_1_n_0 ,\doa_pair.shadow_diff_reg[15]_i_1_n_1 ,\doa_pair.shadow_diff_reg[15]_i_1_n_2 ,\doa_pair.shadow_diff_reg[15]_i_1_n_3 ,\doa_pair.shadow_diff_reg[15]_i_1_n_4 ,\doa_pair.shadow_diff_reg[15]_i_1_n_5 ,\doa_pair.shadow_diff_reg[15]_i_1_n_6 ,\doa_pair.shadow_diff_reg[15]_i_1_n_7 }),
        .DI(x_diff[15:8]),
        .O(\doa_pair.shadow_diff_reg0 [15:8]),
        .S({\doa_pair.shadow_diff[15]_i_2_n_0 ,\doa_pair.shadow_diff[15]_i_3_n_0 ,\doa_pair.shadow_diff[15]_i_4_n_0 ,\doa_pair.shadow_diff[15]_i_5_n_0 ,\doa_pair.shadow_diff[15]_i_6_n_0 ,\doa_pair.shadow_diff[15]_i_7_n_0 ,\doa_pair.shadow_diff[15]_i_8_n_0 ,\doa_pair.shadow_diff[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[16] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [16]),
        .Q(shadow_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[17] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [17]),
        .Q(shadow_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[18] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [18]),
        .Q(shadow_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[19] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [19]),
        .Q(shadow_diff[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[19]_i_1 
       (.CI(\doa_pair.shadow_diff_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_doa_pair.shadow_diff_reg[19]_i_1_CO_UNCONNECTED [7:3],\doa_pair.shadow_diff_reg[19]_i_1_n_5 ,\doa_pair.shadow_diff_reg[19]_i_1_n_6 ,\doa_pair.shadow_diff_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,x_diff[18:16]}),
        .O({\NLW_doa_pair.shadow_diff_reg[19]_i_1_O_UNCONNECTED [7:4],\doa_pair.shadow_diff_reg0 [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\doa_pair.shadow_diff[19]_i_2_n_0 ,\doa_pair.shadow_diff[19]_i_3_n_0 ,\doa_pair.shadow_diff[19]_i_4_n_0 ,\doa_pair.shadow_diff[19]_i_5_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[1] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [1]),
        .Q(shadow_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[2] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [2]),
        .Q(shadow_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[3] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [3]),
        .Q(shadow_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[4] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [4]),
        .Q(shadow_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[5] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [5]),
        .Q(shadow_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[6] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [6]),
        .Q(shadow_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[7] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [7]),
        .Q(shadow_diff[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\doa_pair.shadow_diff_reg[7]_i_1_n_0 ,\doa_pair.shadow_diff_reg[7]_i_1_n_1 ,\doa_pair.shadow_diff_reg[7]_i_1_n_2 ,\doa_pair.shadow_diff_reg[7]_i_1_n_3 ,\doa_pair.shadow_diff_reg[7]_i_1_n_4 ,\doa_pair.shadow_diff_reg[7]_i_1_n_5 ,\doa_pair.shadow_diff_reg[7]_i_1_n_6 ,\doa_pair.shadow_diff_reg[7]_i_1_n_7 }),
        .DI(x_diff[7:0]),
        .O(\doa_pair.shadow_diff_reg0 [7:0]),
        .S({\doa_pair.shadow_diff[7]_i_2_n_0 ,\doa_pair.shadow_diff[7]_i_3_n_0 ,\doa_pair.shadow_diff[7]_i_4_n_0 ,\doa_pair.shadow_diff[7]_i_5_n_0 ,\doa_pair.shadow_diff[7]_i_6_n_0 ,\doa_pair.shadow_diff[7]_i_7_n_0 ,\doa_pair.shadow_diff[7]_i_8_n_0 ,\doa_pair.shadow_diff[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[8] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [8]),
        .Q(shadow_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[9] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [9]),
        .Q(shadow_diff[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \doa_pair.shadow_i_1 
       (.I0(\doa_pair.shadow_i_2_n_0 ),
        .I1(ov[5]),
        .I2(ov[2]),
        .I3(\doa_pair.shadow_i_3_n_0 ),
        .I4(ov[4]),
        .I5(ov[3]),
        .O(\doa_pair.shadow_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55DF4080)) 
    \doa_pair.shadow_i_2 
       (.I0(ov[1]),
        .I1(shadow_diff[19]),
        .I2(has_shadow_diff),
        .I3(ov[0]),
        .I4(shadow),
        .O(\doa_pair.shadow_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E0A0E0)) 
    \doa_pair.shadow_i_3 
       (.I0(ov[1]),
        .I1(ov[0]),
        .I2(shadow),
        .I3(has_shadow_diff),
        .I4(shadow_diff[19]),
        .O(\doa_pair.shadow_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.shadow_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.shadow_i_1_n_0 ),
        .Q(shadow),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_10 
       (.I0(cp[34]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[15]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_11 
       (.I0(cp[33]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[14]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_12 
       (.I0(cp[32]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[13]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_13 
       (.I0(cp[31]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[12]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_14 
       (.I0(cp[30]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[11]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_15 
       (.I0(cp[29]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[10]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_16 
       (.I0(cp[28]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[9]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_17 
       (.I0(cp[27]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[8]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[34]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[33]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[32]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[31]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_6 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[30]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_7 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[29]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_8 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[28]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_9 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[27]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_10 
       (.I0(cp[35]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[16]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[38]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[37]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[36]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[35]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_6 
       (.I0(cp[39]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[20]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_7 
       (.I0(cp[38]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[19]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_8 
       (.I0(cp[37]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[18]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_9 
       (.I0(cp[36]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[17]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_10 
       (.I0(cp[26]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[7]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_11 
       (.I0(cp[25]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[6]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_12 
       (.I0(cp[24]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[5]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_13 
       (.I0(cp[23]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[4]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_14 
       (.I0(cp[22]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[3]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_15 
       (.I0(cp[21]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[2]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_16 
       (.I0(cp[20]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[1]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_17 
       (.I0(cp[19]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[0]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[26]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[25]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[24]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[23]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_6 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[22]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_7 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[21]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_8 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[20]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_9 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[19]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_15 ),
        .Q(sum[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_13 ),
        .Q(sum[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_12 ),
        .Q(sum[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_11 ),
        .Q(sum[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_10 ),
        .Q(sum[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_9 ),
        .Q(sum[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_8 ),
        .Q(sum[15]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[15]_i_1 
       (.CI(\doa_pair.sum_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\doa_pair.sum_reg[15]_i_1_n_0 ,\doa_pair.sum_reg[15]_i_1_n_1 ,\doa_pair.sum_reg[15]_i_1_n_2 ,\doa_pair.sum_reg[15]_i_1_n_3 ,\doa_pair.sum_reg[15]_i_1_n_4 ,\doa_pair.sum_reg[15]_i_1_n_5 ,\doa_pair.sum_reg[15]_i_1_n_6 ,\doa_pair.sum_reg[15]_i_1_n_7 }),
        .DI({\doa_pair.sum[15]_i_2_n_0 ,\doa_pair.sum[15]_i_3_n_0 ,\doa_pair.sum[15]_i_4_n_0 ,\doa_pair.sum[15]_i_5_n_0 ,\doa_pair.sum[15]_i_6_n_0 ,\doa_pair.sum[15]_i_7_n_0 ,\doa_pair.sum[15]_i_8_n_0 ,\doa_pair.sum[15]_i_9_n_0 }),
        .O({\doa_pair.sum_reg[15]_i_1_n_8 ,\doa_pair.sum_reg[15]_i_1_n_9 ,\doa_pair.sum_reg[15]_i_1_n_10 ,\doa_pair.sum_reg[15]_i_1_n_11 ,\doa_pair.sum_reg[15]_i_1_n_12 ,\doa_pair.sum_reg[15]_i_1_n_13 ,\doa_pair.sum_reg[15]_i_1_n_14 ,\doa_pair.sum_reg[15]_i_1_n_15 }),
        .S({\doa_pair.sum[15]_i_10_n_0 ,\doa_pair.sum[15]_i_11_n_0 ,\doa_pair.sum[15]_i_12_n_0 ,\doa_pair.sum[15]_i_13_n_0 ,\doa_pair.sum[15]_i_14_n_0 ,\doa_pair.sum[15]_i_15_n_0 ,\doa_pair.sum[15]_i_16_n_0 ,\doa_pair.sum[15]_i_17_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_15 ),
        .Q(sum[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_14 ),
        .Q(sum[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_13 ),
        .Q(sum[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_12 ),
        .Q(sum[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_14 ),
        .Q(sum[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_11 ),
        .Q(sum[20]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[20]_i_1 
       (.CI(\doa_pair.sum_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_doa_pair.sum_reg[20]_i_1_CO_UNCONNECTED [7:4],\doa_pair.sum_reg[20]_i_1_n_4 ,\doa_pair.sum_reg[20]_i_1_n_5 ,\doa_pair.sum_reg[20]_i_1_n_6 ,\doa_pair.sum_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\doa_pair.sum[20]_i_2_n_0 ,\doa_pair.sum[20]_i_3_n_0 ,\doa_pair.sum[20]_i_4_n_0 ,\doa_pair.sum[20]_i_5_n_0 }),
        .O({\NLW_doa_pair.sum_reg[20]_i_1_O_UNCONNECTED [7:5],\doa_pair.sum_reg[20]_i_1_n_11 ,\doa_pair.sum_reg[20]_i_1_n_12 ,\doa_pair.sum_reg[20]_i_1_n_13 ,\doa_pair.sum_reg[20]_i_1_n_14 ,\doa_pair.sum_reg[20]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,\doa_pair.sum[20]_i_6_n_0 ,\doa_pair.sum[20]_i_7_n_0 ,\doa_pair.sum[20]_i_8_n_0 ,\doa_pair.sum[20]_i_9_n_0 ,\doa_pair.sum[20]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_13 ),
        .Q(sum[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_12 ),
        .Q(sum[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_11 ),
        .Q(sum[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_10 ),
        .Q(sum[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_9 ),
        .Q(sum[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_8 ),
        .Q(sum[7]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\doa_pair.sum_reg[7]_i_1_n_0 ,\doa_pair.sum_reg[7]_i_1_n_1 ,\doa_pair.sum_reg[7]_i_1_n_2 ,\doa_pair.sum_reg[7]_i_1_n_3 ,\doa_pair.sum_reg[7]_i_1_n_4 ,\doa_pair.sum_reg[7]_i_1_n_5 ,\doa_pair.sum_reg[7]_i_1_n_6 ,\doa_pair.sum_reg[7]_i_1_n_7 }),
        .DI({\doa_pair.sum[7]_i_2_n_0 ,\doa_pair.sum[7]_i_3_n_0 ,\doa_pair.sum[7]_i_4_n_0 ,\doa_pair.sum[7]_i_5_n_0 ,\doa_pair.sum[7]_i_6_n_0 ,\doa_pair.sum[7]_i_7_n_0 ,\doa_pair.sum[7]_i_8_n_0 ,\doa_pair.sum[7]_i_9_n_0 }),
        .O({\doa_pair.sum_reg[7]_i_1_n_8 ,\doa_pair.sum_reg[7]_i_1_n_9 ,\doa_pair.sum_reg[7]_i_1_n_10 ,\doa_pair.sum_reg[7]_i_1_n_11 ,\doa_pair.sum_reg[7]_i_1_n_12 ,\doa_pair.sum_reg[7]_i_1_n_13 ,\doa_pair.sum_reg[7]_i_1_n_14 ,\doa_pair.sum_reg[7]_i_1_n_15 }),
        .S({\doa_pair.sum[7]_i_10_n_0 ,\doa_pair.sum[7]_i_11_n_0 ,\doa_pair.sum[7]_i_12_n_0 ,\doa_pair.sum[7]_i_13_n_0 ,\doa_pair.sum[7]_i_14_n_0 ,\doa_pair.sum[7]_i_15_n_0 ,\doa_pair.sum[7]_i_16_n_0 ,\doa_pair.sum[7]_i_17_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_15 ),
        .Q(sum[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_14 ),
        .Q(sum[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF6)) 
    \doa_pair.x[0]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[16]),
        .O(x__0[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[10]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[26]),
        .O(x__0[10]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[11]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[27]),
        .O(x__0[11]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[12]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[28]),
        .O(x__0[12]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[13]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[29]),
        .O(x__0[13]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[14]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[30]),
        .O(x__0[14]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[15]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[31]),
        .O(x__0[15]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[16]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[32]),
        .O(x__0[16]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[17]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[33]),
        .O(x__0[17]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[18]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[34]),
        .O(x__0[18]));
  LUT6 #(
    .INIT(64'h8000800180010001)) 
    \doa_pair.x[19]_i_1 
       (.I0(ov[5]),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[1]),
        .I5(ov[0]),
        .O(\doa_pair.x[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \doa_pair.x[19]_i_2 
       (.I0(ov[5]),
        .I1(prod[35]),
        .I2(ov[1]),
        .O(x__0[19]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[1]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[17]),
        .O(x__0[1]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[2]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[18]),
        .O(x__0[2]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[3]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[19]),
        .O(x__0[3]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[4]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[20]),
        .O(x__0[4]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[5]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[21]),
        .O(x__0[5]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[6]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[22]),
        .O(x__0[6]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[7]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[23]),
        .O(x__0[7]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[8]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[24]),
        .O(x__0[8]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[9]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[25]),
        .O(x__0[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[0]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[0]),
        .O(\doa_pair.x_abs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[10]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[10]),
        .O(\doa_pair.x_abs[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[11]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[11]),
        .O(\doa_pair.x_abs[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[12]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[12]),
        .O(\doa_pair.x_abs[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[13]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[13]),
        .O(\doa_pair.x_abs[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[14]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[14]),
        .O(\doa_pair.x_abs[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[15]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[15]),
        .O(\doa_pair.x_abs[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[16]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[16]),
        .O(\doa_pair.x_abs[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[17]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[17]),
        .O(\doa_pair.x_abs[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[18]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[18]),
        .O(\doa_pair.x_abs[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[19]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[19]),
        .O(\doa_pair.x_abs[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[1]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[1]),
        .O(\doa_pair.x_abs[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[2]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[2]),
        .O(\doa_pair.x_abs[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[3]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[3]),
        .O(\doa_pair.x_abs[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[4]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[4]),
        .O(\doa_pair.x_abs[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[5]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[5]),
        .O(\doa_pair.x_abs[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[6]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[6]),
        .O(\doa_pair.x_abs[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[7]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[7]),
        .O(\doa_pair.x_abs[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[8]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[8]),
        .O(\doa_pair.x_abs[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[9]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[9]),
        .O(\doa_pair.x_abs[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[0] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[0]_i_1_n_0 ),
        .Q(x_abs[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[10] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[10]_i_1_n_0 ),
        .Q(x_abs[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[11] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[11]_i_1_n_0 ),
        .Q(x_abs[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[12] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[12]_i_1_n_0 ),
        .Q(x_abs[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[13] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[13]_i_1_n_0 ),
        .Q(x_abs[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[14] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[14]_i_1_n_0 ),
        .Q(x_abs[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[15] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[15]_i_1_n_0 ),
        .Q(x_abs[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[16] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[16]_i_1_n_0 ),
        .Q(x_abs[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[17] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[17]_i_1_n_0 ),
        .Q(x_abs[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[18] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[18]_i_1_n_0 ),
        .Q(x_abs[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[19] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[19]_i_1_n_0 ),
        .Q(x_abs[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[1] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[1]_i_1_n_0 ),
        .Q(x_abs[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[2] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[2]_i_1_n_0 ),
        .Q(x_abs[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[3] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[3]_i_1_n_0 ),
        .Q(x_abs[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[4] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[4]_i_1_n_0 ),
        .Q(x_abs[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[5] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[5]_i_1_n_0 ),
        .Q(x_abs[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[6] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[6]_i_1_n_0 ),
        .Q(x_abs[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[7] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[7]_i_1_n_0 ),
        .Q(x_abs[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[8] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[8]_i_1_n_0 ),
        .Q(x_abs[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[9] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[9]_i_1_n_0 ),
        .Q(x_abs[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[0]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[10]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[10]),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[11]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[11]),
        .O(p_1_in[11]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[12]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[12]),
        .O(p_1_in[12]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[13]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[13]),
        .O(p_1_in[13]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[14]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[14]),
        .O(p_1_in[14]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[15]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[15]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[16]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[16]),
        .O(p_1_in[16]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[17]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[17]),
        .O(p_1_in[17]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[18]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[18]),
        .O(p_1_in[18]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[1]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[1]),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[2]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[2]),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[3]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[3]),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[4]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[4]),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[5]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[5]),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[6]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[6]),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[7]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[7]),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[8]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[8]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[9]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[9]),
        .O(p_1_in[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[0] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[0]),
        .Q(x_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[10] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[10]),
        .Q(x_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[11] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[11]),
        .Q(x_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[12] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[12]),
        .Q(x_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[13] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[13]),
        .Q(x_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[14] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[14]),
        .Q(x_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[15] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[15]),
        .Q(x_diff[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[16] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[16]),
        .Q(x_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[17] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[17]),
        .Q(x_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[18] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[18]),
        .Q(x_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[1] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[1]),
        .Q(x_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[2] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[2]),
        .Q(x_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[3] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[3]),
        .Q(x_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[4] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[4]),
        .Q(x_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[5] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[5]),
        .Q(x_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[6] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[6]),
        .Q(x_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[7] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[7]),
        .Q(x_diff[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[8] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[8]),
        .Q(x_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[9] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[9]),
        .Q(x_diff[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2800000000000014)) 
    \doa_pair.x_raw[20]_i_1 
       (.I0(ov[5]),
        .I1(ov[0]),
        .I2(ov[1]),
        .I3(ov[4]),
        .I4(ov[3]),
        .I5(ov[2]),
        .O(\doa_pair.x_raw[20]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[0] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[16]),
        .Q(x_raw[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[10] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[26]),
        .Q(x_raw[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[11] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[27]),
        .Q(x_raw[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[12] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[28]),
        .Q(x_raw[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[13] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[29]),
        .Q(x_raw[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[14] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[30]),
        .Q(x_raw[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[15] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[31]),
        .Q(x_raw[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[16] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[32]),
        .Q(x_raw[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[17] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[33]),
        .Q(x_raw[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[18] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[34]),
        .Q(x_raw[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[19] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[35]),
        .Q(x_raw[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[1] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[17]),
        .Q(x_raw[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[20] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[36]),
        .Q(x_raw[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[2] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[18]),
        .Q(x_raw[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[3] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[19]),
        .Q(x_raw[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[4] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[20]),
        .Q(x_raw[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[5] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[21]),
        .Q(x_raw[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[6] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[22]),
        .Q(x_raw[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[7] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[23]),
        .Q(x_raw[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[8] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[24]),
        .Q(x_raw[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[9] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[25]),
        .Q(x_raw[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[0] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[0]),
        .Q(x[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[10] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[10]),
        .Q(x[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[11] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[11]),
        .Q(x[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[12] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[12]),
        .Q(x[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[13] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[13]),
        .Q(x[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[14] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[14]),
        .Q(x[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[15] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[15]),
        .Q(x[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[16] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[16]),
        .Q(x[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[17] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[17]),
        .Q(x[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[18] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[18]),
        .Q(x[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[19] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[19]),
        .Q(x[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[1] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[1]),
        .Q(x[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[2] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[2]),
        .Q(x[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[3] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[3]),
        .Q(x[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[4] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[4]),
        .Q(x[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[5] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[5]),
        .Q(x[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[6] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[6]),
        .Q(x[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[7] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[7]),
        .Q(x[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[8] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[8]),
        .Q(x[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[9] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[9]),
        .Q(x[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0049249249249200)) 
    g0_b0
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(g0_b0_n_0));
  (* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_7 ila_i
       (.clk(clk),
        .probe0(start),
        .probe1(counter),
        .probe10(has_diff),
        .probe11(x_diff),
        .probe12(has_shadow_diff),
        .probe13(shadow_diff),
        .probe14(shadow),
        .probe15(x),
        .probe16(sum),
        .probe17(done),
        .probe18(fail),
        .probe19(angle),
        .probe2(run),
        .probe3(init),
        .probe4(has_ov),
        .probe5(ov),
        .probe6(check_raw),
        .probe7(x_raw),
        .probe8(x_abs),
        .probe9(calc_diff));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_c_i
       (.A({1'b0,\doa_pair.coeff_reg_n_0_[18] ,1'b0,\doa_pair.coeff_reg_n_0_[16] ,\doa_pair.coeff_reg_n_0_[15] ,\doa_pair.coeff_reg_n_0_[14] ,\doa_pair.coeff_reg_n_0_[13] ,\doa_pair.coeff_reg_n_0_[12] ,\doa_pair.coeff_reg_n_0_[11] ,\doa_pair.coeff_reg_n_0_[10] ,\doa_pair.coeff_reg_n_0_[9] ,\doa_pair.coeff_reg_n_0_[8] ,\doa_pair.coeff_reg_n_0_[7] ,\doa_pair.coeff_reg_n_0_[6] ,\doa_pair.coeff_reg_n_0_[5] ,\doa_pair.coeff_reg_n_0_[4] ,\doa_pair.coeff_reg_n_0_[3] ,\doa_pair.coeff_reg_n_0_[2] ,\doa_pair.coeff_reg_n_0_[1] ,\doa_pair.coeff_reg_n_0_[0] }),
        .B(p),
        .CLK(clk),
        .P({cp,NLW_mul_c_i_P_UNCONNECTED[18:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_doa_i
       (.A(k),
        .B(phase),
        .CLK(clk),
        .P({prod,NLW_mul_doa_i_P_UNCONNECTED[15:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_x2_i
       (.A(x),
        .B(x),
        .CLK(clk),
        .P({NLW_mul_x2_i_P_UNCONNECTED[39],x2,NLW_mul_x2_i_P_UNCONNECTED[18:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_x_i
       (.A(x2),
        .B(p),
        .CLK(clk),
        .P({NLW_mul_x_i_P_UNCONNECTED[39],xp,NLW_mul_x_i_P_UNCONNECTED[18:0]}));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_1
       (.I0(x[19]),
        .I1(init),
        .I2(xp[38]),
        .O(p[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_10
       (.I0(x[10]),
        .I1(init),
        .I2(xp[29]),
        .O(p[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_11
       (.I0(x[9]),
        .I1(init),
        .I2(xp[28]),
        .O(p[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_12
       (.I0(x[8]),
        .I1(init),
        .I2(xp[27]),
        .O(p[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_13
       (.I0(x[7]),
        .I1(init),
        .I2(xp[26]),
        .O(p[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_14
       (.I0(x[6]),
        .I1(init),
        .I2(xp[25]),
        .O(p[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_15
       (.I0(x[5]),
        .I1(init),
        .I2(xp[24]),
        .O(p[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_16
       (.I0(x[4]),
        .I1(init),
        .I2(xp[23]),
        .O(p[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_17
       (.I0(x[3]),
        .I1(init),
        .I2(xp[22]),
        .O(p[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_18
       (.I0(x[2]),
        .I1(init),
        .I2(xp[21]),
        .O(p[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_19
       (.I0(x[1]),
        .I1(init),
        .I2(xp[20]),
        .O(p[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_2
       (.I0(x[18]),
        .I1(init),
        .I2(xp[37]),
        .O(p[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_20
       (.I0(x[0]),
        .I1(init),
        .I2(xp[19]),
        .O(p[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_3
       (.I0(x[17]),
        .I1(init),
        .I2(xp[36]),
        .O(p[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_4
       (.I0(x[16]),
        .I1(init),
        .I2(xp[35]),
        .O(p[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_5
       (.I0(x[15]),
        .I1(init),
        .I2(xp[34]),
        .O(p[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_6
       (.I0(x[14]),
        .I1(init),
        .I2(xp[33]),
        .O(p[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_7
       (.I0(x[13]),
        .I1(init),
        .I2(xp[32]),
        .O(p[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_8
       (.I0(x[12]),
        .I1(init),
        .I2(xp[31]),
        .O(p[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_9
       (.I0(x[11]),
        .I1(init),
        .I2(xp[30]),
        .O(p[11]));
endmodule

(* ORIG_REF_NAME = "doa_pair" *) (* keep_hierarchy = "soft" *) 
module ps_comp_low_0_0_doa_pair__xdcDup__2
   (clk,
    reset,
    start,
    k,
    shadow_limit,
    phase,
    done,
    fail,
    shadow,
    angle);
  input clk;
  input reset;
  input start;
  input [19:0]k;
  input [19:0]shadow_limit;
  input [19:0]phase;
  output done;
  output fail;
  output shadow;
  output [19:0]angle;

  wire add;
  (* MARK_DEBUG *) wire [19:0]angle;
  (* MARK_DEBUG *) wire calc_diff;
  (* MARK_DEBUG *) wire check_raw;
  wire check_raw__0;
  wire clk;
  wire [18:0]coeff;
  (* MARK_DEBUG *) wire [5:0]counter;
  wire [5:0]counter__0;
  wire [39:19]cp;
  wire \doa_pair.add_i_1_n_0 ;
  wire \doa_pair.add_i_2_n_0 ;
  wire \doa_pair.angle[19]_i_1_n_0 ;
  wire \doa_pair.check_raw_i_2_n_0 ;
  wire \doa_pair.coeff_reg_n_0_[0] ;
  wire \doa_pair.coeff_reg_n_0_[10] ;
  wire \doa_pair.coeff_reg_n_0_[11] ;
  wire \doa_pair.coeff_reg_n_0_[12] ;
  wire \doa_pair.coeff_reg_n_0_[13] ;
  wire \doa_pair.coeff_reg_n_0_[14] ;
  wire \doa_pair.coeff_reg_n_0_[15] ;
  wire \doa_pair.coeff_reg_n_0_[16] ;
  wire \doa_pair.coeff_reg_n_0_[18] ;
  wire \doa_pair.coeff_reg_n_0_[1] ;
  wire \doa_pair.coeff_reg_n_0_[2] ;
  wire \doa_pair.coeff_reg_n_0_[3] ;
  wire \doa_pair.coeff_reg_n_0_[4] ;
  wire \doa_pair.coeff_reg_n_0_[5] ;
  wire \doa_pair.coeff_reg_n_0_[6] ;
  wire \doa_pair.coeff_reg_n_0_[7] ;
  wire \doa_pair.coeff_reg_n_0_[8] ;
  wire \doa_pair.coeff_reg_n_0_[9] ;
  wire \doa_pair.counter[0]_i_2_n_0 ;
  wire \doa_pair.counter[1]_i_1_n_0 ;
  wire \doa_pair.counter[2]_i_1_n_0 ;
  wire \doa_pair.counter[5]_i_1_n_0 ;
  wire \doa_pair.counter[5]_i_3_n_0 ;
  wire \doa_pair.done_i_1_n_0 ;
  wire \doa_pair.done_reg0 ;
  wire \doa_pair.fail_i_1_n_0 ;
  wire \doa_pair.fail_i_3_n_0 ;
  wire \doa_pair.fail_i_4_n_0 ;
  wire \doa_pair.has_ov_i_1_n_0 ;
  wire \doa_pair.has_ov_i_2_n_0 ;
  wire \doa_pair.ignore_i_1_n_0 ;
  wire \doa_pair.ignore_i_2_n_0 ;
  wire \doa_pair.ignore_i_3_n_0 ;
  wire \doa_pair.ignore_i_4_n_0 ;
  wire \doa_pair.ignore_i_5_n_0 ;
  wire \doa_pair.ignore_i_6_n_0 ;
  wire \doa_pair.ignore_i_7_n_0 ;
  wire \doa_pair.ignore_i_8_n_0 ;
  wire \doa_pair.ignore_reg_n_0 ;
  wire \doa_pair.ind[0]_i_1_n_0 ;
  wire \doa_pair.ind[3]_i_1_n_0 ;
  wire \doa_pair.ind_reg_n_0_[0] ;
  wire \doa_pair.ind_reg_n_0_[1] ;
  wire \doa_pair.ind_reg_n_0_[2] ;
  wire \doa_pair.ind_reg_n_0_[3] ;
  wire \doa_pair.init_i_1_n_0 ;
  wire \doa_pair.init_i_2_n_0 ;
  wire \doa_pair.ov[5]_i_1_n_0 ;
  wire \doa_pair.run_i_1_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_6_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_7_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_8_n_0 ;
  wire \doa_pair.shadow_diff[15]_i_9_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[19]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_2_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_3_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_4_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_5_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_6_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_7_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_8_n_0 ;
  wire \doa_pair.shadow_diff[7]_i_9_n_0 ;
  wire [19:0]\doa_pair.shadow_diff_reg0 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_0 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_1 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_2 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_3 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_4 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[15]_i_1_n_7 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[19]_i_1_n_7 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_0 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_1 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_2 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_3 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_4 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_5 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_6 ;
  wire \doa_pair.shadow_diff_reg[7]_i_1_n_7 ;
  wire \doa_pair.shadow_i_1_n_0 ;
  wire \doa_pair.shadow_i_2_n_0 ;
  wire \doa_pair.shadow_i_3_n_0 ;
  wire \doa_pair.sum[15]_i_10_n_0 ;
  wire \doa_pair.sum[15]_i_11_n_0 ;
  wire \doa_pair.sum[15]_i_12_n_0 ;
  wire \doa_pair.sum[15]_i_13_n_0 ;
  wire \doa_pair.sum[15]_i_14_n_0 ;
  wire \doa_pair.sum[15]_i_15_n_0 ;
  wire \doa_pair.sum[15]_i_16_n_0 ;
  wire \doa_pair.sum[15]_i_17_n_0 ;
  wire \doa_pair.sum[15]_i_2_n_0 ;
  wire \doa_pair.sum[15]_i_3_n_0 ;
  wire \doa_pair.sum[15]_i_4_n_0 ;
  wire \doa_pair.sum[15]_i_5_n_0 ;
  wire \doa_pair.sum[15]_i_6_n_0 ;
  wire \doa_pair.sum[15]_i_7_n_0 ;
  wire \doa_pair.sum[15]_i_8_n_0 ;
  wire \doa_pair.sum[15]_i_9_n_0 ;
  wire \doa_pair.sum[20]_i_10_n_0 ;
  wire \doa_pair.sum[20]_i_2_n_0 ;
  wire \doa_pair.sum[20]_i_3_n_0 ;
  wire \doa_pair.sum[20]_i_4_n_0 ;
  wire \doa_pair.sum[20]_i_5_n_0 ;
  wire \doa_pair.sum[20]_i_6_n_0 ;
  wire \doa_pair.sum[20]_i_7_n_0 ;
  wire \doa_pair.sum[20]_i_8_n_0 ;
  wire \doa_pair.sum[20]_i_9_n_0 ;
  wire \doa_pair.sum[7]_i_10_n_0 ;
  wire \doa_pair.sum[7]_i_11_n_0 ;
  wire \doa_pair.sum[7]_i_12_n_0 ;
  wire \doa_pair.sum[7]_i_13_n_0 ;
  wire \doa_pair.sum[7]_i_14_n_0 ;
  wire \doa_pair.sum[7]_i_15_n_0 ;
  wire \doa_pair.sum[7]_i_16_n_0 ;
  wire \doa_pair.sum[7]_i_17_n_0 ;
  wire \doa_pair.sum[7]_i_2_n_0 ;
  wire \doa_pair.sum[7]_i_3_n_0 ;
  wire \doa_pair.sum[7]_i_4_n_0 ;
  wire \doa_pair.sum[7]_i_5_n_0 ;
  wire \doa_pair.sum[7]_i_6_n_0 ;
  wire \doa_pair.sum[7]_i_7_n_0 ;
  wire \doa_pair.sum[7]_i_8_n_0 ;
  wire \doa_pair.sum[7]_i_9_n_0 ;
  wire \doa_pair.sum_reg[15]_i_1_n_0 ;
  wire \doa_pair.sum_reg[15]_i_1_n_1 ;
  wire \doa_pair.sum_reg[15]_i_1_n_10 ;
  wire \doa_pair.sum_reg[15]_i_1_n_11 ;
  wire \doa_pair.sum_reg[15]_i_1_n_12 ;
  wire \doa_pair.sum_reg[15]_i_1_n_13 ;
  wire \doa_pair.sum_reg[15]_i_1_n_14 ;
  wire \doa_pair.sum_reg[15]_i_1_n_15 ;
  wire \doa_pair.sum_reg[15]_i_1_n_2 ;
  wire \doa_pair.sum_reg[15]_i_1_n_3 ;
  wire \doa_pair.sum_reg[15]_i_1_n_4 ;
  wire \doa_pair.sum_reg[15]_i_1_n_5 ;
  wire \doa_pair.sum_reg[15]_i_1_n_6 ;
  wire \doa_pair.sum_reg[15]_i_1_n_7 ;
  wire \doa_pair.sum_reg[15]_i_1_n_8 ;
  wire \doa_pair.sum_reg[15]_i_1_n_9 ;
  wire \doa_pair.sum_reg[20]_i_1_n_11 ;
  wire \doa_pair.sum_reg[20]_i_1_n_12 ;
  wire \doa_pair.sum_reg[20]_i_1_n_13 ;
  wire \doa_pair.sum_reg[20]_i_1_n_14 ;
  wire \doa_pair.sum_reg[20]_i_1_n_15 ;
  wire \doa_pair.sum_reg[20]_i_1_n_4 ;
  wire \doa_pair.sum_reg[20]_i_1_n_5 ;
  wire \doa_pair.sum_reg[20]_i_1_n_6 ;
  wire \doa_pair.sum_reg[20]_i_1_n_7 ;
  wire \doa_pair.sum_reg[7]_i_1_n_0 ;
  wire \doa_pair.sum_reg[7]_i_1_n_1 ;
  wire \doa_pair.sum_reg[7]_i_1_n_10 ;
  wire \doa_pair.sum_reg[7]_i_1_n_11 ;
  wire \doa_pair.sum_reg[7]_i_1_n_12 ;
  wire \doa_pair.sum_reg[7]_i_1_n_13 ;
  wire \doa_pair.sum_reg[7]_i_1_n_14 ;
  wire \doa_pair.sum_reg[7]_i_1_n_15 ;
  wire \doa_pair.sum_reg[7]_i_1_n_2 ;
  wire \doa_pair.sum_reg[7]_i_1_n_3 ;
  wire \doa_pair.sum_reg[7]_i_1_n_4 ;
  wire \doa_pair.sum_reg[7]_i_1_n_5 ;
  wire \doa_pair.sum_reg[7]_i_1_n_6 ;
  wire \doa_pair.sum_reg[7]_i_1_n_7 ;
  wire \doa_pair.sum_reg[7]_i_1_n_8 ;
  wire \doa_pair.sum_reg[7]_i_1_n_9 ;
  wire \doa_pair.x[19]_i_1_n_0 ;
  wire \doa_pair.x_abs[0]_i_1_n_0 ;
  wire \doa_pair.x_abs[10]_i_1_n_0 ;
  wire \doa_pair.x_abs[11]_i_1_n_0 ;
  wire \doa_pair.x_abs[12]_i_1_n_0 ;
  wire \doa_pair.x_abs[13]_i_1_n_0 ;
  wire \doa_pair.x_abs[14]_i_1_n_0 ;
  wire \doa_pair.x_abs[15]_i_1_n_0 ;
  wire \doa_pair.x_abs[16]_i_1_n_0 ;
  wire \doa_pair.x_abs[17]_i_1_n_0 ;
  wire \doa_pair.x_abs[18]_i_1_n_0 ;
  wire \doa_pair.x_abs[19]_i_1_n_0 ;
  wire \doa_pair.x_abs[1]_i_1_n_0 ;
  wire \doa_pair.x_abs[2]_i_1_n_0 ;
  wire \doa_pair.x_abs[3]_i_1_n_0 ;
  wire \doa_pair.x_abs[4]_i_1_n_0 ;
  wire \doa_pair.x_abs[5]_i_1_n_0 ;
  wire \doa_pair.x_abs[6]_i_1_n_0 ;
  wire \doa_pair.x_abs[7]_i_1_n_0 ;
  wire \doa_pair.x_abs[8]_i_1_n_0 ;
  wire \doa_pair.x_abs[9]_i_1_n_0 ;
  wire \doa_pair.x_raw[20]_i_1_n_0 ;
  (* MARK_DEBUG *) wire done;
  (* MARK_DEBUG *) wire fail;
  wire fail2_out;
  wire fail__0;
  wire g0_b0_n_0;
  (* MARK_DEBUG *) wire has_diff;
  (* MARK_DEBUG *) wire has_ov;
  (* MARK_DEBUG *) wire has_shadow_diff;
  wire [3:1]ind;
  (* MARK_DEBUG *) wire init;
  wire [19:0]k;
  (* MARK_DEBUG *) wire [5:0]ov;
  wire [19:0]p;
  wire p_0_in__0;
  wire [18:0]p_1_in;
  wire [19:0]phase;
  wire [39:16]prod;
  wire reset;
  (* MARK_DEBUG *) wire run;
  (* MARK_DEBUG *) wire shadow;
  (* MARK_DEBUG *) wire [19:0]shadow_diff;
  wire [19:0]shadow_limit;
  (* MARK_DEBUG *) wire start;
  (* MARK_DEBUG *) wire [20:0]sum;
  (* MARK_DEBUG *) wire [19:0]x;
  wire [38:19]x2;
  wire [19:0]x__0;
  (* MARK_DEBUG *) wire [19:0]x_abs;
  (* MARK_DEBUG *) wire [18:0]x_diff;
  (* MARK_DEBUG *) wire [20:0]x_raw;
  wire [38:19]xp;
  wire [7:3]\NLW_doa_pair.shadow_diff_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_doa_pair.shadow_diff_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:4]\NLW_doa_pair.sum_reg[20]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_doa_pair.sum_reg[20]_i_1_O_UNCONNECTED ;
  wire [18:0]NLW_mul_c_i_P_UNCONNECTED;
  wire [15:0]NLW_mul_doa_i_P_UNCONNECTED;
  wire [39:0]NLW_mul_x2_i_P_UNCONNECTED;
  wire [39:0]NLW_mul_x_i_P_UNCONNECTED;

  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.add_i_1 
       (.I0(g0_b0_n_0),
        .I1(\doa_pair.add_i_2_n_0 ),
        .I2(add),
        .O(\doa_pair.add_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1E39271EE49C78E5)) 
    \doa_pair.add_i_2 
       (.I0(counter[0]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[2]),
        .I4(counter[1]),
        .I5(counter[5]),
        .O(\doa_pair.add_i_2_n_0 ));
  FDRE \doa_pair.add_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.add_i_1_n_0 ),
        .Q(add),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h01000000)) 
    \doa_pair.angle[19]_i_1 
       (.I0(fail),
        .I1(reset),
        .I2(start),
        .I3(\doa_pair.counter[0]_i_2_n_0 ),
        .I4(run),
        .O(\doa_pair.angle[19]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[0] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[0]),
        .Q(angle[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[10] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[10]),
        .Q(angle[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[11] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[11]),
        .Q(angle[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[12] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[12]),
        .Q(angle[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[13] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[13]),
        .Q(angle[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[14] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[14]),
        .Q(angle[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[15] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[15]),
        .Q(angle[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[16] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[16]),
        .Q(angle[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[17] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[17]),
        .Q(angle[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[18] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[18]),
        .Q(angle[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[19] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[19]),
        .Q(angle[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[1] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[1]),
        .Q(angle[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[2] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[2]),
        .Q(angle[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[3] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[3]),
        .Q(angle[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[4] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[4]),
        .Q(angle[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[5] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[5]),
        .Q(angle[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[6] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[6]),
        .Q(angle[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[7] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[7]),
        .Q(angle[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[8] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[8]),
        .Q(angle[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.angle_reg[9] 
       (.C(clk),
        .CE(\doa_pair.angle[19]_i_1_n_0 ),
        .D(sum[9]),
        .Q(angle[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.calc_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(check_raw),
        .Q(calc_diff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h09)) 
    \doa_pair.check_raw_i_1 
       (.I0(ov[5]),
        .I1(ov[4]),
        .I2(\doa_pair.check_raw_i_2_n_0 ),
        .O(check_raw__0));
  LUT6 #(
    .INIT(64'hC1FFFFFFFFFFFF43)) 
    \doa_pair.check_raw_i_2 
       (.I0(check_raw),
        .I1(ov[1]),
        .I2(ov[0]),
        .I3(ov[4]),
        .I4(ov[3]),
        .I5(ov[2]),
        .O(\doa_pair.check_raw_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.check_raw_reg 
       (.C(clk),
        .CE(1'b1),
        .D(check_raw__0),
        .Q(check_raw),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'hF514)) 
    \doa_pair.coeff[0]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8EC7)) 
    \doa_pair.coeff[10]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[10]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h372A)) 
    \doa_pair.coeff[11]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h00ED)) 
    \doa_pair.coeff[12]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[1] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[2] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[12]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0026)) 
    \doa_pair.coeff[13]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[1] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0014)) 
    \doa_pair.coeff[14]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[14]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \doa_pair.coeff[15]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[15]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \doa_pair.coeff[16]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[16]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \doa_pair.coeff[18]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[2] ),
        .I1(\doa_pair.ind_reg_n_0_[1] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[3] ),
        .O(coeff[18]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h8600)) 
    \doa_pair.coeff[1]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h5095)) 
    \doa_pair.coeff[2]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[0] ),
        .I3(\doa_pair.ind_reg_n_0_[1] ),
        .O(coeff[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h2F9D)) 
    \doa_pair.coeff[3]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hDAA6)) 
    \doa_pair.coeff[4]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h5EE8)) 
    \doa_pair.coeff[5]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0A35)) 
    \doa_pair.coeff[6]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[0] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[2] ),
        .O(coeff[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h22F5)) 
    \doa_pair.coeff[7]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h2D17)) 
    \doa_pair.coeff[8]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hD8E7)) 
    \doa_pair.coeff[9]_i_1 
       (.I0(\doa_pair.ind_reg_n_0_[3] ),
        .I1(\doa_pair.ind_reg_n_0_[2] ),
        .I2(\doa_pair.ind_reg_n_0_[1] ),
        .I3(\doa_pair.ind_reg_n_0_[0] ),
        .O(coeff[9]));
  FDRE \doa_pair.coeff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[0]),
        .Q(\doa_pair.coeff_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[10]),
        .Q(\doa_pair.coeff_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[11]),
        .Q(\doa_pair.coeff_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[12]),
        .Q(\doa_pair.coeff_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[13]),
        .Q(\doa_pair.coeff_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[14]),
        .Q(\doa_pair.coeff_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[15]),
        .Q(\doa_pair.coeff_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[16]),
        .Q(\doa_pair.coeff_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[18]),
        .Q(\doa_pair.coeff_reg_n_0_[18] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[1]),
        .Q(\doa_pair.coeff_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[2]),
        .Q(\doa_pair.coeff_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[3]),
        .Q(\doa_pair.coeff_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[4]),
        .Q(\doa_pair.coeff_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[5]),
        .Q(\doa_pair.coeff_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[6]),
        .Q(\doa_pair.coeff_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[7]),
        .Q(\doa_pair.coeff_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[8]),
        .Q(\doa_pair.coeff_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \doa_pair.coeff_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(coeff[9]),
        .Q(\doa_pair.coeff_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h9A)) 
    \doa_pair.counter[0]_i_1 
       (.I0(counter[0]),
        .I1(\doa_pair.counter[0]_i_2_n_0 ),
        .I2(run),
        .O(counter__0[0]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \doa_pair.counter[0]_i_2 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[0]),
        .I4(counter[1]),
        .I5(counter[5]),
        .O(\doa_pair.counter[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \doa_pair.counter[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(run),
        .O(\doa_pair.counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \doa_pair.counter[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(run),
        .I3(counter[0]),
        .O(\doa_pair.counter[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \doa_pair.counter[3]_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(run),
        .I3(counter[1]),
        .I4(counter[2]),
        .O(counter__0[3]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \doa_pair.counter[4]_i_1 
       (.I0(counter[4]),
        .I1(counter[3]),
        .I2(counter[2]),
        .I3(counter[1]),
        .I4(run),
        .I5(counter[0]),
        .O(counter__0[4]));
  LUT3 #(
    .INIT(8'hFE)) 
    \doa_pair.counter[5]_i_1 
       (.I0(start),
        .I1(reset),
        .I2(fail),
        .O(\doa_pair.counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h9AAAAAAA)) 
    \doa_pair.counter[5]_i_2 
       (.I0(counter[5]),
        .I1(\doa_pair.counter[5]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(counter__0[5]));
  LUT3 #(
    .INIT(8'h7F)) 
    \doa_pair.counter[5]_i_3 
       (.I0(counter[0]),
        .I1(run),
        .I2(counter[1]),
        .O(\doa_pair.counter[5]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[0]),
        .Q(counter[0]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[3]),
        .Q(counter[3]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[4]),
        .Q(counter[4]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(counter__0[5]),
        .Q(counter[5]),
        .R(\doa_pair.counter[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \doa_pair.done_i_1 
       (.I0(start),
        .I1(reset),
        .I2(fail),
        .O(\doa_pair.done_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.done_i_2 
       (.I0(\doa_pair.counter[0]_i_2_n_0 ),
        .I1(run),
        .I2(done),
        .O(\doa_pair.done_reg0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.done_reg0 ),
        .Q(done),
        .R(\doa_pair.done_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCCB8FFFFCCB80000)) 
    \doa_pair.fail_i_1 
       (.I0(fail2_out),
        .I1(\doa_pair.fail_i_3_n_0 ),
        .I2(has_ov),
        .I3(\doa_pair.fail_i_4_n_0 ),
        .I4(fail__0),
        .I5(fail),
        .O(\doa_pair.fail_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \doa_pair.fail_i_2 
       (.I0(has_shadow_diff),
        .I1(shadow_diff[19]),
        .O(fail2_out));
  LUT5 #(
    .INIT(32'h20000004)) 
    \doa_pair.fail_i_3 
       (.I0(ov[2]),
        .I1(ov[1]),
        .I2(ov[5]),
        .I3(ov[4]),
        .I4(ov[3]),
        .O(\doa_pair.fail_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8001800000018001)) 
    \doa_pair.fail_i_4 
       (.I0(ov[5]),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[0]),
        .I5(ov[1]),
        .O(\doa_pair.fail_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAB)) 
    \doa_pair.fail_i_5 
       (.I0(has_ov),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[5]),
        .O(fail__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.fail_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.fail_i_1_n_0 ),
        .Q(fail),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.has_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(calc_diff),
        .Q(has_diff),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \doa_pair.has_ov_i_1 
       (.I0(has_ov),
        .I1(\doa_pair.has_ov_i_2_n_0 ),
        .I2(counter[1]),
        .O(\doa_pair.has_ov_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \doa_pair.has_ov_i_2 
       (.I0(counter[2]),
        .I1(counter[4]),
        .I2(counter[5]),
        .I3(counter[3]),
        .I4(counter[0]),
        .O(\doa_pair.has_ov_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.has_ov_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.has_ov_i_1_n_0 ),
        .Q(has_ov),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.has_shadow_diff_reg 
       (.C(clk),
        .CE(1'b1),
        .D(has_diff),
        .Q(has_shadow_diff),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \doa_pair.ignore_i_1 
       (.I0(xp[37]),
        .I1(\doa_pair.ignore_i_2_n_0 ),
        .I2(xp[38]),
        .I3(add),
        .I4(run),
        .I5(\doa_pair.ignore_reg_n_0 ),
        .O(\doa_pair.ignore_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_2 
       (.I0(\doa_pair.ignore_i_3_n_0 ),
        .I1(\doa_pair.ignore_i_4_n_0 ),
        .I2(xp[33]),
        .I3(xp[31]),
        .I4(xp[32]),
        .I5(\doa_pair.ignore_i_5_n_0 ),
        .O(\doa_pair.ignore_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \doa_pair.ignore_i_3 
       (.I0(xp[36]),
        .I1(xp[35]),
        .O(\doa_pair.ignore_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_4 
       (.I0(\doa_pair.ignore_i_6_n_0 ),
        .I1(\doa_pair.ignore_i_7_n_0 ),
        .I2(xp[27]),
        .I3(xp[25]),
        .I4(xp[26]),
        .I5(\doa_pair.ignore_i_8_n_0 ),
        .O(\doa_pair.ignore_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \doa_pair.ignore_i_5 
       (.I0(xp[36]),
        .I1(xp[34]),
        .I2(xp[35]),
        .O(\doa_pair.ignore_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \doa_pair.ignore_i_6 
       (.I0(xp[30]),
        .I1(xp[29]),
        .O(\doa_pair.ignore_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \doa_pair.ignore_i_7 
       (.I0(xp[20]),
        .I1(xp[19]),
        .I2(xp[21]),
        .I3(xp[24]),
        .I4(xp[22]),
        .I5(xp[23]),
        .O(\doa_pair.ignore_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hD5)) 
    \doa_pair.ignore_i_8 
       (.I0(xp[30]),
        .I1(xp[28]),
        .I2(xp[29]),
        .O(\doa_pair.ignore_i_8_n_0 ));
  FDRE \doa_pair.ignore_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.ignore_i_1_n_0 ),
        .Q(\doa_pair.ignore_reg_n_0 ),
        .R(\doa_pair.done_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h5554)) 
    \doa_pair.ind[0]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[3]),
        .O(\doa_pair.ind[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAA8)) 
    \doa_pair.ind[1]_i_1 
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[5]),
        .I3(counter[3]),
        .O(ind[1]));
  LUT4 #(
    .INIT(16'hFC4C)) 
    \doa_pair.ind[2]_i_1 
       (.I0(counter[2]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[5]),
        .O(ind[2]));
  LUT6 #(
    .INIT(64'h0118866100866110)) 
    \doa_pair.ind[3]_i_1 
       (.I0(counter[0]),
        .I1(counter[2]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[1]),
        .O(\doa_pair.ind[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \doa_pair.ind[3]_i_2 
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(counter[2]),
        .O(ind[3]));
  FDRE \doa_pair.ind_reg[0] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(\doa_pair.ind[0]_i_1_n_0 ),
        .Q(\doa_pair.ind_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[1] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[1]),
        .Q(\doa_pair.ind_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[2] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[2]),
        .Q(\doa_pair.ind_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \doa_pair.ind_reg[3] 
       (.C(clk),
        .CE(\doa_pair.ind[3]_i_1_n_0 ),
        .D(ind[3]),
        .Q(\doa_pair.ind_reg_n_0_[3] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000001)) 
    \doa_pair.init_i_1 
       (.I0(counter[3]),
        .I1(counter[0]),
        .I2(counter[5]),
        .I3(counter[1]),
        .I4(\doa_pair.init_i_2_n_0 ),
        .I5(init),
        .O(\doa_pair.init_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \doa_pair.init_i_2 
       (.I0(counter[4]),
        .I1(counter[2]),
        .O(\doa_pair.init_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.init_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.init_i_1_n_0 ),
        .Q(init),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \doa_pair.ov[5]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[2]),
        .O(\doa_pair.ov[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \doa_pair.ov[5]_i_2 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[3]),
        .I3(counter[5]),
        .I4(counter[4]),
        .I5(counter[2]),
        .O(p_0_in__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[0] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[34]),
        .Q(ov[0]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[1] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[35]),
        .Q(ov[1]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[2] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[36]),
        .Q(ov[2]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[3] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[37]),
        .Q(ov[3]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.ov_reg[4] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[38]),
        .Q(ov[4]),
        .R(\doa_pair.ov[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \doa_pair.ov_reg[5] 
       (.C(clk),
        .CE(p_0_in__0),
        .D(prod[39]),
        .Q(ov[5]),
        .S(\doa_pair.ov[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h000000F2)) 
    \doa_pair.run_i_1 
       (.I0(run),
        .I1(\doa_pair.counter[0]_i_2_n_0 ),
        .I2(start),
        .I3(reset),
        .I4(fail),
        .O(\doa_pair.run_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.run_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.run_i_1_n_0 ),
        .Q(run),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_2 
       (.I0(x_diff[15]),
        .I1(shadow_limit[15]),
        .O(\doa_pair.shadow_diff[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_3 
       (.I0(x_diff[14]),
        .I1(shadow_limit[14]),
        .O(\doa_pair.shadow_diff[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_4 
       (.I0(x_diff[13]),
        .I1(shadow_limit[13]),
        .O(\doa_pair.shadow_diff[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_5 
       (.I0(x_diff[12]),
        .I1(shadow_limit[12]),
        .O(\doa_pair.shadow_diff[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_6 
       (.I0(x_diff[11]),
        .I1(shadow_limit[11]),
        .O(\doa_pair.shadow_diff[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_7 
       (.I0(x_diff[10]),
        .I1(shadow_limit[10]),
        .O(\doa_pair.shadow_diff[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_8 
       (.I0(x_diff[9]),
        .I1(shadow_limit[9]),
        .O(\doa_pair.shadow_diff[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[15]_i_9 
       (.I0(x_diff[8]),
        .I1(shadow_limit[8]),
        .O(\doa_pair.shadow_diff[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \doa_pair.shadow_diff[19]_i_2 
       (.I0(shadow_limit[19]),
        .O(\doa_pair.shadow_diff[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_3 
       (.I0(x_diff[18]),
        .I1(shadow_limit[18]),
        .O(\doa_pair.shadow_diff[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_4 
       (.I0(x_diff[17]),
        .I1(shadow_limit[17]),
        .O(\doa_pair.shadow_diff[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[19]_i_5 
       (.I0(x_diff[16]),
        .I1(shadow_limit[16]),
        .O(\doa_pair.shadow_diff[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_2 
       (.I0(x_diff[7]),
        .I1(shadow_limit[7]),
        .O(\doa_pair.shadow_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_3 
       (.I0(x_diff[6]),
        .I1(shadow_limit[6]),
        .O(\doa_pair.shadow_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_4 
       (.I0(x_diff[5]),
        .I1(shadow_limit[5]),
        .O(\doa_pair.shadow_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_5 
       (.I0(x_diff[4]),
        .I1(shadow_limit[4]),
        .O(\doa_pair.shadow_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_6 
       (.I0(x_diff[3]),
        .I1(shadow_limit[3]),
        .O(\doa_pair.shadow_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_7 
       (.I0(x_diff[2]),
        .I1(shadow_limit[2]),
        .O(\doa_pair.shadow_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_8 
       (.I0(x_diff[1]),
        .I1(shadow_limit[1]),
        .O(\doa_pair.shadow_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.shadow_diff[7]_i_9 
       (.I0(x_diff[0]),
        .I1(shadow_limit[0]),
        .O(\doa_pair.shadow_diff[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[0] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [0]),
        .Q(shadow_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[10] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [10]),
        .Q(shadow_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[11] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [11]),
        .Q(shadow_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[12] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [12]),
        .Q(shadow_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[13] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [13]),
        .Q(shadow_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[14] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [14]),
        .Q(shadow_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[15] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [15]),
        .Q(shadow_diff[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[15]_i_1 
       (.CI(\doa_pair.shadow_diff_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\doa_pair.shadow_diff_reg[15]_i_1_n_0 ,\doa_pair.shadow_diff_reg[15]_i_1_n_1 ,\doa_pair.shadow_diff_reg[15]_i_1_n_2 ,\doa_pair.shadow_diff_reg[15]_i_1_n_3 ,\doa_pair.shadow_diff_reg[15]_i_1_n_4 ,\doa_pair.shadow_diff_reg[15]_i_1_n_5 ,\doa_pair.shadow_diff_reg[15]_i_1_n_6 ,\doa_pair.shadow_diff_reg[15]_i_1_n_7 }),
        .DI(x_diff[15:8]),
        .O(\doa_pair.shadow_diff_reg0 [15:8]),
        .S({\doa_pair.shadow_diff[15]_i_2_n_0 ,\doa_pair.shadow_diff[15]_i_3_n_0 ,\doa_pair.shadow_diff[15]_i_4_n_0 ,\doa_pair.shadow_diff[15]_i_5_n_0 ,\doa_pair.shadow_diff[15]_i_6_n_0 ,\doa_pair.shadow_diff[15]_i_7_n_0 ,\doa_pair.shadow_diff[15]_i_8_n_0 ,\doa_pair.shadow_diff[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[16] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [16]),
        .Q(shadow_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[17] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [17]),
        .Q(shadow_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[18] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [18]),
        .Q(shadow_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[19] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [19]),
        .Q(shadow_diff[19]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[19]_i_1 
       (.CI(\doa_pair.shadow_diff_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_doa_pair.shadow_diff_reg[19]_i_1_CO_UNCONNECTED [7:3],\doa_pair.shadow_diff_reg[19]_i_1_n_5 ,\doa_pair.shadow_diff_reg[19]_i_1_n_6 ,\doa_pair.shadow_diff_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,x_diff[18:16]}),
        .O({\NLW_doa_pair.shadow_diff_reg[19]_i_1_O_UNCONNECTED [7:4],\doa_pair.shadow_diff_reg0 [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\doa_pair.shadow_diff[19]_i_2_n_0 ,\doa_pair.shadow_diff[19]_i_3_n_0 ,\doa_pair.shadow_diff[19]_i_4_n_0 ,\doa_pair.shadow_diff[19]_i_5_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[1] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [1]),
        .Q(shadow_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[2] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [2]),
        .Q(shadow_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[3] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [3]),
        .Q(shadow_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[4] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [4]),
        .Q(shadow_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[5] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [5]),
        .Q(shadow_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[6] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [6]),
        .Q(shadow_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[7] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [7]),
        .Q(shadow_diff[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \doa_pair.shadow_diff_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\doa_pair.shadow_diff_reg[7]_i_1_n_0 ,\doa_pair.shadow_diff_reg[7]_i_1_n_1 ,\doa_pair.shadow_diff_reg[7]_i_1_n_2 ,\doa_pair.shadow_diff_reg[7]_i_1_n_3 ,\doa_pair.shadow_diff_reg[7]_i_1_n_4 ,\doa_pair.shadow_diff_reg[7]_i_1_n_5 ,\doa_pair.shadow_diff_reg[7]_i_1_n_6 ,\doa_pair.shadow_diff_reg[7]_i_1_n_7 }),
        .DI(x_diff[7:0]),
        .O(\doa_pair.shadow_diff_reg0 [7:0]),
        .S({\doa_pair.shadow_diff[7]_i_2_n_0 ,\doa_pair.shadow_diff[7]_i_3_n_0 ,\doa_pair.shadow_diff[7]_i_4_n_0 ,\doa_pair.shadow_diff[7]_i_5_n_0 ,\doa_pair.shadow_diff[7]_i_6_n_0 ,\doa_pair.shadow_diff[7]_i_7_n_0 ,\doa_pair.shadow_diff[7]_i_8_n_0 ,\doa_pair.shadow_diff[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[8] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [8]),
        .Q(shadow_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.shadow_diff_reg[9] 
       (.C(clk),
        .CE(has_diff),
        .D(\doa_pair.shadow_diff_reg0 [9]),
        .Q(shadow_diff[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8080000000000300)) 
    \doa_pair.shadow_i_1 
       (.I0(\doa_pair.shadow_i_2_n_0 ),
        .I1(ov[5]),
        .I2(ov[2]),
        .I3(\doa_pair.shadow_i_3_n_0 ),
        .I4(ov[4]),
        .I5(ov[3]),
        .O(\doa_pair.shadow_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h55DF4080)) 
    \doa_pair.shadow_i_2 
       (.I0(ov[1]),
        .I1(shadow_diff[19]),
        .I2(has_shadow_diff),
        .I3(ov[0]),
        .I4(shadow),
        .O(\doa_pair.shadow_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hE6E0A0E0)) 
    \doa_pair.shadow_i_3 
       (.I0(ov[1]),
        .I1(ov[0]),
        .I2(shadow),
        .I3(has_shadow_diff),
        .I4(shadow_diff[19]),
        .O(\doa_pair.shadow_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.shadow_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.shadow_i_1_n_0 ),
        .Q(shadow),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_10 
       (.I0(cp[34]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[15]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_11 
       (.I0(cp[33]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[14]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_12 
       (.I0(cp[32]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[13]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_13 
       (.I0(cp[31]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[12]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_14 
       (.I0(cp[30]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[11]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_15 
       (.I0(cp[29]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[10]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_16 
       (.I0(cp[28]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[9]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[15]_i_17 
       (.I0(cp[27]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[8]),
        .I4(run),
        .O(\doa_pair.sum[15]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[34]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[33]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[32]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[31]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_6 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[30]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_7 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[29]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_8 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[28]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[15]_i_9 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[27]),
        .I3(run),
        .O(\doa_pair.sum[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_10 
       (.I0(cp[35]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[16]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[38]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[37]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[36]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[20]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[35]),
        .I3(run),
        .O(\doa_pair.sum[20]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_6 
       (.I0(cp[39]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[20]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_7 
       (.I0(cp[38]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[19]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_8 
       (.I0(cp[37]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[18]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[20]_i_9 
       (.I0(cp[36]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[17]),
        .I4(run),
        .O(\doa_pair.sum[20]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_10 
       (.I0(cp[26]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[7]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_11 
       (.I0(cp[25]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[6]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_12 
       (.I0(cp[24]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[5]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_13 
       (.I0(cp[23]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[4]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_14 
       (.I0(cp[22]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[3]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_15 
       (.I0(cp[21]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[2]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_16 
       (.I0(cp[20]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[1]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'hF7080000)) 
    \doa_pair.sum[7]_i_17 
       (.I0(cp[19]),
        .I1(add),
        .I2(\doa_pair.ignore_reg_n_0 ),
        .I3(sum[0]),
        .I4(run),
        .O(\doa_pair.sum[7]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_2 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[26]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_3 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[25]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_4 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[24]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_5 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[23]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_6 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[22]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_7 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[21]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_8 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[20]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h4000)) 
    \doa_pair.sum[7]_i_9 
       (.I0(\doa_pair.ignore_reg_n_0 ),
        .I1(add),
        .I2(cp[19]),
        .I3(run),
        .O(\doa_pair.sum[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_15 ),
        .Q(sum[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_13 ),
        .Q(sum[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_12 ),
        .Q(sum[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_11 ),
        .Q(sum[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_10 ),
        .Q(sum[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_9 ),
        .Q(sum[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_8 ),
        .Q(sum[15]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[15]_i_1 
       (.CI(\doa_pair.sum_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\doa_pair.sum_reg[15]_i_1_n_0 ,\doa_pair.sum_reg[15]_i_1_n_1 ,\doa_pair.sum_reg[15]_i_1_n_2 ,\doa_pair.sum_reg[15]_i_1_n_3 ,\doa_pair.sum_reg[15]_i_1_n_4 ,\doa_pair.sum_reg[15]_i_1_n_5 ,\doa_pair.sum_reg[15]_i_1_n_6 ,\doa_pair.sum_reg[15]_i_1_n_7 }),
        .DI({\doa_pair.sum[15]_i_2_n_0 ,\doa_pair.sum[15]_i_3_n_0 ,\doa_pair.sum[15]_i_4_n_0 ,\doa_pair.sum[15]_i_5_n_0 ,\doa_pair.sum[15]_i_6_n_0 ,\doa_pair.sum[15]_i_7_n_0 ,\doa_pair.sum[15]_i_8_n_0 ,\doa_pair.sum[15]_i_9_n_0 }),
        .O({\doa_pair.sum_reg[15]_i_1_n_8 ,\doa_pair.sum_reg[15]_i_1_n_9 ,\doa_pair.sum_reg[15]_i_1_n_10 ,\doa_pair.sum_reg[15]_i_1_n_11 ,\doa_pair.sum_reg[15]_i_1_n_12 ,\doa_pair.sum_reg[15]_i_1_n_13 ,\doa_pair.sum_reg[15]_i_1_n_14 ,\doa_pair.sum_reg[15]_i_1_n_15 }),
        .S({\doa_pair.sum[15]_i_10_n_0 ,\doa_pair.sum[15]_i_11_n_0 ,\doa_pair.sum[15]_i_12_n_0 ,\doa_pair.sum[15]_i_13_n_0 ,\doa_pair.sum[15]_i_14_n_0 ,\doa_pair.sum[15]_i_15_n_0 ,\doa_pair.sum[15]_i_16_n_0 ,\doa_pair.sum[15]_i_17_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_15 ),
        .Q(sum[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_14 ),
        .Q(sum[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_13 ),
        .Q(sum[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_12 ),
        .Q(sum[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_14 ),
        .Q(sum[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[20]_i_1_n_11 ),
        .Q(sum[20]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[20]_i_1 
       (.CI(\doa_pair.sum_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_doa_pair.sum_reg[20]_i_1_CO_UNCONNECTED [7:4],\doa_pair.sum_reg[20]_i_1_n_4 ,\doa_pair.sum_reg[20]_i_1_n_5 ,\doa_pair.sum_reg[20]_i_1_n_6 ,\doa_pair.sum_reg[20]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\doa_pair.sum[20]_i_2_n_0 ,\doa_pair.sum[20]_i_3_n_0 ,\doa_pair.sum[20]_i_4_n_0 ,\doa_pair.sum[20]_i_5_n_0 }),
        .O({\NLW_doa_pair.sum_reg[20]_i_1_O_UNCONNECTED [7:5],\doa_pair.sum_reg[20]_i_1_n_11 ,\doa_pair.sum_reg[20]_i_1_n_12 ,\doa_pair.sum_reg[20]_i_1_n_13 ,\doa_pair.sum_reg[20]_i_1_n_14 ,\doa_pair.sum_reg[20]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,\doa_pair.sum[20]_i_6_n_0 ,\doa_pair.sum[20]_i_7_n_0 ,\doa_pair.sum[20]_i_8_n_0 ,\doa_pair.sum[20]_i_9_n_0 ,\doa_pair.sum[20]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_13 ),
        .Q(sum[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_12 ),
        .Q(sum[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_11 ),
        .Q(sum[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_10 ),
        .Q(sum[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_9 ),
        .Q(sum[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[7]_i_1_n_8 ),
        .Q(sum[7]),
        .R(1'b0));
  CARRY8 \doa_pair.sum_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\doa_pair.sum_reg[7]_i_1_n_0 ,\doa_pair.sum_reg[7]_i_1_n_1 ,\doa_pair.sum_reg[7]_i_1_n_2 ,\doa_pair.sum_reg[7]_i_1_n_3 ,\doa_pair.sum_reg[7]_i_1_n_4 ,\doa_pair.sum_reg[7]_i_1_n_5 ,\doa_pair.sum_reg[7]_i_1_n_6 ,\doa_pair.sum_reg[7]_i_1_n_7 }),
        .DI({\doa_pair.sum[7]_i_2_n_0 ,\doa_pair.sum[7]_i_3_n_0 ,\doa_pair.sum[7]_i_4_n_0 ,\doa_pair.sum[7]_i_5_n_0 ,\doa_pair.sum[7]_i_6_n_0 ,\doa_pair.sum[7]_i_7_n_0 ,\doa_pair.sum[7]_i_8_n_0 ,\doa_pair.sum[7]_i_9_n_0 }),
        .O({\doa_pair.sum_reg[7]_i_1_n_8 ,\doa_pair.sum_reg[7]_i_1_n_9 ,\doa_pair.sum_reg[7]_i_1_n_10 ,\doa_pair.sum_reg[7]_i_1_n_11 ,\doa_pair.sum_reg[7]_i_1_n_12 ,\doa_pair.sum_reg[7]_i_1_n_13 ,\doa_pair.sum_reg[7]_i_1_n_14 ,\doa_pair.sum_reg[7]_i_1_n_15 }),
        .S({\doa_pair.sum[7]_i_10_n_0 ,\doa_pair.sum[7]_i_11_n_0 ,\doa_pair.sum[7]_i_12_n_0 ,\doa_pair.sum[7]_i_13_n_0 ,\doa_pair.sum[7]_i_14_n_0 ,\doa_pair.sum[7]_i_15_n_0 ,\doa_pair.sum[7]_i_16_n_0 ,\doa_pair.sum[7]_i_17_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_15 ),
        .Q(sum[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \doa_pair.sum_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\doa_pair.sum_reg[15]_i_1_n_14 ),
        .Q(sum[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF6)) 
    \doa_pair.x[0]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[16]),
        .O(x__0[0]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[10]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[26]),
        .O(x__0[10]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[11]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[27]),
        .O(x__0[11]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[12]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[28]),
        .O(x__0[12]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[13]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[29]),
        .O(x__0[13]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[14]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[30]),
        .O(x__0[14]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[15]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[31]),
        .O(x__0[15]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[16]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[32]),
        .O(x__0[16]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[17]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[33]),
        .O(x__0[17]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[18]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[34]),
        .O(x__0[18]));
  LUT6 #(
    .INIT(64'h8000800180010001)) 
    \doa_pair.x[19]_i_1 
       (.I0(ov[5]),
        .I1(ov[2]),
        .I2(ov[3]),
        .I3(ov[4]),
        .I4(ov[1]),
        .I5(ov[0]),
        .O(\doa_pair.x[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8E)) 
    \doa_pair.x[19]_i_2 
       (.I0(ov[5]),
        .I1(prod[35]),
        .I2(ov[1]),
        .O(x__0[19]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[1]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[17]),
        .O(x__0[1]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[2]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[18]),
        .O(x__0[2]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[3]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[19]),
        .O(x__0[3]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[4]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[20]),
        .O(x__0[4]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[5]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[21]),
        .O(x__0[5]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[6]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[22]),
        .O(x__0[6]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[7]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[23]),
        .O(x__0[7]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[8]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[24]),
        .O(x__0[8]));
  LUT3 #(
    .INIT(8'hD4)) 
    \doa_pair.x[9]_i_1 
       (.I0(ov[5]),
        .I1(ov[1]),
        .I2(prod[25]),
        .O(x__0[9]));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[0]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[0]),
        .O(\doa_pair.x_abs[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[10]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[10]),
        .O(\doa_pair.x_abs[10]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[11]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[11]),
        .O(\doa_pair.x_abs[11]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[12]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[12]),
        .O(\doa_pair.x_abs[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[13]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[13]),
        .O(\doa_pair.x_abs[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[14]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[14]),
        .O(\doa_pair.x_abs[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[15]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[15]),
        .O(\doa_pair.x_abs[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[16]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[16]),
        .O(\doa_pair.x_abs[16]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[17]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[17]),
        .O(\doa_pair.x_abs[17]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[18]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[18]),
        .O(\doa_pair.x_abs[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[19]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[19]),
        .O(\doa_pair.x_abs[19]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[1]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[1]),
        .O(\doa_pair.x_abs[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[2]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[2]),
        .O(\doa_pair.x_abs[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[3]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[3]),
        .O(\doa_pair.x_abs[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[4]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[4]),
        .O(\doa_pair.x_abs[4]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[5]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[5]),
        .O(\doa_pair.x_abs[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[6]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[6]),
        .O(\doa_pair.x_abs[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[7]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[7]),
        .O(\doa_pair.x_abs[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[8]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[8]),
        .O(\doa_pair.x_abs[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \doa_pair.x_abs[9]_i_1 
       (.I0(x_raw[20]),
        .I1(x_raw[9]),
        .O(\doa_pair.x_abs[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[0] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[0]_i_1_n_0 ),
        .Q(x_abs[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[10] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[10]_i_1_n_0 ),
        .Q(x_abs[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[11] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[11]_i_1_n_0 ),
        .Q(x_abs[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[12] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[12]_i_1_n_0 ),
        .Q(x_abs[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[13] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[13]_i_1_n_0 ),
        .Q(x_abs[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[14] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[14]_i_1_n_0 ),
        .Q(x_abs[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[15] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[15]_i_1_n_0 ),
        .Q(x_abs[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[16] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[16]_i_1_n_0 ),
        .Q(x_abs[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[17] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[17]_i_1_n_0 ),
        .Q(x_abs[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[18] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[18]_i_1_n_0 ),
        .Q(x_abs[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[19] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[19]_i_1_n_0 ),
        .Q(x_abs[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[1] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[1]_i_1_n_0 ),
        .Q(x_abs[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[2] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[2]_i_1_n_0 ),
        .Q(x_abs[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[3] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[3]_i_1_n_0 ),
        .Q(x_abs[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[4] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[4]_i_1_n_0 ),
        .Q(x_abs[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[5] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[5]_i_1_n_0 ),
        .Q(x_abs[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[6] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[6]_i_1_n_0 ),
        .Q(x_abs[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[7] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[7]_i_1_n_0 ),
        .Q(x_abs[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[8] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[8]_i_1_n_0 ),
        .Q(x_abs[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_abs_reg[9] 
       (.C(clk),
        .CE(check_raw),
        .D(\doa_pair.x_abs[9]_i_1_n_0 ),
        .Q(x_abs[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[0]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[0]),
        .O(p_1_in[0]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[10]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[10]),
        .O(p_1_in[10]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[11]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[11]),
        .O(p_1_in[11]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[12]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[12]),
        .O(p_1_in[12]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[13]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[13]),
        .O(p_1_in[13]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[14]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[14]),
        .O(p_1_in[14]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[15]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[15]),
        .O(p_1_in[15]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[16]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[16]),
        .O(p_1_in[16]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[17]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[17]),
        .O(p_1_in[17]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[18]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[18]),
        .O(p_1_in[18]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[1]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[1]),
        .O(p_1_in[1]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[2]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[2]),
        .O(p_1_in[2]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[3]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[3]),
        .O(p_1_in[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[4]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[4]),
        .O(p_1_in[4]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[5]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[5]),
        .O(p_1_in[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[6]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[6]),
        .O(p_1_in[6]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[7]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[7]),
        .O(p_1_in[7]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[8]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[8]),
        .O(p_1_in[8]));
  LUT2 #(
    .INIT(4'h9)) 
    \doa_pair.x_diff[9]_i_1 
       (.I0(x_abs[19]),
        .I1(x_abs[9]),
        .O(p_1_in[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[0] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[0]),
        .Q(x_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[10] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[10]),
        .Q(x_diff[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[11] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[11]),
        .Q(x_diff[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[12] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[12]),
        .Q(x_diff[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[13] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[13]),
        .Q(x_diff[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[14] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[14]),
        .Q(x_diff[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[15] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[15]),
        .Q(x_diff[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[16] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[16]),
        .Q(x_diff[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[17] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[17]),
        .Q(x_diff[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[18] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[18]),
        .Q(x_diff[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[1] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[1]),
        .Q(x_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[2] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[2]),
        .Q(x_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[3] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[3]),
        .Q(x_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[4] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[4]),
        .Q(x_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[5] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[5]),
        .Q(x_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[6] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[6]),
        .Q(x_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[7] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[7]),
        .Q(x_diff[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[8] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[8]),
        .Q(x_diff[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_diff_reg[9] 
       (.C(clk),
        .CE(calc_diff),
        .D(p_1_in[9]),
        .Q(x_diff[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2800000000000014)) 
    \doa_pair.x_raw[20]_i_1 
       (.I0(ov[5]),
        .I1(ov[0]),
        .I2(ov[1]),
        .I3(ov[4]),
        .I4(ov[3]),
        .I5(ov[2]),
        .O(\doa_pair.x_raw[20]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[0] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[16]),
        .Q(x_raw[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[10] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[26]),
        .Q(x_raw[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[11] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[27]),
        .Q(x_raw[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[12] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[28]),
        .Q(x_raw[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[13] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[29]),
        .Q(x_raw[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[14] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[30]),
        .Q(x_raw[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[15] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[31]),
        .Q(x_raw[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[16] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[32]),
        .Q(x_raw[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[17] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[33]),
        .Q(x_raw[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[18] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[34]),
        .Q(x_raw[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[19] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[35]),
        .Q(x_raw[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[1] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[17]),
        .Q(x_raw[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[20] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[36]),
        .Q(x_raw[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[2] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[18]),
        .Q(x_raw[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[3] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[19]),
        .Q(x_raw[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[4] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[20]),
        .Q(x_raw[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[5] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[21]),
        .Q(x_raw[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[6] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[22]),
        .Q(x_raw[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[7] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[23]),
        .Q(x_raw[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[8] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[24]),
        .Q(x_raw[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_raw_reg[9] 
       (.C(clk),
        .CE(\doa_pair.x_raw[20]_i_1_n_0 ),
        .D(prod[25]),
        .Q(x_raw[9]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[0] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[0]),
        .Q(x[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[10] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[10]),
        .Q(x[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[11] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[11]),
        .Q(x[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[12] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[12]),
        .Q(x[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[13] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[13]),
        .Q(x[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[14] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[14]),
        .Q(x[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[15] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[15]),
        .Q(x[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[16] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[16]),
        .Q(x[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[17] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[17]),
        .Q(x[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[18] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[18]),
        .Q(x[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[19] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[19]),
        .Q(x[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[1] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[1]),
        .Q(x[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[2] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[2]),
        .Q(x[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[3] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[3]),
        .Q(x[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[4] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[4]),
        .Q(x[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[5] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[5]),
        .Q(x[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[6] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[6]),
        .Q(x[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[7] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[7]),
        .Q(x[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[8] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[8]),
        .Q(x[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \doa_pair.x_reg[9] 
       (.C(clk),
        .CE(\doa_pair.x[19]_i_1_n_0 ),
        .D(x__0[9]),
        .Q(x[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0049249249249200)) 
    g0_b0
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(g0_b0_n_0));
  (* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_low_0_0_ila_7 ila_i
       (.clk(clk),
        .probe0(start),
        .probe1(counter),
        .probe10(has_diff),
        .probe11(x_diff),
        .probe12(has_shadow_diff),
        .probe13(shadow_diff),
        .probe14(shadow),
        .probe15(x),
        .probe16(sum),
        .probe17(done),
        .probe18(fail),
        .probe19(angle),
        .probe2(run),
        .probe3(init),
        .probe4(has_ov),
        .probe5(ov),
        .probe6(check_raw),
        .probe7(x_raw),
        .probe8(x_abs),
        .probe9(calc_diff));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_c_i
       (.A({1'b0,\doa_pair.coeff_reg_n_0_[18] ,1'b0,\doa_pair.coeff_reg_n_0_[16] ,\doa_pair.coeff_reg_n_0_[15] ,\doa_pair.coeff_reg_n_0_[14] ,\doa_pair.coeff_reg_n_0_[13] ,\doa_pair.coeff_reg_n_0_[12] ,\doa_pair.coeff_reg_n_0_[11] ,\doa_pair.coeff_reg_n_0_[10] ,\doa_pair.coeff_reg_n_0_[9] ,\doa_pair.coeff_reg_n_0_[8] ,\doa_pair.coeff_reg_n_0_[7] ,\doa_pair.coeff_reg_n_0_[6] ,\doa_pair.coeff_reg_n_0_[5] ,\doa_pair.coeff_reg_n_0_[4] ,\doa_pair.coeff_reg_n_0_[3] ,\doa_pair.coeff_reg_n_0_[2] ,\doa_pair.coeff_reg_n_0_[1] ,\doa_pair.coeff_reg_n_0_[0] }),
        .B(p),
        .CLK(clk),
        .P({cp,NLW_mul_c_i_P_UNCONNECTED[18:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_doa_i
       (.A(k),
        .B(phase),
        .CLK(clk),
        .P({prod,NLW_mul_doa_i_P_UNCONNECTED[15:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_x2_i
       (.A(x),
        .B(x),
        .CLK(clk),
        .P({NLW_mul_x2_i_P_UNCONNECTED[39],x2,NLW_mul_x2_i_P_UNCONNECTED[18:0]}));
  (* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
  ps_comp_low_0_0_mult_20x20 mul_x_i
       (.A(x2),
        .B(p),
        .CLK(clk),
        .P({NLW_mul_x_i_P_UNCONNECTED[39],xp,NLW_mul_x_i_P_UNCONNECTED[18:0]}));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_1
       (.I0(x[19]),
        .I1(init),
        .I2(xp[38]),
        .O(p[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_10
       (.I0(x[10]),
        .I1(init),
        .I2(xp[29]),
        .O(p[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_11
       (.I0(x[9]),
        .I1(init),
        .I2(xp[28]),
        .O(p[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_12
       (.I0(x[8]),
        .I1(init),
        .I2(xp[27]),
        .O(p[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_13
       (.I0(x[7]),
        .I1(init),
        .I2(xp[26]),
        .O(p[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_14
       (.I0(x[6]),
        .I1(init),
        .I2(xp[25]),
        .O(p[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_15
       (.I0(x[5]),
        .I1(init),
        .I2(xp[24]),
        .O(p[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_16
       (.I0(x[4]),
        .I1(init),
        .I2(xp[23]),
        .O(p[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_17
       (.I0(x[3]),
        .I1(init),
        .I2(xp[22]),
        .O(p[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_18
       (.I0(x[2]),
        .I1(init),
        .I2(xp[21]),
        .O(p[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_19
       (.I0(x[1]),
        .I1(init),
        .I2(xp[20]),
        .O(p[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_2
       (.I0(x[18]),
        .I1(init),
        .I2(xp[37]),
        .O(p[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_20
       (.I0(x[0]),
        .I1(init),
        .I2(xp[19]),
        .O(p[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_3
       (.I0(x[17]),
        .I1(init),
        .I2(xp[36]),
        .O(p[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_4
       (.I0(x[16]),
        .I1(init),
        .I2(xp[35]),
        .O(p[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_5
       (.I0(x[15]),
        .I1(init),
        .I2(xp[34]),
        .O(p[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_6
       (.I0(x[14]),
        .I1(init),
        .I2(xp[33]),
        .O(p[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_7
       (.I0(x[13]),
        .I1(init),
        .I2(xp[32]),
        .O(p[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_8
       (.I0(x[12]),
        .I1(init),
        .I2(xp[31]),
        .O(p[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    mul_x_i_i_9
       (.I0(x[11]),
        .I1(init),
        .I2(xp[30]),
        .O(p[11]));
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
module ps_comp_low_0_0_dsp_incr_env_HD7
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

(* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dsp_phase_env" *) 
(* X_CORE_INFO = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
module ps_comp_low_0_0_dsp_phase_env
   (CLK,
    A,
    B,
    P,
    SCLRP);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:pcout_intf:carrycascout_intf:carryout_intf:bcout_intf:acout_intf:concat_intf:d_intf:c_intf:b_intf:a_intf:bcin_intf:acin_intf:pcin_intf:carryin_intf:carrycascin_intf:sel_intf, ASSOCIATED_RESET SCLR:SCLRD:SCLRA:SCLRB:SCLRCONCAT:SCLRC:SCLRM:SCLRP:SCLRSEL, ASSOCIATED_CLKEN CE:CED:CED1:CED2:CED3:CEA:CEA1:CEA2:CEA3:CEA4:CEB:CEB1:CEB2:CEB3:CEB4:CECONCAT:CECONCAT3:CECONCAT4:CECONCAT5:CEC:CEC1:CEC2:CEC3:CEC4:CEC5:CEM:CEP:CESEL:CESEL1:CESEL2:CESEL3:CESEL4:CESEL5, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [17:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [47:0]P;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sclrp_intf RST" *) (* X_INTERFACE_MODE = "slave sclrp_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sclrp_intf, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *) input SCLRP;


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
    probe30,
    probe31,
    probe32,
    probe33);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [23:0]probe1;
  input [23:0]probe2;
  input [23:0]probe3;
  input [19:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [31:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [15:0]probe11;
  input [15:0]probe12;
  input [15:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
  input [1:0]probe17;
  input [8:0]probe18;
  input [0:0]probe19;
  input [0:0]probe20;
  input [0:0]probe21;
  input [0:0]probe22;
  input [0:0]probe23;
  input [0:0]probe24;
  input [3:0]probe25;
  input [5:0]probe26;
  input [19:0]probe27;
  input [19:0]probe28;
  input [20:0]probe29;
  input [20:0]probe30;
  input [5:0]probe31;
  input [0:0]probe32;
  input [0:0]probe33;


endmodule

(* CHECK_LICENSE_TYPE = "ila_6,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_6" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_low_0_0_ila_6
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
    probe20);
  (* syn_isclock = "1" *) input clk;
  input [31:0]probe0;
  input [19:0]probe1;
  input [0:0]probe2;
  input [19:0]probe3;
  input [15:0]probe4;
  input [15:0]probe5;
  input [15:0]probe6;
  input [19:0]probe7;
  input [19:0]probe8;
  input [19:0]probe9;
  input [0:0]probe10;
  input [19:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [0:0]probe15;
  input [0:0]probe16;
  input [0:0]probe17;
  input [19:0]probe18;
  input [19:0]probe19;
  input [19:0]probe20;


endmodule

(* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_7" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_low_0_0_ila_7
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
    probe19);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [5:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [5:0]probe5;
  input [0:0]probe6;
  input [20:0]probe7;
  input [19:0]probe8;
  input [0:0]probe9;
  input [0:0]probe10;
  input [18:0]probe11;
  input [0:0]probe12;
  input [19:0]probe13;
  input [0:0]probe14;
  input [19:0]probe15;
  input [20:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
  input [19:0]probe19;


endmodule

(* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_7" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_comp_low_0_0_ila_7_HD3
   (clk,
    probe0,
    probe1,
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
  input [5:0]probe1;
  input [0:0]probe10;
  input [18:0]probe11;
  input [0:0]probe12;
  input [19:0]probe13;
  input [0:0]probe14;
  input [19:0]probe15;
  input [20:0]probe16;
  input [0:0]probe17;
  input [0:0]probe18;
  input [19:0]probe19;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [5:0]probe5;
  input [0:0]probe6;
  input [20:0]probe7;
  input [19:0]probe8;
  input [0:0]probe9;


endmodule

(* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_20x20" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module ps_comp_low_0_0_mult_20x20
   (CLK,
    A,
    B,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [19:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [39:0]P;


endmodule

(* CHECK_LICENSE_TYPE = "mult_20x20,mult_gen_v12_0_23,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mult_20x20" *) 
(* X_CORE_INFO = "mult_gen_v12_0_23,Vivado 2025.1" *) 
module ps_comp_low_0_0_mult_20x20_HD4
   (CLK,
    A,
    B,
    P);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* X_INTERFACE_MODE = "slave clk_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input CLK;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* X_INTERFACE_MODE = "slave a_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [19:0]A;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* X_INTERFACE_MODE = "slave b_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [19:0]B;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* X_INTERFACE_MODE = "master p_intf" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [39:0]P;


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
