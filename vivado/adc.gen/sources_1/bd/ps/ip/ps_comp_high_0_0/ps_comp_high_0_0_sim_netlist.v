// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Dec 21 00:44:09 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_high_0_0/ps_comp_high_0_0_sim_netlist.v
// Design      : ps_comp_high_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "div_weighted" *) 
(* X_CORE_INFO = "div_gen_v5_1_24,Vivado 2025.1" *) 
module div_weighted_HD1
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

(* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dsp_phase_env" *) 
(* X_CORE_INFO = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
module dsp_phase_env_HD3
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

(* CHECK_LICENSE_TYPE = "ps_comp_high_0_0,comp_high,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "comp_high,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_comp_high_0_0
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 fifo_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME fifo_clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_freq1_clk, INSERT_VIP 0" *) input fifo_clk;
  input fifo_wr;
  input [383:0]fifo_sample_data;
  input [143:0]fifo_doa_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp1_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;

  wire clk;
  wire [7:0]config_adr;
  wire config_clk;
  wire [31:0]config_data;
  wire config_wr;
  wire fifo_clk;
  wire [143:0]fifo_doa_data;
  wire [383:0]fifo_sample_data;
  wire fifo_wr;
  wire reset;

  ps_comp_high_0_0_comp_high inst
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

(* ORIG_REF_NAME = "comp_high" *) 
module ps_comp_high_0_0_comp_high
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
  input [383:0]fifo_sample_data;
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
  wire \comp_high.doa_delay[1]_i_1_n_0 ;
  wire \comp_high.doa_delay[2]_i_1_n_0 ;
  wire \comp_high.doa_delay[3]_i_1_n_0 ;
  wire \comp_high.doa_delay[4]_i_1_n_0 ;
  wire \comp_high.doa_delay[4]_i_2_n_0 ;
  wire \comp_high.doa_rd_i_1_n_0 ;
  wire \comp_high.doa_valid_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[7]_i_1_n_0 ;
  wire \comp_high.fifo_sample_delay[7]_i_3_n_0 ;
  wire \comp_high.fifo_sample_delay[8]_i_1_n_0 ;
  wire \comp_high.sample_rd_i_1_n_0 ;
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
  wire [383:0]fifo_sample_data;
  wire [8:0]fifo_sample_delay;
  wire [7:0]fifo_sample_delay0;
  wire fifo_sample_empty;
  wire fifo_wr;
  wire reset;
  wire sample_rd;
  wire NLW_det_sig_i_signal_done_UNCONNECTED;
  wire [8:0]NLW_det_sig_i_signal_counter_UNCONNECTED;
  wire [23:0]NLW_det_sig_i_signal_sample_UNCONNECTED;
  wire NLW_fifo_config_i_full_UNCONNECTED;
  wire NLW_fifo_config_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_config_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_doa_i_full_UNCONNECTED;
  wire NLW_fifo_doa_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_doa_i_wr_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_full_UNCONNECTED;
  wire NLW_fifo_raw_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_raw_i_wr_rst_busy_UNCONNECTED;
  wire [383:0]NLW_fifo_raw_i_dout_UNCONNECTED;

  FDRE \comp_high.cfg_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(det_sig_i_i_1_n_0),
        .Q(cfg_rd),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[0] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[0]),
        .Q(doa_data[0]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[100] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[100]),
        .Q(doa_data[100]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[101] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[101]),
        .Q(doa_data[101]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[102] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[102]),
        .Q(doa_data[102]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[103] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[103]),
        .Q(doa_data[103]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[104] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[104]),
        .Q(doa_data[104]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[105] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[105]),
        .Q(doa_data[105]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[106] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[106]),
        .Q(doa_data[106]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[107] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[107]),
        .Q(doa_data[107]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[108] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[108]),
        .Q(doa_data[108]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[109] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[109]),
        .Q(doa_data[109]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[10] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[10]),
        .Q(doa_data[10]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[110] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[110]),
        .Q(doa_data[110]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[111] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[111]),
        .Q(doa_data[111]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[112] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[112]),
        .Q(doa_data[112]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[113] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[113]),
        .Q(doa_data[113]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[114] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[114]),
        .Q(doa_data[114]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[115] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[115]),
        .Q(doa_data[115]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[116] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[116]),
        .Q(doa_data[116]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[117] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[117]),
        .Q(doa_data[117]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[118] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[118]),
        .Q(doa_data[118]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[119] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[119]),
        .Q(doa_data[119]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[11] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[11]),
        .Q(doa_data[11]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[120] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[120]),
        .Q(doa_data[120]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[121] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[121]),
        .Q(doa_data[121]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[122] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[122]),
        .Q(doa_data[122]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[123] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[123]),
        .Q(doa_data[123]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[124] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[124]),
        .Q(doa_data[124]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[125] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[125]),
        .Q(doa_data[125]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[126] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[126]),
        .Q(doa_data[126]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[127] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[127]),
        .Q(doa_data[127]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[128] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[128]),
        .Q(doa_data[128]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[129] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[129]),
        .Q(doa_data[129]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[12] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[12]),
        .Q(doa_data[12]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[130] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[130]),
        .Q(doa_data[130]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[131] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[131]),
        .Q(doa_data[131]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[132] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[132]),
        .Q(doa_data[132]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[133] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[133]),
        .Q(doa_data[133]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[134] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[134]),
        .Q(doa_data[134]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[135] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[135]),
        .Q(doa_data[135]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[136] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[136]),
        .Q(doa_data[136]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[137] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[137]),
        .Q(doa_data[137]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[138] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[138]),
        .Q(doa_data[138]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[139] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[139]),
        .Q(doa_data[139]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[13] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[13]),
        .Q(doa_data[13]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[140] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[140]),
        .Q(doa_data[140]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[141] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[141]),
        .Q(doa_data[141]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[142] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[142]),
        .Q(doa_data[142]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[143] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[143]),
        .Q(doa_data[143]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[14] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[14]),
        .Q(doa_data[14]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[15] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[15]),
        .Q(doa_data[15]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[16] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[16]),
        .Q(doa_data[16]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[17] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[17]),
        .Q(doa_data[17]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[18] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[18]),
        .Q(doa_data[18]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[19] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[19]),
        .Q(doa_data[19]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[1] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[1]),
        .Q(doa_data[1]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[20] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[20]),
        .Q(doa_data[20]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[21] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[21]),
        .Q(doa_data[21]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[22] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[22]),
        .Q(doa_data[22]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[23] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[23]),
        .Q(doa_data[23]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[24] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[24]),
        .Q(doa_data[24]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[25] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[25]),
        .Q(doa_data[25]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[26] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[26]),
        .Q(doa_data[26]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[27] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[27]),
        .Q(doa_data[27]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[28] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[28]),
        .Q(doa_data[28]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[29] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[29]),
        .Q(doa_data[29]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[2] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[2]),
        .Q(doa_data[2]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[30] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[30]),
        .Q(doa_data[30]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[31] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[31]),
        .Q(doa_data[31]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[32] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[32]),
        .Q(doa_data[32]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[33] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[33]),
        .Q(doa_data[33]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[34] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[34]),
        .Q(doa_data[34]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[35] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[35]),
        .Q(doa_data[35]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[36] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[36]),
        .Q(doa_data[36]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[37] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[37]),
        .Q(doa_data[37]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[38] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[38]),
        .Q(doa_data[38]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[39] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[39]),
        .Q(doa_data[39]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[3] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[3]),
        .Q(doa_data[3]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[40] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[40]),
        .Q(doa_data[40]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[41] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[41]),
        .Q(doa_data[41]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[42] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[42]),
        .Q(doa_data[42]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[43] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[43]),
        .Q(doa_data[43]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[44] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[44]),
        .Q(doa_data[44]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[45] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[45]),
        .Q(doa_data[45]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[46] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[46]),
        .Q(doa_data[46]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[47] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[47]),
        .Q(doa_data[47]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[48] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[48]),
        .Q(doa_data[48]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[49] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[49]),
        .Q(doa_data[49]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[4] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[4]),
        .Q(doa_data[4]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[50] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[50]),
        .Q(doa_data[50]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[51] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[51]),
        .Q(doa_data[51]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[52] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[52]),
        .Q(doa_data[52]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[53] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[53]),
        .Q(doa_data[53]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[54] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[54]),
        .Q(doa_data[54]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[55] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[55]),
        .Q(doa_data[55]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[56] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[56]),
        .Q(doa_data[56]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[57] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[57]),
        .Q(doa_data[57]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[58] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[58]),
        .Q(doa_data[58]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[59] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[59]),
        .Q(doa_data[59]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[5] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[5]),
        .Q(doa_data[5]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[60] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[60]),
        .Q(doa_data[60]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[61] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[61]),
        .Q(doa_data[61]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[62] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[62]),
        .Q(doa_data[62]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[63] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[63]),
        .Q(doa_data[63]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[64] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[64]),
        .Q(doa_data[64]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[65] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[65]),
        .Q(doa_data[65]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[66] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[66]),
        .Q(doa_data[66]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[67] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[67]),
        .Q(doa_data[67]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[68] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[68]),
        .Q(doa_data[68]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[69] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[69]),
        .Q(doa_data[69]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[6] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[6]),
        .Q(doa_data[6]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[70] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[70]),
        .Q(doa_data[70]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[71] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[71]),
        .Q(doa_data[71]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[72] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[72]),
        .Q(doa_data[72]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[73] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[73]),
        .Q(doa_data[73]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[74] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[74]),
        .Q(doa_data[74]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[75] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[75]),
        .Q(doa_data[75]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[76] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[76]),
        .Q(doa_data[76]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[77] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[77]),
        .Q(doa_data[77]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[78] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[78]),
        .Q(doa_data[78]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[79] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[79]),
        .Q(doa_data[79]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[7] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[7]),
        .Q(doa_data[7]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[80] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[80]),
        .Q(doa_data[80]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[81] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[81]),
        .Q(doa_data[81]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[82] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[82]),
        .Q(doa_data[82]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[83] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[83]),
        .Q(doa_data[83]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[84] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[84]),
        .Q(doa_data[84]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[85] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[85]),
        .Q(doa_data[85]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[86] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[86]),
        .Q(doa_data[86]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[87] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[87]),
        .Q(doa_data[87]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[88] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[88]),
        .Q(doa_data[88]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[89] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[89]),
        .Q(doa_data[89]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[8] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[8]),
        .Q(doa_data[8]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[90] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[90]),
        .Q(doa_data[90]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[91] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[91]),
        .Q(doa_data[91]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[92] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[92]),
        .Q(doa_data[92]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[93] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[93]),
        .Q(doa_data[93]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[94] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[94]),
        .Q(doa_data[94]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[95] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[95]),
        .Q(doa_data[95]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[96] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[96]),
        .Q(doa_data[96]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[97] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[97]),
        .Q(doa_data[97]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[98] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[98]),
        .Q(doa_data[98]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[99] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[99]),
        .Q(doa_data[99]),
        .R(1'b0));
  FDRE \comp_high.doa_data_reg[9] 
       (.C(clk),
        .CE(\comp_high.doa_valid_i_1_n_0 ),
        .D(doa_out_data[9]),
        .Q(doa_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_high.doa_delay[0]_i_1 
       (.I0(doa_delay[0]),
        .O(doa_delay0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \comp_high.doa_delay[1]_i_1 
       (.I0(doa_delay[0]),
        .I1(doa_delay[1]),
        .O(\comp_high.doa_delay[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \comp_high.doa_delay[2]_i_1 
       (.I0(doa_delay[1]),
        .I1(doa_delay[0]),
        .I2(doa_delay[2]),
        .O(\comp_high.doa_delay[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \comp_high.doa_delay[3]_i_1 
       (.I0(doa_delay[2]),
        .I1(doa_delay[0]),
        .I2(doa_delay[1]),
        .I3(doa_delay[3]),
        .O(\comp_high.doa_delay[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \comp_high.doa_delay[4]_i_1 
       (.I0(doa_delay[0]),
        .I1(doa_delay[3]),
        .I2(doa_delay[4]),
        .I3(doa_delay[1]),
        .I4(doa_delay[2]),
        .O(\comp_high.doa_delay[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \comp_high.doa_delay[4]_i_2 
       (.I0(doa_delay[3]),
        .I1(doa_delay[1]),
        .I2(doa_delay[0]),
        .I3(doa_delay[2]),
        .I4(doa_delay[4]),
        .O(\comp_high.doa_delay[4]_i_2_n_0 ));
  FDSE \comp_high.doa_delay_reg[0] 
       (.C(clk),
        .CE(\comp_high.doa_delay[4]_i_1_n_0 ),
        .D(doa_delay0),
        .Q(doa_delay[0]),
        .S(doa_empty));
  FDSE \comp_high.doa_delay_reg[1] 
       (.C(clk),
        .CE(\comp_high.doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.doa_delay[1]_i_1_n_0 ),
        .Q(doa_delay[1]),
        .S(doa_empty));
  FDSE \comp_high.doa_delay_reg[2] 
       (.C(clk),
        .CE(\comp_high.doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.doa_delay[2]_i_1_n_0 ),
        .Q(doa_delay[2]),
        .S(doa_empty));
  FDSE \comp_high.doa_delay_reg[3] 
       (.C(clk),
        .CE(\comp_high.doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.doa_delay[3]_i_1_n_0 ),
        .Q(doa_delay[3]),
        .S(doa_empty));
  FDSE \comp_high.doa_delay_reg[4] 
       (.C(clk),
        .CE(\comp_high.doa_delay[4]_i_1_n_0 ),
        .D(\comp_high.doa_delay[4]_i_2_n_0 ),
        .Q(doa_delay[4]),
        .S(doa_empty));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \comp_high.doa_rd_i_1 
       (.I0(doa_empty),
        .I1(doa_delay[2]),
        .I2(doa_delay[1]),
        .I3(doa_delay[4]),
        .I4(doa_delay[3]),
        .I5(doa_delay[0]),
        .O(\comp_high.doa_rd_i_1_n_0 ));
  FDRE \comp_high.doa_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_high.doa_rd_i_1_n_0 ),
        .Q(doa_rd),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \comp_high.doa_valid_i_1 
       (.I0(doa_rd),
        .I1(doa_empty),
        .O(\comp_high.doa_valid_i_1_n_0 ));
  FDRE \comp_high.doa_valid_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_high.doa_valid_i_1_n_0 ),
        .Q(doa_valid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \comp_high.fifo_sample_delay[0]_i_1 
       (.I0(fifo_sample_delay[0]),
        .O(fifo_sample_delay0[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \comp_high.fifo_sample_delay[1]_i_1 
       (.I0(fifo_sample_delay[1]),
        .I1(fifo_sample_delay[0]),
        .O(fifo_sample_delay0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hA9)) 
    \comp_high.fifo_sample_delay[2]_i_1 
       (.I0(fifo_sample_delay[2]),
        .I1(fifo_sample_delay[0]),
        .I2(fifo_sample_delay[1]),
        .O(fifo_sample_delay0[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \comp_high.fifo_sample_delay[3]_i_1 
       (.I0(fifo_sample_delay[3]),
        .I1(fifo_sample_delay[1]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[2]),
        .O(fifo_sample_delay0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \comp_high.fifo_sample_delay[4]_i_1 
       (.I0(fifo_sample_delay[4]),
        .I1(fifo_sample_delay[2]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[1]),
        .I4(fifo_sample_delay[3]),
        .O(fifo_sample_delay0[4]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA9)) 
    \comp_high.fifo_sample_delay[5]_i_1 
       (.I0(fifo_sample_delay[5]),
        .I1(fifo_sample_delay[3]),
        .I2(fifo_sample_delay[1]),
        .I3(fifo_sample_delay[0]),
        .I4(fifo_sample_delay[2]),
        .I5(fifo_sample_delay[4]),
        .O(fifo_sample_delay0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \comp_high.fifo_sample_delay[6]_i_1 
       (.I0(fifo_sample_delay[6]),
        .I1(\comp_high.fifo_sample_delay[7]_i_3_n_0 ),
        .O(fifo_sample_delay0[6]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \comp_high.fifo_sample_delay[7]_i_1 
       (.I0(fifo_sample_delay[7]),
        .I1(\comp_high.fifo_sample_delay[7]_i_3_n_0 ),
        .I2(fifo_sample_delay[6]),
        .I3(fifo_sample_delay[8]),
        .O(\comp_high.fifo_sample_delay[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hA9)) 
    \comp_high.fifo_sample_delay[7]_i_2 
       (.I0(fifo_sample_delay[7]),
        .I1(\comp_high.fifo_sample_delay[7]_i_3_n_0 ),
        .I2(fifo_sample_delay[6]),
        .O(fifo_sample_delay0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \comp_high.fifo_sample_delay[7]_i_3 
       (.I0(fifo_sample_delay[4]),
        .I1(fifo_sample_delay[2]),
        .I2(fifo_sample_delay[0]),
        .I3(fifo_sample_delay[1]),
        .I4(fifo_sample_delay[3]),
        .I5(fifo_sample_delay[5]),
        .O(\comp_high.fifo_sample_delay[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFE00)) 
    \comp_high.fifo_sample_delay[8]_i_1 
       (.I0(fifo_sample_delay[7]),
        .I1(\comp_high.fifo_sample_delay[7]_i_3_n_0 ),
        .I2(fifo_sample_delay[6]),
        .I3(fifo_sample_delay[8]),
        .O(\comp_high.fifo_sample_delay[8]_i_1_n_0 ));
  FDSE \comp_high.fifo_sample_delay_reg[0] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[0]),
        .Q(fifo_sample_delay[0]),
        .S(fifo_sample_empty));
  FDSE \comp_high.fifo_sample_delay_reg[1] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[1]),
        .Q(fifo_sample_delay[1]),
        .S(fifo_sample_empty));
  FDSE \comp_high.fifo_sample_delay_reg[2] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[2]),
        .Q(fifo_sample_delay[2]),
        .S(fifo_sample_empty));
  FDSE \comp_high.fifo_sample_delay_reg[3] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[3]),
        .Q(fifo_sample_delay[3]),
        .S(fifo_sample_empty));
  FDSE \comp_high.fifo_sample_delay_reg[4] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[4]),
        .Q(fifo_sample_delay[4]),
        .S(fifo_sample_empty));
  FDRE \comp_high.fifo_sample_delay_reg[5] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[5]),
        .Q(fifo_sample_delay[5]),
        .R(fifo_sample_empty));
  FDRE \comp_high.fifo_sample_delay_reg[6] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[6]),
        .Q(fifo_sample_delay[6]),
        .R(fifo_sample_empty));
  FDRE \comp_high.fifo_sample_delay_reg[7] 
       (.C(clk),
        .CE(\comp_high.fifo_sample_delay[7]_i_1_n_0 ),
        .D(fifo_sample_delay0[7]),
        .Q(fifo_sample_delay[7]),
        .R(fifo_sample_empty));
  FDRE \comp_high.fifo_sample_delay_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_high.fifo_sample_delay[8]_i_1_n_0 ),
        .Q(fifo_sample_delay[8]),
        .R(fifo_sample_empty));
  LUT5 #(
    .INIT(32'h00000001)) 
    \comp_high.sample_rd_i_1 
       (.I0(fifo_sample_empty),
        .I1(fifo_sample_delay[8]),
        .I2(fifo_sample_delay[6]),
        .I3(\comp_high.fifo_sample_delay[7]_i_3_n_0 ),
        .I4(fifo_sample_delay[7]),
        .O(\comp_high.sample_rd_i_1_n_0 ));
  FDRE \comp_high.sample_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\comp_high.sample_rd_i_1_n_0 ),
        .Q(sample_rd),
        .R(1'b0));
  (* KEEP_HIERARCHY = "soft" *) 
  ps_comp_high_0_0_det_signal det_sig_i
       (.active(doa_valid),
        .clk(clk),
        .config_adr(config_data_adr_out[7:0]),
        .config_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,config_data_adr_out[23:8]}),
        .config_wr(det_sig_i_i_1_n_0),
        .data(doa_data),
        .reset(1'b0),
        .signal_counter(NLW_det_sig_i_signal_counter_UNCONNECTED[8:0]),
        .signal_done(NLW_det_sig_i_signal_done_UNCONNECTED),
        .signal_sample(NLW_det_sig_i_signal_sample_UNCONNECTED[23:0]));
  LUT1 #(
    .INIT(2'h1)) 
    det_sig_i_i_1
       (.I0(cfg_empty),
        .O(det_sig_i_i_1_n_0));
  (* CHECK_LICENSE_TYPE = "fifo_config,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_high_0_0_fifo_config fifo_config_i
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
  ps_comp_high_0_0_fifo_doa fifo_doa_i
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
  (* CHECK_LICENSE_TYPE = "fifo_raw_high,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_comp_high_0_0_fifo_raw_high fifo_raw_i
       (.din(fifo_sample_data),
        .dout(NLW_fifo_raw_i_dout_UNCONNECTED[383:0]),
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
module ps_comp_high_0_0_det_signal
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
  output [23:0]signal_sample;
  output [8:0]signal_counter;
  output signal_done;

  wire \<const0> ;
  (* MARK_DEBUG *) wire active;
  wire clk;
  wire [7:0]config_adr;
  wire [31:0]config_data;
  wire config_wr;
  wire [143:0]data;
  wire \det_signal.acc_reset_i_1_n_0 ;
  wire \det_signal.acc_reset_reg_n_0 ;
  wire \det_signal.diff_env_E[16]_i_10_n_0 ;
  wire \det_signal.diff_env_E[16]_i_11_n_0 ;
  wire \det_signal.diff_env_E[16]_i_12_n_0 ;
  wire \det_signal.diff_env_E[16]_i_14_n_0 ;
  wire \det_signal.diff_env_E[16]_i_15_n_0 ;
  wire \det_signal.diff_env_E[16]_i_16_n_0 ;
  wire \det_signal.diff_env_E[16]_i_17_n_0 ;
  wire \det_signal.diff_env_E[16]_i_18_n_0 ;
  wire \det_signal.diff_env_E[16]_i_19_n_0 ;
  wire \det_signal.diff_env_E[16]_i_20_n_0 ;
  wire \det_signal.diff_env_E[16]_i_21_n_0 ;
  wire \det_signal.diff_env_E[16]_i_23_n_0 ;
  wire \det_signal.diff_env_E[16]_i_24_n_0 ;
  wire \det_signal.diff_env_E[16]_i_25_n_0 ;
  wire \det_signal.diff_env_E[16]_i_26_n_0 ;
  wire \det_signal.diff_env_E[16]_i_27_n_0 ;
  wire \det_signal.diff_env_E[16]_i_28_n_0 ;
  wire \det_signal.diff_env_E[16]_i_29_n_0 ;
  wire \det_signal.diff_env_E[16]_i_30_n_0 ;
  wire \det_signal.diff_env_E[16]_i_31_n_0 ;
  wire \det_signal.diff_env_E[16]_i_32_n_0 ;
  wire \det_signal.diff_env_E[16]_i_33_n_0 ;
  wire \det_signal.diff_env_E[16]_i_34_n_0 ;
  wire \det_signal.diff_env_E[16]_i_35_n_0 ;
  wire \det_signal.diff_env_E[16]_i_36_n_0 ;
  wire \det_signal.diff_env_E[16]_i_37_n_0 ;
  wire \det_signal.diff_env_E[16]_i_5_n_0 ;
  wire \det_signal.diff_env_E[16]_i_6_n_0 ;
  wire \det_signal.diff_env_E[16]_i_7_n_0 ;
  wire \det_signal.diff_env_E[16]_i_8_n_0 ;
  wire \det_signal.diff_env_E[16]_i_9_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_1 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_10 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_11 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_12 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_13 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_14 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_15 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_2 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_3 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_4 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_5 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_6 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_7 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_8 ;
  wire \det_signal.diff_env_E_reg[16]_i_13_n_9 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_1 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_10 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_11 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_12 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_13 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_14 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_15 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_2 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_3 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_4 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_5 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_6 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_7 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_8 ;
  wire \det_signal.diff_env_E_reg[16]_i_22_n_9 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_1 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_2 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_3 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_4 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_5 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_6 ;
  wire \det_signal.diff_env_E_reg[16]_i_2_n_7 ;
  wire \det_signal.diff_env_E_reg[16]_i_3_n_15 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_0 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_1 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_2 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_3 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_4 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_5 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_6 ;
  wire \det_signal.diff_env_E_reg[16]_i_4_n_7 ;
  wire \det_signal.diff_env_N[16]_i_10_n_0 ;
  wire \det_signal.diff_env_N[16]_i_11_n_0 ;
  wire \det_signal.diff_env_N[16]_i_12_n_0 ;
  wire \det_signal.diff_env_N[16]_i_14_n_0 ;
  wire \det_signal.diff_env_N[16]_i_15_n_0 ;
  wire \det_signal.diff_env_N[16]_i_16_n_0 ;
  wire \det_signal.diff_env_N[16]_i_17_n_0 ;
  wire \det_signal.diff_env_N[16]_i_18_n_0 ;
  wire \det_signal.diff_env_N[16]_i_19_n_0 ;
  wire \det_signal.diff_env_N[16]_i_20_n_0 ;
  wire \det_signal.diff_env_N[16]_i_21_n_0 ;
  wire \det_signal.diff_env_N[16]_i_23_n_0 ;
  wire \det_signal.diff_env_N[16]_i_24_n_0 ;
  wire \det_signal.diff_env_N[16]_i_25_n_0 ;
  wire \det_signal.diff_env_N[16]_i_26_n_0 ;
  wire \det_signal.diff_env_N[16]_i_27_n_0 ;
  wire \det_signal.diff_env_N[16]_i_28_n_0 ;
  wire \det_signal.diff_env_N[16]_i_29_n_0 ;
  wire \det_signal.diff_env_N[16]_i_30_n_0 ;
  wire \det_signal.diff_env_N[16]_i_31_n_0 ;
  wire \det_signal.diff_env_N[16]_i_32_n_0 ;
  wire \det_signal.diff_env_N[16]_i_33_n_0 ;
  wire \det_signal.diff_env_N[16]_i_34_n_0 ;
  wire \det_signal.diff_env_N[16]_i_35_n_0 ;
  wire \det_signal.diff_env_N[16]_i_36_n_0 ;
  wire \det_signal.diff_env_N[16]_i_37_n_0 ;
  wire \det_signal.diff_env_N[16]_i_5_n_0 ;
  wire \det_signal.diff_env_N[16]_i_6_n_0 ;
  wire \det_signal.diff_env_N[16]_i_7_n_0 ;
  wire \det_signal.diff_env_N[16]_i_8_n_0 ;
  wire \det_signal.diff_env_N[16]_i_9_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_1 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_10 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_11 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_12 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_13 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_14 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_15 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_2 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_3 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_4 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_5 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_6 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_7 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_8 ;
  wire \det_signal.diff_env_N_reg[16]_i_13_n_9 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_1 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_10 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_11 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_12 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_13 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_14 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_15 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_2 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_3 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_4 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_5 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_6 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_7 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_8 ;
  wire \det_signal.diff_env_N_reg[16]_i_22_n_9 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_1 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_2 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_3 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_4 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_5 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_6 ;
  wire \det_signal.diff_env_N_reg[16]_i_2_n_7 ;
  wire \det_signal.diff_env_N_reg[16]_i_3_n_15 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_0 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_1 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_2 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_3 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_4 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_5 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_6 ;
  wire \det_signal.diff_env_N_reg[16]_i_4_n_7 ;
  wire \det_signal.diff_env_W[16]_i_10_n_0 ;
  wire \det_signal.diff_env_W[16]_i_11_n_0 ;
  wire \det_signal.diff_env_W[16]_i_12_n_0 ;
  wire \det_signal.diff_env_W[16]_i_14_n_0 ;
  wire \det_signal.diff_env_W[16]_i_15_n_0 ;
  wire \det_signal.diff_env_W[16]_i_16_n_0 ;
  wire \det_signal.diff_env_W[16]_i_17_n_0 ;
  wire \det_signal.diff_env_W[16]_i_18_n_0 ;
  wire \det_signal.diff_env_W[16]_i_19_n_0 ;
  wire \det_signal.diff_env_W[16]_i_20_n_0 ;
  wire \det_signal.diff_env_W[16]_i_21_n_0 ;
  wire \det_signal.diff_env_W[16]_i_23_n_0 ;
  wire \det_signal.diff_env_W[16]_i_24_n_0 ;
  wire \det_signal.diff_env_W[16]_i_25_n_0 ;
  wire \det_signal.diff_env_W[16]_i_26_n_0 ;
  wire \det_signal.diff_env_W[16]_i_27_n_0 ;
  wire \det_signal.diff_env_W[16]_i_28_n_0 ;
  wire \det_signal.diff_env_W[16]_i_29_n_0 ;
  wire \det_signal.diff_env_W[16]_i_30_n_0 ;
  wire \det_signal.diff_env_W[16]_i_31_n_0 ;
  wire \det_signal.diff_env_W[16]_i_32_n_0 ;
  wire \det_signal.diff_env_W[16]_i_33_n_0 ;
  wire \det_signal.diff_env_W[16]_i_34_n_0 ;
  wire \det_signal.diff_env_W[16]_i_35_n_0 ;
  wire \det_signal.diff_env_W[16]_i_36_n_0 ;
  wire \det_signal.diff_env_W[16]_i_37_n_0 ;
  wire \det_signal.diff_env_W[16]_i_5_n_0 ;
  wire \det_signal.diff_env_W[16]_i_6_n_0 ;
  wire \det_signal.diff_env_W[16]_i_7_n_0 ;
  wire \det_signal.diff_env_W[16]_i_8_n_0 ;
  wire \det_signal.diff_env_W[16]_i_9_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_1 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_10 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_11 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_12 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_13 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_14 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_15 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_2 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_3 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_4 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_5 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_6 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_7 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_8 ;
  wire \det_signal.diff_env_W_reg[16]_i_13_n_9 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_1 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_10 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_11 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_12 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_13 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_14 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_15 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_2 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_3 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_4 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_5 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_6 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_7 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_8 ;
  wire \det_signal.diff_env_W_reg[16]_i_22_n_9 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_1 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_2 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_3 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_4 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_5 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_6 ;
  wire \det_signal.diff_env_W_reg[16]_i_2_n_7 ;
  wire \det_signal.diff_env_W_reg[16]_i_3_n_15 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_0 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_1 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_2 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_3 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_4 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_5 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_6 ;
  wire \det_signal.diff_env_W_reg[16]_i_4_n_7 ;
  wire \det_signal.diff_err_EW[12]_i_10_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_11_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_12_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_13_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_14_n_0 ;
  wire \det_signal.diff_err_EW[12]_i_15_n_0 ;
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
  wire \det_signal.diff_err_NE[12]_i_15_n_0 ;
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
  wire \det_signal.diff_err_NW[12]_i_15_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_16_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_17_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_18_n_0 ;
  wire \det_signal.diff_err_NW[12]_i_19_n_0 ;
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
  wire \det_signal.div_counter[0]_i_1_n_0 ;
  wire \det_signal.div_counter[1]_i_1_n_0 ;
  wire \det_signal.div_counter[2]_i_1_n_0 ;
  wire \det_signal.div_counter[2]_i_2_n_0 ;
  wire \det_signal.div_counter[3]_i_1_n_0 ;
  wire \det_signal.div_counter[4]_i_1_n_0 ;
  wire \det_signal.div_counter[5]_i_1_n_0 ;
  wire \det_signal.div_counter[5]_i_2_n_0 ;
  wire \det_signal.div_counter[5]_i_3_n_0 ;
  wire \det_signal.div_counter[5]_i_4_n_0 ;
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
  wire [19:0]\det_signal.dsp_phase_EW_reg00_out ;
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
  wire \det_signal.dsp_phase_NE[15]_i_11_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_12_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_13_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_14_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_15_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_16_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_17_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_18_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NE[15]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_10_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_11_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NE[19]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_11_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_12_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_13_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_14_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_15_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_16_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_17_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NE[7]_i_9_n_0 ;
  wire [19:0]\det_signal.dsp_phase_NE_reg01_out ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_0 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_1 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_10 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_11 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_12 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_13 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_14 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_15 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_2 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_3 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_4 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_7 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_8 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_10_n_9 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_0 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_1 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_2 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_3 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_4 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[15]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_2_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_2_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_2_n_7 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_7_n_12 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_7_n_13 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_7_n_14 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_7_n_15 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_7_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_7_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[19]_i_7_n_7 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_0 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_1 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_10 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_11 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_12 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_13 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_14 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_15 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_2 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_3 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_4 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_7 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_8 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_10_n_9 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_0 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_1 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_2 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_3 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_4 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_5 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_6 ;
  wire \det_signal.dsp_phase_NE_reg[7]_i_1_n_7 ;
  wire \det_signal.dsp_phase_NW[15]_i_11_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_12_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_13_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_14_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_15_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_16_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_17_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_18_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NW[15]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_10_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NW[19]_i_9_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_11_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_12_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_13_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_14_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_15_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_16_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_17_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_2_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_3_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_4_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_5_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_6_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_7_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_8_n_0 ;
  wire \det_signal.dsp_phase_NW[7]_i_9_n_0 ;
  wire [19:0]\det_signal.dsp_phase_NW_reg0 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_0 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_1 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_10 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_11 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_12 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_13 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_14 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_15 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_2 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_3 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_4 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_5 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_6 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_7 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_8 ;
  wire \det_signal.dsp_phase_NW_reg[15]_i_10_n_9 ;
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
  wire \det_signal.dsp_phase_NW_reg[19]_i_6_n_12 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_6_n_13 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_6_n_14 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_6_n_15 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_6_n_5 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_6_n_6 ;
  wire \det_signal.dsp_phase_NW_reg[19]_i_6_n_7 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_0 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_1 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_10 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_11 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_12 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_13 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_14 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_15 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_2 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_3 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_4 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_5 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_6 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_7 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_8 ;
  wire \det_signal.dsp_phase_NW_reg[7]_i_10_n_9 ;
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
  wire \det_signal.env_EW_reg[17]_i_1_n_7 ;
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
  wire [17:0]\det_signal.env_NE_reg0 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_0 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_1 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_2 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_3 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_4 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_5 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_6 ;
  wire \det_signal.env_NE_reg[15]_i_1_n_7 ;
  wire \det_signal.env_NE_reg[17]_i_1_n_7 ;
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
  wire \det_signal.env_NW_reg[17]_i_1_n_7 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_0 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_1 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_2 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_3 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_4 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_5 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_6 ;
  wire \det_signal.env_NW_reg[7]_i_1_n_7 ;
  wire \det_signal.env_sum_EW[0]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[10]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[11]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[12]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[13]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[14]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_10_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_3_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_4_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_5_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_6_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_7_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_8_n_0 ;
  wire \det_signal.env_sum_EW[15]_i_9_n_0 ;
  wire \det_signal.env_sum_EW[16]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[17]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[18]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[19]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[1]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[20]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[21]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[22]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_10_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_3_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_4_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_5_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_6_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_7_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_8_n_0 ;
  wire \det_signal.env_sum_EW[23]_i_9_n_0 ;
  wire \det_signal.env_sum_EW[24]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[2]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[3]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[4]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[5]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[6]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_10_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_3_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_4_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_5_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_6_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_7_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_8_n_0 ;
  wire \det_signal.env_sum_EW[7]_i_9_n_0 ;
  wire \det_signal.env_sum_EW[8]_i_1_n_0 ;
  wire \det_signal.env_sum_EW[9]_i_1_n_0 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_0 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_1 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_2 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_3 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_4 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_5 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_6 ;
  wire \det_signal.env_sum_EW_reg[15]_i_2_n_7 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_0 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_1 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_2 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_3 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_4 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_5 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_6 ;
  wire \det_signal.env_sum_EW_reg[23]_i_2_n_7 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_0 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_1 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_2 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_3 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_4 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_5 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_6 ;
  wire \det_signal.env_sum_EW_reg[7]_i_2_n_7 ;
  wire \det_signal.env_sum_E[15]_i_2_n_0 ;
  wire \det_signal.env_sum_E[15]_i_3_n_0 ;
  wire \det_signal.env_sum_E[15]_i_4_n_0 ;
  wire \det_signal.env_sum_E[15]_i_5_n_0 ;
  wire \det_signal.env_sum_E[15]_i_6_n_0 ;
  wire \det_signal.env_sum_E[15]_i_7_n_0 ;
  wire \det_signal.env_sum_E[15]_i_8_n_0 ;
  wire \det_signal.env_sum_E[15]_i_9_n_0 ;
  wire \det_signal.env_sum_E[23]_i_10_n_0 ;
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
  wire \det_signal.env_sum_E_reg[15]_i_1_n_10 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_11 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_12 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_13 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_14 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_15 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_2 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_3 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_4 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_5 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_6 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_7 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_8 ;
  wire \det_signal.env_sum_E_reg[15]_i_1_n_9 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_1 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_10 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_11 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_12 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_13 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_14 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_15 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_2 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_3 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_4 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_5 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_6 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_7 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_8 ;
  wire \det_signal.env_sum_E_reg[23]_i_2_n_9 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_0 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_1 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_10 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_11 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_12 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_13 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_14 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_15 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_2 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_3 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_4 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_5 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_6 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_7 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_8 ;
  wire \det_signal.env_sum_E_reg[7]_i_1_n_9 ;
  wire \det_signal.env_sum_NE[15]_i_10_n_0 ;
  wire \det_signal.env_sum_NE[15]_i_3_n_0 ;
  wire \det_signal.env_sum_NE[15]_i_4_n_0 ;
  wire \det_signal.env_sum_NE[15]_i_5_n_0 ;
  wire \det_signal.env_sum_NE[15]_i_6_n_0 ;
  wire \det_signal.env_sum_NE[15]_i_7_n_0 ;
  wire \det_signal.env_sum_NE[15]_i_8_n_0 ;
  wire \det_signal.env_sum_NE[15]_i_9_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_10_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_3_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_4_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_5_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_6_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_7_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_8_n_0 ;
  wire \det_signal.env_sum_NE[23]_i_9_n_0 ;
  wire \det_signal.env_sum_NE[31]_i_1_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_10_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_3_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_4_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_5_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_6_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_7_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_8_n_0 ;
  wire \det_signal.env_sum_NE[7]_i_9_n_0 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_0 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_1 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_2 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_3 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_4 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_5 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_6 ;
  wire \det_signal.env_sum_NE_reg[15]_i_2_n_7 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_0 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_1 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_2 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_3 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_4 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_5 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_6 ;
  wire \det_signal.env_sum_NE_reg[23]_i_2_n_7 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_0 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_1 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_2 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_3 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_4 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_5 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_6 ;
  wire \det_signal.env_sum_NE_reg[7]_i_2_n_7 ;
  wire \det_signal.env_sum_NW[0]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[10]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[11]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[12]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[13]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[14]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_10_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_3_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_4_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_5_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_6_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_7_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_8_n_0 ;
  wire \det_signal.env_sum_NW[15]_i_9_n_0 ;
  wire \det_signal.env_sum_NW[16]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[17]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[18]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[19]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[1]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[20]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[21]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[22]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_10_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_3_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_4_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_5_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_6_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_7_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_8_n_0 ;
  wire \det_signal.env_sum_NW[23]_i_9_n_0 ;
  wire \det_signal.env_sum_NW[24]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[2]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[3]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[4]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[5]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[6]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_10_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_3_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_4_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_5_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_6_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_7_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_8_n_0 ;
  wire \det_signal.env_sum_NW[7]_i_9_n_0 ;
  wire \det_signal.env_sum_NW[8]_i_1_n_0 ;
  wire \det_signal.env_sum_NW[9]_i_1_n_0 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_0 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_1 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_2 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_3 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_4 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_5 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_6 ;
  wire \det_signal.env_sum_NW_reg[15]_i_2_n_7 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_0 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_1 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_2 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_3 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_4 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_5 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_6 ;
  wire \det_signal.env_sum_NW_reg[23]_i_2_n_7 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_0 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_1 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_2 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_3 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_4 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_5 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_6 ;
  wire \det_signal.env_sum_NW_reg[7]_i_2_n_7 ;
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
  wire \det_signal.env_sum_N_reg[15]_i_1_n_10 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_11 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_12 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_13 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_14 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_15 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_2 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_3 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_4 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_5 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_6 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_7 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_8 ;
  wire \det_signal.env_sum_N_reg[15]_i_1_n_9 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_1 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_10 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_11 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_12 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_13 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_14 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_15 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_2 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_3 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_4 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_5 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_6 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_7 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_8 ;
  wire \det_signal.env_sum_N_reg[23]_i_1_n_9 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_0 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_1 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_10 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_11 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_12 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_13 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_14 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_15 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_2 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_3 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_4 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_5 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_6 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_7 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_8 ;
  wire \det_signal.env_sum_N_reg[7]_i_1_n_9 ;
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
  wire \det_signal.env_sum_W_reg[15]_i_1_n_10 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_11 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_12 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_13 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_14 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_15 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_2 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_3 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_4 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_5 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_6 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_7 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_8 ;
  wire \det_signal.env_sum_W_reg[15]_i_1_n_9 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_1 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_10 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_11 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_12 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_13 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_14 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_15 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_2 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_3 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_4 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_5 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_6 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_7 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_8 ;
  wire \det_signal.env_sum_W_reg[23]_i_1_n_9 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_0 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_1 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_10 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_11 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_12 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_13 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_14 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_15 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_2 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_3 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_4 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_5 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_6 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_7 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_8 ;
  wire \det_signal.env_sum_W_reg[7]_i_1_n_9 ;
  wire \det_signal.err_count[0]_i_1_n_0 ;
  wire \det_signal.err_count[0]_i_2_n_0 ;
  wire \det_signal.err_count[1]_i_1_n_0 ;
  wire \det_signal.err_count[1]_i_2_n_0 ;
  wire \det_signal.err_ov_i_1_n_0 ;
  wire \det_signal.err_ov_reg_n_0 ;
  wire \det_signal.has_signal_i_1_n_0 ;
  wire \det_signal.max_doa_diff[11]_i_2_n_0 ;
  wire \det_signal.proc_done_reg0 ;
  wire \det_signal.proc_signal_i_1_n_0 ;
  wire \det_signal.run_reg[0]__0 ;
  wire \det_signal.run_reg_n_0_[1] ;
  wire \det_signal.run_reg_n_0_[2] ;
  wire \det_signal.start_proc_i_1_n_0 ;
  wire \det_signal.valid_count_i_1_n_0 ;
  wire [16:16]diff_env_E01_out;
  wire [16:16]diff_env_N02_out;
  wire [16:16]diff_env_W00_out;
  wire [12:12]diff_err_EW00_out;
  wire [12:12]diff_err_NE0;
  wire [12:12]diff_err_NW0;
  wire [19:0]diff_phase_E;
  wire [19:0]diff_phase_E03_out;
  wire [19:0]diff_phase_N;
  wire [19:0]diff_phase_N04_out;
  wire [19:0]diff_phase_W;
  wire [19:0]diff_phase_W02_out;
  (* MARK_DEBUG *) wire [5:0]div_counter;
  (* MARK_DEBUG *) wire [2:0]div_delay;
  (* MARK_DEBUG *) wire div_start;
  wire [19:0]dsp_phase_E;
  (* MARK_DEBUG *) wire [19:0]dsp_phase_EW;
  wire [19:0]dsp_phase_N;
  (* MARK_DEBUG *) wire [19:0]dsp_phase_NE;
  (* MARK_DEBUG *) wire [19:0]dsp_phase_NW;
  wire [19:0]dsp_phase_W;
  (* MARK_DEBUG *) wire [47:0]dsp_sum_EW;
  (* MARK_DEBUG *) wire [47:0]dsp_sum_NE;
  (* MARK_DEBUG *) wire [47:0]dsp_sum_NW;
  wire [15:0]env_E;
  wire [17:0]env_EW;
  wire [17:0]env_EW0;
  wire [0:0]env_EW__0;
  wire [15:0]env_N;
  (* MARK_DEBUG *) wire [17:0]env_NE;
  wire [17:0]env_NW;
  wire [17:0]env_NW0;
  wire [15:0]env_W;
  (* MARK_DEBUG *) wire [23:0]env_sum_E;
  (* MARK_DEBUG *) wire [31:0]env_sum_EW;
  wire [24:0]env_sum_EW0;
  wire [17:17]env_sum_E__0;
  (* MARK_DEBUG *) wire [23:0]env_sum_N;
  (* MARK_DEBUG *) wire [31:0]env_sum_NE;
  wire [24:0]env_sum_NE0;
  (* MARK_DEBUG *) wire [31:0]env_sum_NW;
  wire [24:0]env_sum_NW0;
  (* MARK_DEBUG *) wire [23:0]env_sum_W;
  wire [11:0]err_EW;
  wire [11:0]err_NE;
  wire [11:0]err_NW;
  wire [1:0]err_count;
  wire has_signal;
  wire [11:0]max_doa_diff;
  wire max_doa_diff0;
  wire [15:0]min_env;
  wire min_env0;
  wire p_0_in1_in;
  wire [24:0]p_0_in1_in__0;
  wire p_0_in4_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire [2:0]p_1_in__0;
  wire p_2_in;
  wire p_2_in6_in;
  wire [19:0]phase_E;
  (* MARK_DEBUG *) wire [19:0]phase_EW;
  wire [19:0]phase_N;
  (* MARK_DEBUG *) wire [19:0]phase_NE;
  (* MARK_DEBUG *) wire [19:0]phase_NW;
  wire [19:0]phase_W;
  wire [19:0]prev_phase_E;
  wire [19:0]prev_phase_N;
  wire [19:0]prev_phase_W;
  (* MARK_DEBUG *) wire proc_done;
  (* MARK_DEBUG *) wire proc_signal;
  (* MARK_DEBUG *) wire signal_done;
  (* MARK_DEBUG *) wire start_proc;
  wire valid_count;
  wire valid_env;
  wire valid_env0;
  wire valid_err;
  wire valid_err0;
  (* MARK_DEBUG *) wire valid_phase_EW;
  (* MARK_DEBUG *) wire valid_phase_NE;
  (* MARK_DEBUG *) wire valid_phase_NW;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_E_reg[16]_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_E_reg[16]_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_N_reg[16]_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_N_reg[16]_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_3_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.diff_env_W_reg[16]_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.diff_env_W_reg[16]_i_4_O_UNCONNECTED ;
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
  wire [7:3]\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.dsp_phase_NE_reg[19]_i_2_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_NE_reg[19]_i_2_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.dsp_phase_NE_reg[19]_i_7_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_NE_reg[19]_i_7_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_O_UNCONNECTED ;
  wire [7:3]\NLW_det_signal.dsp_phase_NW_reg[19]_i_6_CO_UNCONNECTED ;
  wire [7:4]\NLW_det_signal.dsp_phase_NW_reg[19]_i_6_O_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_EW_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_det_signal.env_EW_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_NE_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_det_signal.env_NE_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_NW_reg[17]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_det_signal.env_NW_reg[17]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.env_sum_EW_reg[24]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_sum_EW_reg[24]_i_2_O_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.env_sum_E_reg[23]_i_2_CO_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.env_sum_NE_reg[24]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_sum_NE_reg[24]_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_det_signal.env_sum_NW_reg[24]_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_det_signal.env_sum_NW_reg[24]_i_2_O_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.env_sum_N_reg[23]_i_1_CO_UNCONNECTED ;
  wire [7:7]\NLW_det_signal.env_sum_W_reg[23]_i_1_CO_UNCONNECTED ;
  wire [79:0]NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED;
  wire [79:0]NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED;
  wire [79:0]NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED;
  wire [47:0]NLW_dsp_incr_env_E_P_UNCONNECTED;
  wire [47:0]NLW_dsp_incr_env_N_P_UNCONNECTED;
  wire [47:0]NLW_dsp_incr_env_W_P_UNCONNECTED;

  assign signal_counter[8] = \<const0> ;
  assign signal_counter[7] = \<const0> ;
  assign signal_counter[6] = \<const0> ;
  assign signal_counter[5] = \<const0> ;
  assign signal_counter[4] = \<const0> ;
  assign signal_counter[3] = \<const0> ;
  assign signal_counter[2] = \<const0> ;
  assign signal_counter[1] = \<const0> ;
  assign signal_counter[0] = \<const0> ;
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
  GND GND
       (.G(\<const0> ));
  LUT6 #(
    .INIT(64'hF700550000005500)) 
    \det_signal.acc_reset_i_1 
       (.I0(has_signal),
        .I1(valid_count),
        .I2(\det_signal.err_ov_reg_n_0 ),
        .I3(\det_signal.run_reg_n_0_[2] ),
        .I4(\det_signal.err_count[0]_i_2_n_0 ),
        .I5(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.acc_reset_i_1_n_0 ));
  FDRE \det_signal.acc_reset_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.acc_reset_i_1_n_0 ),
        .Q(\det_signal.acc_reset_reg_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_10 
       (.I0(min_env[10]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_13 ),
        .O(\det_signal.diff_env_E[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_11 
       (.I0(min_env[9]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_14 ),
        .O(\det_signal.diff_env_E[16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_12 
       (.I0(min_env[8]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_15 ),
        .O(\det_signal.diff_env_E[16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_14 
       (.I0(min_env[7]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_8 ),
        .O(\det_signal.diff_env_E[16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_15 
       (.I0(min_env[6]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_9 ),
        .O(\det_signal.diff_env_E[16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_16 
       (.I0(min_env[5]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_10 ),
        .O(\det_signal.diff_env_E[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_17 
       (.I0(min_env[4]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_11 ),
        .O(\det_signal.diff_env_E[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_18 
       (.I0(min_env[3]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_12 ),
        .O(\det_signal.diff_env_E[16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_19 
       (.I0(min_env[2]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_13 ),
        .O(\det_signal.diff_env_E[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_20 
       (.I0(min_env[1]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_14 ),
        .O(\det_signal.diff_env_E[16]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_21 
       (.I0(min_env[0]),
        .I1(\det_signal.diff_env_E_reg[16]_i_22_n_15 ),
        .O(\det_signal.diff_env_E[16]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_23 
       (.I0(env_E[15]),
        .O(\det_signal.diff_env_E[16]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_24 
       (.I0(env_E[14]),
        .O(\det_signal.diff_env_E[16]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_25 
       (.I0(env_E[13]),
        .O(\det_signal.diff_env_E[16]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_26 
       (.I0(env_E[12]),
        .O(\det_signal.diff_env_E[16]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_27 
       (.I0(env_E[11]),
        .O(\det_signal.diff_env_E[16]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_28 
       (.I0(env_E[10]),
        .O(\det_signal.diff_env_E[16]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_29 
       (.I0(env_E[9]),
        .O(\det_signal.diff_env_E[16]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_30 
       (.I0(env_E[8]),
        .O(\det_signal.diff_env_E[16]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_31 
       (.I0(env_E[7]),
        .O(\det_signal.diff_env_E[16]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_32 
       (.I0(env_E[6]),
        .O(\det_signal.diff_env_E[16]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_33 
       (.I0(env_E[5]),
        .O(\det_signal.diff_env_E[16]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_34 
       (.I0(env_E[4]),
        .O(\det_signal.diff_env_E[16]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_35 
       (.I0(env_E[3]),
        .O(\det_signal.diff_env_E[16]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_36 
       (.I0(env_E[2]),
        .O(\det_signal.diff_env_E[16]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_E[16]_i_37 
       (.I0(env_E[1]),
        .O(\det_signal.diff_env_E[16]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_5 
       (.I0(min_env[15]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_8 ),
        .O(\det_signal.diff_env_E[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_6 
       (.I0(min_env[14]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_9 ),
        .O(\det_signal.diff_env_E[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_7 
       (.I0(min_env[13]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_10 ),
        .O(\det_signal.diff_env_E[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_8 
       (.I0(min_env[12]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_11 ),
        .O(\det_signal.diff_env_E[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_E[16]_i_9 
       (.I0(min_env[11]),
        .I1(\det_signal.diff_env_E_reg[16]_i_13_n_12 ),
        .O(\det_signal.diff_env_E[16]_i_9_n_0 ));
  FDRE \det_signal.diff_env_E_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_env_E01_out),
        .Q(p_0_in4_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_1 
       (.CI(\det_signal.diff_env_E_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_E_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_E_reg[16]_i_1_O_UNCONNECTED [7:1],diff_env_E01_out}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.diff_env_E_reg[16]_i_3_n_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_13 
       (.CI(\det_signal.diff_env_E_reg[16]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[16]_i_13_n_0 ,\det_signal.diff_env_E_reg[16]_i_13_n_1 ,\det_signal.diff_env_E_reg[16]_i_13_n_2 ,\det_signal.diff_env_E_reg[16]_i_13_n_3 ,\det_signal.diff_env_E_reg[16]_i_13_n_4 ,\det_signal.diff_env_E_reg[16]_i_13_n_5 ,\det_signal.diff_env_E_reg[16]_i_13_n_6 ,\det_signal.diff_env_E_reg[16]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_env_E_reg[16]_i_13_n_8 ,\det_signal.diff_env_E_reg[16]_i_13_n_9 ,\det_signal.diff_env_E_reg[16]_i_13_n_10 ,\det_signal.diff_env_E_reg[16]_i_13_n_11 ,\det_signal.diff_env_E_reg[16]_i_13_n_12 ,\det_signal.diff_env_E_reg[16]_i_13_n_13 ,\det_signal.diff_env_E_reg[16]_i_13_n_14 ,\det_signal.diff_env_E_reg[16]_i_13_n_15 }),
        .S({\det_signal.diff_env_E[16]_i_23_n_0 ,\det_signal.diff_env_E[16]_i_24_n_0 ,\det_signal.diff_env_E[16]_i_25_n_0 ,\det_signal.diff_env_E[16]_i_26_n_0 ,\det_signal.diff_env_E[16]_i_27_n_0 ,\det_signal.diff_env_E[16]_i_28_n_0 ,\det_signal.diff_env_E[16]_i_29_n_0 ,\det_signal.diff_env_E[16]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_2 
       (.CI(\det_signal.diff_env_E_reg[16]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[16]_i_2_n_0 ,\det_signal.diff_env_E_reg[16]_i_2_n_1 ,\det_signal.diff_env_E_reg[16]_i_2_n_2 ,\det_signal.diff_env_E_reg[16]_i_2_n_3 ,\det_signal.diff_env_E_reg[16]_i_2_n_4 ,\det_signal.diff_env_E_reg[16]_i_2_n_5 ,\det_signal.diff_env_E_reg[16]_i_2_n_6 ,\det_signal.diff_env_E_reg[16]_i_2_n_7 }),
        .DI(min_env[15:8]),
        .O(\NLW_det_signal.diff_env_E_reg[16]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_E[16]_i_5_n_0 ,\det_signal.diff_env_E[16]_i_6_n_0 ,\det_signal.diff_env_E[16]_i_7_n_0 ,\det_signal.diff_env_E[16]_i_8_n_0 ,\det_signal.diff_env_E[16]_i_9_n_0 ,\det_signal.diff_env_E[16]_i_10_n_0 ,\det_signal.diff_env_E[16]_i_11_n_0 ,\det_signal.diff_env_E[16]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_22 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[16]_i_22_n_0 ,\det_signal.diff_env_E_reg[16]_i_22_n_1 ,\det_signal.diff_env_E_reg[16]_i_22_n_2 ,\det_signal.diff_env_E_reg[16]_i_22_n_3 ,\det_signal.diff_env_E_reg[16]_i_22_n_4 ,\det_signal.diff_env_E_reg[16]_i_22_n_5 ,\det_signal.diff_env_E_reg[16]_i_22_n_6 ,\det_signal.diff_env_E_reg[16]_i_22_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_env_E_reg[16]_i_22_n_8 ,\det_signal.diff_env_E_reg[16]_i_22_n_9 ,\det_signal.diff_env_E_reg[16]_i_22_n_10 ,\det_signal.diff_env_E_reg[16]_i_22_n_11 ,\det_signal.diff_env_E_reg[16]_i_22_n_12 ,\det_signal.diff_env_E_reg[16]_i_22_n_13 ,\det_signal.diff_env_E_reg[16]_i_22_n_14 ,\det_signal.diff_env_E_reg[16]_i_22_n_15 }),
        .S({\det_signal.diff_env_E[16]_i_31_n_0 ,\det_signal.diff_env_E[16]_i_32_n_0 ,\det_signal.diff_env_E[16]_i_33_n_0 ,\det_signal.diff_env_E[16]_i_34_n_0 ,\det_signal.diff_env_E[16]_i_35_n_0 ,\det_signal.diff_env_E[16]_i_36_n_0 ,\det_signal.diff_env_E[16]_i_37_n_0 ,env_E[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_3 
       (.CI(\det_signal.diff_env_E_reg[16]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_E_reg[16]_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_E_reg[16]_i_3_O_UNCONNECTED [7:1],\det_signal.diff_env_E_reg[16]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_E_reg[16]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_E_reg[16]_i_4_n_0 ,\det_signal.diff_env_E_reg[16]_i_4_n_1 ,\det_signal.diff_env_E_reg[16]_i_4_n_2 ,\det_signal.diff_env_E_reg[16]_i_4_n_3 ,\det_signal.diff_env_E_reg[16]_i_4_n_4 ,\det_signal.diff_env_E_reg[16]_i_4_n_5 ,\det_signal.diff_env_E_reg[16]_i_4_n_6 ,\det_signal.diff_env_E_reg[16]_i_4_n_7 }),
        .DI(min_env[7:0]),
        .O(\NLW_det_signal.diff_env_E_reg[16]_i_4_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_E[16]_i_14_n_0 ,\det_signal.diff_env_E[16]_i_15_n_0 ,\det_signal.diff_env_E[16]_i_16_n_0 ,\det_signal.diff_env_E[16]_i_17_n_0 ,\det_signal.diff_env_E[16]_i_18_n_0 ,\det_signal.diff_env_E[16]_i_19_n_0 ,\det_signal.diff_env_E[16]_i_20_n_0 ,\det_signal.diff_env_E[16]_i_21_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_10 
       (.I0(min_env[10]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_13 ),
        .O(\det_signal.diff_env_N[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_11 
       (.I0(min_env[9]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_14 ),
        .O(\det_signal.diff_env_N[16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_12 
       (.I0(min_env[8]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_15 ),
        .O(\det_signal.diff_env_N[16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_14 
       (.I0(min_env[7]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_8 ),
        .O(\det_signal.diff_env_N[16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_15 
       (.I0(min_env[6]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_9 ),
        .O(\det_signal.diff_env_N[16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_16 
       (.I0(min_env[5]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_10 ),
        .O(\det_signal.diff_env_N[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_17 
       (.I0(min_env[4]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_11 ),
        .O(\det_signal.diff_env_N[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_18 
       (.I0(min_env[3]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_12 ),
        .O(\det_signal.diff_env_N[16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_19 
       (.I0(min_env[2]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_13 ),
        .O(\det_signal.diff_env_N[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_20 
       (.I0(min_env[1]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_14 ),
        .O(\det_signal.diff_env_N[16]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_21 
       (.I0(min_env[0]),
        .I1(\det_signal.diff_env_N_reg[16]_i_22_n_15 ),
        .O(\det_signal.diff_env_N[16]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_23 
       (.I0(env_N[15]),
        .O(\det_signal.diff_env_N[16]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_24 
       (.I0(env_N[14]),
        .O(\det_signal.diff_env_N[16]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_25 
       (.I0(env_N[13]),
        .O(\det_signal.diff_env_N[16]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_26 
       (.I0(env_N[12]),
        .O(\det_signal.diff_env_N[16]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_27 
       (.I0(env_N[11]),
        .O(\det_signal.diff_env_N[16]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_28 
       (.I0(env_N[10]),
        .O(\det_signal.diff_env_N[16]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_29 
       (.I0(env_N[9]),
        .O(\det_signal.diff_env_N[16]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_30 
       (.I0(env_N[8]),
        .O(\det_signal.diff_env_N[16]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_31 
       (.I0(env_N[7]),
        .O(\det_signal.diff_env_N[16]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_32 
       (.I0(env_N[6]),
        .O(\det_signal.diff_env_N[16]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_33 
       (.I0(env_N[5]),
        .O(\det_signal.diff_env_N[16]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_34 
       (.I0(env_N[4]),
        .O(\det_signal.diff_env_N[16]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_35 
       (.I0(env_N[3]),
        .O(\det_signal.diff_env_N[16]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_36 
       (.I0(env_N[2]),
        .O(\det_signal.diff_env_N[16]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_N[16]_i_37 
       (.I0(env_N[1]),
        .O(\det_signal.diff_env_N[16]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_5 
       (.I0(min_env[15]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_8 ),
        .O(\det_signal.diff_env_N[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_6 
       (.I0(min_env[14]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_9 ),
        .O(\det_signal.diff_env_N[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_7 
       (.I0(min_env[13]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_10 ),
        .O(\det_signal.diff_env_N[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_8 
       (.I0(min_env[12]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_11 ),
        .O(\det_signal.diff_env_N[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_N[16]_i_9 
       (.I0(min_env[11]),
        .I1(\det_signal.diff_env_N_reg[16]_i_13_n_12 ),
        .O(\det_signal.diff_env_N[16]_i_9_n_0 ));
  FDRE \det_signal.diff_env_N_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_env_N02_out),
        .Q(p_1_in5_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_1 
       (.CI(\det_signal.diff_env_N_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_N_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_N_reg[16]_i_1_O_UNCONNECTED [7:1],diff_env_N02_out}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.diff_env_N_reg[16]_i_3_n_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_13 
       (.CI(\det_signal.diff_env_N_reg[16]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[16]_i_13_n_0 ,\det_signal.diff_env_N_reg[16]_i_13_n_1 ,\det_signal.diff_env_N_reg[16]_i_13_n_2 ,\det_signal.diff_env_N_reg[16]_i_13_n_3 ,\det_signal.diff_env_N_reg[16]_i_13_n_4 ,\det_signal.diff_env_N_reg[16]_i_13_n_5 ,\det_signal.diff_env_N_reg[16]_i_13_n_6 ,\det_signal.diff_env_N_reg[16]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_env_N_reg[16]_i_13_n_8 ,\det_signal.diff_env_N_reg[16]_i_13_n_9 ,\det_signal.diff_env_N_reg[16]_i_13_n_10 ,\det_signal.diff_env_N_reg[16]_i_13_n_11 ,\det_signal.diff_env_N_reg[16]_i_13_n_12 ,\det_signal.diff_env_N_reg[16]_i_13_n_13 ,\det_signal.diff_env_N_reg[16]_i_13_n_14 ,\det_signal.diff_env_N_reg[16]_i_13_n_15 }),
        .S({\det_signal.diff_env_N[16]_i_23_n_0 ,\det_signal.diff_env_N[16]_i_24_n_0 ,\det_signal.diff_env_N[16]_i_25_n_0 ,\det_signal.diff_env_N[16]_i_26_n_0 ,\det_signal.diff_env_N[16]_i_27_n_0 ,\det_signal.diff_env_N[16]_i_28_n_0 ,\det_signal.diff_env_N[16]_i_29_n_0 ,\det_signal.diff_env_N[16]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_2 
       (.CI(\det_signal.diff_env_N_reg[16]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[16]_i_2_n_0 ,\det_signal.diff_env_N_reg[16]_i_2_n_1 ,\det_signal.diff_env_N_reg[16]_i_2_n_2 ,\det_signal.diff_env_N_reg[16]_i_2_n_3 ,\det_signal.diff_env_N_reg[16]_i_2_n_4 ,\det_signal.diff_env_N_reg[16]_i_2_n_5 ,\det_signal.diff_env_N_reg[16]_i_2_n_6 ,\det_signal.diff_env_N_reg[16]_i_2_n_7 }),
        .DI(min_env[15:8]),
        .O(\NLW_det_signal.diff_env_N_reg[16]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_N[16]_i_5_n_0 ,\det_signal.diff_env_N[16]_i_6_n_0 ,\det_signal.diff_env_N[16]_i_7_n_0 ,\det_signal.diff_env_N[16]_i_8_n_0 ,\det_signal.diff_env_N[16]_i_9_n_0 ,\det_signal.diff_env_N[16]_i_10_n_0 ,\det_signal.diff_env_N[16]_i_11_n_0 ,\det_signal.diff_env_N[16]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_22 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[16]_i_22_n_0 ,\det_signal.diff_env_N_reg[16]_i_22_n_1 ,\det_signal.diff_env_N_reg[16]_i_22_n_2 ,\det_signal.diff_env_N_reg[16]_i_22_n_3 ,\det_signal.diff_env_N_reg[16]_i_22_n_4 ,\det_signal.diff_env_N_reg[16]_i_22_n_5 ,\det_signal.diff_env_N_reg[16]_i_22_n_6 ,\det_signal.diff_env_N_reg[16]_i_22_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_env_N_reg[16]_i_22_n_8 ,\det_signal.diff_env_N_reg[16]_i_22_n_9 ,\det_signal.diff_env_N_reg[16]_i_22_n_10 ,\det_signal.diff_env_N_reg[16]_i_22_n_11 ,\det_signal.diff_env_N_reg[16]_i_22_n_12 ,\det_signal.diff_env_N_reg[16]_i_22_n_13 ,\det_signal.diff_env_N_reg[16]_i_22_n_14 ,\det_signal.diff_env_N_reg[16]_i_22_n_15 }),
        .S({\det_signal.diff_env_N[16]_i_31_n_0 ,\det_signal.diff_env_N[16]_i_32_n_0 ,\det_signal.diff_env_N[16]_i_33_n_0 ,\det_signal.diff_env_N[16]_i_34_n_0 ,\det_signal.diff_env_N[16]_i_35_n_0 ,\det_signal.diff_env_N[16]_i_36_n_0 ,\det_signal.diff_env_N[16]_i_37_n_0 ,env_N[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_3 
       (.CI(\det_signal.diff_env_N_reg[16]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_N_reg[16]_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_N_reg[16]_i_3_O_UNCONNECTED [7:1],\det_signal.diff_env_N_reg[16]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_N_reg[16]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_N_reg[16]_i_4_n_0 ,\det_signal.diff_env_N_reg[16]_i_4_n_1 ,\det_signal.diff_env_N_reg[16]_i_4_n_2 ,\det_signal.diff_env_N_reg[16]_i_4_n_3 ,\det_signal.diff_env_N_reg[16]_i_4_n_4 ,\det_signal.diff_env_N_reg[16]_i_4_n_5 ,\det_signal.diff_env_N_reg[16]_i_4_n_6 ,\det_signal.diff_env_N_reg[16]_i_4_n_7 }),
        .DI(min_env[7:0]),
        .O(\NLW_det_signal.diff_env_N_reg[16]_i_4_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_N[16]_i_14_n_0 ,\det_signal.diff_env_N[16]_i_15_n_0 ,\det_signal.diff_env_N[16]_i_16_n_0 ,\det_signal.diff_env_N[16]_i_17_n_0 ,\det_signal.diff_env_N[16]_i_18_n_0 ,\det_signal.diff_env_N[16]_i_19_n_0 ,\det_signal.diff_env_N[16]_i_20_n_0 ,\det_signal.diff_env_N[16]_i_21_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_10 
       (.I0(min_env[10]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_13 ),
        .O(\det_signal.diff_env_W[16]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_11 
       (.I0(min_env[9]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_14 ),
        .O(\det_signal.diff_env_W[16]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_12 
       (.I0(min_env[8]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_15 ),
        .O(\det_signal.diff_env_W[16]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_14 
       (.I0(min_env[7]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_8 ),
        .O(\det_signal.diff_env_W[16]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_15 
       (.I0(min_env[6]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_9 ),
        .O(\det_signal.diff_env_W[16]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_16 
       (.I0(min_env[5]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_10 ),
        .O(\det_signal.diff_env_W[16]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_17 
       (.I0(min_env[4]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_11 ),
        .O(\det_signal.diff_env_W[16]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_18 
       (.I0(min_env[3]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_12 ),
        .O(\det_signal.diff_env_W[16]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_19 
       (.I0(min_env[2]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_13 ),
        .O(\det_signal.diff_env_W[16]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_20 
       (.I0(min_env[1]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_14 ),
        .O(\det_signal.diff_env_W[16]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_21 
       (.I0(min_env[0]),
        .I1(\det_signal.diff_env_W_reg[16]_i_22_n_15 ),
        .O(\det_signal.diff_env_W[16]_i_21_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_23 
       (.I0(env_W[15]),
        .O(\det_signal.diff_env_W[16]_i_23_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_24 
       (.I0(env_W[14]),
        .O(\det_signal.diff_env_W[16]_i_24_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_25 
       (.I0(env_W[13]),
        .O(\det_signal.diff_env_W[16]_i_25_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_26 
       (.I0(env_W[12]),
        .O(\det_signal.diff_env_W[16]_i_26_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_27 
       (.I0(env_W[11]),
        .O(\det_signal.diff_env_W[16]_i_27_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_28 
       (.I0(env_W[10]),
        .O(\det_signal.diff_env_W[16]_i_28_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_29 
       (.I0(env_W[9]),
        .O(\det_signal.diff_env_W[16]_i_29_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_30 
       (.I0(env_W[8]),
        .O(\det_signal.diff_env_W[16]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_31 
       (.I0(env_W[7]),
        .O(\det_signal.diff_env_W[16]_i_31_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_32 
       (.I0(env_W[6]),
        .O(\det_signal.diff_env_W[16]_i_32_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_33 
       (.I0(env_W[5]),
        .O(\det_signal.diff_env_W[16]_i_33_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_34 
       (.I0(env_W[4]),
        .O(\det_signal.diff_env_W[16]_i_34_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_35 
       (.I0(env_W[3]),
        .O(\det_signal.diff_env_W[16]_i_35_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_36 
       (.I0(env_W[2]),
        .O(\det_signal.diff_env_W[16]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.diff_env_W[16]_i_37 
       (.I0(env_W[1]),
        .O(\det_signal.diff_env_W[16]_i_37_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_5 
       (.I0(min_env[15]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_8 ),
        .O(\det_signal.diff_env_W[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_6 
       (.I0(min_env[14]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_9 ),
        .O(\det_signal.diff_env_W[16]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_7 
       (.I0(min_env[13]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_10 ),
        .O(\det_signal.diff_env_W[16]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_8 
       (.I0(min_env[12]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_11 ),
        .O(\det_signal.diff_env_W[16]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_env_W[16]_i_9 
       (.I0(min_env[11]),
        .I1(\det_signal.diff_env_W_reg[16]_i_13_n_12 ),
        .O(\det_signal.diff_env_W[16]_i_9_n_0 ));
  FDRE \det_signal.diff_env_W_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_env_W00_out),
        .Q(p_2_in6_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_1 
       (.CI(\det_signal.diff_env_W_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_W_reg[16]_i_1_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_W_reg[16]_i_1_O_UNCONNECTED [7:1],diff_env_W00_out}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\det_signal.diff_env_W_reg[16]_i_3_n_15 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_13 
       (.CI(\det_signal.diff_env_W_reg[16]_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[16]_i_13_n_0 ,\det_signal.diff_env_W_reg[16]_i_13_n_1 ,\det_signal.diff_env_W_reg[16]_i_13_n_2 ,\det_signal.diff_env_W_reg[16]_i_13_n_3 ,\det_signal.diff_env_W_reg[16]_i_13_n_4 ,\det_signal.diff_env_W_reg[16]_i_13_n_5 ,\det_signal.diff_env_W_reg[16]_i_13_n_6 ,\det_signal.diff_env_W_reg[16]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_env_W_reg[16]_i_13_n_8 ,\det_signal.diff_env_W_reg[16]_i_13_n_9 ,\det_signal.diff_env_W_reg[16]_i_13_n_10 ,\det_signal.diff_env_W_reg[16]_i_13_n_11 ,\det_signal.diff_env_W_reg[16]_i_13_n_12 ,\det_signal.diff_env_W_reg[16]_i_13_n_13 ,\det_signal.diff_env_W_reg[16]_i_13_n_14 ,\det_signal.diff_env_W_reg[16]_i_13_n_15 }),
        .S({\det_signal.diff_env_W[16]_i_23_n_0 ,\det_signal.diff_env_W[16]_i_24_n_0 ,\det_signal.diff_env_W[16]_i_25_n_0 ,\det_signal.diff_env_W[16]_i_26_n_0 ,\det_signal.diff_env_W[16]_i_27_n_0 ,\det_signal.diff_env_W[16]_i_28_n_0 ,\det_signal.diff_env_W[16]_i_29_n_0 ,\det_signal.diff_env_W[16]_i_30_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_2 
       (.CI(\det_signal.diff_env_W_reg[16]_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[16]_i_2_n_0 ,\det_signal.diff_env_W_reg[16]_i_2_n_1 ,\det_signal.diff_env_W_reg[16]_i_2_n_2 ,\det_signal.diff_env_W_reg[16]_i_2_n_3 ,\det_signal.diff_env_W_reg[16]_i_2_n_4 ,\det_signal.diff_env_W_reg[16]_i_2_n_5 ,\det_signal.diff_env_W_reg[16]_i_2_n_6 ,\det_signal.diff_env_W_reg[16]_i_2_n_7 }),
        .DI(min_env[15:8]),
        .O(\NLW_det_signal.diff_env_W_reg[16]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_W[16]_i_5_n_0 ,\det_signal.diff_env_W[16]_i_6_n_0 ,\det_signal.diff_env_W[16]_i_7_n_0 ,\det_signal.diff_env_W[16]_i_8_n_0 ,\det_signal.diff_env_W[16]_i_9_n_0 ,\det_signal.diff_env_W[16]_i_10_n_0 ,\det_signal.diff_env_W[16]_i_11_n_0 ,\det_signal.diff_env_W[16]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_22 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[16]_i_22_n_0 ,\det_signal.diff_env_W_reg[16]_i_22_n_1 ,\det_signal.diff_env_W_reg[16]_i_22_n_2 ,\det_signal.diff_env_W_reg[16]_i_22_n_3 ,\det_signal.diff_env_W_reg[16]_i_22_n_4 ,\det_signal.diff_env_W_reg[16]_i_22_n_5 ,\det_signal.diff_env_W_reg[16]_i_22_n_6 ,\det_signal.diff_env_W_reg[16]_i_22_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_env_W_reg[16]_i_22_n_8 ,\det_signal.diff_env_W_reg[16]_i_22_n_9 ,\det_signal.diff_env_W_reg[16]_i_22_n_10 ,\det_signal.diff_env_W_reg[16]_i_22_n_11 ,\det_signal.diff_env_W_reg[16]_i_22_n_12 ,\det_signal.diff_env_W_reg[16]_i_22_n_13 ,\det_signal.diff_env_W_reg[16]_i_22_n_14 ,\det_signal.diff_env_W_reg[16]_i_22_n_15 }),
        .S({\det_signal.diff_env_W[16]_i_31_n_0 ,\det_signal.diff_env_W[16]_i_32_n_0 ,\det_signal.diff_env_W[16]_i_33_n_0 ,\det_signal.diff_env_W[16]_i_34_n_0 ,\det_signal.diff_env_W[16]_i_35_n_0 ,\det_signal.diff_env_W[16]_i_36_n_0 ,\det_signal.diff_env_W[16]_i_37_n_0 ,env_W[0]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_3 
       (.CI(\det_signal.diff_env_W_reg[16]_i_13_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.diff_env_W_reg[16]_i_3_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_env_W_reg[16]_i_3_O_UNCONNECTED [7:1],\det_signal.diff_env_W_reg[16]_i_3_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_env_W_reg[16]_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_env_W_reg[16]_i_4_n_0 ,\det_signal.diff_env_W_reg[16]_i_4_n_1 ,\det_signal.diff_env_W_reg[16]_i_4_n_2 ,\det_signal.diff_env_W_reg[16]_i_4_n_3 ,\det_signal.diff_env_W_reg[16]_i_4_n_4 ,\det_signal.diff_env_W_reg[16]_i_4_n_5 ,\det_signal.diff_env_W_reg[16]_i_4_n_6 ,\det_signal.diff_env_W_reg[16]_i_4_n_7 }),
        .DI(min_env[7:0]),
        .O(\NLW_det_signal.diff_env_W_reg[16]_i_4_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_env_W[16]_i_14_n_0 ,\det_signal.diff_env_W[16]_i_15_n_0 ,\det_signal.diff_env_W[16]_i_16_n_0 ,\det_signal.diff_env_W[16]_i_17_n_0 ,\det_signal.diff_env_W[16]_i_18_n_0 ,\det_signal.diff_env_W[16]_i_19_n_0 ,\det_signal.diff_env_W[16]_i_20_n_0 ,\det_signal.diff_env_W[16]_i_21_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_EW[12]_i_10 
       (.I0(err_EW[5]),
        .I1(\det_signal.diff_err_NW[12]_i_19_n_0 ),
        .O(\det_signal.diff_err_EW[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \det_signal.diff_err_EW[12]_i_11 
       (.I0(err_EW[4]),
        .I1(max_doa_diff[4]),
        .I2(max_doa_diff[2]),
        .I3(max_doa_diff[1]),
        .I4(max_doa_diff[0]),
        .I5(max_doa_diff[3]),
        .O(\det_signal.diff_err_EW[12]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \det_signal.diff_err_EW[12]_i_12 
       (.I0(err_EW[3]),
        .I1(max_doa_diff[3]),
        .I2(max_doa_diff[0]),
        .I3(max_doa_diff[1]),
        .I4(max_doa_diff[2]),
        .O(\det_signal.diff_err_EW[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \det_signal.diff_err_EW[12]_i_13 
       (.I0(err_EW[2]),
        .I1(max_doa_diff[2]),
        .I2(max_doa_diff[1]),
        .I3(max_doa_diff[0]),
        .O(\det_signal.diff_err_EW[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \det_signal.diff_err_EW[12]_i_14 
       (.I0(err_EW[1]),
        .I1(max_doa_diff[1]),
        .I2(max_doa_diff[0]),
        .O(\det_signal.diff_err_EW[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_EW[12]_i_15 
       (.I0(err_EW[0]),
        .I1(max_doa_diff[0]),
        .O(\det_signal.diff_err_EW[12]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \det_signal.diff_err_EW[12]_i_3 
       (.I0(max_doa_diff[11]),
        .I1(\det_signal.diff_err_NW[12]_i_16_n_0 ),
        .O(\det_signal.diff_err_EW[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \det_signal.diff_err_EW[12]_i_4 
       (.I0(err_EW[11]),
        .I1(max_doa_diff[11]),
        .I2(\det_signal.diff_err_NW[12]_i_16_n_0 ),
        .O(\det_signal.diff_err_EW[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_EW[12]_i_5 
       (.I0(err_EW[10]),
        .I1(\det_signal.diff_err_NW[12]_i_17_n_0 ),
        .O(\det_signal.diff_err_EW[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999699)) 
    \det_signal.diff_err_EW[12]_i_6 
       (.I0(err_EW[9]),
        .I1(max_doa_diff[9]),
        .I2(max_doa_diff[7]),
        .I3(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I4(max_doa_diff[6]),
        .I5(max_doa_diff[8]),
        .O(\det_signal.diff_err_EW[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h99999699)) 
    \det_signal.diff_err_EW[12]_i_7 
       (.I0(err_EW[8]),
        .I1(max_doa_diff[8]),
        .I2(max_doa_diff[6]),
        .I3(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I4(max_doa_diff[7]),
        .O(\det_signal.diff_err_EW[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \det_signal.diff_err_EW[12]_i_8 
       (.I0(err_EW[7]),
        .I1(max_doa_diff[7]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I3(max_doa_diff[6]),
        .O(\det_signal.diff_err_EW[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \det_signal.diff_err_EW[12]_i_9 
       (.I0(err_EW[6]),
        .I1(max_doa_diff[6]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .O(\det_signal.diff_err_EW[12]_i_9_n_0 ));
  FDRE \det_signal.diff_err_EW_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_err_EW00_out),
        .Q(p_2_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_EW_reg[12]_i_1 
       (.CI(\det_signal.diff_err_EW_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_err_EW_reg[12]_i_1_CO_UNCONNECTED [7:4],\det_signal.diff_err_EW_reg[12]_i_1_n_4 ,\det_signal.diff_err_EW_reg[12]_i_1_n_5 ,\det_signal.diff_err_EW_reg[12]_i_1_n_6 ,\det_signal.diff_err_EW_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,err_EW[11:8]}),
        .O({\NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED [7:5],diff_err_EW00_out,\NLW_det_signal.diff_err_EW_reg[12]_i_1_O_UNCONNECTED [3:0]}),
        .S({1'b0,1'b0,1'b0,\det_signal.diff_err_EW[12]_i_3_n_0 ,\det_signal.diff_err_EW[12]_i_4_n_0 ,\det_signal.diff_err_EW[12]_i_5_n_0 ,\det_signal.diff_err_EW[12]_i_6_n_0 ,\det_signal.diff_err_EW[12]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_EW_reg[12]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_err_EW_reg[12]_i_2_n_0 ,\det_signal.diff_err_EW_reg[12]_i_2_n_1 ,\det_signal.diff_err_EW_reg[12]_i_2_n_2 ,\det_signal.diff_err_EW_reg[12]_i_2_n_3 ,\det_signal.diff_err_EW_reg[12]_i_2_n_4 ,\det_signal.diff_err_EW_reg[12]_i_2_n_5 ,\det_signal.diff_err_EW_reg[12]_i_2_n_6 ,\det_signal.diff_err_EW_reg[12]_i_2_n_7 }),
        .DI(err_EW[7:0]),
        .O(\NLW_det_signal.diff_err_EW_reg[12]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_err_EW[12]_i_8_n_0 ,\det_signal.diff_err_EW[12]_i_9_n_0 ,\det_signal.diff_err_EW[12]_i_10_n_0 ,\det_signal.diff_err_EW[12]_i_11_n_0 ,\det_signal.diff_err_EW[12]_i_12_n_0 ,\det_signal.diff_err_EW[12]_i_13_n_0 ,\det_signal.diff_err_EW[12]_i_14_n_0 ,\det_signal.diff_err_EW[12]_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_NE[12]_i_10 
       (.I0(err_NE[5]),
        .I1(\det_signal.diff_err_NW[12]_i_19_n_0 ),
        .O(\det_signal.diff_err_NE[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \det_signal.diff_err_NE[12]_i_11 
       (.I0(err_NE[4]),
        .I1(max_doa_diff[4]),
        .I2(max_doa_diff[2]),
        .I3(max_doa_diff[1]),
        .I4(max_doa_diff[0]),
        .I5(max_doa_diff[3]),
        .O(\det_signal.diff_err_NE[12]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \det_signal.diff_err_NE[12]_i_12 
       (.I0(err_NE[3]),
        .I1(max_doa_diff[3]),
        .I2(max_doa_diff[0]),
        .I3(max_doa_diff[1]),
        .I4(max_doa_diff[2]),
        .O(\det_signal.diff_err_NE[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \det_signal.diff_err_NE[12]_i_13 
       (.I0(err_NE[2]),
        .I1(max_doa_diff[2]),
        .I2(max_doa_diff[1]),
        .I3(max_doa_diff[0]),
        .O(\det_signal.diff_err_NE[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \det_signal.diff_err_NE[12]_i_14 
       (.I0(err_NE[1]),
        .I1(max_doa_diff[1]),
        .I2(max_doa_diff[0]),
        .O(\det_signal.diff_err_NE[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_NE[12]_i_15 
       (.I0(err_NE[0]),
        .I1(max_doa_diff[0]),
        .O(\det_signal.diff_err_NE[12]_i_15_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \det_signal.diff_err_NE[12]_i_3 
       (.I0(max_doa_diff[11]),
        .I1(\det_signal.diff_err_NW[12]_i_16_n_0 ),
        .O(\det_signal.diff_err_NE[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \det_signal.diff_err_NE[12]_i_4 
       (.I0(err_NE[11]),
        .I1(max_doa_diff[11]),
        .I2(\det_signal.diff_err_NW[12]_i_16_n_0 ),
        .O(\det_signal.diff_err_NE[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_NE[12]_i_5 
       (.I0(err_NE[10]),
        .I1(\det_signal.diff_err_NW[12]_i_17_n_0 ),
        .O(\det_signal.diff_err_NE[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999699)) 
    \det_signal.diff_err_NE[12]_i_6 
       (.I0(err_NE[9]),
        .I1(max_doa_diff[9]),
        .I2(max_doa_diff[7]),
        .I3(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I4(max_doa_diff[6]),
        .I5(max_doa_diff[8]),
        .O(\det_signal.diff_err_NE[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h99999699)) 
    \det_signal.diff_err_NE[12]_i_7 
       (.I0(err_NE[8]),
        .I1(max_doa_diff[8]),
        .I2(max_doa_diff[6]),
        .I3(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I4(max_doa_diff[7]),
        .O(\det_signal.diff_err_NE[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \det_signal.diff_err_NE[12]_i_8 
       (.I0(err_NE[7]),
        .I1(max_doa_diff[7]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I3(max_doa_diff[6]),
        .O(\det_signal.diff_err_NE[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \det_signal.diff_err_NE[12]_i_9 
       (.I0(err_NE[6]),
        .I1(max_doa_diff[6]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .O(\det_signal.diff_err_NE[12]_i_9_n_0 ));
  FDRE \det_signal.diff_err_NE_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_err_NE0),
        .Q(p_1_in2_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NE_reg[12]_i_1 
       (.CI(\det_signal.diff_err_NE_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_err_NE_reg[12]_i_1_CO_UNCONNECTED [7:4],\det_signal.diff_err_NE_reg[12]_i_1_n_4 ,\det_signal.diff_err_NE_reg[12]_i_1_n_5 ,\det_signal.diff_err_NE_reg[12]_i_1_n_6 ,\det_signal.diff_err_NE_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,err_NE[11:8]}),
        .O({\NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED [7:5],diff_err_NE0,\NLW_det_signal.diff_err_NE_reg[12]_i_1_O_UNCONNECTED [3:0]}),
        .S({1'b0,1'b0,1'b0,\det_signal.diff_err_NE[12]_i_3_n_0 ,\det_signal.diff_err_NE[12]_i_4_n_0 ,\det_signal.diff_err_NE[12]_i_5_n_0 ,\det_signal.diff_err_NE[12]_i_6_n_0 ,\det_signal.diff_err_NE[12]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NE_reg[12]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_err_NE_reg[12]_i_2_n_0 ,\det_signal.diff_err_NE_reg[12]_i_2_n_1 ,\det_signal.diff_err_NE_reg[12]_i_2_n_2 ,\det_signal.diff_err_NE_reg[12]_i_2_n_3 ,\det_signal.diff_err_NE_reg[12]_i_2_n_4 ,\det_signal.diff_err_NE_reg[12]_i_2_n_5 ,\det_signal.diff_err_NE_reg[12]_i_2_n_6 ,\det_signal.diff_err_NE_reg[12]_i_2_n_7 }),
        .DI(err_NE[7:0]),
        .O(\NLW_det_signal.diff_err_NE_reg[12]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_err_NE[12]_i_8_n_0 ,\det_signal.diff_err_NE[12]_i_9_n_0 ,\det_signal.diff_err_NE[12]_i_10_n_0 ,\det_signal.diff_err_NE[12]_i_11_n_0 ,\det_signal.diff_err_NE[12]_i_12_n_0 ,\det_signal.diff_err_NE[12]_i_13_n_0 ,\det_signal.diff_err_NE[12]_i_14_n_0 ,\det_signal.diff_err_NE[12]_i_15_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_NW[12]_i_10 
       (.I0(err_NW[5]),
        .I1(\det_signal.diff_err_NW[12]_i_19_n_0 ),
        .O(\det_signal.diff_err_NW[12]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999996)) 
    \det_signal.diff_err_NW[12]_i_11 
       (.I0(err_NW[4]),
        .I1(max_doa_diff[4]),
        .I2(max_doa_diff[2]),
        .I3(max_doa_diff[1]),
        .I4(max_doa_diff[0]),
        .I5(max_doa_diff[3]),
        .O(\det_signal.diff_err_NW[12]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h99999996)) 
    \det_signal.diff_err_NW[12]_i_12 
       (.I0(err_NW[3]),
        .I1(max_doa_diff[3]),
        .I2(max_doa_diff[0]),
        .I3(max_doa_diff[1]),
        .I4(max_doa_diff[2]),
        .O(\det_signal.diff_err_NW[12]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \det_signal.diff_err_NW[12]_i_13 
       (.I0(err_NW[2]),
        .I1(max_doa_diff[2]),
        .I2(max_doa_diff[1]),
        .I3(max_doa_diff[0]),
        .O(\det_signal.diff_err_NW[12]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \det_signal.diff_err_NW[12]_i_14 
       (.I0(err_NW[1]),
        .I1(max_doa_diff[1]),
        .I2(max_doa_diff[0]),
        .O(\det_signal.diff_err_NW[12]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_NW[12]_i_15 
       (.I0(err_NW[0]),
        .I1(max_doa_diff[0]),
        .O(\det_signal.diff_err_NW[12]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \det_signal.diff_err_NW[12]_i_16 
       (.I0(max_doa_diff[9]),
        .I1(max_doa_diff[7]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I3(max_doa_diff[6]),
        .I4(max_doa_diff[8]),
        .I5(max_doa_diff[10]),
        .O(\det_signal.diff_err_NW[12]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00000010FFFFFFEF)) 
    \det_signal.diff_err_NW[12]_i_17 
       (.I0(max_doa_diff[9]),
        .I1(max_doa_diff[7]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I3(max_doa_diff[6]),
        .I4(max_doa_diff[8]),
        .I5(max_doa_diff[10]),
        .O(\det_signal.diff_err_NW[12]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \det_signal.diff_err_NW[12]_i_18 
       (.I0(max_doa_diff[4]),
        .I1(max_doa_diff[2]),
        .I2(max_doa_diff[1]),
        .I3(max_doa_diff[0]),
        .I4(max_doa_diff[3]),
        .I5(max_doa_diff[5]),
        .O(\det_signal.diff_err_NW[12]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \det_signal.diff_err_NW[12]_i_19 
       (.I0(max_doa_diff[4]),
        .I1(max_doa_diff[2]),
        .I2(max_doa_diff[1]),
        .I3(max_doa_diff[0]),
        .I4(max_doa_diff[3]),
        .I5(max_doa_diff[5]),
        .O(\det_signal.diff_err_NW[12]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \det_signal.diff_err_NW[12]_i_3 
       (.I0(max_doa_diff[11]),
        .I1(\det_signal.diff_err_NW[12]_i_16_n_0 ),
        .O(\det_signal.diff_err_NW[12]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \det_signal.diff_err_NW[12]_i_4 
       (.I0(err_NW[11]),
        .I1(max_doa_diff[11]),
        .I2(\det_signal.diff_err_NW[12]_i_16_n_0 ),
        .O(\det_signal.diff_err_NW[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.diff_err_NW[12]_i_5 
       (.I0(err_NW[10]),
        .I1(\det_signal.diff_err_NW[12]_i_17_n_0 ),
        .O(\det_signal.diff_err_NW[12]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9999999999999699)) 
    \det_signal.diff_err_NW[12]_i_6 
       (.I0(err_NW[9]),
        .I1(max_doa_diff[9]),
        .I2(max_doa_diff[7]),
        .I3(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I4(max_doa_diff[6]),
        .I5(max_doa_diff[8]),
        .O(\det_signal.diff_err_NW[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h99999699)) 
    \det_signal.diff_err_NW[12]_i_7 
       (.I0(err_NW[8]),
        .I1(max_doa_diff[8]),
        .I2(max_doa_diff[6]),
        .I3(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I4(max_doa_diff[7]),
        .O(\det_signal.diff_err_NW[12]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \det_signal.diff_err_NW[12]_i_8 
       (.I0(err_NW[7]),
        .I1(max_doa_diff[7]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .I3(max_doa_diff[6]),
        .O(\det_signal.diff_err_NW[12]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \det_signal.diff_err_NW[12]_i_9 
       (.I0(err_NW[6]),
        .I1(max_doa_diff[6]),
        .I2(\det_signal.diff_err_NW[12]_i_18_n_0 ),
        .O(\det_signal.diff_err_NW[12]_i_9_n_0 ));
  FDRE \det_signal.diff_err_NW_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg[0]__0 ),
        .D(diff_err_NW0),
        .Q(p_0_in1_in),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NW_reg[12]_i_1 
       (.CI(\det_signal.diff_err_NW_reg[12]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_err_NW_reg[12]_i_1_CO_UNCONNECTED [7:4],\det_signal.diff_err_NW_reg[12]_i_1_n_4 ,\det_signal.diff_err_NW_reg[12]_i_1_n_5 ,\det_signal.diff_err_NW_reg[12]_i_1_n_6 ,\det_signal.diff_err_NW_reg[12]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,err_NW[11:8]}),
        .O({\NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED [7:5],diff_err_NW0,\NLW_det_signal.diff_err_NW_reg[12]_i_1_O_UNCONNECTED [3:0]}),
        .S({1'b0,1'b0,1'b0,\det_signal.diff_err_NW[12]_i_3_n_0 ,\det_signal.diff_err_NW[12]_i_4_n_0 ,\det_signal.diff_err_NW[12]_i_5_n_0 ,\det_signal.diff_err_NW[12]_i_6_n_0 ,\det_signal.diff_err_NW[12]_i_7_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_err_NW_reg[12]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_err_NW_reg[12]_i_2_n_0 ,\det_signal.diff_err_NW_reg[12]_i_2_n_1 ,\det_signal.diff_err_NW_reg[12]_i_2_n_2 ,\det_signal.diff_err_NW_reg[12]_i_2_n_3 ,\det_signal.diff_err_NW_reg[12]_i_2_n_4 ,\det_signal.diff_err_NW_reg[12]_i_2_n_5 ,\det_signal.diff_err_NW_reg[12]_i_2_n_6 ,\det_signal.diff_err_NW_reg[12]_i_2_n_7 }),
        .DI(err_NW[7:0]),
        .O(\NLW_det_signal.diff_err_NW_reg[12]_i_2_O_UNCONNECTED [7:0]),
        .S({\det_signal.diff_err_NW[12]_i_8_n_0 ,\det_signal.diff_err_NW[12]_i_9_n_0 ,\det_signal.diff_err_NW[12]_i_10_n_0 ,\det_signal.diff_err_NW[12]_i_11_n_0 ,\det_signal.diff_err_NW[12]_i_12_n_0 ,\det_signal.diff_err_NW[12]_i_13_n_0 ,\det_signal.diff_err_NW[12]_i_14_n_0 ,\det_signal.diff_err_NW[12]_i_15_n_0 }));
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
  FDRE \det_signal.diff_phase_E_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[0]),
        .Q(diff_phase_E[0]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[10]),
        .Q(diff_phase_E[10]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[11]),
        .Q(diff_phase_E[11]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[12]),
        .Q(diff_phase_E[12]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[13]),
        .Q(diff_phase_E[13]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[14]),
        .Q(diff_phase_E[14]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[15]_i_10 
       (.CI(\det_signal.diff_phase_E_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[15]_i_10_n_0 ,\det_signal.diff_phase_E_reg[15]_i_10_n_1 ,\det_signal.diff_phase_E_reg[15]_i_10_n_2 ,\det_signal.diff_phase_E_reg[15]_i_10_n_3 ,\det_signal.diff_phase_E_reg[15]_i_10_n_4 ,\det_signal.diff_phase_E_reg[15]_i_10_n_5 ,\det_signal.diff_phase_E_reg[15]_i_10_n_6 ,\det_signal.diff_phase_E_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_phase_E_reg[15]_i_10_n_8 ,\det_signal.diff_phase_E_reg[15]_i_10_n_9 ,\det_signal.diff_phase_E_reg[15]_i_10_n_10 ,\det_signal.diff_phase_E_reg[15]_i_10_n_11 ,\det_signal.diff_phase_E_reg[15]_i_10_n_12 ,\det_signal.diff_phase_E_reg[15]_i_10_n_13 ,\det_signal.diff_phase_E_reg[15]_i_10_n_14 ,\det_signal.diff_phase_E_reg[15]_i_10_n_15 }),
        .S({\det_signal.diff_phase_E[15]_i_11_n_0 ,\det_signal.diff_phase_E[15]_i_12_n_0 ,\det_signal.diff_phase_E[15]_i_13_n_0 ,\det_signal.diff_phase_E[15]_i_14_n_0 ,\det_signal.diff_phase_E[15]_i_15_n_0 ,\det_signal.diff_phase_E[15]_i_16_n_0 ,\det_signal.diff_phase_E[15]_i_17_n_0 ,\det_signal.diff_phase_E[15]_i_18_n_0 }));
  FDRE \det_signal.diff_phase_E_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[16]),
        .Q(diff_phase_E[16]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[17]),
        .Q(diff_phase_E[17]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[18]),
        .Q(diff_phase_E[18]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[19]_i_6 
       (.CI(\det_signal.diff_phase_E_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_E_reg[19]_i_6_CO_UNCONNECTED [7:3],\det_signal.diff_phase_E_reg[19]_i_6_n_5 ,\det_signal.diff_phase_E_reg[19]_i_6_n_6 ,\det_signal.diff_phase_E_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_phase_E_reg[19]_i_6_O_UNCONNECTED [7:4],\det_signal.diff_phase_E_reg[19]_i_6_n_12 ,\det_signal.diff_phase_E_reg[19]_i_6_n_13 ,\det_signal.diff_phase_E_reg[19]_i_6_n_14 ,\det_signal.diff_phase_E_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_E[19]_i_7_n_0 ,\det_signal.diff_phase_E[19]_i_8_n_0 ,\det_signal.diff_phase_E[19]_i_9_n_0 ,\det_signal.diff_phase_E[19]_i_10_n_0 }));
  FDRE \det_signal.diff_phase_E_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[1]),
        .Q(diff_phase_E[1]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[2]),
        .Q(diff_phase_E[2]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[3]),
        .Q(diff_phase_E[3]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[4]),
        .Q(diff_phase_E[4]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[5]),
        .Q(diff_phase_E[5]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[6]),
        .Q(diff_phase_E[6]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[7]),
        .Q(diff_phase_E[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[7]_i_1_n_0 ,\det_signal.diff_phase_E_reg[7]_i_1_n_1 ,\det_signal.diff_phase_E_reg[7]_i_1_n_2 ,\det_signal.diff_phase_E_reg[7]_i_1_n_3 ,\det_signal.diff_phase_E_reg[7]_i_1_n_4 ,\det_signal.diff_phase_E_reg[7]_i_1_n_5 ,\det_signal.diff_phase_E_reg[7]_i_1_n_6 ,\det_signal.diff_phase_E_reg[7]_i_1_n_7 }),
        .DI(phase_E[7:0]),
        .O(diff_phase_E03_out[7:0]),
        .S({\det_signal.diff_phase_E[7]_i_2_n_0 ,\det_signal.diff_phase_E[7]_i_3_n_0 ,\det_signal.diff_phase_E[7]_i_4_n_0 ,\det_signal.diff_phase_E[7]_i_5_n_0 ,\det_signal.diff_phase_E[7]_i_6_n_0 ,\det_signal.diff_phase_E[7]_i_7_n_0 ,\det_signal.diff_phase_E[7]_i_8_n_0 ,\det_signal.diff_phase_E[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_E_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_E_reg[7]_i_10_n_0 ,\det_signal.diff_phase_E_reg[7]_i_10_n_1 ,\det_signal.diff_phase_E_reg[7]_i_10_n_2 ,\det_signal.diff_phase_E_reg[7]_i_10_n_3 ,\det_signal.diff_phase_E_reg[7]_i_10_n_4 ,\det_signal.diff_phase_E_reg[7]_i_10_n_5 ,\det_signal.diff_phase_E_reg[7]_i_10_n_6 ,\det_signal.diff_phase_E_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_phase_E_reg[7]_i_10_n_8 ,\det_signal.diff_phase_E_reg[7]_i_10_n_9 ,\det_signal.diff_phase_E_reg[7]_i_10_n_10 ,\det_signal.diff_phase_E_reg[7]_i_10_n_11 ,\det_signal.diff_phase_E_reg[7]_i_10_n_12 ,\det_signal.diff_phase_E_reg[7]_i_10_n_13 ,\det_signal.diff_phase_E_reg[7]_i_10_n_14 ,\det_signal.diff_phase_E_reg[7]_i_10_n_15 }),
        .S({\det_signal.diff_phase_E[7]_i_11_n_0 ,\det_signal.diff_phase_E[7]_i_12_n_0 ,\det_signal.diff_phase_E[7]_i_13_n_0 ,\det_signal.diff_phase_E[7]_i_14_n_0 ,\det_signal.diff_phase_E[7]_i_15_n_0 ,\det_signal.diff_phase_E[7]_i_16_n_0 ,\det_signal.diff_phase_E[7]_i_17_n_0 ,prev_phase_E[0]}));
  FDRE \det_signal.diff_phase_E_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[8]),
        .Q(diff_phase_E[8]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_E_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_E03_out[9]),
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
  FDRE \det_signal.diff_phase_N_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[0]),
        .Q(diff_phase_N[0]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[10]),
        .Q(diff_phase_N[10]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[11]),
        .Q(diff_phase_N[11]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[12]),
        .Q(diff_phase_N[12]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[13]),
        .Q(diff_phase_N[13]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[14]),
        .Q(diff_phase_N[14]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[15]_i_10 
       (.CI(\det_signal.diff_phase_N_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[15]_i_10_n_0 ,\det_signal.diff_phase_N_reg[15]_i_10_n_1 ,\det_signal.diff_phase_N_reg[15]_i_10_n_2 ,\det_signal.diff_phase_N_reg[15]_i_10_n_3 ,\det_signal.diff_phase_N_reg[15]_i_10_n_4 ,\det_signal.diff_phase_N_reg[15]_i_10_n_5 ,\det_signal.diff_phase_N_reg[15]_i_10_n_6 ,\det_signal.diff_phase_N_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_phase_N_reg[15]_i_10_n_8 ,\det_signal.diff_phase_N_reg[15]_i_10_n_9 ,\det_signal.diff_phase_N_reg[15]_i_10_n_10 ,\det_signal.diff_phase_N_reg[15]_i_10_n_11 ,\det_signal.diff_phase_N_reg[15]_i_10_n_12 ,\det_signal.diff_phase_N_reg[15]_i_10_n_13 ,\det_signal.diff_phase_N_reg[15]_i_10_n_14 ,\det_signal.diff_phase_N_reg[15]_i_10_n_15 }),
        .S({\det_signal.diff_phase_N[15]_i_11_n_0 ,\det_signal.diff_phase_N[15]_i_12_n_0 ,\det_signal.diff_phase_N[15]_i_13_n_0 ,\det_signal.diff_phase_N[15]_i_14_n_0 ,\det_signal.diff_phase_N[15]_i_15_n_0 ,\det_signal.diff_phase_N[15]_i_16_n_0 ,\det_signal.diff_phase_N[15]_i_17_n_0 ,\det_signal.diff_phase_N[15]_i_18_n_0 }));
  FDRE \det_signal.diff_phase_N_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[16]),
        .Q(diff_phase_N[16]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[17]),
        .Q(diff_phase_N[17]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[18]),
        .Q(diff_phase_N[18]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[19]_i_6 
       (.CI(\det_signal.diff_phase_N_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_N_reg[19]_i_6_CO_UNCONNECTED [7:3],\det_signal.diff_phase_N_reg[19]_i_6_n_5 ,\det_signal.diff_phase_N_reg[19]_i_6_n_6 ,\det_signal.diff_phase_N_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_phase_N_reg[19]_i_6_O_UNCONNECTED [7:4],\det_signal.diff_phase_N_reg[19]_i_6_n_12 ,\det_signal.diff_phase_N_reg[19]_i_6_n_13 ,\det_signal.diff_phase_N_reg[19]_i_6_n_14 ,\det_signal.diff_phase_N_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_N[19]_i_7_n_0 ,\det_signal.diff_phase_N[19]_i_8_n_0 ,\det_signal.diff_phase_N[19]_i_9_n_0 ,\det_signal.diff_phase_N[19]_i_10_n_0 }));
  FDRE \det_signal.diff_phase_N_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[1]),
        .Q(diff_phase_N[1]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[2]),
        .Q(diff_phase_N[2]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[3]),
        .Q(diff_phase_N[3]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[4]),
        .Q(diff_phase_N[4]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[5]),
        .Q(diff_phase_N[5]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[6]),
        .Q(diff_phase_N[6]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[7]),
        .Q(diff_phase_N[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[7]_i_1_n_0 ,\det_signal.diff_phase_N_reg[7]_i_1_n_1 ,\det_signal.diff_phase_N_reg[7]_i_1_n_2 ,\det_signal.diff_phase_N_reg[7]_i_1_n_3 ,\det_signal.diff_phase_N_reg[7]_i_1_n_4 ,\det_signal.diff_phase_N_reg[7]_i_1_n_5 ,\det_signal.diff_phase_N_reg[7]_i_1_n_6 ,\det_signal.diff_phase_N_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(diff_phase_N04_out[7:0]),
        .S({\det_signal.diff_phase_N[7]_i_2_n_0 ,\det_signal.diff_phase_N[7]_i_3_n_0 ,\det_signal.diff_phase_N[7]_i_4_n_0 ,\det_signal.diff_phase_N[7]_i_5_n_0 ,\det_signal.diff_phase_N[7]_i_6_n_0 ,\det_signal.diff_phase_N[7]_i_7_n_0 ,\det_signal.diff_phase_N[7]_i_8_n_0 ,\det_signal.diff_phase_N[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_N_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_N_reg[7]_i_10_n_0 ,\det_signal.diff_phase_N_reg[7]_i_10_n_1 ,\det_signal.diff_phase_N_reg[7]_i_10_n_2 ,\det_signal.diff_phase_N_reg[7]_i_10_n_3 ,\det_signal.diff_phase_N_reg[7]_i_10_n_4 ,\det_signal.diff_phase_N_reg[7]_i_10_n_5 ,\det_signal.diff_phase_N_reg[7]_i_10_n_6 ,\det_signal.diff_phase_N_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_phase_N_reg[7]_i_10_n_8 ,\det_signal.diff_phase_N_reg[7]_i_10_n_9 ,\det_signal.diff_phase_N_reg[7]_i_10_n_10 ,\det_signal.diff_phase_N_reg[7]_i_10_n_11 ,\det_signal.diff_phase_N_reg[7]_i_10_n_12 ,\det_signal.diff_phase_N_reg[7]_i_10_n_13 ,\det_signal.diff_phase_N_reg[7]_i_10_n_14 ,\det_signal.diff_phase_N_reg[7]_i_10_n_15 }),
        .S({\det_signal.diff_phase_N[7]_i_11_n_0 ,\det_signal.diff_phase_N[7]_i_12_n_0 ,\det_signal.diff_phase_N[7]_i_13_n_0 ,\det_signal.diff_phase_N[7]_i_14_n_0 ,\det_signal.diff_phase_N[7]_i_15_n_0 ,\det_signal.diff_phase_N[7]_i_16_n_0 ,\det_signal.diff_phase_N[7]_i_17_n_0 ,prev_phase_N[0]}));
  FDRE \det_signal.diff_phase_N_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[8]),
        .Q(diff_phase_N[8]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_N_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_N04_out[9]),
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
  FDRE \det_signal.diff_phase_W_reg[0] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[0]),
        .Q(diff_phase_W[0]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[10] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[10]),
        .Q(diff_phase_W[10]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[11] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[11]),
        .Q(diff_phase_W[11]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[12] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[12]),
        .Q(diff_phase_W[12]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[13] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[13]),
        .Q(diff_phase_W[13]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[14] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[14]),
        .Q(diff_phase_W[14]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[15] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[15]_i_10 
       (.CI(\det_signal.diff_phase_W_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[15]_i_10_n_0 ,\det_signal.diff_phase_W_reg[15]_i_10_n_1 ,\det_signal.diff_phase_W_reg[15]_i_10_n_2 ,\det_signal.diff_phase_W_reg[15]_i_10_n_3 ,\det_signal.diff_phase_W_reg[15]_i_10_n_4 ,\det_signal.diff_phase_W_reg[15]_i_10_n_5 ,\det_signal.diff_phase_W_reg[15]_i_10_n_6 ,\det_signal.diff_phase_W_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.diff_phase_W_reg[15]_i_10_n_8 ,\det_signal.diff_phase_W_reg[15]_i_10_n_9 ,\det_signal.diff_phase_W_reg[15]_i_10_n_10 ,\det_signal.diff_phase_W_reg[15]_i_10_n_11 ,\det_signal.diff_phase_W_reg[15]_i_10_n_12 ,\det_signal.diff_phase_W_reg[15]_i_10_n_13 ,\det_signal.diff_phase_W_reg[15]_i_10_n_14 ,\det_signal.diff_phase_W_reg[15]_i_10_n_15 }),
        .S({\det_signal.diff_phase_W[15]_i_11_n_0 ,\det_signal.diff_phase_W[15]_i_12_n_0 ,\det_signal.diff_phase_W[15]_i_13_n_0 ,\det_signal.diff_phase_W[15]_i_14_n_0 ,\det_signal.diff_phase_W[15]_i_15_n_0 ,\det_signal.diff_phase_W[15]_i_16_n_0 ,\det_signal.diff_phase_W[15]_i_17_n_0 ,\det_signal.diff_phase_W[15]_i_18_n_0 }));
  FDRE \det_signal.diff_phase_W_reg[16] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[16]),
        .Q(diff_phase_W[16]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[17] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[17]),
        .Q(diff_phase_W[17]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[18] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[18]),
        .Q(diff_phase_W[18]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[19] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
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
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[19]_i_6 
       (.CI(\det_signal.diff_phase_W_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.diff_phase_W_reg[19]_i_6_CO_UNCONNECTED [7:3],\det_signal.diff_phase_W_reg[19]_i_6_n_5 ,\det_signal.diff_phase_W_reg[19]_i_6_n_6 ,\det_signal.diff_phase_W_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.diff_phase_W_reg[19]_i_6_O_UNCONNECTED [7:4],\det_signal.diff_phase_W_reg[19]_i_6_n_12 ,\det_signal.diff_phase_W_reg[19]_i_6_n_13 ,\det_signal.diff_phase_W_reg[19]_i_6_n_14 ,\det_signal.diff_phase_W_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.diff_phase_W[19]_i_7_n_0 ,\det_signal.diff_phase_W[19]_i_8_n_0 ,\det_signal.diff_phase_W[19]_i_9_n_0 ,\det_signal.diff_phase_W[19]_i_10_n_0 }));
  FDRE \det_signal.diff_phase_W_reg[1] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[1]),
        .Q(diff_phase_W[1]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[2] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[2]),
        .Q(diff_phase_W[2]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[3] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[3]),
        .Q(diff_phase_W[3]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[4] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[4]),
        .Q(diff_phase_W[4]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[5] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[5]),
        .Q(diff_phase_W[5]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[6] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[6]),
        .Q(diff_phase_W[6]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[7] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[7]),
        .Q(diff_phase_W[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[7]_i_1_n_0 ,\det_signal.diff_phase_W_reg[7]_i_1_n_1 ,\det_signal.diff_phase_W_reg[7]_i_1_n_2 ,\det_signal.diff_phase_W_reg[7]_i_1_n_3 ,\det_signal.diff_phase_W_reg[7]_i_1_n_4 ,\det_signal.diff_phase_W_reg[7]_i_1_n_5 ,\det_signal.diff_phase_W_reg[7]_i_1_n_6 ,\det_signal.diff_phase_W_reg[7]_i_1_n_7 }),
        .DI(phase_W[7:0]),
        .O(diff_phase_W02_out[7:0]),
        .S({\det_signal.diff_phase_W[7]_i_2_n_0 ,\det_signal.diff_phase_W[7]_i_3_n_0 ,\det_signal.diff_phase_W[7]_i_4_n_0 ,\det_signal.diff_phase_W[7]_i_5_n_0 ,\det_signal.diff_phase_W[7]_i_6_n_0 ,\det_signal.diff_phase_W[7]_i_7_n_0 ,\det_signal.diff_phase_W[7]_i_8_n_0 ,\det_signal.diff_phase_W[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.diff_phase_W_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.diff_phase_W_reg[7]_i_10_n_0 ,\det_signal.diff_phase_W_reg[7]_i_10_n_1 ,\det_signal.diff_phase_W_reg[7]_i_10_n_2 ,\det_signal.diff_phase_W_reg[7]_i_10_n_3 ,\det_signal.diff_phase_W_reg[7]_i_10_n_4 ,\det_signal.diff_phase_W_reg[7]_i_10_n_5 ,\det_signal.diff_phase_W_reg[7]_i_10_n_6 ,\det_signal.diff_phase_W_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.diff_phase_W_reg[7]_i_10_n_8 ,\det_signal.diff_phase_W_reg[7]_i_10_n_9 ,\det_signal.diff_phase_W_reg[7]_i_10_n_10 ,\det_signal.diff_phase_W_reg[7]_i_10_n_11 ,\det_signal.diff_phase_W_reg[7]_i_10_n_12 ,\det_signal.diff_phase_W_reg[7]_i_10_n_13 ,\det_signal.diff_phase_W_reg[7]_i_10_n_14 ,\det_signal.diff_phase_W_reg[7]_i_10_n_15 }),
        .S({\det_signal.diff_phase_W[7]_i_11_n_0 ,\det_signal.diff_phase_W[7]_i_12_n_0 ,\det_signal.diff_phase_W[7]_i_13_n_0 ,\det_signal.diff_phase_W[7]_i_14_n_0 ,\det_signal.diff_phase_W[7]_i_15_n_0 ,\det_signal.diff_phase_W[7]_i_16_n_0 ,\det_signal.diff_phase_W[7]_i_17_n_0 ,prev_phase_W[0]}));
  FDRE \det_signal.diff_phase_W_reg[8] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[8]),
        .Q(diff_phase_W[8]),
        .R(1'b0));
  FDRE \det_signal.diff_phase_W_reg[9] 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(diff_phase_W02_out[9]),
        .Q(diff_phase_W[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hF4444444)) 
    \det_signal.div_counter[0]_i_1 
       (.I0(div_counter[0]),
        .I1(\det_signal.div_counter[5]_i_4_n_0 ),
        .I2(\det_signal.div_counter[2]_i_2_n_0 ),
        .I3(div_counter[1]),
        .I4(div_counter[2]),
        .O(\det_signal.div_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h88F8F000)) 
    \det_signal.div_counter[1]_i_1 
       (.I0(div_counter[2]),
        .I1(\det_signal.div_counter[2]_i_2_n_0 ),
        .I2(\det_signal.div_counter[5]_i_4_n_0 ),
        .I3(div_counter[1]),
        .I4(div_counter[0]),
        .O(\det_signal.div_counter[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hACCCE000)) 
    \det_signal.div_counter[2]_i_1 
       (.I0(\det_signal.div_counter[2]_i_2_n_0 ),
        .I1(\det_signal.div_counter[5]_i_4_n_0 ),
        .I2(div_counter[1]),
        .I3(div_counter[0]),
        .I4(div_counter[2]),
        .O(\det_signal.div_counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \det_signal.div_counter[2]_i_2 
       (.I0(div_counter[5]),
        .I1(div_counter[4]),
        .I2(div_counter[3]),
        .I3(div_delay[0]),
        .I4(div_delay[1]),
        .I5(div_delay[2]),
        .O(\det_signal.div_counter[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD9990000)) 
    \det_signal.div_counter[3]_i_1 
       (.I0(\det_signal.div_counter[5]_i_3_n_0 ),
        .I1(div_counter[3]),
        .I2(div_counter[4]),
        .I3(div_counter[5]),
        .I4(\det_signal.div_counter[5]_i_4_n_0 ),
        .O(\det_signal.div_counter[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0A828)) 
    \det_signal.div_counter[4]_i_1 
       (.I0(\det_signal.div_counter[5]_i_4_n_0 ),
        .I1(div_counter[3]),
        .I2(div_counter[4]),
        .I3(div_counter[5]),
        .I4(\det_signal.div_counter[5]_i_3_n_0 ),
        .O(\det_signal.div_counter[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.div_counter[5]_i_1 
       (.I0(proc_signal),
        .O(\det_signal.div_counter[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF080000)) 
    \det_signal.div_counter[5]_i_2 
       (.I0(div_counter[3]),
        .I1(div_counter[4]),
        .I2(\det_signal.div_counter[5]_i_3_n_0 ),
        .I3(div_counter[5]),
        .I4(\det_signal.div_counter[5]_i_4_n_0 ),
        .O(\det_signal.div_counter[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \det_signal.div_counter[5]_i_3 
       (.I0(div_counter[1]),
        .I1(div_counter[0]),
        .I2(div_counter[2]),
        .O(\det_signal.div_counter[5]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \det_signal.div_counter[5]_i_4 
       (.I0(div_delay[0]),
        .I1(div_delay[1]),
        .I2(div_delay[2]),
        .O(\det_signal.div_counter[5]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[0]_i_1_n_0 ),
        .Q(div_counter[0]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[1]_i_1_n_0 ),
        .Q(div_counter[1]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[2]_i_1_n_0 ),
        .Q(div_counter[2]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[3]_i_1_n_0 ),
        .Q(div_counter[3]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[4]_i_1_n_0 ),
        .Q(div_counter[4]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_counter[5]_i_2_n_0 ),
        .Q(div_counter[5]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \det_signal.div_delay[0]_i_1 
       (.I0(div_delay[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .O(p_1_in__0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.div_delay[1]_i_1 
       (.I0(div_delay[0]),
        .I1(div_delay[1]),
        .O(p_1_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \det_signal.div_delay[2]_i_1 
       (.I0(div_delay[1]),
        .I1(div_delay[0]),
        .I2(div_delay[2]),
        .O(p_1_in__0[2]));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_delay_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[0]),
        .Q(div_delay[0]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_delay_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[1]),
        .Q(div_delay[1]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_delay_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(div_delay[2]),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \det_signal.div_start_i_1 
       (.I0(div_delay[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .O(\det_signal.div_start_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.div_start_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.div_start_i_1_n_0 ),
        .Q(div_start),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_2 
       (.I0(phase_E[15]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_8 ),
        .O(\det_signal.dsp_phase_EW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_3 
       (.I0(phase_E[14]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_9 ),
        .O(\det_signal.dsp_phase_EW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_4 
       (.I0(phase_E[13]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_10 ),
        .O(\det_signal.dsp_phase_EW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_5 
       (.I0(phase_E[12]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_11 ),
        .O(\det_signal.dsp_phase_EW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_6 
       (.I0(phase_E[11]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_12 ),
        .O(\det_signal.dsp_phase_EW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_7 
       (.I0(phase_E[10]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_13 ),
        .O(\det_signal.dsp_phase_EW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_8 
       (.I0(phase_E[9]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_14 ),
        .O(\det_signal.dsp_phase_EW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[15]_i_9 
       (.I0(phase_E[8]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_15 ),
        .O(\det_signal.dsp_phase_EW[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[19]_i_2 
       (.I0(phase_E[19]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_12 ),
        .O(\det_signal.dsp_phase_EW[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[19]_i_3 
       (.I0(phase_E[18]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_13 ),
        .O(\det_signal.dsp_phase_EW[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[19]_i_4 
       (.I0(phase_E[17]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_14 ),
        .O(\det_signal.dsp_phase_EW[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[19]_i_5 
       (.I0(phase_E[16]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_15 ),
        .O(\det_signal.dsp_phase_EW[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_2 
       (.I0(phase_E[7]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_8 ),
        .O(\det_signal.dsp_phase_EW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_3 
       (.I0(phase_E[6]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_9 ),
        .O(\det_signal.dsp_phase_EW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_4 
       (.I0(phase_E[5]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_10 ),
        .O(\det_signal.dsp_phase_EW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_5 
       (.I0(phase_E[4]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_11 ),
        .O(\det_signal.dsp_phase_EW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_6 
       (.I0(phase_E[3]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_12 ),
        .O(\det_signal.dsp_phase_EW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_7 
       (.I0(phase_E[2]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_13 ),
        .O(\det_signal.dsp_phase_EW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_8 
       (.I0(phase_E[1]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_14 ),
        .O(\det_signal.dsp_phase_EW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_EW[7]_i_9 
       (.I0(phase_E[0]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_15 ),
        .O(\det_signal.dsp_phase_EW[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [0]),
        .Q(dsp_phase_EW[0]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [10]),
        .Q(dsp_phase_EW[10]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [11]),
        .Q(dsp_phase_EW[11]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [12]),
        .Q(dsp_phase_EW[12]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [13]),
        .Q(dsp_phase_EW[13]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [14]),
        .Q(dsp_phase_EW[14]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [15]),
        .Q(dsp_phase_EW[15]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_EW_reg[15]_i_1 
       (.CI(\det_signal.dsp_phase_EW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_EW_reg[15]_i_1_n_0 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_1 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_2 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_3 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_4 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_5 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_6 ,\det_signal.dsp_phase_EW_reg[15]_i_1_n_7 }),
        .DI(phase_E[15:8]),
        .O(\det_signal.dsp_phase_EW_reg00_out [15:8]),
        .S({\det_signal.dsp_phase_EW[15]_i_2_n_0 ,\det_signal.dsp_phase_EW[15]_i_3_n_0 ,\det_signal.dsp_phase_EW[15]_i_4_n_0 ,\det_signal.dsp_phase_EW[15]_i_5_n_0 ,\det_signal.dsp_phase_EW[15]_i_6_n_0 ,\det_signal.dsp_phase_EW[15]_i_7_n_0 ,\det_signal.dsp_phase_EW[15]_i_8_n_0 ,\det_signal.dsp_phase_EW[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [16]),
        .Q(dsp_phase_EW[16]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [17]),
        .Q(dsp_phase_EW[17]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [18]),
        .Q(dsp_phase_EW[18]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [19]),
        .Q(dsp_phase_EW[19]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_EW_reg[19]_i_1 
       (.CI(\det_signal.dsp_phase_EW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_EW_reg[19]_i_1_n_5 ,\det_signal.dsp_phase_EW_reg[19]_i_1_n_6 ,\det_signal.dsp_phase_EW_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_E[18:16]}),
        .O({\NLW_det_signal.dsp_phase_EW_reg[19]_i_1_O_UNCONNECTED [7:4],\det_signal.dsp_phase_EW_reg00_out [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_EW[19]_i_2_n_0 ,\det_signal.dsp_phase_EW[19]_i_3_n_0 ,\det_signal.dsp_phase_EW[19]_i_4_n_0 ,\det_signal.dsp_phase_EW[19]_i_5_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [1]),
        .Q(dsp_phase_EW[1]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [2]),
        .Q(dsp_phase_EW[2]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [3]),
        .Q(dsp_phase_EW[3]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [4]),
        .Q(dsp_phase_EW[4]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [5]),
        .Q(dsp_phase_EW[5]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [6]),
        .Q(dsp_phase_EW[6]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [7]),
        .Q(dsp_phase_EW[7]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_EW_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_EW_reg[7]_i_1_n_0 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_1 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_2 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_3 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_4 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_5 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_6 ,\det_signal.dsp_phase_EW_reg[7]_i_1_n_7 }),
        .DI(phase_E[7:0]),
        .O(\det_signal.dsp_phase_EW_reg00_out [7:0]),
        .S({\det_signal.dsp_phase_EW[7]_i_2_n_0 ,\det_signal.dsp_phase_EW[7]_i_3_n_0 ,\det_signal.dsp_phase_EW[7]_i_4_n_0 ,\det_signal.dsp_phase_EW[7]_i_5_n_0 ,\det_signal.dsp_phase_EW[7]_i_6_n_0 ,\det_signal.dsp_phase_EW[7]_i_7_n_0 ,\det_signal.dsp_phase_EW[7]_i_8_n_0 ,\det_signal.dsp_phase_EW[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [8]),
        .Q(dsp_phase_EW[8]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_EW_reg00_out [9]),
        .Q(dsp_phase_EW[9]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[0]),
        .Q(dsp_phase_E[0]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[10]),
        .Q(dsp_phase_E[10]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[11]),
        .Q(dsp_phase_E[11]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[12]),
        .Q(dsp_phase_E[12]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[13]),
        .Q(dsp_phase_E[13]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[14]),
        .Q(dsp_phase_E[14]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[15]),
        .Q(dsp_phase_E[15]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[16]),
        .Q(dsp_phase_E[16]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[17]),
        .Q(dsp_phase_E[17]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[18]),
        .Q(dsp_phase_E[18]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[19]),
        .Q(dsp_phase_E[19]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[1]),
        .Q(dsp_phase_E[1]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[2]),
        .Q(dsp_phase_E[2]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[3]),
        .Q(dsp_phase_E[3]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[4]),
        .Q(dsp_phase_E[4]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[5]),
        .Q(dsp_phase_E[5]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[6]),
        .Q(dsp_phase_E[6]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[7]),
        .Q(dsp_phase_E[7]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[8]),
        .Q(dsp_phase_E[8]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_E_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_E[9]),
        .Q(dsp_phase_E[9]),
        .R(env_EW__0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_11 
       (.I0(phase_E[15]),
        .O(\det_signal.dsp_phase_NE[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_12 
       (.I0(phase_E[14]),
        .O(\det_signal.dsp_phase_NE[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_13 
       (.I0(phase_E[13]),
        .O(\det_signal.dsp_phase_NE[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_14 
       (.I0(phase_E[12]),
        .O(\det_signal.dsp_phase_NE[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_15 
       (.I0(phase_E[11]),
        .O(\det_signal.dsp_phase_NE[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_16 
       (.I0(phase_E[10]),
        .O(\det_signal.dsp_phase_NE[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_17 
       (.I0(phase_E[9]),
        .O(\det_signal.dsp_phase_NE[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[15]_i_18 
       (.I0(phase_E[8]),
        .O(\det_signal.dsp_phase_NE[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_2 
       (.I0(phase_N[15]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_8 ),
        .O(\det_signal.dsp_phase_NE[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_3 
       (.I0(phase_N[14]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_9 ),
        .O(\det_signal.dsp_phase_NE[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_4 
       (.I0(phase_N[13]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_10 ),
        .O(\det_signal.dsp_phase_NE[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_5 
       (.I0(phase_N[12]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_11 ),
        .O(\det_signal.dsp_phase_NE[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_6 
       (.I0(phase_N[11]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_12 ),
        .O(\det_signal.dsp_phase_NE[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_7 
       (.I0(phase_N[10]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_13 ),
        .O(\det_signal.dsp_phase_NE[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_8 
       (.I0(phase_N[9]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_14 ),
        .O(\det_signal.dsp_phase_NE[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[15]_i_9 
       (.I0(phase_N[8]),
        .I1(\det_signal.dsp_phase_NE_reg[15]_i_10_n_15 ),
        .O(\det_signal.dsp_phase_NE[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[19]_i_1 
       (.I0(has_signal),
        .O(env_EW__0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[19]_i_10 
       (.I0(phase_E[17]),
        .O(\det_signal.dsp_phase_NE[19]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[19]_i_11 
       (.I0(phase_E[16]),
        .O(\det_signal.dsp_phase_NE[19]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[19]_i_3 
       (.I0(phase_N[19]),
        .I1(\det_signal.dsp_phase_NE_reg[19]_i_7_n_12 ),
        .O(\det_signal.dsp_phase_NE[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[19]_i_4 
       (.I0(phase_N[18]),
        .I1(\det_signal.dsp_phase_NE_reg[19]_i_7_n_13 ),
        .O(\det_signal.dsp_phase_NE[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[19]_i_5 
       (.I0(phase_N[17]),
        .I1(\det_signal.dsp_phase_NE_reg[19]_i_7_n_14 ),
        .O(\det_signal.dsp_phase_NE[19]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[19]_i_6 
       (.I0(phase_N[16]),
        .I1(\det_signal.dsp_phase_NE_reg[19]_i_7_n_15 ),
        .O(\det_signal.dsp_phase_NE[19]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[19]_i_8 
       (.I0(phase_E[19]),
        .O(\det_signal.dsp_phase_NE[19]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[19]_i_9 
       (.I0(phase_E[18]),
        .O(\det_signal.dsp_phase_NE[19]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[7]_i_11 
       (.I0(phase_E[7]),
        .O(\det_signal.dsp_phase_NE[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[7]_i_12 
       (.I0(phase_E[6]),
        .O(\det_signal.dsp_phase_NE[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[7]_i_13 
       (.I0(phase_E[5]),
        .O(\det_signal.dsp_phase_NE[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[7]_i_14 
       (.I0(phase_E[4]),
        .O(\det_signal.dsp_phase_NE[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[7]_i_15 
       (.I0(phase_E[3]),
        .O(\det_signal.dsp_phase_NE[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[7]_i_16 
       (.I0(phase_E[2]),
        .O(\det_signal.dsp_phase_NE[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NE[7]_i_17 
       (.I0(phase_E[1]),
        .O(\det_signal.dsp_phase_NE[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_2 
       (.I0(phase_N[7]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_8 ),
        .O(\det_signal.dsp_phase_NE[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_3 
       (.I0(phase_N[6]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_9 ),
        .O(\det_signal.dsp_phase_NE[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_4 
       (.I0(phase_N[5]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_10 ),
        .O(\det_signal.dsp_phase_NE[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_5 
       (.I0(phase_N[4]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_11 ),
        .O(\det_signal.dsp_phase_NE[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_6 
       (.I0(phase_N[3]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_12 ),
        .O(\det_signal.dsp_phase_NE[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_7 
       (.I0(phase_N[2]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_13 ),
        .O(\det_signal.dsp_phase_NE[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_8 
       (.I0(phase_N[1]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_14 ),
        .O(\det_signal.dsp_phase_NE[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NE[7]_i_9 
       (.I0(phase_N[0]),
        .I1(\det_signal.dsp_phase_NE_reg[7]_i_10_n_15 ),
        .O(\det_signal.dsp_phase_NE[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [0]),
        .Q(dsp_phase_NE[0]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [10]),
        .Q(dsp_phase_NE[10]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [11]),
        .Q(dsp_phase_NE[11]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [12]),
        .Q(dsp_phase_NE[12]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [13]),
        .Q(dsp_phase_NE[13]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [14]),
        .Q(dsp_phase_NE[14]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [15]),
        .Q(dsp_phase_NE[15]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[15]_i_1 
       (.CI(\det_signal.dsp_phase_NE_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NE_reg[15]_i_1_n_0 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_1 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_2 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_3 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_4 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_5 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_6 ,\det_signal.dsp_phase_NE_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(\det_signal.dsp_phase_NE_reg01_out [15:8]),
        .S({\det_signal.dsp_phase_NE[15]_i_2_n_0 ,\det_signal.dsp_phase_NE[15]_i_3_n_0 ,\det_signal.dsp_phase_NE[15]_i_4_n_0 ,\det_signal.dsp_phase_NE[15]_i_5_n_0 ,\det_signal.dsp_phase_NE[15]_i_6_n_0 ,\det_signal.dsp_phase_NE[15]_i_7_n_0 ,\det_signal.dsp_phase_NE[15]_i_8_n_0 ,\det_signal.dsp_phase_NE[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[15]_i_10 
       (.CI(\det_signal.dsp_phase_NE_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NE_reg[15]_i_10_n_0 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_1 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_2 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_3 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_4 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_5 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_6 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.dsp_phase_NE_reg[15]_i_10_n_8 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_9 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_10 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_11 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_12 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_13 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_14 ,\det_signal.dsp_phase_NE_reg[15]_i_10_n_15 }),
        .S({\det_signal.dsp_phase_NE[15]_i_11_n_0 ,\det_signal.dsp_phase_NE[15]_i_12_n_0 ,\det_signal.dsp_phase_NE[15]_i_13_n_0 ,\det_signal.dsp_phase_NE[15]_i_14_n_0 ,\det_signal.dsp_phase_NE[15]_i_15_n_0 ,\det_signal.dsp_phase_NE[15]_i_16_n_0 ,\det_signal.dsp_phase_NE[15]_i_17_n_0 ,\det_signal.dsp_phase_NE[15]_i_18_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [16]),
        .Q(dsp_phase_NE[16]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [17]),
        .Q(dsp_phase_NE[17]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [18]),
        .Q(dsp_phase_NE[18]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [19]),
        .Q(dsp_phase_NE[19]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[19]_i_2 
       (.CI(\det_signal.dsp_phase_NE_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_NE_reg[19]_i_2_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_NE_reg[19]_i_2_n_5 ,\det_signal.dsp_phase_NE_reg[19]_i_2_n_6 ,\det_signal.dsp_phase_NE_reg[19]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_det_signal.dsp_phase_NE_reg[19]_i_2_O_UNCONNECTED [7:4],\det_signal.dsp_phase_NE_reg01_out [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_NE[19]_i_3_n_0 ,\det_signal.dsp_phase_NE[19]_i_4_n_0 ,\det_signal.dsp_phase_NE[19]_i_5_n_0 ,\det_signal.dsp_phase_NE[19]_i_6_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[19]_i_7 
       (.CI(\det_signal.dsp_phase_NE_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_NE_reg[19]_i_7_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_NE_reg[19]_i_7_n_5 ,\det_signal.dsp_phase_NE_reg[19]_i_7_n_6 ,\det_signal.dsp_phase_NE_reg[19]_i_7_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.dsp_phase_NE_reg[19]_i_7_O_UNCONNECTED [7:4],\det_signal.dsp_phase_NE_reg[19]_i_7_n_12 ,\det_signal.dsp_phase_NE_reg[19]_i_7_n_13 ,\det_signal.dsp_phase_NE_reg[19]_i_7_n_14 ,\det_signal.dsp_phase_NE_reg[19]_i_7_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_NE[19]_i_8_n_0 ,\det_signal.dsp_phase_NE[19]_i_9_n_0 ,\det_signal.dsp_phase_NE[19]_i_10_n_0 ,\det_signal.dsp_phase_NE[19]_i_11_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [1]),
        .Q(dsp_phase_NE[1]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [2]),
        .Q(dsp_phase_NE[2]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [3]),
        .Q(dsp_phase_NE[3]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [4]),
        .Q(dsp_phase_NE[4]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [5]),
        .Q(dsp_phase_NE[5]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [6]),
        .Q(dsp_phase_NE[6]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [7]),
        .Q(dsp_phase_NE[7]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NE_reg[7]_i_1_n_0 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_1 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_2 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_3 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_4 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_5 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_6 ,\det_signal.dsp_phase_NE_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(\det_signal.dsp_phase_NE_reg01_out [7:0]),
        .S({\det_signal.dsp_phase_NE[7]_i_2_n_0 ,\det_signal.dsp_phase_NE[7]_i_3_n_0 ,\det_signal.dsp_phase_NE[7]_i_4_n_0 ,\det_signal.dsp_phase_NE[7]_i_5_n_0 ,\det_signal.dsp_phase_NE[7]_i_6_n_0 ,\det_signal.dsp_phase_NE[7]_i_7_n_0 ,\det_signal.dsp_phase_NE[7]_i_8_n_0 ,\det_signal.dsp_phase_NE[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NE_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NE_reg[7]_i_10_n_0 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_1 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_2 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_3 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_4 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_5 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_6 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.dsp_phase_NE_reg[7]_i_10_n_8 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_9 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_10 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_11 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_12 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_13 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_14 ,\det_signal.dsp_phase_NE_reg[7]_i_10_n_15 }),
        .S({\det_signal.dsp_phase_NE[7]_i_11_n_0 ,\det_signal.dsp_phase_NE[7]_i_12_n_0 ,\det_signal.dsp_phase_NE[7]_i_13_n_0 ,\det_signal.dsp_phase_NE[7]_i_14_n_0 ,\det_signal.dsp_phase_NE[7]_i_15_n_0 ,\det_signal.dsp_phase_NE[7]_i_16_n_0 ,\det_signal.dsp_phase_NE[7]_i_17_n_0 ,phase_E[0]}));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [8]),
        .Q(dsp_phase_NE[8]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NE_reg01_out [9]),
        .Q(dsp_phase_NE[9]),
        .R(env_EW__0));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_11 
       (.I0(phase_W[15]),
        .O(\det_signal.dsp_phase_NW[15]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_12 
       (.I0(phase_W[14]),
        .O(\det_signal.dsp_phase_NW[15]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_13 
       (.I0(phase_W[13]),
        .O(\det_signal.dsp_phase_NW[15]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_14 
       (.I0(phase_W[12]),
        .O(\det_signal.dsp_phase_NW[15]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_15 
       (.I0(phase_W[11]),
        .O(\det_signal.dsp_phase_NW[15]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_16 
       (.I0(phase_W[10]),
        .O(\det_signal.dsp_phase_NW[15]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_17 
       (.I0(phase_W[9]),
        .O(\det_signal.dsp_phase_NW[15]_i_17_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[15]_i_18 
       (.I0(phase_W[8]),
        .O(\det_signal.dsp_phase_NW[15]_i_18_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_2 
       (.I0(phase_N[15]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_8 ),
        .O(\det_signal.dsp_phase_NW[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_3 
       (.I0(phase_N[14]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_9 ),
        .O(\det_signal.dsp_phase_NW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_4 
       (.I0(phase_N[13]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_10 ),
        .O(\det_signal.dsp_phase_NW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_5 
       (.I0(phase_N[12]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_11 ),
        .O(\det_signal.dsp_phase_NW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_6 
       (.I0(phase_N[11]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_12 ),
        .O(\det_signal.dsp_phase_NW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_7 
       (.I0(phase_N[10]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_13 ),
        .O(\det_signal.dsp_phase_NW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_8 
       (.I0(phase_N[9]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_14 ),
        .O(\det_signal.dsp_phase_NW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[15]_i_9 
       (.I0(phase_N[8]),
        .I1(\det_signal.dsp_phase_NW_reg[15]_i_10_n_15 ),
        .O(\det_signal.dsp_phase_NW[15]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[19]_i_10 
       (.I0(phase_W[16]),
        .O(\det_signal.dsp_phase_NW[19]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[19]_i_2 
       (.I0(phase_N[19]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_12 ),
        .O(\det_signal.dsp_phase_NW[19]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[19]_i_3 
       (.I0(phase_N[18]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_13 ),
        .O(\det_signal.dsp_phase_NW[19]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[19]_i_4 
       (.I0(phase_N[17]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_14 ),
        .O(\det_signal.dsp_phase_NW[19]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[19]_i_5 
       (.I0(phase_N[16]),
        .I1(\det_signal.dsp_phase_NW_reg[19]_i_6_n_15 ),
        .O(\det_signal.dsp_phase_NW[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[19]_i_7 
       (.I0(phase_W[19]),
        .O(\det_signal.dsp_phase_NW[19]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[19]_i_8 
       (.I0(phase_W[18]),
        .O(\det_signal.dsp_phase_NW[19]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[19]_i_9 
       (.I0(phase_W[17]),
        .O(\det_signal.dsp_phase_NW[19]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[7]_i_11 
       (.I0(phase_W[7]),
        .O(\det_signal.dsp_phase_NW[7]_i_11_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[7]_i_12 
       (.I0(phase_W[6]),
        .O(\det_signal.dsp_phase_NW[7]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[7]_i_13 
       (.I0(phase_W[5]),
        .O(\det_signal.dsp_phase_NW[7]_i_13_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[7]_i_14 
       (.I0(phase_W[4]),
        .O(\det_signal.dsp_phase_NW[7]_i_14_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[7]_i_15 
       (.I0(phase_W[3]),
        .O(\det_signal.dsp_phase_NW[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[7]_i_16 
       (.I0(phase_W[2]),
        .O(\det_signal.dsp_phase_NW[7]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \det_signal.dsp_phase_NW[7]_i_17 
       (.I0(phase_W[1]),
        .O(\det_signal.dsp_phase_NW[7]_i_17_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_2 
       (.I0(phase_N[7]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_8 ),
        .O(\det_signal.dsp_phase_NW[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_3 
       (.I0(phase_N[6]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_9 ),
        .O(\det_signal.dsp_phase_NW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_4 
       (.I0(phase_N[5]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_10 ),
        .O(\det_signal.dsp_phase_NW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_5 
       (.I0(phase_N[4]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_11 ),
        .O(\det_signal.dsp_phase_NW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_6 
       (.I0(phase_N[3]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_12 ),
        .O(\det_signal.dsp_phase_NW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_7 
       (.I0(phase_N[2]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_13 ),
        .O(\det_signal.dsp_phase_NW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_8 
       (.I0(phase_N[1]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_14 ),
        .O(\det_signal.dsp_phase_NW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.dsp_phase_NW[7]_i_9 
       (.I0(phase_N[0]),
        .I1(\det_signal.dsp_phase_NW_reg[7]_i_10_n_15 ),
        .O(\det_signal.dsp_phase_NW[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [0]),
        .Q(dsp_phase_NW[0]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [10]),
        .Q(dsp_phase_NW[10]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [11]),
        .Q(dsp_phase_NW[11]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [12]),
        .Q(dsp_phase_NW[12]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [13]),
        .Q(dsp_phase_NW[13]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [14]),
        .Q(dsp_phase_NW[14]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [15]),
        .Q(dsp_phase_NW[15]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[15]_i_1 
       (.CI(\det_signal.dsp_phase_NW_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NW_reg[15]_i_1_n_0 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_1 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_2 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_3 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_4 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_5 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_6 ,\det_signal.dsp_phase_NW_reg[15]_i_1_n_7 }),
        .DI(phase_N[15:8]),
        .O(\det_signal.dsp_phase_NW_reg0 [15:8]),
        .S({\det_signal.dsp_phase_NW[15]_i_2_n_0 ,\det_signal.dsp_phase_NW[15]_i_3_n_0 ,\det_signal.dsp_phase_NW[15]_i_4_n_0 ,\det_signal.dsp_phase_NW[15]_i_5_n_0 ,\det_signal.dsp_phase_NW[15]_i_6_n_0 ,\det_signal.dsp_phase_NW[15]_i_7_n_0 ,\det_signal.dsp_phase_NW[15]_i_8_n_0 ,\det_signal.dsp_phase_NW[15]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[15]_i_10 
       (.CI(\det_signal.dsp_phase_NW_reg[7]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NW_reg[15]_i_10_n_0 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_1 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_2 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_3 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_4 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_5 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_6 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.dsp_phase_NW_reg[15]_i_10_n_8 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_9 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_10 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_11 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_12 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_13 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_14 ,\det_signal.dsp_phase_NW_reg[15]_i_10_n_15 }),
        .S({\det_signal.dsp_phase_NW[15]_i_11_n_0 ,\det_signal.dsp_phase_NW[15]_i_12_n_0 ,\det_signal.dsp_phase_NW[15]_i_13_n_0 ,\det_signal.dsp_phase_NW[15]_i_14_n_0 ,\det_signal.dsp_phase_NW[15]_i_15_n_0 ,\det_signal.dsp_phase_NW[15]_i_16_n_0 ,\det_signal.dsp_phase_NW[15]_i_17_n_0 ,\det_signal.dsp_phase_NW[15]_i_18_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [16]),
        .Q(dsp_phase_NW[16]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [17]),
        .Q(dsp_phase_NW[17]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [18]),
        .Q(dsp_phase_NW[18]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [19]),
        .Q(dsp_phase_NW[19]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[19]_i_1 
       (.CI(\det_signal.dsp_phase_NW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_NW_reg[19]_i_1_n_5 ,\det_signal.dsp_phase_NW_reg[19]_i_1_n_6 ,\det_signal.dsp_phase_NW_reg[19]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,phase_N[18:16]}),
        .O({\NLW_det_signal.dsp_phase_NW_reg[19]_i_1_O_UNCONNECTED [7:4],\det_signal.dsp_phase_NW_reg0 [19:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_NW[19]_i_2_n_0 ,\det_signal.dsp_phase_NW[19]_i_3_n_0 ,\det_signal.dsp_phase_NW[19]_i_4_n_0 ,\det_signal.dsp_phase_NW[19]_i_5_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[19]_i_6 
       (.CI(\det_signal.dsp_phase_NW_reg[15]_i_10_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.dsp_phase_NW_reg[19]_i_6_CO_UNCONNECTED [7:3],\det_signal.dsp_phase_NW_reg[19]_i_6_n_5 ,\det_signal.dsp_phase_NW_reg[19]_i_6_n_6 ,\det_signal.dsp_phase_NW_reg[19]_i_6_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.dsp_phase_NW_reg[19]_i_6_O_UNCONNECTED [7:4],\det_signal.dsp_phase_NW_reg[19]_i_6_n_12 ,\det_signal.dsp_phase_NW_reg[19]_i_6_n_13 ,\det_signal.dsp_phase_NW_reg[19]_i_6_n_14 ,\det_signal.dsp_phase_NW_reg[19]_i_6_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,\det_signal.dsp_phase_NW[19]_i_7_n_0 ,\det_signal.dsp_phase_NW[19]_i_8_n_0 ,\det_signal.dsp_phase_NW[19]_i_9_n_0 ,\det_signal.dsp_phase_NW[19]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [1]),
        .Q(dsp_phase_NW[1]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [2]),
        .Q(dsp_phase_NW[2]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [3]),
        .Q(dsp_phase_NW[3]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [4]),
        .Q(dsp_phase_NW[4]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [5]),
        .Q(dsp_phase_NW[5]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [6]),
        .Q(dsp_phase_NW[6]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [7]),
        .Q(dsp_phase_NW[7]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NW_reg[7]_i_1_n_0 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_1 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_2 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_3 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_4 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_5 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_6 ,\det_signal.dsp_phase_NW_reg[7]_i_1_n_7 }),
        .DI(phase_N[7:0]),
        .O(\det_signal.dsp_phase_NW_reg0 [7:0]),
        .S({\det_signal.dsp_phase_NW[7]_i_2_n_0 ,\det_signal.dsp_phase_NW[7]_i_3_n_0 ,\det_signal.dsp_phase_NW[7]_i_4_n_0 ,\det_signal.dsp_phase_NW[7]_i_5_n_0 ,\det_signal.dsp_phase_NW[7]_i_6_n_0 ,\det_signal.dsp_phase_NW[7]_i_7_n_0 ,\det_signal.dsp_phase_NW[7]_i_8_n_0 ,\det_signal.dsp_phase_NW[7]_i_9_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.dsp_phase_NW_reg[7]_i_10 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.dsp_phase_NW_reg[7]_i_10_n_0 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_1 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_2 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_3 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_4 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_5 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_6 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\det_signal.dsp_phase_NW_reg[7]_i_10_n_8 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_9 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_10 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_11 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_12 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_13 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_14 ,\det_signal.dsp_phase_NW_reg[7]_i_10_n_15 }),
        .S({\det_signal.dsp_phase_NW[7]_i_11_n_0 ,\det_signal.dsp_phase_NW[7]_i_12_n_0 ,\det_signal.dsp_phase_NW[7]_i_13_n_0 ,\det_signal.dsp_phase_NW[7]_i_14_n_0 ,\det_signal.dsp_phase_NW[7]_i_15_n_0 ,\det_signal.dsp_phase_NW[7]_i_16_n_0 ,\det_signal.dsp_phase_NW[7]_i_17_n_0 ,phase_W[0]}));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [8]),
        .Q(dsp_phase_NW[8]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.dsp_phase_NW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.dsp_phase_NW_reg0 [9]),
        .Q(dsp_phase_NW[9]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[0]),
        .Q(dsp_phase_N[0]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[10]),
        .Q(dsp_phase_N[10]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[11]),
        .Q(dsp_phase_N[11]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[12]),
        .Q(dsp_phase_N[12]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[13]),
        .Q(dsp_phase_N[13]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[14]),
        .Q(dsp_phase_N[14]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[15]),
        .Q(dsp_phase_N[15]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[16]),
        .Q(dsp_phase_N[16]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[17]),
        .Q(dsp_phase_N[17]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[18]),
        .Q(dsp_phase_N[18]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[19]),
        .Q(dsp_phase_N[19]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[1]),
        .Q(dsp_phase_N[1]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[2]),
        .Q(dsp_phase_N[2]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[3]),
        .Q(dsp_phase_N[3]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[4]),
        .Q(dsp_phase_N[4]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[5]),
        .Q(dsp_phase_N[5]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[6]),
        .Q(dsp_phase_N[6]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[7]),
        .Q(dsp_phase_N[7]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[8]),
        .Q(dsp_phase_N[8]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_N_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_N[9]),
        .Q(dsp_phase_N[9]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[0]),
        .Q(dsp_phase_W[0]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[10]),
        .Q(dsp_phase_W[10]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[11]),
        .Q(dsp_phase_W[11]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[12]),
        .Q(dsp_phase_W[12]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[13]),
        .Q(dsp_phase_W[13]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[14]),
        .Q(dsp_phase_W[14]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[15]),
        .Q(dsp_phase_W[15]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[16]),
        .Q(dsp_phase_W[16]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[17]),
        .Q(dsp_phase_W[17]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[18]),
        .Q(dsp_phase_W[18]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[19]),
        .Q(dsp_phase_W[19]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[1]),
        .Q(dsp_phase_W[1]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[2]),
        .Q(dsp_phase_W[2]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[3]),
        .Q(dsp_phase_W[3]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[4]),
        .Q(dsp_phase_W[4]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[5]),
        .Q(dsp_phase_W[5]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[6]),
        .Q(dsp_phase_W[6]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[7]),
        .Q(dsp_phase_W[7]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[8]),
        .Q(dsp_phase_W[8]),
        .R(env_EW__0));
  FDRE \det_signal.dsp_phase_W_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(diff_phase_W[9]),
        .Q(dsp_phase_W[9]),
        .R(env_EW__0));
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
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[10]),
        .Q(env_EW[10]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[11]),
        .Q(env_EW[11]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[12]),
        .Q(env_EW[12]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[13]),
        .Q(env_EW[13]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[14]),
        .Q(env_EW[14]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[15]),
        .Q(env_EW[15]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
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
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[17]),
        .Q(env_EW[17]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_EW_reg[17]_i_1 
       (.CI(\det_signal.env_EW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_EW_reg[17]_i_1_CO_UNCONNECTED [7:1],\det_signal.env_EW_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_EW_reg[17]_i_1_O_UNCONNECTED [7:2],env_EW0[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.env_EW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[1]),
        .Q(env_EW[1]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[2]),
        .Q(env_EW[2]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[3]),
        .Q(env_EW[3]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[4]),
        .Q(env_EW[4]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[5]),
        .Q(env_EW[5]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[6]),
        .Q(env_EW[6]),
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[7]),
        .Q(env_EW[7]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
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
        .R(env_EW__0));
  FDRE \det_signal.env_EW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(env_EW0[9]),
        .Q(env_EW[9]),
        .R(env_EW__0));
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
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [0]),
        .Q(env_NE[0]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [10]),
        .Q(env_NE[10]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [11]),
        .Q(env_NE[11]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [12]),
        .Q(env_NE[12]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [13]),
        .Q(env_NE[13]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [14]),
        .Q(env_NE[14]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [15]),
        .Q(env_NE[15]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_NE_reg[15]_i_1 
       (.CI(\det_signal.env_NE_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_NE_reg[15]_i_1_n_0 ,\det_signal.env_NE_reg[15]_i_1_n_1 ,\det_signal.env_NE_reg[15]_i_1_n_2 ,\det_signal.env_NE_reg[15]_i_1_n_3 ,\det_signal.env_NE_reg[15]_i_1_n_4 ,\det_signal.env_NE_reg[15]_i_1_n_5 ,\det_signal.env_NE_reg[15]_i_1_n_6 ,\det_signal.env_NE_reg[15]_i_1_n_7 }),
        .DI(env_N[15:8]),
        .O(\det_signal.env_NE_reg0 [15:8]),
        .S({\det_signal.env_NE[15]_i_2_n_0 ,\det_signal.env_NE[15]_i_3_n_0 ,\det_signal.env_NE[15]_i_4_n_0 ,\det_signal.env_NE[15]_i_5_n_0 ,\det_signal.env_NE[15]_i_6_n_0 ,\det_signal.env_NE[15]_i_7_n_0 ,\det_signal.env_NE[15]_i_8_n_0 ,\det_signal.env_NE[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [16]),
        .Q(env_NE[16]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [17]),
        .Q(env_NE[17]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_NE_reg[17]_i_1 
       (.CI(\det_signal.env_NE_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_NE_reg[17]_i_1_CO_UNCONNECTED [7:1],\det_signal.env_NE_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_NE_reg[17]_i_1_O_UNCONNECTED [7:2],\det_signal.env_NE_reg0 [17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [1]),
        .Q(env_NE[1]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [2]),
        .Q(env_NE[2]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [3]),
        .Q(env_NE[3]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [4]),
        .Q(env_NE[4]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [5]),
        .Q(env_NE[5]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [6]),
        .Q(env_NE[6]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [7]),
        .Q(env_NE[7]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_NE_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_NE_reg[7]_i_1_n_0 ,\det_signal.env_NE_reg[7]_i_1_n_1 ,\det_signal.env_NE_reg[7]_i_1_n_2 ,\det_signal.env_NE_reg[7]_i_1_n_3 ,\det_signal.env_NE_reg[7]_i_1_n_4 ,\det_signal.env_NE_reg[7]_i_1_n_5 ,\det_signal.env_NE_reg[7]_i_1_n_6 ,\det_signal.env_NE_reg[7]_i_1_n_7 }),
        .DI(env_N[7:0]),
        .O(\det_signal.env_NE_reg0 [7:0]),
        .S({\det_signal.env_NE[7]_i_2_n_0 ,\det_signal.env_NE[7]_i_3_n_0 ,\det_signal.env_NE[7]_i_4_n_0 ,\det_signal.env_NE[7]_i_5_n_0 ,\det_signal.env_NE[7]_i_6_n_0 ,\det_signal.env_NE[7]_i_7_n_0 ,\det_signal.env_NE[7]_i_8_n_0 ,\det_signal.env_NE[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [8]),
        .Q(env_NE[8]),
        .R(env_EW__0));
  (* KEEP = "yes" *) 
  FDRE \det_signal.env_NE_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.env_NE_reg0 [9]),
        .Q(env_NE[9]),
        .R(env_EW__0));
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
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[10]),
        .Q(env_NW[10]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[11]),
        .Q(env_NW[11]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[12]),
        .Q(env_NW[12]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[13]),
        .Q(env_NW[13]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[14]),
        .Q(env_NW[14]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[15]),
        .Q(env_NW[15]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
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
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[17]),
        .Q(env_NW[17]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_NW_reg[17]_i_1 
       (.CI(\det_signal.env_NW_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_NW_reg[17]_i_1_CO_UNCONNECTED [7:1],\det_signal.env_NW_reg[17]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_NW_reg[17]_i_1_O_UNCONNECTED [7:2],env_NW0[17:16]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  FDRE \det_signal.env_NW_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[1]),
        .Q(env_NW[1]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[2]),
        .Q(env_NW[2]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[3]),
        .Q(env_NW[3]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[4]),
        .Q(env_NW[4]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[5]),
        .Q(env_NW[5]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[6]),
        .Q(env_NW[6]),
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[7]),
        .Q(env_NW[7]),
        .R(env_EW__0));
  (* ADDER_THRESHOLD = "35" *) 
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
        .R(env_EW__0));
  FDRE \det_signal.env_NW_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(env_NW0[9]),
        .Q(env_NW[9]),
        .R(env_EW__0));
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
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[0]_i_1 
       (.I0(env_sum_EW[0]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[0]),
        .O(\det_signal.env_sum_EW[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[10]_i_1 
       (.I0(env_sum_EW[10]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[10]),
        .O(\det_signal.env_sum_EW[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[11]_i_1 
       (.I0(env_sum_EW[11]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[11]),
        .O(\det_signal.env_sum_EW[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[12]_i_1 
       (.I0(env_sum_EW[12]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[12]),
        .O(\det_signal.env_sum_EW[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[13]_i_1 
       (.I0(env_sum_EW[13]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[13]),
        .O(\det_signal.env_sum_EW[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[14]_i_1 
       (.I0(env_sum_EW[14]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[14]),
        .O(\det_signal.env_sum_EW[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[15]_i_1 
       (.I0(env_sum_EW[15]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[15]),
        .O(\det_signal.env_sum_EW[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_10 
       (.I0(env_sum_E[8]),
        .I1(env_sum_W[8]),
        .O(\det_signal.env_sum_EW[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_3 
       (.I0(env_sum_E[15]),
        .I1(env_sum_W[15]),
        .O(\det_signal.env_sum_EW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_4 
       (.I0(env_sum_E[14]),
        .I1(env_sum_W[14]),
        .O(\det_signal.env_sum_EW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_5 
       (.I0(env_sum_E[13]),
        .I1(env_sum_W[13]),
        .O(\det_signal.env_sum_EW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_6 
       (.I0(env_sum_E[12]),
        .I1(env_sum_W[12]),
        .O(\det_signal.env_sum_EW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_7 
       (.I0(env_sum_E[11]),
        .I1(env_sum_W[11]),
        .O(\det_signal.env_sum_EW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_8 
       (.I0(env_sum_E[10]),
        .I1(env_sum_W[10]),
        .O(\det_signal.env_sum_EW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[15]_i_9 
       (.I0(env_sum_E[9]),
        .I1(env_sum_W[9]),
        .O(\det_signal.env_sum_EW[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[16]_i_1 
       (.I0(env_sum_EW[16]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[16]),
        .O(\det_signal.env_sum_EW[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[17]_i_1 
       (.I0(env_sum_EW[17]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[17]),
        .O(\det_signal.env_sum_EW[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[18]_i_1 
       (.I0(env_sum_EW[18]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[18]),
        .O(\det_signal.env_sum_EW[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[19]_i_1 
       (.I0(env_sum_EW[19]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[19]),
        .O(\det_signal.env_sum_EW[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[1]_i_1 
       (.I0(env_sum_EW[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[1]),
        .O(\det_signal.env_sum_EW[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[20]_i_1 
       (.I0(env_sum_EW[20]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[20]),
        .O(\det_signal.env_sum_EW[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[21]_i_1 
       (.I0(env_sum_EW[21]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[21]),
        .O(\det_signal.env_sum_EW[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[22]_i_1 
       (.I0(env_sum_EW[22]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[22]),
        .O(\det_signal.env_sum_EW[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[23]_i_1 
       (.I0(env_sum_EW[23]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[23]),
        .O(\det_signal.env_sum_EW[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_10 
       (.I0(env_sum_E[16]),
        .I1(env_sum_W[16]),
        .O(\det_signal.env_sum_EW[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_3 
       (.I0(env_sum_E[23]),
        .I1(env_sum_W[23]),
        .O(\det_signal.env_sum_EW[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_4 
       (.I0(env_sum_E[22]),
        .I1(env_sum_W[22]),
        .O(\det_signal.env_sum_EW[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_5 
       (.I0(env_sum_E[21]),
        .I1(env_sum_W[21]),
        .O(\det_signal.env_sum_EW[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_6 
       (.I0(env_sum_E[20]),
        .I1(env_sum_W[20]),
        .O(\det_signal.env_sum_EW[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_7 
       (.I0(env_sum_E[19]),
        .I1(env_sum_W[19]),
        .O(\det_signal.env_sum_EW[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_8 
       (.I0(env_sum_E[18]),
        .I1(env_sum_W[18]),
        .O(\det_signal.env_sum_EW[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[23]_i_9 
       (.I0(env_sum_E[17]),
        .I1(env_sum_W[17]),
        .O(\det_signal.env_sum_EW[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[24]_i_1 
       (.I0(env_sum_EW[24]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[24]),
        .O(\det_signal.env_sum_EW[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[2]_i_1 
       (.I0(env_sum_EW[2]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[2]),
        .O(\det_signal.env_sum_EW[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[3]_i_1 
       (.I0(env_sum_EW[3]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[3]),
        .O(\det_signal.env_sum_EW[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[4]_i_1 
       (.I0(env_sum_EW[4]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[4]),
        .O(\det_signal.env_sum_EW[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[5]_i_1 
       (.I0(env_sum_EW[5]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[5]),
        .O(\det_signal.env_sum_EW[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[6]_i_1 
       (.I0(env_sum_EW[6]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[6]),
        .O(\det_signal.env_sum_EW[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[7]_i_1 
       (.I0(env_sum_EW[7]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[7]),
        .O(\det_signal.env_sum_EW[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_10 
       (.I0(env_sum_E[0]),
        .I1(env_sum_W[0]),
        .O(\det_signal.env_sum_EW[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_3 
       (.I0(env_sum_E[7]),
        .I1(env_sum_W[7]),
        .O(\det_signal.env_sum_EW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_4 
       (.I0(env_sum_E[6]),
        .I1(env_sum_W[6]),
        .O(\det_signal.env_sum_EW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_5 
       (.I0(env_sum_E[5]),
        .I1(env_sum_W[5]),
        .O(\det_signal.env_sum_EW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_6 
       (.I0(env_sum_E[4]),
        .I1(env_sum_W[4]),
        .O(\det_signal.env_sum_EW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_7 
       (.I0(env_sum_E[3]),
        .I1(env_sum_W[3]),
        .O(\det_signal.env_sum_EW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_8 
       (.I0(env_sum_E[2]),
        .I1(env_sum_W[2]),
        .O(\det_signal.env_sum_EW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_EW[7]_i_9 
       (.I0(env_sum_E[1]),
        .I1(env_sum_W[1]),
        .O(\det_signal.env_sum_EW[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[8]_i_1 
       (.I0(env_sum_EW[8]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[8]),
        .O(\det_signal.env_sum_EW[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_EW[9]_i_1 
       (.I0(env_sum_EW[9]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_EW0[9]),
        .O(\det_signal.env_sum_EW[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[0] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[0]_i_1_n_0 ),
        .Q(env_sum_EW[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[10] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[10]_i_1_n_0 ),
        .Q(env_sum_EW[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[11] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[11]_i_1_n_0 ),
        .Q(env_sum_EW[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[12] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[12]_i_1_n_0 ),
        .Q(env_sum_EW[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[13] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[13]_i_1_n_0 ),
        .Q(env_sum_EW[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[14] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[14]_i_1_n_0 ),
        .Q(env_sum_EW[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[15] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[15]_i_1_n_0 ),
        .Q(env_sum_EW[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_EW_reg[15]_i_2 
       (.CI(\det_signal.env_sum_EW_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_EW_reg[15]_i_2_n_0 ,\det_signal.env_sum_EW_reg[15]_i_2_n_1 ,\det_signal.env_sum_EW_reg[15]_i_2_n_2 ,\det_signal.env_sum_EW_reg[15]_i_2_n_3 ,\det_signal.env_sum_EW_reg[15]_i_2_n_4 ,\det_signal.env_sum_EW_reg[15]_i_2_n_5 ,\det_signal.env_sum_EW_reg[15]_i_2_n_6 ,\det_signal.env_sum_EW_reg[15]_i_2_n_7 }),
        .DI(env_sum_E[15:8]),
        .O(env_sum_EW0[15:8]),
        .S({\det_signal.env_sum_EW[15]_i_3_n_0 ,\det_signal.env_sum_EW[15]_i_4_n_0 ,\det_signal.env_sum_EW[15]_i_5_n_0 ,\det_signal.env_sum_EW[15]_i_6_n_0 ,\det_signal.env_sum_EW[15]_i_7_n_0 ,\det_signal.env_sum_EW[15]_i_8_n_0 ,\det_signal.env_sum_EW[15]_i_9_n_0 ,\det_signal.env_sum_EW[15]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[16] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[16]_i_1_n_0 ),
        .Q(env_sum_EW[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[17] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[17]_i_1_n_0 ),
        .Q(env_sum_EW[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[18] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[18]_i_1_n_0 ),
        .Q(env_sum_EW[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[19] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[19]_i_1_n_0 ),
        .Q(env_sum_EW[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[1] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[1]_i_1_n_0 ),
        .Q(env_sum_EW[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[20] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[20]_i_1_n_0 ),
        .Q(env_sum_EW[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[21] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[21]_i_1_n_0 ),
        .Q(env_sum_EW[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[22] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[22]_i_1_n_0 ),
        .Q(env_sum_EW[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[23] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[23]_i_1_n_0 ),
        .Q(env_sum_EW[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_EW_reg[23]_i_2 
       (.CI(\det_signal.env_sum_EW_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_EW_reg[23]_i_2_n_0 ,\det_signal.env_sum_EW_reg[23]_i_2_n_1 ,\det_signal.env_sum_EW_reg[23]_i_2_n_2 ,\det_signal.env_sum_EW_reg[23]_i_2_n_3 ,\det_signal.env_sum_EW_reg[23]_i_2_n_4 ,\det_signal.env_sum_EW_reg[23]_i_2_n_5 ,\det_signal.env_sum_EW_reg[23]_i_2_n_6 ,\det_signal.env_sum_EW_reg[23]_i_2_n_7 }),
        .DI(env_sum_E[23:16]),
        .O(env_sum_EW0[23:16]),
        .S({\det_signal.env_sum_EW[23]_i_3_n_0 ,\det_signal.env_sum_EW[23]_i_4_n_0 ,\det_signal.env_sum_EW[23]_i_5_n_0 ,\det_signal.env_sum_EW[23]_i_6_n_0 ,\det_signal.env_sum_EW[23]_i_7_n_0 ,\det_signal.env_sum_EW[23]_i_8_n_0 ,\det_signal.env_sum_EW[23]_i_9_n_0 ,\det_signal.env_sum_EW[23]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[24] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[24]_i_1_n_0 ),
        .Q(env_sum_EW[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_EW_reg[24]_i_2 
       (.CI(\det_signal.env_sum_EW_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.env_sum_EW_reg[24]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_sum_EW_reg[24]_i_2_O_UNCONNECTED [7:1],env_sum_EW0[24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[25] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_EW[25]),
        .Q(env_sum_EW[25]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[26] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_EW[26]),
        .Q(env_sum_EW[26]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[27] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_EW[27]),
        .Q(env_sum_EW[27]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[28] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_EW[28]),
        .Q(env_sum_EW[28]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[29] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_EW[29]),
        .Q(env_sum_EW[29]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[2] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[2]_i_1_n_0 ),
        .Q(env_sum_EW[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[30] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_EW[30]),
        .Q(env_sum_EW[30]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[31] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_EW[31]),
        .Q(env_sum_EW[31]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[3] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[3]_i_1_n_0 ),
        .Q(env_sum_EW[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[4] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[4]_i_1_n_0 ),
        .Q(env_sum_EW[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[5] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[5]_i_1_n_0 ),
        .Q(env_sum_EW[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[6] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[6]_i_1_n_0 ),
        .Q(env_sum_EW[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[7] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[7]_i_1_n_0 ),
        .Q(env_sum_EW[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_EW_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_EW_reg[7]_i_2_n_0 ,\det_signal.env_sum_EW_reg[7]_i_2_n_1 ,\det_signal.env_sum_EW_reg[7]_i_2_n_2 ,\det_signal.env_sum_EW_reg[7]_i_2_n_3 ,\det_signal.env_sum_EW_reg[7]_i_2_n_4 ,\det_signal.env_sum_EW_reg[7]_i_2_n_5 ,\det_signal.env_sum_EW_reg[7]_i_2_n_6 ,\det_signal.env_sum_EW_reg[7]_i_2_n_7 }),
        .DI(env_sum_E[7:0]),
        .O(env_sum_EW0[7:0]),
        .S({\det_signal.env_sum_EW[7]_i_3_n_0 ,\det_signal.env_sum_EW[7]_i_4_n_0 ,\det_signal.env_sum_EW[7]_i_5_n_0 ,\det_signal.env_sum_EW[7]_i_6_n_0 ,\det_signal.env_sum_EW[7]_i_7_n_0 ,\det_signal.env_sum_EW[7]_i_8_n_0 ,\det_signal.env_sum_EW[7]_i_9_n_0 ,\det_signal.env_sum_EW[7]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[8] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[8]_i_1_n_0 ),
        .Q(env_sum_EW[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_EW_reg[9] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_EW[9]_i_1_n_0 ),
        .Q(env_sum_EW[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_2 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[15]),
        .I2(env_E[15]),
        .O(\det_signal.env_sum_E[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_3 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[14]),
        .I2(env_E[14]),
        .O(\det_signal.env_sum_E[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_4 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[13]),
        .I2(env_E[13]),
        .O(\det_signal.env_sum_E[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_5 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[12]),
        .I2(env_E[12]),
        .O(\det_signal.env_sum_E[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_6 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[11]),
        .I2(env_E[11]),
        .O(\det_signal.env_sum_E[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_7 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[10]),
        .I2(env_E[10]),
        .O(\det_signal.env_sum_E[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_8 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[9]),
        .I2(env_E[9]),
        .O(\det_signal.env_sum_E[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[15]_i_9 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[8]),
        .I2(env_E[8]),
        .O(\det_signal.env_sum_E[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \det_signal.env_sum_E[23]_i_1 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(has_signal),
        .O(env_sum_E__0));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_10 
       (.I0(env_sum_E[16]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_3 
       (.I0(env_sum_E[23]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_4 
       (.I0(env_sum_E[22]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_5 
       (.I0(env_sum_E[21]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_6 
       (.I0(env_sum_E[20]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_7 
       (.I0(env_sum_E[19]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_8 
       (.I0(env_sum_E[18]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_E[23]_i_9 
       (.I0(env_sum_E[17]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_E[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_2 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[7]),
        .I2(env_E[7]),
        .O(\det_signal.env_sum_E[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_3 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[6]),
        .I2(env_E[6]),
        .O(\det_signal.env_sum_E[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_4 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[5]),
        .I2(env_E[5]),
        .O(\det_signal.env_sum_E[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_5 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[4]),
        .I2(env_E[4]),
        .O(\det_signal.env_sum_E[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_6 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[3]),
        .I2(env_E[3]),
        .O(\det_signal.env_sum_E[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_7 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[2]),
        .I2(env_E[2]),
        .O(\det_signal.env_sum_E[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_8 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[1]),
        .I2(env_E[1]),
        .O(\det_signal.env_sum_E[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_E[7]_i_9 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_E[0]),
        .I2(env_E[0]),
        .O(\det_signal.env_sum_E[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_15 ),
        .Q(env_sum_E[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_13 ),
        .Q(env_sum_E[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_12 ),
        .Q(env_sum_E[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_11 ),
        .Q(env_sum_E[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_10 ),
        .Q(env_sum_E[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_9 ),
        .Q(env_sum_E[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_8 ),
        .Q(env_sum_E[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_E_reg[15]_i_1 
       (.CI(\det_signal.env_sum_E_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_E_reg[15]_i_1_n_0 ,\det_signal.env_sum_E_reg[15]_i_1_n_1 ,\det_signal.env_sum_E_reg[15]_i_1_n_2 ,\det_signal.env_sum_E_reg[15]_i_1_n_3 ,\det_signal.env_sum_E_reg[15]_i_1_n_4 ,\det_signal.env_sum_E_reg[15]_i_1_n_5 ,\det_signal.env_sum_E_reg[15]_i_1_n_6 ,\det_signal.env_sum_E_reg[15]_i_1_n_7 }),
        .DI(env_E[15:8]),
        .O({\det_signal.env_sum_E_reg[15]_i_1_n_8 ,\det_signal.env_sum_E_reg[15]_i_1_n_9 ,\det_signal.env_sum_E_reg[15]_i_1_n_10 ,\det_signal.env_sum_E_reg[15]_i_1_n_11 ,\det_signal.env_sum_E_reg[15]_i_1_n_12 ,\det_signal.env_sum_E_reg[15]_i_1_n_13 ,\det_signal.env_sum_E_reg[15]_i_1_n_14 ,\det_signal.env_sum_E_reg[15]_i_1_n_15 }),
        .S({\det_signal.env_sum_E[15]_i_2_n_0 ,\det_signal.env_sum_E[15]_i_3_n_0 ,\det_signal.env_sum_E[15]_i_4_n_0 ,\det_signal.env_sum_E[15]_i_5_n_0 ,\det_signal.env_sum_E[15]_i_6_n_0 ,\det_signal.env_sum_E[15]_i_7_n_0 ,\det_signal.env_sum_E[15]_i_8_n_0 ,\det_signal.env_sum_E[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[16] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_15 ),
        .Q(env_sum_E[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[17] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_14 ),
        .Q(env_sum_E[17]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[18] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_13 ),
        .Q(env_sum_E[18]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[19] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_12 ),
        .Q(env_sum_E[19]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_14 ),
        .Q(env_sum_E[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[20] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_11 ),
        .Q(env_sum_E[20]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[21] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_10 ),
        .Q(env_sum_E[21]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[22] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_9 ),
        .Q(env_sum_E[22]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[23] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[23]_i_2_n_8 ),
        .Q(env_sum_E[23]),
        .R(env_sum_E__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_E_reg[23]_i_2 
       (.CI(\det_signal.env_sum_E_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_sum_E_reg[23]_i_2_CO_UNCONNECTED [7],\det_signal.env_sum_E_reg[23]_i_2_n_1 ,\det_signal.env_sum_E_reg[23]_i_2_n_2 ,\det_signal.env_sum_E_reg[23]_i_2_n_3 ,\det_signal.env_sum_E_reg[23]_i_2_n_4 ,\det_signal.env_sum_E_reg[23]_i_2_n_5 ,\det_signal.env_sum_E_reg[23]_i_2_n_6 ,\det_signal.env_sum_E_reg[23]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.env_sum_E_reg[23]_i_2_n_8 ,\det_signal.env_sum_E_reg[23]_i_2_n_9 ,\det_signal.env_sum_E_reg[23]_i_2_n_10 ,\det_signal.env_sum_E_reg[23]_i_2_n_11 ,\det_signal.env_sum_E_reg[23]_i_2_n_12 ,\det_signal.env_sum_E_reg[23]_i_2_n_13 ,\det_signal.env_sum_E_reg[23]_i_2_n_14 ,\det_signal.env_sum_E_reg[23]_i_2_n_15 }),
        .S({\det_signal.env_sum_E[23]_i_3_n_0 ,\det_signal.env_sum_E[23]_i_4_n_0 ,\det_signal.env_sum_E[23]_i_5_n_0 ,\det_signal.env_sum_E[23]_i_6_n_0 ,\det_signal.env_sum_E[23]_i_7_n_0 ,\det_signal.env_sum_E[23]_i_8_n_0 ,\det_signal.env_sum_E[23]_i_9_n_0 ,\det_signal.env_sum_E[23]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_13 ),
        .Q(env_sum_E[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_12 ),
        .Q(env_sum_E[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_11 ),
        .Q(env_sum_E[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_10 ),
        .Q(env_sum_E[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_9 ),
        .Q(env_sum_E[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[7]_i_1_n_8 ),
        .Q(env_sum_E[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_E_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_E_reg[7]_i_1_n_0 ,\det_signal.env_sum_E_reg[7]_i_1_n_1 ,\det_signal.env_sum_E_reg[7]_i_1_n_2 ,\det_signal.env_sum_E_reg[7]_i_1_n_3 ,\det_signal.env_sum_E_reg[7]_i_1_n_4 ,\det_signal.env_sum_E_reg[7]_i_1_n_5 ,\det_signal.env_sum_E_reg[7]_i_1_n_6 ,\det_signal.env_sum_E_reg[7]_i_1_n_7 }),
        .DI(env_E[7:0]),
        .O({\det_signal.env_sum_E_reg[7]_i_1_n_8 ,\det_signal.env_sum_E_reg[7]_i_1_n_9 ,\det_signal.env_sum_E_reg[7]_i_1_n_10 ,\det_signal.env_sum_E_reg[7]_i_1_n_11 ,\det_signal.env_sum_E_reg[7]_i_1_n_12 ,\det_signal.env_sum_E_reg[7]_i_1_n_13 ,\det_signal.env_sum_E_reg[7]_i_1_n_14 ,\det_signal.env_sum_E_reg[7]_i_1_n_15 }),
        .S({\det_signal.env_sum_E[7]_i_2_n_0 ,\det_signal.env_sum_E[7]_i_3_n_0 ,\det_signal.env_sum_E[7]_i_4_n_0 ,\det_signal.env_sum_E[7]_i_5_n_0 ,\det_signal.env_sum_E[7]_i_6_n_0 ,\det_signal.env_sum_E[7]_i_7_n_0 ,\det_signal.env_sum_E[7]_i_8_n_0 ,\det_signal.env_sum_E[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_15 ),
        .Q(env_sum_E[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_E_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_E_reg[15]_i_1_n_14 ),
        .Q(env_sum_E[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[0]_i_1 
       (.I0(env_sum_NE[0]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[0]),
        .O(p_0_in1_in__0[0]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[10]_i_1 
       (.I0(env_sum_NE[10]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[10]),
        .O(p_0_in1_in__0[10]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[11]_i_1 
       (.I0(env_sum_NE[11]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[11]),
        .O(p_0_in1_in__0[11]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[12]_i_1 
       (.I0(env_sum_NE[12]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[12]),
        .O(p_0_in1_in__0[12]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[13]_i_1 
       (.I0(env_sum_NE[13]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[13]),
        .O(p_0_in1_in__0[13]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[14]_i_1 
       (.I0(env_sum_NE[14]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[14]),
        .O(p_0_in1_in__0[14]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[15]_i_1 
       (.I0(env_sum_NE[15]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[15]),
        .O(p_0_in1_in__0[15]));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_10 
       (.I0(env_sum_N[8]),
        .I1(env_sum_E[8]),
        .O(\det_signal.env_sum_NE[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_3 
       (.I0(env_sum_N[15]),
        .I1(env_sum_E[15]),
        .O(\det_signal.env_sum_NE[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_4 
       (.I0(env_sum_N[14]),
        .I1(env_sum_E[14]),
        .O(\det_signal.env_sum_NE[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_5 
       (.I0(env_sum_N[13]),
        .I1(env_sum_E[13]),
        .O(\det_signal.env_sum_NE[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_6 
       (.I0(env_sum_N[12]),
        .I1(env_sum_E[12]),
        .O(\det_signal.env_sum_NE[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_7 
       (.I0(env_sum_N[11]),
        .I1(env_sum_E[11]),
        .O(\det_signal.env_sum_NE[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_8 
       (.I0(env_sum_N[10]),
        .I1(env_sum_E[10]),
        .O(\det_signal.env_sum_NE[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[15]_i_9 
       (.I0(env_sum_N[9]),
        .I1(env_sum_E[9]),
        .O(\det_signal.env_sum_NE[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[16]_i_1 
       (.I0(env_sum_NE[16]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[16]),
        .O(p_0_in1_in__0[16]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[17]_i_1 
       (.I0(env_sum_NE[17]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[17]),
        .O(p_0_in1_in__0[17]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[18]_i_1 
       (.I0(env_sum_NE[18]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[18]),
        .O(p_0_in1_in__0[18]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[19]_i_1 
       (.I0(env_sum_NE[19]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[19]),
        .O(p_0_in1_in__0[19]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[1]_i_1 
       (.I0(env_sum_NE[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[1]),
        .O(p_0_in1_in__0[1]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[20]_i_1 
       (.I0(env_sum_NE[20]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[20]),
        .O(p_0_in1_in__0[20]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[21]_i_1 
       (.I0(env_sum_NE[21]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[21]),
        .O(p_0_in1_in__0[21]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[22]_i_1 
       (.I0(env_sum_NE[22]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[22]),
        .O(p_0_in1_in__0[22]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[23]_i_1 
       (.I0(env_sum_NE[23]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[23]),
        .O(p_0_in1_in__0[23]));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_10 
       (.I0(env_sum_N[16]),
        .I1(env_sum_E[16]),
        .O(\det_signal.env_sum_NE[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_3 
       (.I0(env_sum_N[23]),
        .I1(env_sum_E[23]),
        .O(\det_signal.env_sum_NE[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_4 
       (.I0(env_sum_N[22]),
        .I1(env_sum_E[22]),
        .O(\det_signal.env_sum_NE[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_5 
       (.I0(env_sum_N[21]),
        .I1(env_sum_E[21]),
        .O(\det_signal.env_sum_NE[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_6 
       (.I0(env_sum_N[20]),
        .I1(env_sum_E[20]),
        .O(\det_signal.env_sum_NE[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_7 
       (.I0(env_sum_N[19]),
        .I1(env_sum_E[19]),
        .O(\det_signal.env_sum_NE[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_8 
       (.I0(env_sum_N[18]),
        .I1(env_sum_E[18]),
        .O(\det_signal.env_sum_NE[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[23]_i_9 
       (.I0(env_sum_N[17]),
        .I1(env_sum_E[17]),
        .O(\det_signal.env_sum_NE[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[24]_i_1 
       (.I0(env_sum_NE[24]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[24]),
        .O(p_0_in1_in__0[24]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[2]_i_1 
       (.I0(env_sum_NE[2]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[2]),
        .O(p_0_in1_in__0[2]));
  LUT4 #(
    .INIT(16'h0002)) 
    \det_signal.env_sum_NE[31]_i_1 
       (.I0(proc_signal),
        .I1(div_delay[1]),
        .I2(div_delay[0]),
        .I3(div_delay[2]),
        .O(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[3]_i_1 
       (.I0(env_sum_NE[3]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[3]),
        .O(p_0_in1_in__0[3]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[4]_i_1 
       (.I0(env_sum_NE[4]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[4]),
        .O(p_0_in1_in__0[4]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[5]_i_1 
       (.I0(env_sum_NE[5]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[5]),
        .O(p_0_in1_in__0[5]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[6]_i_1 
       (.I0(env_sum_NE[6]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[6]),
        .O(p_0_in1_in__0[6]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[7]_i_1 
       (.I0(env_sum_NE[7]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[7]),
        .O(p_0_in1_in__0[7]));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_10 
       (.I0(env_sum_N[0]),
        .I1(env_sum_E[0]),
        .O(\det_signal.env_sum_NE[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_3 
       (.I0(env_sum_N[7]),
        .I1(env_sum_E[7]),
        .O(\det_signal.env_sum_NE[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_4 
       (.I0(env_sum_N[6]),
        .I1(env_sum_E[6]),
        .O(\det_signal.env_sum_NE[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_5 
       (.I0(env_sum_N[5]),
        .I1(env_sum_E[5]),
        .O(\det_signal.env_sum_NE[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_6 
       (.I0(env_sum_N[4]),
        .I1(env_sum_E[4]),
        .O(\det_signal.env_sum_NE[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_7 
       (.I0(env_sum_N[3]),
        .I1(env_sum_E[3]),
        .O(\det_signal.env_sum_NE[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_8 
       (.I0(env_sum_N[2]),
        .I1(env_sum_E[2]),
        .O(\det_signal.env_sum_NE[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NE[7]_i_9 
       (.I0(env_sum_N[1]),
        .I1(env_sum_E[1]),
        .O(\det_signal.env_sum_NE[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[8]_i_1 
       (.I0(env_sum_NE[8]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[8]),
        .O(p_0_in1_in__0[8]));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NE[9]_i_1 
       (.I0(env_sum_NE[9]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NE0[9]),
        .O(p_0_in1_in__0[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[0] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[0]),
        .Q(env_sum_NE[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[10] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[10]),
        .Q(env_sum_NE[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[11] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[11]),
        .Q(env_sum_NE[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[12] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[12]),
        .Q(env_sum_NE[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[13] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[13]),
        .Q(env_sum_NE[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[14] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[14]),
        .Q(env_sum_NE[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[15] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[15]),
        .Q(env_sum_NE[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NE_reg[15]_i_2 
       (.CI(\det_signal.env_sum_NE_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_NE_reg[15]_i_2_n_0 ,\det_signal.env_sum_NE_reg[15]_i_2_n_1 ,\det_signal.env_sum_NE_reg[15]_i_2_n_2 ,\det_signal.env_sum_NE_reg[15]_i_2_n_3 ,\det_signal.env_sum_NE_reg[15]_i_2_n_4 ,\det_signal.env_sum_NE_reg[15]_i_2_n_5 ,\det_signal.env_sum_NE_reg[15]_i_2_n_6 ,\det_signal.env_sum_NE_reg[15]_i_2_n_7 }),
        .DI(env_sum_N[15:8]),
        .O(env_sum_NE0[15:8]),
        .S({\det_signal.env_sum_NE[15]_i_3_n_0 ,\det_signal.env_sum_NE[15]_i_4_n_0 ,\det_signal.env_sum_NE[15]_i_5_n_0 ,\det_signal.env_sum_NE[15]_i_6_n_0 ,\det_signal.env_sum_NE[15]_i_7_n_0 ,\det_signal.env_sum_NE[15]_i_8_n_0 ,\det_signal.env_sum_NE[15]_i_9_n_0 ,\det_signal.env_sum_NE[15]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[16] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[16]),
        .Q(env_sum_NE[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[17] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[17]),
        .Q(env_sum_NE[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[18] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[18]),
        .Q(env_sum_NE[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[19] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[19]),
        .Q(env_sum_NE[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[1] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[1]),
        .Q(env_sum_NE[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[20] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[20]),
        .Q(env_sum_NE[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[21] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[21]),
        .Q(env_sum_NE[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[22] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[22]),
        .Q(env_sum_NE[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[23] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[23]),
        .Q(env_sum_NE[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NE_reg[23]_i_2 
       (.CI(\det_signal.env_sum_NE_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_NE_reg[23]_i_2_n_0 ,\det_signal.env_sum_NE_reg[23]_i_2_n_1 ,\det_signal.env_sum_NE_reg[23]_i_2_n_2 ,\det_signal.env_sum_NE_reg[23]_i_2_n_3 ,\det_signal.env_sum_NE_reg[23]_i_2_n_4 ,\det_signal.env_sum_NE_reg[23]_i_2_n_5 ,\det_signal.env_sum_NE_reg[23]_i_2_n_6 ,\det_signal.env_sum_NE_reg[23]_i_2_n_7 }),
        .DI(env_sum_N[23:16]),
        .O(env_sum_NE0[23:16]),
        .S({\det_signal.env_sum_NE[23]_i_3_n_0 ,\det_signal.env_sum_NE[23]_i_4_n_0 ,\det_signal.env_sum_NE[23]_i_5_n_0 ,\det_signal.env_sum_NE[23]_i_6_n_0 ,\det_signal.env_sum_NE[23]_i_7_n_0 ,\det_signal.env_sum_NE[23]_i_8_n_0 ,\det_signal.env_sum_NE[23]_i_9_n_0 ,\det_signal.env_sum_NE[23]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[24] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[24]),
        .Q(env_sum_NE[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NE_reg[24]_i_2 
       (.CI(\det_signal.env_sum_NE_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.env_sum_NE_reg[24]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_sum_NE_reg[24]_i_2_O_UNCONNECTED [7:1],env_sum_NE0[24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[25] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NE[25]),
        .Q(env_sum_NE[25]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[26] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NE[26]),
        .Q(env_sum_NE[26]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[27] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NE[27]),
        .Q(env_sum_NE[27]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[28] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NE[28]),
        .Q(env_sum_NE[28]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[29] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NE[29]),
        .Q(env_sum_NE[29]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[2] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[2]),
        .Q(env_sum_NE[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[30] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NE[30]),
        .Q(env_sum_NE[30]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[31] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NE[31]),
        .Q(env_sum_NE[31]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[3] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[3]),
        .Q(env_sum_NE[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[4] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[4]),
        .Q(env_sum_NE[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[5] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[5]),
        .Q(env_sum_NE[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[6] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[6]),
        .Q(env_sum_NE[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[7] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[7]),
        .Q(env_sum_NE[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NE_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_NE_reg[7]_i_2_n_0 ,\det_signal.env_sum_NE_reg[7]_i_2_n_1 ,\det_signal.env_sum_NE_reg[7]_i_2_n_2 ,\det_signal.env_sum_NE_reg[7]_i_2_n_3 ,\det_signal.env_sum_NE_reg[7]_i_2_n_4 ,\det_signal.env_sum_NE_reg[7]_i_2_n_5 ,\det_signal.env_sum_NE_reg[7]_i_2_n_6 ,\det_signal.env_sum_NE_reg[7]_i_2_n_7 }),
        .DI(env_sum_N[7:0]),
        .O(env_sum_NE0[7:0]),
        .S({\det_signal.env_sum_NE[7]_i_3_n_0 ,\det_signal.env_sum_NE[7]_i_4_n_0 ,\det_signal.env_sum_NE[7]_i_5_n_0 ,\det_signal.env_sum_NE[7]_i_6_n_0 ,\det_signal.env_sum_NE[7]_i_7_n_0 ,\det_signal.env_sum_NE[7]_i_8_n_0 ,\det_signal.env_sum_NE[7]_i_9_n_0 ,\det_signal.env_sum_NE[7]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[8] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[8]),
        .Q(env_sum_NE[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NE_reg[9] 
       (.C(clk),
        .CE(proc_signal),
        .D(p_0_in1_in__0[9]),
        .Q(env_sum_NE[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[0]_i_1 
       (.I0(env_sum_NW[0]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[0]),
        .O(\det_signal.env_sum_NW[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[10]_i_1 
       (.I0(env_sum_NW[10]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[10]),
        .O(\det_signal.env_sum_NW[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[11]_i_1 
       (.I0(env_sum_NW[11]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[11]),
        .O(\det_signal.env_sum_NW[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[12]_i_1 
       (.I0(env_sum_NW[12]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[12]),
        .O(\det_signal.env_sum_NW[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[13]_i_1 
       (.I0(env_sum_NW[13]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[13]),
        .O(\det_signal.env_sum_NW[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[14]_i_1 
       (.I0(env_sum_NW[14]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[14]),
        .O(\det_signal.env_sum_NW[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[15]_i_1 
       (.I0(env_sum_NW[15]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[15]),
        .O(\det_signal.env_sum_NW[15]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_10 
       (.I0(env_sum_N[8]),
        .I1(env_sum_W[8]),
        .O(\det_signal.env_sum_NW[15]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_3 
       (.I0(env_sum_N[15]),
        .I1(env_sum_W[15]),
        .O(\det_signal.env_sum_NW[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_4 
       (.I0(env_sum_N[14]),
        .I1(env_sum_W[14]),
        .O(\det_signal.env_sum_NW[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_5 
       (.I0(env_sum_N[13]),
        .I1(env_sum_W[13]),
        .O(\det_signal.env_sum_NW[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_6 
       (.I0(env_sum_N[12]),
        .I1(env_sum_W[12]),
        .O(\det_signal.env_sum_NW[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_7 
       (.I0(env_sum_N[11]),
        .I1(env_sum_W[11]),
        .O(\det_signal.env_sum_NW[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_8 
       (.I0(env_sum_N[10]),
        .I1(env_sum_W[10]),
        .O(\det_signal.env_sum_NW[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[15]_i_9 
       (.I0(env_sum_N[9]),
        .I1(env_sum_W[9]),
        .O(\det_signal.env_sum_NW[15]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[16]_i_1 
       (.I0(env_sum_NW[16]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[16]),
        .O(\det_signal.env_sum_NW[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[17]_i_1 
       (.I0(env_sum_NW[17]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[17]),
        .O(\det_signal.env_sum_NW[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[18]_i_1 
       (.I0(env_sum_NW[18]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[18]),
        .O(\det_signal.env_sum_NW[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[19]_i_1 
       (.I0(env_sum_NW[19]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[19]),
        .O(\det_signal.env_sum_NW[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[1]_i_1 
       (.I0(env_sum_NW[1]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[1]),
        .O(\det_signal.env_sum_NW[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[20]_i_1 
       (.I0(env_sum_NW[20]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[20]),
        .O(\det_signal.env_sum_NW[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[21]_i_1 
       (.I0(env_sum_NW[21]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[21]),
        .O(\det_signal.env_sum_NW[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[22]_i_1 
       (.I0(env_sum_NW[22]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[22]),
        .O(\det_signal.env_sum_NW[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[23]_i_1 
       (.I0(env_sum_NW[23]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[23]),
        .O(\det_signal.env_sum_NW[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_10 
       (.I0(env_sum_N[16]),
        .I1(env_sum_W[16]),
        .O(\det_signal.env_sum_NW[23]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_3 
       (.I0(env_sum_N[23]),
        .I1(env_sum_W[23]),
        .O(\det_signal.env_sum_NW[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_4 
       (.I0(env_sum_N[22]),
        .I1(env_sum_W[22]),
        .O(\det_signal.env_sum_NW[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_5 
       (.I0(env_sum_N[21]),
        .I1(env_sum_W[21]),
        .O(\det_signal.env_sum_NW[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_6 
       (.I0(env_sum_N[20]),
        .I1(env_sum_W[20]),
        .O(\det_signal.env_sum_NW[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_7 
       (.I0(env_sum_N[19]),
        .I1(env_sum_W[19]),
        .O(\det_signal.env_sum_NW[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_8 
       (.I0(env_sum_N[18]),
        .I1(env_sum_W[18]),
        .O(\det_signal.env_sum_NW[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[23]_i_9 
       (.I0(env_sum_N[17]),
        .I1(env_sum_W[17]),
        .O(\det_signal.env_sum_NW[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[24]_i_1 
       (.I0(env_sum_NW[24]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[24]),
        .O(\det_signal.env_sum_NW[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[2]_i_1 
       (.I0(env_sum_NW[2]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[2]),
        .O(\det_signal.env_sum_NW[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[3]_i_1 
       (.I0(env_sum_NW[3]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[3]),
        .O(\det_signal.env_sum_NW[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[4]_i_1 
       (.I0(env_sum_NW[4]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[4]),
        .O(\det_signal.env_sum_NW[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[5]_i_1 
       (.I0(env_sum_NW[5]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[5]),
        .O(\det_signal.env_sum_NW[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[6]_i_1 
       (.I0(env_sum_NW[6]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[6]),
        .O(\det_signal.env_sum_NW[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[7]_i_1 
       (.I0(env_sum_NW[7]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[7]),
        .O(\det_signal.env_sum_NW[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_10 
       (.I0(env_sum_N[0]),
        .I1(env_sum_W[0]),
        .O(\det_signal.env_sum_NW[7]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_3 
       (.I0(env_sum_N[7]),
        .I1(env_sum_W[7]),
        .O(\det_signal.env_sum_NW[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_4 
       (.I0(env_sum_N[6]),
        .I1(env_sum_W[6]),
        .O(\det_signal.env_sum_NW[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_5 
       (.I0(env_sum_N[5]),
        .I1(env_sum_W[5]),
        .O(\det_signal.env_sum_NW[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_6 
       (.I0(env_sum_N[4]),
        .I1(env_sum_W[4]),
        .O(\det_signal.env_sum_NW[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_7 
       (.I0(env_sum_N[3]),
        .I1(env_sum_W[3]),
        .O(\det_signal.env_sum_NW[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_8 
       (.I0(env_sum_N[2]),
        .I1(env_sum_W[2]),
        .O(\det_signal.env_sum_NW[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \det_signal.env_sum_NW[7]_i_9 
       (.I0(env_sum_N[1]),
        .I1(env_sum_W[1]),
        .O(\det_signal.env_sum_NW[7]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[8]_i_1 
       (.I0(env_sum_NW[8]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[8]),
        .O(\det_signal.env_sum_NW[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    \det_signal.env_sum_NW[9]_i_1 
       (.I0(env_sum_NW[9]),
        .I1(div_delay[2]),
        .I2(div_delay[0]),
        .I3(div_delay[1]),
        .I4(env_sum_NW0[9]),
        .O(\det_signal.env_sum_NW[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[0] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[0]_i_1_n_0 ),
        .Q(env_sum_NW[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[10] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[10]_i_1_n_0 ),
        .Q(env_sum_NW[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[11] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[11]_i_1_n_0 ),
        .Q(env_sum_NW[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[12] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[12]_i_1_n_0 ),
        .Q(env_sum_NW[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[13] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[13]_i_1_n_0 ),
        .Q(env_sum_NW[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[14] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[14]_i_1_n_0 ),
        .Q(env_sum_NW[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[15] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[15]_i_1_n_0 ),
        .Q(env_sum_NW[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NW_reg[15]_i_2 
       (.CI(\det_signal.env_sum_NW_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_NW_reg[15]_i_2_n_0 ,\det_signal.env_sum_NW_reg[15]_i_2_n_1 ,\det_signal.env_sum_NW_reg[15]_i_2_n_2 ,\det_signal.env_sum_NW_reg[15]_i_2_n_3 ,\det_signal.env_sum_NW_reg[15]_i_2_n_4 ,\det_signal.env_sum_NW_reg[15]_i_2_n_5 ,\det_signal.env_sum_NW_reg[15]_i_2_n_6 ,\det_signal.env_sum_NW_reg[15]_i_2_n_7 }),
        .DI(env_sum_N[15:8]),
        .O(env_sum_NW0[15:8]),
        .S({\det_signal.env_sum_NW[15]_i_3_n_0 ,\det_signal.env_sum_NW[15]_i_4_n_0 ,\det_signal.env_sum_NW[15]_i_5_n_0 ,\det_signal.env_sum_NW[15]_i_6_n_0 ,\det_signal.env_sum_NW[15]_i_7_n_0 ,\det_signal.env_sum_NW[15]_i_8_n_0 ,\det_signal.env_sum_NW[15]_i_9_n_0 ,\det_signal.env_sum_NW[15]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[16] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[16]_i_1_n_0 ),
        .Q(env_sum_NW[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[17] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[17]_i_1_n_0 ),
        .Q(env_sum_NW[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[18] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[18]_i_1_n_0 ),
        .Q(env_sum_NW[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[19] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[19]_i_1_n_0 ),
        .Q(env_sum_NW[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[1] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[1]_i_1_n_0 ),
        .Q(env_sum_NW[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[20] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[20]_i_1_n_0 ),
        .Q(env_sum_NW[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[21] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[21]_i_1_n_0 ),
        .Q(env_sum_NW[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[22] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[22]_i_1_n_0 ),
        .Q(env_sum_NW[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[23] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[23]_i_1_n_0 ),
        .Q(env_sum_NW[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NW_reg[23]_i_2 
       (.CI(\det_signal.env_sum_NW_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_NW_reg[23]_i_2_n_0 ,\det_signal.env_sum_NW_reg[23]_i_2_n_1 ,\det_signal.env_sum_NW_reg[23]_i_2_n_2 ,\det_signal.env_sum_NW_reg[23]_i_2_n_3 ,\det_signal.env_sum_NW_reg[23]_i_2_n_4 ,\det_signal.env_sum_NW_reg[23]_i_2_n_5 ,\det_signal.env_sum_NW_reg[23]_i_2_n_6 ,\det_signal.env_sum_NW_reg[23]_i_2_n_7 }),
        .DI(env_sum_N[23:16]),
        .O(env_sum_NW0[23:16]),
        .S({\det_signal.env_sum_NW[23]_i_3_n_0 ,\det_signal.env_sum_NW[23]_i_4_n_0 ,\det_signal.env_sum_NW[23]_i_5_n_0 ,\det_signal.env_sum_NW[23]_i_6_n_0 ,\det_signal.env_sum_NW[23]_i_7_n_0 ,\det_signal.env_sum_NW[23]_i_8_n_0 ,\det_signal.env_sum_NW[23]_i_9_n_0 ,\det_signal.env_sum_NW[23]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[24] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[24]_i_1_n_0 ),
        .Q(env_sum_NW[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NW_reg[24]_i_2 
       (.CI(\det_signal.env_sum_NW_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_det_signal.env_sum_NW_reg[24]_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_det_signal.env_sum_NW_reg[24]_i_2_O_UNCONNECTED [7:1],env_sum_NW0[24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[25] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NW[25]),
        .Q(env_sum_NW[25]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[26] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NW[26]),
        .Q(env_sum_NW[26]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[27] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NW[27]),
        .Q(env_sum_NW[27]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[28] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NW[28]),
        .Q(env_sum_NW[28]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[29] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NW[29]),
        .Q(env_sum_NW[29]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[2] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[2]_i_1_n_0 ),
        .Q(env_sum_NW[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[30] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NW[30]),
        .Q(env_sum_NW[30]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[31] 
       (.C(clk),
        .CE(proc_signal),
        .D(env_sum_NW[31]),
        .Q(env_sum_NW[31]),
        .R(\det_signal.env_sum_NE[31]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[3] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[3]_i_1_n_0 ),
        .Q(env_sum_NW[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[4] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[4]_i_1_n_0 ),
        .Q(env_sum_NW[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[5] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[5]_i_1_n_0 ),
        .Q(env_sum_NW[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[6] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[6]_i_1_n_0 ),
        .Q(env_sum_NW[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[7] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[7]_i_1_n_0 ),
        .Q(env_sum_NW[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_NW_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_NW_reg[7]_i_2_n_0 ,\det_signal.env_sum_NW_reg[7]_i_2_n_1 ,\det_signal.env_sum_NW_reg[7]_i_2_n_2 ,\det_signal.env_sum_NW_reg[7]_i_2_n_3 ,\det_signal.env_sum_NW_reg[7]_i_2_n_4 ,\det_signal.env_sum_NW_reg[7]_i_2_n_5 ,\det_signal.env_sum_NW_reg[7]_i_2_n_6 ,\det_signal.env_sum_NW_reg[7]_i_2_n_7 }),
        .DI(env_sum_N[7:0]),
        .O(env_sum_NW0[7:0]),
        .S({\det_signal.env_sum_NW[7]_i_3_n_0 ,\det_signal.env_sum_NW[7]_i_4_n_0 ,\det_signal.env_sum_NW[7]_i_5_n_0 ,\det_signal.env_sum_NW[7]_i_6_n_0 ,\det_signal.env_sum_NW[7]_i_7_n_0 ,\det_signal.env_sum_NW[7]_i_8_n_0 ,\det_signal.env_sum_NW[7]_i_9_n_0 ,\det_signal.env_sum_NW[7]_i_10_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[8] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[8]_i_1_n_0 ),
        .Q(env_sum_NW[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_NW_reg[9] 
       (.C(clk),
        .CE(proc_signal),
        .D(\det_signal.env_sum_NW[9]_i_1_n_0 ),
        .Q(env_sum_NW[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_2 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[15]),
        .I2(env_N[15]),
        .O(\det_signal.env_sum_N[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_3 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[14]),
        .I2(env_N[14]),
        .O(\det_signal.env_sum_N[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_4 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[13]),
        .I2(env_N[13]),
        .O(\det_signal.env_sum_N[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_5 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[12]),
        .I2(env_N[12]),
        .O(\det_signal.env_sum_N[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_6 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[11]),
        .I2(env_N[11]),
        .O(\det_signal.env_sum_N[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_7 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[10]),
        .I2(env_N[10]),
        .O(\det_signal.env_sum_N[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_8 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[9]),
        .I2(env_N[9]),
        .O(\det_signal.env_sum_N[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[15]_i_9 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[8]),
        .I2(env_N[8]),
        .O(\det_signal.env_sum_N[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_2 
       (.I0(env_sum_N[23]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_3 
       (.I0(env_sum_N[22]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_4 
       (.I0(env_sum_N[21]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_5 
       (.I0(env_sum_N[20]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_6 
       (.I0(env_sum_N[19]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_7 
       (.I0(env_sum_N[18]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_8 
       (.I0(env_sum_N[17]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_N[23]_i_9 
       (.I0(env_sum_N[16]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_N[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_2 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[7]),
        .I2(env_N[7]),
        .O(\det_signal.env_sum_N[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_3 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[6]),
        .I2(env_N[6]),
        .O(\det_signal.env_sum_N[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_4 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[5]),
        .I2(env_N[5]),
        .O(\det_signal.env_sum_N[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_5 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[4]),
        .I2(env_N[4]),
        .O(\det_signal.env_sum_N[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_6 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[3]),
        .I2(env_N[3]),
        .O(\det_signal.env_sum_N[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_7 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[2]),
        .I2(env_N[2]),
        .O(\det_signal.env_sum_N[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_8 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[1]),
        .I2(env_N[1]),
        .O(\det_signal.env_sum_N[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_N[7]_i_9 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_N[0]),
        .I2(env_N[0]),
        .O(\det_signal.env_sum_N[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_15 ),
        .Q(env_sum_N[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_13 ),
        .Q(env_sum_N[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_12 ),
        .Q(env_sum_N[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_11 ),
        .Q(env_sum_N[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_10 ),
        .Q(env_sum_N[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_9 ),
        .Q(env_sum_N[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_8 ),
        .Q(env_sum_N[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_N_reg[15]_i_1 
       (.CI(\det_signal.env_sum_N_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_N_reg[15]_i_1_n_0 ,\det_signal.env_sum_N_reg[15]_i_1_n_1 ,\det_signal.env_sum_N_reg[15]_i_1_n_2 ,\det_signal.env_sum_N_reg[15]_i_1_n_3 ,\det_signal.env_sum_N_reg[15]_i_1_n_4 ,\det_signal.env_sum_N_reg[15]_i_1_n_5 ,\det_signal.env_sum_N_reg[15]_i_1_n_6 ,\det_signal.env_sum_N_reg[15]_i_1_n_7 }),
        .DI(env_N[15:8]),
        .O({\det_signal.env_sum_N_reg[15]_i_1_n_8 ,\det_signal.env_sum_N_reg[15]_i_1_n_9 ,\det_signal.env_sum_N_reg[15]_i_1_n_10 ,\det_signal.env_sum_N_reg[15]_i_1_n_11 ,\det_signal.env_sum_N_reg[15]_i_1_n_12 ,\det_signal.env_sum_N_reg[15]_i_1_n_13 ,\det_signal.env_sum_N_reg[15]_i_1_n_14 ,\det_signal.env_sum_N_reg[15]_i_1_n_15 }),
        .S({\det_signal.env_sum_N[15]_i_2_n_0 ,\det_signal.env_sum_N[15]_i_3_n_0 ,\det_signal.env_sum_N[15]_i_4_n_0 ,\det_signal.env_sum_N[15]_i_5_n_0 ,\det_signal.env_sum_N[15]_i_6_n_0 ,\det_signal.env_sum_N[15]_i_7_n_0 ,\det_signal.env_sum_N[15]_i_8_n_0 ,\det_signal.env_sum_N[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[16] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_15 ),
        .Q(env_sum_N[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[17] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_14 ),
        .Q(env_sum_N[17]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[18] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_13 ),
        .Q(env_sum_N[18]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[19] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_12 ),
        .Q(env_sum_N[19]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_14 ),
        .Q(env_sum_N[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[20] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_11 ),
        .Q(env_sum_N[20]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[21] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_10 ),
        .Q(env_sum_N[21]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[22] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_9 ),
        .Q(env_sum_N[22]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[23] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[23]_i_1_n_8 ),
        .Q(env_sum_N[23]),
        .R(env_sum_E__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_N_reg[23]_i_1 
       (.CI(\det_signal.env_sum_N_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_sum_N_reg[23]_i_1_CO_UNCONNECTED [7],\det_signal.env_sum_N_reg[23]_i_1_n_1 ,\det_signal.env_sum_N_reg[23]_i_1_n_2 ,\det_signal.env_sum_N_reg[23]_i_1_n_3 ,\det_signal.env_sum_N_reg[23]_i_1_n_4 ,\det_signal.env_sum_N_reg[23]_i_1_n_5 ,\det_signal.env_sum_N_reg[23]_i_1_n_6 ,\det_signal.env_sum_N_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.env_sum_N_reg[23]_i_1_n_8 ,\det_signal.env_sum_N_reg[23]_i_1_n_9 ,\det_signal.env_sum_N_reg[23]_i_1_n_10 ,\det_signal.env_sum_N_reg[23]_i_1_n_11 ,\det_signal.env_sum_N_reg[23]_i_1_n_12 ,\det_signal.env_sum_N_reg[23]_i_1_n_13 ,\det_signal.env_sum_N_reg[23]_i_1_n_14 ,\det_signal.env_sum_N_reg[23]_i_1_n_15 }),
        .S({\det_signal.env_sum_N[23]_i_2_n_0 ,\det_signal.env_sum_N[23]_i_3_n_0 ,\det_signal.env_sum_N[23]_i_4_n_0 ,\det_signal.env_sum_N[23]_i_5_n_0 ,\det_signal.env_sum_N[23]_i_6_n_0 ,\det_signal.env_sum_N[23]_i_7_n_0 ,\det_signal.env_sum_N[23]_i_8_n_0 ,\det_signal.env_sum_N[23]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_13 ),
        .Q(env_sum_N[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_12 ),
        .Q(env_sum_N[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_11 ),
        .Q(env_sum_N[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_10 ),
        .Q(env_sum_N[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_9 ),
        .Q(env_sum_N[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[7]_i_1_n_8 ),
        .Q(env_sum_N[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_N_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_N_reg[7]_i_1_n_0 ,\det_signal.env_sum_N_reg[7]_i_1_n_1 ,\det_signal.env_sum_N_reg[7]_i_1_n_2 ,\det_signal.env_sum_N_reg[7]_i_1_n_3 ,\det_signal.env_sum_N_reg[7]_i_1_n_4 ,\det_signal.env_sum_N_reg[7]_i_1_n_5 ,\det_signal.env_sum_N_reg[7]_i_1_n_6 ,\det_signal.env_sum_N_reg[7]_i_1_n_7 }),
        .DI(env_N[7:0]),
        .O({\det_signal.env_sum_N_reg[7]_i_1_n_8 ,\det_signal.env_sum_N_reg[7]_i_1_n_9 ,\det_signal.env_sum_N_reg[7]_i_1_n_10 ,\det_signal.env_sum_N_reg[7]_i_1_n_11 ,\det_signal.env_sum_N_reg[7]_i_1_n_12 ,\det_signal.env_sum_N_reg[7]_i_1_n_13 ,\det_signal.env_sum_N_reg[7]_i_1_n_14 ,\det_signal.env_sum_N_reg[7]_i_1_n_15 }),
        .S({\det_signal.env_sum_N[7]_i_2_n_0 ,\det_signal.env_sum_N[7]_i_3_n_0 ,\det_signal.env_sum_N[7]_i_4_n_0 ,\det_signal.env_sum_N[7]_i_5_n_0 ,\det_signal.env_sum_N[7]_i_6_n_0 ,\det_signal.env_sum_N[7]_i_7_n_0 ,\det_signal.env_sum_N[7]_i_8_n_0 ,\det_signal.env_sum_N[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_15 ),
        .Q(env_sum_N[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_N_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_N_reg[15]_i_1_n_14 ),
        .Q(env_sum_N[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_2 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[15]),
        .I2(env_W[15]),
        .O(\det_signal.env_sum_W[15]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_3 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[14]),
        .I2(env_W[14]),
        .O(\det_signal.env_sum_W[15]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_4 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[13]),
        .I2(env_W[13]),
        .O(\det_signal.env_sum_W[15]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_5 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[12]),
        .I2(env_W[12]),
        .O(\det_signal.env_sum_W[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_6 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[11]),
        .I2(env_W[11]),
        .O(\det_signal.env_sum_W[15]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_7 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[10]),
        .I2(env_W[10]),
        .O(\det_signal.env_sum_W[15]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_8 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[9]),
        .I2(env_W[9]),
        .O(\det_signal.env_sum_W[15]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[15]_i_9 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[8]),
        .I2(env_W[8]),
        .O(\det_signal.env_sum_W[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_2 
       (.I0(env_sum_W[23]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_3 
       (.I0(env_sum_W[22]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_4 
       (.I0(env_sum_W[21]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_5 
       (.I0(env_sum_W[20]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_6 
       (.I0(env_sum_W[19]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_7 
       (.I0(env_sum_W[18]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_8 
       (.I0(env_sum_W[17]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \det_signal.env_sum_W[23]_i_9 
       (.I0(env_sum_W[16]),
        .I1(\det_signal.acc_reset_reg_n_0 ),
        .O(\det_signal.env_sum_W[23]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_2 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[7]),
        .I2(env_W[7]),
        .O(\det_signal.env_sum_W[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_3 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[6]),
        .I2(env_W[6]),
        .O(\det_signal.env_sum_W[7]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_4 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[5]),
        .I2(env_W[5]),
        .O(\det_signal.env_sum_W[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_5 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[4]),
        .I2(env_W[4]),
        .O(\det_signal.env_sum_W[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_6 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[3]),
        .I2(env_W[3]),
        .O(\det_signal.env_sum_W[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_7 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[2]),
        .I2(env_W[2]),
        .O(\det_signal.env_sum_W[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_8 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[1]),
        .I2(env_W[1]),
        .O(\det_signal.env_sum_W[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \det_signal.env_sum_W[7]_i_9 
       (.I0(\det_signal.acc_reset_reg_n_0 ),
        .I1(env_sum_W[0]),
        .I2(env_W[0]),
        .O(\det_signal.env_sum_W[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[0] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_15 ),
        .Q(env_sum_W[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[10] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_13 ),
        .Q(env_sum_W[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[11] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_12 ),
        .Q(env_sum_W[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[12] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_11 ),
        .Q(env_sum_W[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[13] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_10 ),
        .Q(env_sum_W[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[14] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_9 ),
        .Q(env_sum_W[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[15] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_8 ),
        .Q(env_sum_W[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_W_reg[15]_i_1 
       (.CI(\det_signal.env_sum_W_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_W_reg[15]_i_1_n_0 ,\det_signal.env_sum_W_reg[15]_i_1_n_1 ,\det_signal.env_sum_W_reg[15]_i_1_n_2 ,\det_signal.env_sum_W_reg[15]_i_1_n_3 ,\det_signal.env_sum_W_reg[15]_i_1_n_4 ,\det_signal.env_sum_W_reg[15]_i_1_n_5 ,\det_signal.env_sum_W_reg[15]_i_1_n_6 ,\det_signal.env_sum_W_reg[15]_i_1_n_7 }),
        .DI(env_W[15:8]),
        .O({\det_signal.env_sum_W_reg[15]_i_1_n_8 ,\det_signal.env_sum_W_reg[15]_i_1_n_9 ,\det_signal.env_sum_W_reg[15]_i_1_n_10 ,\det_signal.env_sum_W_reg[15]_i_1_n_11 ,\det_signal.env_sum_W_reg[15]_i_1_n_12 ,\det_signal.env_sum_W_reg[15]_i_1_n_13 ,\det_signal.env_sum_W_reg[15]_i_1_n_14 ,\det_signal.env_sum_W_reg[15]_i_1_n_15 }),
        .S({\det_signal.env_sum_W[15]_i_2_n_0 ,\det_signal.env_sum_W[15]_i_3_n_0 ,\det_signal.env_sum_W[15]_i_4_n_0 ,\det_signal.env_sum_W[15]_i_5_n_0 ,\det_signal.env_sum_W[15]_i_6_n_0 ,\det_signal.env_sum_W[15]_i_7_n_0 ,\det_signal.env_sum_W[15]_i_8_n_0 ,\det_signal.env_sum_W[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[16] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_15 ),
        .Q(env_sum_W[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[17] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_14 ),
        .Q(env_sum_W[17]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[18] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_13 ),
        .Q(env_sum_W[18]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[19] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_12 ),
        .Q(env_sum_W[19]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[1] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_14 ),
        .Q(env_sum_W[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[20] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_11 ),
        .Q(env_sum_W[20]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[21] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_10 ),
        .Q(env_sum_W[21]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[22] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_9 ),
        .Q(env_sum_W[22]),
        .R(env_sum_E__0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[23] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[23]_i_1_n_8 ),
        .Q(env_sum_W[23]),
        .R(env_sum_E__0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_W_reg[23]_i_1 
       (.CI(\det_signal.env_sum_W_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_det_signal.env_sum_W_reg[23]_i_1_CO_UNCONNECTED [7],\det_signal.env_sum_W_reg[23]_i_1_n_1 ,\det_signal.env_sum_W_reg[23]_i_1_n_2 ,\det_signal.env_sum_W_reg[23]_i_1_n_3 ,\det_signal.env_sum_W_reg[23]_i_1_n_4 ,\det_signal.env_sum_W_reg[23]_i_1_n_5 ,\det_signal.env_sum_W_reg[23]_i_1_n_6 ,\det_signal.env_sum_W_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\det_signal.env_sum_W_reg[23]_i_1_n_8 ,\det_signal.env_sum_W_reg[23]_i_1_n_9 ,\det_signal.env_sum_W_reg[23]_i_1_n_10 ,\det_signal.env_sum_W_reg[23]_i_1_n_11 ,\det_signal.env_sum_W_reg[23]_i_1_n_12 ,\det_signal.env_sum_W_reg[23]_i_1_n_13 ,\det_signal.env_sum_W_reg[23]_i_1_n_14 ,\det_signal.env_sum_W_reg[23]_i_1_n_15 }),
        .S({\det_signal.env_sum_W[23]_i_2_n_0 ,\det_signal.env_sum_W[23]_i_3_n_0 ,\det_signal.env_sum_W[23]_i_4_n_0 ,\det_signal.env_sum_W[23]_i_5_n_0 ,\det_signal.env_sum_W[23]_i_6_n_0 ,\det_signal.env_sum_W[23]_i_7_n_0 ,\det_signal.env_sum_W[23]_i_8_n_0 ,\det_signal.env_sum_W[23]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[2] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_13 ),
        .Q(env_sum_W[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[3] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_12 ),
        .Q(env_sum_W[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[4] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_11 ),
        .Q(env_sum_W[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[5] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_10 ),
        .Q(env_sum_W[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[6] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_9 ),
        .Q(env_sum_W[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[7] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[7]_i_1_n_8 ),
        .Q(env_sum_W[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \det_signal.env_sum_W_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\det_signal.env_sum_W_reg[7]_i_1_n_0 ,\det_signal.env_sum_W_reg[7]_i_1_n_1 ,\det_signal.env_sum_W_reg[7]_i_1_n_2 ,\det_signal.env_sum_W_reg[7]_i_1_n_3 ,\det_signal.env_sum_W_reg[7]_i_1_n_4 ,\det_signal.env_sum_W_reg[7]_i_1_n_5 ,\det_signal.env_sum_W_reg[7]_i_1_n_6 ,\det_signal.env_sum_W_reg[7]_i_1_n_7 }),
        .DI(env_W[7:0]),
        .O({\det_signal.env_sum_W_reg[7]_i_1_n_8 ,\det_signal.env_sum_W_reg[7]_i_1_n_9 ,\det_signal.env_sum_W_reg[7]_i_1_n_10 ,\det_signal.env_sum_W_reg[7]_i_1_n_11 ,\det_signal.env_sum_W_reg[7]_i_1_n_12 ,\det_signal.env_sum_W_reg[7]_i_1_n_13 ,\det_signal.env_sum_W_reg[7]_i_1_n_14 ,\det_signal.env_sum_W_reg[7]_i_1_n_15 }),
        .S({\det_signal.env_sum_W[7]_i_2_n_0 ,\det_signal.env_sum_W[7]_i_3_n_0 ,\det_signal.env_sum_W[7]_i_4_n_0 ,\det_signal.env_sum_W[7]_i_5_n_0 ,\det_signal.env_sum_W[7]_i_6_n_0 ,\det_signal.env_sum_W[7]_i_7_n_0 ,\det_signal.env_sum_W[7]_i_8_n_0 ,\det_signal.env_sum_W[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[8] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_15 ),
        .Q(env_sum_W[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \det_signal.env_sum_W_reg[9] 
       (.C(clk),
        .CE(has_signal),
        .D(\det_signal.env_sum_W_reg[15]_i_1_n_14 ),
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
  LUT6 #(
    .INIT(64'hAA6A000000000000)) 
    \det_signal.err_count[0]_i_1 
       (.I0(err_count[0]),
        .I1(has_signal),
        .I2(valid_count),
        .I3(\det_signal.err_ov_reg_n_0 ),
        .I4(\det_signal.run_reg_n_0_[2] ),
        .I5(\det_signal.err_count[0]_i_2_n_0 ),
        .O(\det_signal.err_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \det_signal.err_count[0]_i_2 
       (.I0(valid_err),
        .I1(valid_env),
        .I2(valid_count),
        .O(\det_signal.err_count[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AA6AAAAA)) 
    \det_signal.err_count[1]_i_1 
       (.I0(err_count[1]),
        .I1(has_signal),
        .I2(valid_count),
        .I3(\det_signal.err_ov_reg_n_0 ),
        .I4(err_count[0]),
        .I5(\det_signal.err_count[1]_i_2_n_0 ),
        .O(\det_signal.err_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h80FF)) 
    \det_signal.err_count[1]_i_2 
       (.I0(valid_count),
        .I1(valid_env),
        .I2(valid_err),
        .I3(\det_signal.run_reg_n_0_[2] ),
        .O(\det_signal.err_count[1]_i_2_n_0 ));
  FDRE \det_signal.err_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_count[0]_i_1_n_0 ),
        .Q(err_count[0]),
        .R(1'b0));
  FDRE \det_signal.err_count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_count[1]_i_1_n_0 ),
        .Q(err_count[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE222)) 
    \det_signal.err_ov_i_1 
       (.I0(\det_signal.err_ov_reg_n_0 ),
        .I1(\det_signal.run_reg_n_0_[1] ),
        .I2(err_count[0]),
        .I3(err_count[1]),
        .O(\det_signal.err_ov_i_1_n_0 ));
  FDRE \det_signal.err_ov_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.err_ov_i_1_n_0 ),
        .Q(\det_signal.err_ov_reg_n_0 ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h80008000AA008000)) 
    \det_signal.has_signal_i_1 
       (.I0(\det_signal.run_reg_n_0_[2] ),
        .I1(valid_err),
        .I2(valid_env),
        .I3(valid_count),
        .I4(has_signal),
        .I5(\det_signal.err_ov_reg_n_0 ),
        .O(\det_signal.has_signal_i_1_n_0 ));
  FDRE \det_signal.has_signal_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.has_signal_i_1_n_0 ),
        .Q(has_signal),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h8000)) 
    \det_signal.max_doa_diff[11]_i_1 
       (.I0(config_adr[0]),
        .I1(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I2(config_adr[1]),
        .I3(config_wr),
        .O(max_doa_diff0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \det_signal.max_doa_diff[11]_i_2 
       (.I0(config_adr[3]),
        .I1(config_adr[7]),
        .I2(config_adr[5]),
        .I3(config_adr[6]),
        .I4(config_adr[2]),
        .I5(config_adr[4]),
        .O(\det_signal.max_doa_diff[11]_i_2_n_0 ));
  FDRE \det_signal.max_doa_diff_reg[0] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[0]),
        .Q(max_doa_diff[0]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[10] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[10]),
        .Q(max_doa_diff[10]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[11] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[11]),
        .Q(max_doa_diff[11]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[1] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[1]),
        .Q(max_doa_diff[1]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[2] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[2]),
        .Q(max_doa_diff[2]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[3] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[3]),
        .Q(max_doa_diff[3]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[4] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[4]),
        .Q(max_doa_diff[4]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[5] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[5]),
        .Q(max_doa_diff[5]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[6] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[6]),
        .Q(max_doa_diff[6]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[7] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[7]),
        .Q(max_doa_diff[7]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[8] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[8]),
        .Q(max_doa_diff[8]),
        .R(1'b0));
  FDRE \det_signal.max_doa_diff_reg[9] 
       (.C(clk),
        .CE(max_doa_diff0),
        .D(config_data[9]),
        .Q(max_doa_diff[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h0400)) 
    \det_signal.min_env[15]_i_1 
       (.I0(config_adr[0]),
        .I1(\det_signal.max_doa_diff[11]_i_2_n_0 ),
        .I2(config_adr[1]),
        .I3(config_wr),
        .O(min_env0));
  FDRE \det_signal.min_env_reg[0] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[0]),
        .Q(min_env[0]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[10] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[10]),
        .Q(min_env[10]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[11] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[11]),
        .Q(min_env[11]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[12] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[12]),
        .Q(min_env[12]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[13] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[13]),
        .Q(min_env[13]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[14] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[14]),
        .Q(min_env[14]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[15] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[15]),
        .Q(min_env[15]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[1] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[1]),
        .Q(min_env[1]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[2] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[2]),
        .Q(min_env[2]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[3] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[3]),
        .Q(min_env[3]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[4] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[4]),
        .Q(min_env[4]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[5] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[5]),
        .Q(min_env[5]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[6] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[6]),
        .Q(min_env[6]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[7] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[7]),
        .Q(min_env[7]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[8] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[8]),
        .Q(min_env[8]),
        .R(1'b0));
  FDRE \det_signal.min_env_reg[9] 
       (.C(clk),
        .CE(min_env0),
        .D(config_data[9]),
        .Q(min_env[9]),
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
  LUT4 #(
    .INIT(16'h8000)) 
    \det_signal.proc_done_i_1 
       (.I0(\det_signal.div_counter[2]_i_2_n_0 ),
        .I1(div_counter[2]),
        .I2(div_counter[0]),
        .I3(div_counter[1]),
        .O(\det_signal.proc_done_reg0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.proc_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.proc_done_reg0 ),
        .Q(proc_done),
        .R(\det_signal.div_counter[5]_i_1_n_0 ));
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
        .Q(\det_signal.run_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \det_signal.run_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.run_reg_n_0_[1] ),
        .Q(\det_signal.run_reg_n_0_[2] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h7F55000000000000)) 
    \det_signal.start_proc_i_1 
       (.I0(valid_count),
        .I1(valid_err),
        .I2(valid_env),
        .I3(\det_signal.err_ov_reg_n_0 ),
        .I4(has_signal),
        .I5(\det_signal.run_reg_n_0_[2] ),
        .O(\det_signal.start_proc_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \det_signal.start_proc_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.start_proc_i_1_n_0 ),
        .Q(start_proc),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \det_signal.valid_count_i_1 
       (.I0(\det_signal.run_reg_n_0_[1] ),
        .I1(valid_count),
        .O(\det_signal.valid_count_i_1_n_0 ));
  FDRE \det_signal.valid_count_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\det_signal.valid_count_i_1_n_0 ),
        .Q(valid_count),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.valid_env_i_1 
       (.I0(p_0_in4_in),
        .I1(p_1_in5_in),
        .I2(p_2_in6_in),
        .O(valid_env0));
  FDRE \det_signal.valid_env_reg 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(valid_env0),
        .Q(valid_env),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h80)) 
    \det_signal.valid_err_i_1 
       (.I0(p_0_in1_in),
        .I1(p_1_in2_in),
        .I2(p_2_in),
        .O(valid_err0));
  FDRE \det_signal.valid_err_reg 
       (.C(clk),
        .CE(\det_signal.run_reg_n_0_[1] ),
        .D(valid_err0),
        .Q(valid_err),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  div_weighted_HD1 div_phase_EW_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED[79:52],phase_EW,NLW_div_phase_EW_i_m_axis_dout_tdata_UNCONNECTED[31:0]}),
        .m_axis_dout_tvalid(valid_phase_EW),
        .s_axis_dividend_tdata(dsp_sum_EW),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata(env_sum_EW),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_high_0_0_div_weighted div_phase_NE_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED[79:52],phase_NE,NLW_div_phase_NE_i_m_axis_dout_tdata_UNCONNECTED[31:0]}),
        .m_axis_dout_tvalid(valid_phase_NE),
        .s_axis_dividend_tdata(dsp_sum_NE),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata(env_sum_NE),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "div_gen_v5_1_24,Vivado 2025.1" *) 
  ps_comp_high_0_0_div_weighted div_phase_NW_i
       (.aclk(clk),
        .m_axis_dout_tdata({NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED[79:52],phase_NW,NLW_div_phase_NW_i_m_axis_dout_tdata_UNCONNECTED[31:0]}),
        .m_axis_dout_tvalid(valid_phase_NW),
        .s_axis_dividend_tdata(dsp_sum_NW),
        .s_axis_dividend_tvalid(div_start),
        .s_axis_divisor_tdata(env_sum_NW),
        .s_axis_divisor_tvalid(div_start));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_high_0_0_dsp_incr_env dsp_incr_env_E
       (.A({1'b0,dsp_phase_E}),
        .B({1'b0,env_E}),
        .CLK(clk),
        .P(NLW_dsp_incr_env_E_P_UNCONNECTED[47:0]),
        .SCLRP(\det_signal.acc_reset_reg_n_0 ));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_high_0_0_dsp_incr_env dsp_incr_env_N
       (.A({1'b0,dsp_phase_N}),
        .B({1'b0,env_N}),
        .CLK(clk),
        .P(NLW_dsp_incr_env_N_P_UNCONNECTED[47:0]),
        .SCLRP(\det_signal.acc_reset_reg_n_0 ));
  (* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_high_0_0_dsp_incr_env_HD2 dsp_incr_env_W
       (.A({1'b0,dsp_phase_W}),
        .B({1'b0,env_W}),
        .CLK(clk),
        .P(NLW_dsp_incr_env_W_P_UNCONNECTED[47:0]),
        .SCLRP(\det_signal.acc_reset_reg_n_0 ));
  (* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  dsp_phase_env_HD3 dsp_phase_env_EW
       (.A(dsp_phase_EW),
        .B(env_EW),
        .CLK(clk),
        .P(dsp_sum_EW),
        .SCLRP(\det_signal.acc_reset_reg_n_0 ));
  (* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_high_0_0_dsp_phase_env dsp_phase_env_NE
       (.A(dsp_phase_NE),
        .B(env_NE),
        .CLK(clk),
        .P(dsp_sum_NE),
        .SCLRP(\det_signal.acc_reset_reg_n_0 ));
  (* CHECK_LICENSE_TYPE = "dsp_phase_env,dsp_macro_v1_0_8,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
  ps_comp_high_0_0_dsp_phase_env dsp_phase_env_NW
       (.A(dsp_phase_NW),
        .B(env_NW),
        .CLK(clk),
        .P(dsp_sum_NW),
        .SCLRP(\det_signal.acc_reset_reg_n_0 ));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(signal_done));
  (* CHECK_LICENSE_TYPE = "ila_3,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_comp_high_0_0_ila_3 ila_i
       (.clk(clk),
        .probe0(active),
        .probe1(env_sum_N),
        .probe10(dsp_phase_NW),
        .probe11(dsp_sum_NW),
        .probe12(env_sum_NW),
        .probe13(phase_NW),
        .probe14(valid_phase_NW),
        .probe15(dsp_phase_EW),
        .probe16(dsp_sum_EW),
        .probe17(env_sum_EW),
        .probe18(phase_EW),
        .probe19(valid_phase_EW),
        .probe2(env_sum_E),
        .probe20(start_proc),
        .probe21(proc_signal),
        .probe22(div_start),
        .probe23(div_delay),
        .probe24(div_counter),
        .probe25(proc_done),
        .probe26({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,signal_done}),
        .probe3(env_sum_W),
        .probe4(env_NE),
        .probe5(dsp_phase_NE),
        .probe6(dsp_sum_NE),
        .probe7(env_sum_NE),
        .probe8(phase_NE),
        .probe9(valid_phase_NE));
endmodule

(* CHECK_LICENSE_TYPE = "div_weighted,div_gen_v5_1_24,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "div_weighted" *) 
(* X_CORE_INFO = "div_gen_v5_1_24,Vivado 2025.1" *) 
module ps_comp_high_0_0_div_weighted
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

(* CHECK_LICENSE_TYPE = "dsp_incr_env,dsp_macro_v1_0_8,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "dsp_incr_env" *) 
(* X_CORE_INFO = "dsp_macro_v1_0_8,Vivado 2025.1" *) 
module ps_comp_high_0_0_dsp_incr_env
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
module ps_comp_high_0_0_dsp_incr_env_HD2
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
module ps_comp_high_0_0_dsp_phase_env
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
module ps_comp_high_0_0_fifo_config
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
    probe17,
    probe18,
    probe19,
    probe20,
    probe21,
    probe22,
    probe23,
    probe24,
    probe25,
    probe26);
  (* syn_isclock = "1" *) input clk;
  input [0:0]probe0;
  input [23:0]probe1;
  input [23:0]probe2;
  input [23:0]probe3;
  input [17:0]probe4;
  input [19:0]probe5;
  input [47:0]probe6;
  input [31:0]probe7;
  input [19:0]probe8;
  input [0:0]probe9;
  input [19:0]probe10;
  input [47:0]probe11;
  input [31:0]probe12;
  input [19:0]probe13;
  input [0:0]probe14;
  input [19:0]probe15;
  input [47:0]probe16;
  input [31:0]probe17;
  input [19:0]probe18;
  input [0:0]probe19;
  input [0:0]probe20;
  input [0:0]probe21;
  input [0:0]probe22;
  input [2:0]probe23;
  input [5:0]probe24;
  input [0:0]probe25;
  input [19:0]probe26;


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
