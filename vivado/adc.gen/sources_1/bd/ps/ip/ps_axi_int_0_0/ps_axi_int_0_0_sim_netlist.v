// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Mar 15 13:13:48 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_int_0_0/ps_axi_int_0_0_sim_netlist.v
// Design      : ps_axi_int_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_axi_int_0_0,axi_int,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_int,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_axi_int_0_0
   (clk,
    resetn,
    up,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWPROT,
    M_AXI_AWBURST,
    M_AXI_WSTRB,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BVALID,
    M_AXI_BRESP,
    M_AXI_BREADY);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input up;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 256, PROTOCOL AXI4, FREQ_HZ 333250000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE WRITE_ONLY, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 0, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output [31:0]M_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]M_AXI_AWLEN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]M_AXI_AWSIZE;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [1:0]M_AXI_AWPROT;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]M_AXI_AWBURST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [31:0]M_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output M_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input M_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [255:0]M_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output M_AXI_WLAST;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output M_AXI_WVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input M_AXI_WREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input M_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]M_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output M_AXI_BREADY;

  wire \<const0> ;
  wire \<const1> ;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire clk;
  wire resetn;
  wire NLW_inst_M_AXI_AWVALID_UNCONNECTED;
  wire NLW_inst_M_AXI_WLAST_UNCONNECTED;
  wire NLW_inst_M_AXI_WVALID_UNCONNECTED;
  wire [31:0]NLW_inst_M_AXI_AWADDR_UNCONNECTED;
  wire [1:0]NLW_inst_M_AXI_AWBURST_UNCONNECTED;
  wire [7:0]NLW_inst_M_AXI_AWLEN_UNCONNECTED;
  wire [1:0]NLW_inst_M_AXI_AWPROT_UNCONNECTED;
  wire [2:0]NLW_inst_M_AXI_AWSIZE_UNCONNECTED;
  wire [255:0]NLW_inst_M_AXI_WDATA_UNCONNECTED;
  wire [31:0]NLW_inst_M_AXI_WSTRB_UNCONNECTED;

  assign M_AXI_AWADDR[31] = \<const0> ;
  assign M_AXI_AWADDR[30] = \<const0> ;
  assign M_AXI_AWADDR[29] = \<const0> ;
  assign M_AXI_AWADDR[28] = \<const0> ;
  assign M_AXI_AWADDR[27] = \<const0> ;
  assign M_AXI_AWADDR[26] = \<const0> ;
  assign M_AXI_AWADDR[25] = \<const0> ;
  assign M_AXI_AWADDR[24] = \<const0> ;
  assign M_AXI_AWADDR[23] = \<const0> ;
  assign M_AXI_AWADDR[22] = \<const0> ;
  assign M_AXI_AWADDR[21] = \<const0> ;
  assign M_AXI_AWADDR[20] = \<const0> ;
  assign M_AXI_AWADDR[19] = \<const0> ;
  assign M_AXI_AWADDR[18] = \<const0> ;
  assign M_AXI_AWADDR[17] = \<const0> ;
  assign M_AXI_AWADDR[16] = \<const0> ;
  assign M_AXI_AWADDR[15] = \<const0> ;
  assign M_AXI_AWADDR[14] = \<const0> ;
  assign M_AXI_AWADDR[13] = \<const0> ;
  assign M_AXI_AWADDR[12] = \<const0> ;
  assign M_AXI_AWADDR[11] = \<const0> ;
  assign M_AXI_AWADDR[10] = \<const0> ;
  assign M_AXI_AWADDR[9] = \<const0> ;
  assign M_AXI_AWADDR[8] = \<const0> ;
  assign M_AXI_AWADDR[7] = \<const0> ;
  assign M_AXI_AWADDR[6] = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWLEN[7] = \<const0> ;
  assign M_AXI_AWLEN[6] = \<const0> ;
  assign M_AXI_AWLEN[5] = \<const0> ;
  assign M_AXI_AWLEN[4] = \<const0> ;
  assign M_AXI_AWLEN[3] = \<const0> ;
  assign M_AXI_AWLEN[2] = \<const0> ;
  assign M_AXI_AWLEN[1] = \<const0> ;
  assign M_AXI_AWLEN[0] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const1> ;
  assign M_AXI_AWSIZE[2] = \<const1> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const1> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_WDATA[255] = \<const0> ;
  assign M_AXI_WDATA[254] = \<const0> ;
  assign M_AXI_WDATA[253] = \<const0> ;
  assign M_AXI_WDATA[252] = \<const0> ;
  assign M_AXI_WDATA[251] = \<const0> ;
  assign M_AXI_WDATA[250] = \<const0> ;
  assign M_AXI_WDATA[249] = \<const0> ;
  assign M_AXI_WDATA[248] = \<const0> ;
  assign M_AXI_WDATA[247] = \<const0> ;
  assign M_AXI_WDATA[246] = \<const0> ;
  assign M_AXI_WDATA[245] = \<const0> ;
  assign M_AXI_WDATA[244] = \<const0> ;
  assign M_AXI_WDATA[243] = \<const0> ;
  assign M_AXI_WDATA[242] = \<const0> ;
  assign M_AXI_WDATA[241] = \<const0> ;
  assign M_AXI_WDATA[240] = \<const0> ;
  assign M_AXI_WDATA[239] = \<const0> ;
  assign M_AXI_WDATA[238] = \<const0> ;
  assign M_AXI_WDATA[237] = \<const0> ;
  assign M_AXI_WDATA[236] = \<const0> ;
  assign M_AXI_WDATA[235] = \<const0> ;
  assign M_AXI_WDATA[234] = \<const0> ;
  assign M_AXI_WDATA[233] = \<const0> ;
  assign M_AXI_WDATA[232] = \<const0> ;
  assign M_AXI_WDATA[231] = \<const0> ;
  assign M_AXI_WDATA[230] = \<const0> ;
  assign M_AXI_WDATA[229] = \<const0> ;
  assign M_AXI_WDATA[228] = \<const0> ;
  assign M_AXI_WDATA[227] = \<const0> ;
  assign M_AXI_WDATA[226] = \<const0> ;
  assign M_AXI_WDATA[225] = \<const0> ;
  assign M_AXI_WDATA[224] = \<const0> ;
  assign M_AXI_WDATA[223] = \<const0> ;
  assign M_AXI_WDATA[222] = \<const0> ;
  assign M_AXI_WDATA[221] = \<const0> ;
  assign M_AXI_WDATA[220] = \<const0> ;
  assign M_AXI_WDATA[219] = \<const0> ;
  assign M_AXI_WDATA[218] = \<const0> ;
  assign M_AXI_WDATA[217] = \<const0> ;
  assign M_AXI_WDATA[216] = \<const0> ;
  assign M_AXI_WDATA[215] = \<const0> ;
  assign M_AXI_WDATA[214] = \<const0> ;
  assign M_AXI_WDATA[213] = \<const0> ;
  assign M_AXI_WDATA[212] = \<const0> ;
  assign M_AXI_WDATA[211] = \<const0> ;
  assign M_AXI_WDATA[210] = \<const0> ;
  assign M_AXI_WDATA[209] = \<const0> ;
  assign M_AXI_WDATA[208] = \<const0> ;
  assign M_AXI_WDATA[207] = \<const0> ;
  assign M_AXI_WDATA[206] = \<const0> ;
  assign M_AXI_WDATA[205] = \<const0> ;
  assign M_AXI_WDATA[204] = \<const0> ;
  assign M_AXI_WDATA[203] = \<const0> ;
  assign M_AXI_WDATA[202] = \<const0> ;
  assign M_AXI_WDATA[201] = \<const0> ;
  assign M_AXI_WDATA[200] = \<const0> ;
  assign M_AXI_WDATA[199] = \<const0> ;
  assign M_AXI_WDATA[198] = \<const0> ;
  assign M_AXI_WDATA[197] = \<const0> ;
  assign M_AXI_WDATA[196] = \<const0> ;
  assign M_AXI_WDATA[195] = \<const0> ;
  assign M_AXI_WDATA[194] = \<const0> ;
  assign M_AXI_WDATA[193] = \<const0> ;
  assign M_AXI_WDATA[192] = \<const0> ;
  assign M_AXI_WDATA[191] = \<const0> ;
  assign M_AXI_WDATA[190] = \<const0> ;
  assign M_AXI_WDATA[189] = \<const0> ;
  assign M_AXI_WDATA[188] = \<const0> ;
  assign M_AXI_WDATA[187] = \<const0> ;
  assign M_AXI_WDATA[186] = \<const0> ;
  assign M_AXI_WDATA[185] = \<const0> ;
  assign M_AXI_WDATA[184] = \<const0> ;
  assign M_AXI_WDATA[183] = \<const0> ;
  assign M_AXI_WDATA[182] = \<const0> ;
  assign M_AXI_WDATA[181] = \<const0> ;
  assign M_AXI_WDATA[180] = \<const0> ;
  assign M_AXI_WDATA[179] = \<const0> ;
  assign M_AXI_WDATA[178] = \<const0> ;
  assign M_AXI_WDATA[177] = \<const0> ;
  assign M_AXI_WDATA[176] = \<const0> ;
  assign M_AXI_WDATA[175] = \<const0> ;
  assign M_AXI_WDATA[174] = \<const0> ;
  assign M_AXI_WDATA[173] = \<const0> ;
  assign M_AXI_WDATA[172] = \<const0> ;
  assign M_AXI_WDATA[171] = \<const0> ;
  assign M_AXI_WDATA[170] = \<const0> ;
  assign M_AXI_WDATA[169] = \<const0> ;
  assign M_AXI_WDATA[168] = \<const0> ;
  assign M_AXI_WDATA[167] = \<const0> ;
  assign M_AXI_WDATA[166] = \<const0> ;
  assign M_AXI_WDATA[165] = \<const0> ;
  assign M_AXI_WDATA[164] = \<const0> ;
  assign M_AXI_WDATA[163] = \<const0> ;
  assign M_AXI_WDATA[162] = \<const0> ;
  assign M_AXI_WDATA[161] = \<const0> ;
  assign M_AXI_WDATA[160] = \<const0> ;
  assign M_AXI_WDATA[159] = \<const0> ;
  assign M_AXI_WDATA[158] = \<const0> ;
  assign M_AXI_WDATA[157] = \<const0> ;
  assign M_AXI_WDATA[156] = \<const0> ;
  assign M_AXI_WDATA[155] = \<const0> ;
  assign M_AXI_WDATA[154] = \<const0> ;
  assign M_AXI_WDATA[153] = \<const0> ;
  assign M_AXI_WDATA[152] = \<const0> ;
  assign M_AXI_WDATA[151] = \<const0> ;
  assign M_AXI_WDATA[150] = \<const0> ;
  assign M_AXI_WDATA[149] = \<const0> ;
  assign M_AXI_WDATA[148] = \<const0> ;
  assign M_AXI_WDATA[147] = \<const0> ;
  assign M_AXI_WDATA[146] = \<const0> ;
  assign M_AXI_WDATA[145] = \<const0> ;
  assign M_AXI_WDATA[144] = \<const0> ;
  assign M_AXI_WDATA[143] = \<const0> ;
  assign M_AXI_WDATA[142] = \<const0> ;
  assign M_AXI_WDATA[141] = \<const0> ;
  assign M_AXI_WDATA[140] = \<const0> ;
  assign M_AXI_WDATA[139] = \<const0> ;
  assign M_AXI_WDATA[138] = \<const0> ;
  assign M_AXI_WDATA[137] = \<const0> ;
  assign M_AXI_WDATA[136] = \<const0> ;
  assign M_AXI_WDATA[135] = \<const0> ;
  assign M_AXI_WDATA[134] = \<const0> ;
  assign M_AXI_WDATA[133] = \<const0> ;
  assign M_AXI_WDATA[132] = \<const0> ;
  assign M_AXI_WDATA[131] = \<const0> ;
  assign M_AXI_WDATA[130] = \<const0> ;
  assign M_AXI_WDATA[129] = \<const0> ;
  assign M_AXI_WDATA[128] = \<const0> ;
  assign M_AXI_WDATA[127] = \<const0> ;
  assign M_AXI_WDATA[126] = \<const0> ;
  assign M_AXI_WDATA[125] = \<const0> ;
  assign M_AXI_WDATA[124] = \<const0> ;
  assign M_AXI_WDATA[123] = \<const0> ;
  assign M_AXI_WDATA[122] = \<const0> ;
  assign M_AXI_WDATA[121] = \<const0> ;
  assign M_AXI_WDATA[120] = \<const0> ;
  assign M_AXI_WDATA[119] = \<const0> ;
  assign M_AXI_WDATA[118] = \<const0> ;
  assign M_AXI_WDATA[117] = \<const0> ;
  assign M_AXI_WDATA[116] = \<const0> ;
  assign M_AXI_WDATA[115] = \<const0> ;
  assign M_AXI_WDATA[114] = \<const0> ;
  assign M_AXI_WDATA[113] = \<const0> ;
  assign M_AXI_WDATA[112] = \<const0> ;
  assign M_AXI_WDATA[111] = \<const0> ;
  assign M_AXI_WDATA[110] = \<const0> ;
  assign M_AXI_WDATA[109] = \<const0> ;
  assign M_AXI_WDATA[108] = \<const0> ;
  assign M_AXI_WDATA[107] = \<const0> ;
  assign M_AXI_WDATA[106] = \<const0> ;
  assign M_AXI_WDATA[105] = \<const0> ;
  assign M_AXI_WDATA[104] = \<const0> ;
  assign M_AXI_WDATA[103] = \<const0> ;
  assign M_AXI_WDATA[102] = \<const0> ;
  assign M_AXI_WDATA[101] = \<const0> ;
  assign M_AXI_WDATA[100] = \<const0> ;
  assign M_AXI_WDATA[99] = \<const0> ;
  assign M_AXI_WDATA[98] = \<const0> ;
  assign M_AXI_WDATA[97] = \<const0> ;
  assign M_AXI_WDATA[96] = \<const0> ;
  assign M_AXI_WDATA[95] = \<const0> ;
  assign M_AXI_WDATA[94] = \<const0> ;
  assign M_AXI_WDATA[93] = \<const0> ;
  assign M_AXI_WDATA[92] = \<const0> ;
  assign M_AXI_WDATA[91] = \<const0> ;
  assign M_AXI_WDATA[90] = \<const0> ;
  assign M_AXI_WDATA[89] = \<const0> ;
  assign M_AXI_WDATA[88] = \<const0> ;
  assign M_AXI_WDATA[87] = \<const0> ;
  assign M_AXI_WDATA[86] = \<const0> ;
  assign M_AXI_WDATA[85] = \<const0> ;
  assign M_AXI_WDATA[84] = \<const0> ;
  assign M_AXI_WDATA[83] = \<const0> ;
  assign M_AXI_WDATA[82] = \<const0> ;
  assign M_AXI_WDATA[81] = \<const0> ;
  assign M_AXI_WDATA[80] = \<const0> ;
  assign M_AXI_WDATA[79] = \<const0> ;
  assign M_AXI_WDATA[78] = \<const0> ;
  assign M_AXI_WDATA[77] = \<const0> ;
  assign M_AXI_WDATA[76] = \<const0> ;
  assign M_AXI_WDATA[75] = \<const0> ;
  assign M_AXI_WDATA[74] = \<const0> ;
  assign M_AXI_WDATA[73] = \<const0> ;
  assign M_AXI_WDATA[72] = \<const0> ;
  assign M_AXI_WDATA[71] = \<const0> ;
  assign M_AXI_WDATA[70] = \<const0> ;
  assign M_AXI_WDATA[69] = \<const0> ;
  assign M_AXI_WDATA[68] = \<const0> ;
  assign M_AXI_WDATA[67] = \<const0> ;
  assign M_AXI_WDATA[66] = \<const0> ;
  assign M_AXI_WDATA[65] = \<const0> ;
  assign M_AXI_WDATA[64] = \<const0> ;
  assign M_AXI_WDATA[63] = \<const0> ;
  assign M_AXI_WDATA[62] = \<const0> ;
  assign M_AXI_WDATA[61] = \<const0> ;
  assign M_AXI_WDATA[60] = \<const0> ;
  assign M_AXI_WDATA[59] = \<const0> ;
  assign M_AXI_WDATA[58] = \<const0> ;
  assign M_AXI_WDATA[57] = \<const0> ;
  assign M_AXI_WDATA[56] = \<const0> ;
  assign M_AXI_WDATA[55] = \<const0> ;
  assign M_AXI_WDATA[54] = \<const0> ;
  assign M_AXI_WDATA[53] = \<const0> ;
  assign M_AXI_WDATA[52] = \<const0> ;
  assign M_AXI_WDATA[51] = \<const0> ;
  assign M_AXI_WDATA[50] = \<const0> ;
  assign M_AXI_WDATA[49] = \<const0> ;
  assign M_AXI_WDATA[48] = \<const0> ;
  assign M_AXI_WDATA[47] = \<const0> ;
  assign M_AXI_WDATA[46] = \<const0> ;
  assign M_AXI_WDATA[45] = \<const0> ;
  assign M_AXI_WDATA[44] = \<const0> ;
  assign M_AXI_WDATA[43] = \<const0> ;
  assign M_AXI_WDATA[42] = \<const0> ;
  assign M_AXI_WDATA[41] = \<const0> ;
  assign M_AXI_WDATA[40] = \<const0> ;
  assign M_AXI_WDATA[39] = \<const0> ;
  assign M_AXI_WDATA[38] = \<const0> ;
  assign M_AXI_WDATA[37] = \<const0> ;
  assign M_AXI_WDATA[36] = \<const0> ;
  assign M_AXI_WDATA[35] = \<const0> ;
  assign M_AXI_WDATA[34] = \<const0> ;
  assign M_AXI_WDATA[33] = \<const0> ;
  assign M_AXI_WDATA[32] = \<const0> ;
  assign M_AXI_WDATA[31] = \<const0> ;
  assign M_AXI_WDATA[30] = \<const0> ;
  assign M_AXI_WDATA[29] = \<const0> ;
  assign M_AXI_WDATA[28] = \<const0> ;
  assign M_AXI_WDATA[27] = \<const0> ;
  assign M_AXI_WDATA[26] = \<const0> ;
  assign M_AXI_WDATA[25] = \<const0> ;
  assign M_AXI_WDATA[24] = \<const0> ;
  assign M_AXI_WDATA[23] = \<const0> ;
  assign M_AXI_WDATA[22] = \<const0> ;
  assign M_AXI_WDATA[21] = \<const0> ;
  assign M_AXI_WDATA[20] = \<const0> ;
  assign M_AXI_WDATA[19] = \<const0> ;
  assign M_AXI_WDATA[18] = \<const0> ;
  assign M_AXI_WDATA[17] = \<const0> ;
  assign M_AXI_WDATA[16] = \<const0> ;
  assign M_AXI_WDATA[15] = \<const0> ;
  assign M_AXI_WDATA[14] = \<const0> ;
  assign M_AXI_WDATA[13] = \<const0> ;
  assign M_AXI_WDATA[12] = \<const0> ;
  assign M_AXI_WDATA[11] = \<const0> ;
  assign M_AXI_WDATA[10] = \<const0> ;
  assign M_AXI_WDATA[9] = \<const0> ;
  assign M_AXI_WDATA[8] = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const0> ;
  assign M_AXI_WLAST = \<const0> ;
  assign M_AXI_WSTRB[31] = \<const1> ;
  assign M_AXI_WSTRB[30] = \<const1> ;
  assign M_AXI_WSTRB[29] = \<const1> ;
  assign M_AXI_WSTRB[28] = \<const1> ;
  assign M_AXI_WSTRB[27] = \<const1> ;
  assign M_AXI_WSTRB[26] = \<const1> ;
  assign M_AXI_WSTRB[25] = \<const1> ;
  assign M_AXI_WSTRB[24] = \<const1> ;
  assign M_AXI_WSTRB[23] = \<const1> ;
  assign M_AXI_WSTRB[22] = \<const1> ;
  assign M_AXI_WSTRB[21] = \<const1> ;
  assign M_AXI_WSTRB[20] = \<const1> ;
  assign M_AXI_WSTRB[19] = \<const1> ;
  assign M_AXI_WSTRB[18] = \<const1> ;
  assign M_AXI_WSTRB[17] = \<const1> ;
  assign M_AXI_WSTRB[16] = \<const1> ;
  assign M_AXI_WSTRB[15] = \<const1> ;
  assign M_AXI_WSTRB[14] = \<const1> ;
  assign M_AXI_WSTRB[13] = \<const1> ;
  assign M_AXI_WSTRB[12] = \<const1> ;
  assign M_AXI_WSTRB[11] = \<const1> ;
  assign M_AXI_WSTRB[10] = \<const1> ;
  assign M_AXI_WSTRB[9] = \<const1> ;
  assign M_AXI_WSTRB[8] = \<const1> ;
  assign M_AXI_WSTRB[7] = \<const1> ;
  assign M_AXI_WSTRB[6] = \<const1> ;
  assign M_AXI_WSTRB[5] = \<const1> ;
  assign M_AXI_WSTRB[4] = \<const1> ;
  assign M_AXI_WSTRB[3] = \<const1> ;
  assign M_AXI_WSTRB[2] = \<const1> ;
  assign M_AXI_WSTRB[1] = \<const1> ;
  assign M_AXI_WSTRB[0] = \<const1> ;
  assign M_AXI_WVALID = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ps_axi_int_0_0_axi_int inst
       (.M_AXI_AWADDR(NLW_inst_M_AXI_AWADDR_UNCONNECTED[31:0]),
        .M_AXI_AWBURST(NLW_inst_M_AXI_AWBURST_UNCONNECTED[1:0]),
        .M_AXI_AWLEN(NLW_inst_M_AXI_AWLEN_UNCONNECTED[7:0]),
        .M_AXI_AWPROT(NLW_inst_M_AXI_AWPROT_UNCONNECTED[1:0]),
        .M_AXI_AWREADY(1'b0),
        .M_AXI_AWSIZE(NLW_inst_M_AXI_AWSIZE_UNCONNECTED[2:0]),
        .M_AXI_AWVALID(NLW_inst_M_AXI_AWVALID_UNCONNECTED),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BRESP({1'b0,1'b0}),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WDATA(NLW_inst_M_AXI_WDATA_UNCONNECTED[255:0]),
        .M_AXI_WLAST(NLW_inst_M_AXI_WLAST_UNCONNECTED),
        .M_AXI_WREADY(1'b0),
        .M_AXI_WSTRB(NLW_inst_M_AXI_WSTRB_UNCONNECTED[31:0]),
        .M_AXI_WVALID(NLW_inst_M_AXI_WVALID_UNCONNECTED),
        .clk(clk),
        .resetn(resetn),
        .up(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_int" *) 
module ps_axi_int_0_0_axi_int
   (clk,
    resetn,
    up,
    M_AXI_AWADDR,
    M_AXI_AWLEN,
    M_AXI_AWSIZE,
    M_AXI_AWPROT,
    M_AXI_AWBURST,
    M_AXI_WSTRB,
    M_AXI_AWVALID,
    M_AXI_AWREADY,
    M_AXI_WDATA,
    M_AXI_WLAST,
    M_AXI_WVALID,
    M_AXI_WREADY,
    M_AXI_BVALID,
    M_AXI_BRESP,
    M_AXI_BREADY);
  input clk;
  input resetn;
  input up;
  output [31:0]M_AXI_AWADDR;
  output [7:0]M_AXI_AWLEN;
  output [2:0]M_AXI_AWSIZE;
  output [1:0]M_AXI_AWPROT;
  output [1:0]M_AXI_AWBURST;
  output [31:0]M_AXI_WSTRB;
  output M_AXI_AWVALID;
  input M_AXI_AWREADY;
  output [255:0]M_AXI_WDATA;
  output M_AXI_WLAST;
  output M_AXI_WVALID;
  input M_AXI_WREADY;
  input M_AXI_BVALID;
  input [1:0]M_AXI_BRESP;
  output M_AXI_BREADY;

  wire \<const0> ;
  wire M_AXI_BREADY;
  wire M_AXI_BVALID;
  wire \axi_int.M_AXI_BREADY_i_1_n_0 ;
  wire clk;
  wire p_0_in;
  wire reset;
  wire resetn;

  assign M_AXI_AWADDR[31] = \<const0> ;
  assign M_AXI_AWADDR[30] = \<const0> ;
  assign M_AXI_AWADDR[29] = \<const0> ;
  assign M_AXI_AWADDR[28] = \<const0> ;
  assign M_AXI_AWADDR[27] = \<const0> ;
  assign M_AXI_AWADDR[26] = \<const0> ;
  assign M_AXI_AWADDR[25] = \<const0> ;
  assign M_AXI_AWADDR[24] = \<const0> ;
  assign M_AXI_AWADDR[23] = \<const0> ;
  assign M_AXI_AWADDR[22] = \<const0> ;
  assign M_AXI_AWADDR[21] = \<const0> ;
  assign M_AXI_AWADDR[20] = \<const0> ;
  assign M_AXI_AWADDR[19] = \<const0> ;
  assign M_AXI_AWADDR[18] = \<const0> ;
  assign M_AXI_AWADDR[17] = \<const0> ;
  assign M_AXI_AWADDR[16] = \<const0> ;
  assign M_AXI_AWADDR[15] = \<const0> ;
  assign M_AXI_AWADDR[14] = \<const0> ;
  assign M_AXI_AWADDR[13] = \<const0> ;
  assign M_AXI_AWADDR[12] = \<const0> ;
  assign M_AXI_AWADDR[11] = \<const0> ;
  assign M_AXI_AWADDR[10] = \<const0> ;
  assign M_AXI_AWADDR[9] = \<const0> ;
  assign M_AXI_AWADDR[8] = \<const0> ;
  assign M_AXI_AWADDR[7] = \<const0> ;
  assign M_AXI_AWADDR[6] = \<const0> ;
  assign M_AXI_AWADDR[5] = \<const0> ;
  assign M_AXI_AWADDR[4] = \<const0> ;
  assign M_AXI_AWADDR[3] = \<const0> ;
  assign M_AXI_AWADDR[2] = \<const0> ;
  assign M_AXI_AWADDR[1] = \<const0> ;
  assign M_AXI_AWADDR[0] = \<const0> ;
  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const0> ;
  assign M_AXI_AWLEN[7] = \<const0> ;
  assign M_AXI_AWLEN[6] = \<const0> ;
  assign M_AXI_AWLEN[5] = \<const0> ;
  assign M_AXI_AWLEN[4] = \<const0> ;
  assign M_AXI_AWLEN[3] = \<const0> ;
  assign M_AXI_AWLEN[2] = \<const0> ;
  assign M_AXI_AWLEN[1] = \<const0> ;
  assign M_AXI_AWLEN[0] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
  assign M_AXI_AWVALID = \<const0> ;
  assign M_AXI_WDATA[255] = \<const0> ;
  assign M_AXI_WDATA[254] = \<const0> ;
  assign M_AXI_WDATA[253] = \<const0> ;
  assign M_AXI_WDATA[252] = \<const0> ;
  assign M_AXI_WDATA[251] = \<const0> ;
  assign M_AXI_WDATA[250] = \<const0> ;
  assign M_AXI_WDATA[249] = \<const0> ;
  assign M_AXI_WDATA[248] = \<const0> ;
  assign M_AXI_WDATA[247] = \<const0> ;
  assign M_AXI_WDATA[246] = \<const0> ;
  assign M_AXI_WDATA[245] = \<const0> ;
  assign M_AXI_WDATA[244] = \<const0> ;
  assign M_AXI_WDATA[243] = \<const0> ;
  assign M_AXI_WDATA[242] = \<const0> ;
  assign M_AXI_WDATA[241] = \<const0> ;
  assign M_AXI_WDATA[240] = \<const0> ;
  assign M_AXI_WDATA[239] = \<const0> ;
  assign M_AXI_WDATA[238] = \<const0> ;
  assign M_AXI_WDATA[237] = \<const0> ;
  assign M_AXI_WDATA[236] = \<const0> ;
  assign M_AXI_WDATA[235] = \<const0> ;
  assign M_AXI_WDATA[234] = \<const0> ;
  assign M_AXI_WDATA[233] = \<const0> ;
  assign M_AXI_WDATA[232] = \<const0> ;
  assign M_AXI_WDATA[231] = \<const0> ;
  assign M_AXI_WDATA[230] = \<const0> ;
  assign M_AXI_WDATA[229] = \<const0> ;
  assign M_AXI_WDATA[228] = \<const0> ;
  assign M_AXI_WDATA[227] = \<const0> ;
  assign M_AXI_WDATA[226] = \<const0> ;
  assign M_AXI_WDATA[225] = \<const0> ;
  assign M_AXI_WDATA[224] = \<const0> ;
  assign M_AXI_WDATA[223] = \<const0> ;
  assign M_AXI_WDATA[222] = \<const0> ;
  assign M_AXI_WDATA[221] = \<const0> ;
  assign M_AXI_WDATA[220] = \<const0> ;
  assign M_AXI_WDATA[219] = \<const0> ;
  assign M_AXI_WDATA[218] = \<const0> ;
  assign M_AXI_WDATA[217] = \<const0> ;
  assign M_AXI_WDATA[216] = \<const0> ;
  assign M_AXI_WDATA[215] = \<const0> ;
  assign M_AXI_WDATA[214] = \<const0> ;
  assign M_AXI_WDATA[213] = \<const0> ;
  assign M_AXI_WDATA[212] = \<const0> ;
  assign M_AXI_WDATA[211] = \<const0> ;
  assign M_AXI_WDATA[210] = \<const0> ;
  assign M_AXI_WDATA[209] = \<const0> ;
  assign M_AXI_WDATA[208] = \<const0> ;
  assign M_AXI_WDATA[207] = \<const0> ;
  assign M_AXI_WDATA[206] = \<const0> ;
  assign M_AXI_WDATA[205] = \<const0> ;
  assign M_AXI_WDATA[204] = \<const0> ;
  assign M_AXI_WDATA[203] = \<const0> ;
  assign M_AXI_WDATA[202] = \<const0> ;
  assign M_AXI_WDATA[201] = \<const0> ;
  assign M_AXI_WDATA[200] = \<const0> ;
  assign M_AXI_WDATA[199] = \<const0> ;
  assign M_AXI_WDATA[198] = \<const0> ;
  assign M_AXI_WDATA[197] = \<const0> ;
  assign M_AXI_WDATA[196] = \<const0> ;
  assign M_AXI_WDATA[195] = \<const0> ;
  assign M_AXI_WDATA[194] = \<const0> ;
  assign M_AXI_WDATA[193] = \<const0> ;
  assign M_AXI_WDATA[192] = \<const0> ;
  assign M_AXI_WDATA[191] = \<const0> ;
  assign M_AXI_WDATA[190] = \<const0> ;
  assign M_AXI_WDATA[189] = \<const0> ;
  assign M_AXI_WDATA[188] = \<const0> ;
  assign M_AXI_WDATA[187] = \<const0> ;
  assign M_AXI_WDATA[186] = \<const0> ;
  assign M_AXI_WDATA[185] = \<const0> ;
  assign M_AXI_WDATA[184] = \<const0> ;
  assign M_AXI_WDATA[183] = \<const0> ;
  assign M_AXI_WDATA[182] = \<const0> ;
  assign M_AXI_WDATA[181] = \<const0> ;
  assign M_AXI_WDATA[180] = \<const0> ;
  assign M_AXI_WDATA[179] = \<const0> ;
  assign M_AXI_WDATA[178] = \<const0> ;
  assign M_AXI_WDATA[177] = \<const0> ;
  assign M_AXI_WDATA[176] = \<const0> ;
  assign M_AXI_WDATA[175] = \<const0> ;
  assign M_AXI_WDATA[174] = \<const0> ;
  assign M_AXI_WDATA[173] = \<const0> ;
  assign M_AXI_WDATA[172] = \<const0> ;
  assign M_AXI_WDATA[171] = \<const0> ;
  assign M_AXI_WDATA[170] = \<const0> ;
  assign M_AXI_WDATA[169] = \<const0> ;
  assign M_AXI_WDATA[168] = \<const0> ;
  assign M_AXI_WDATA[167] = \<const0> ;
  assign M_AXI_WDATA[166] = \<const0> ;
  assign M_AXI_WDATA[165] = \<const0> ;
  assign M_AXI_WDATA[164] = \<const0> ;
  assign M_AXI_WDATA[163] = \<const0> ;
  assign M_AXI_WDATA[162] = \<const0> ;
  assign M_AXI_WDATA[161] = \<const0> ;
  assign M_AXI_WDATA[160] = \<const0> ;
  assign M_AXI_WDATA[159] = \<const0> ;
  assign M_AXI_WDATA[158] = \<const0> ;
  assign M_AXI_WDATA[157] = \<const0> ;
  assign M_AXI_WDATA[156] = \<const0> ;
  assign M_AXI_WDATA[155] = \<const0> ;
  assign M_AXI_WDATA[154] = \<const0> ;
  assign M_AXI_WDATA[153] = \<const0> ;
  assign M_AXI_WDATA[152] = \<const0> ;
  assign M_AXI_WDATA[151] = \<const0> ;
  assign M_AXI_WDATA[150] = \<const0> ;
  assign M_AXI_WDATA[149] = \<const0> ;
  assign M_AXI_WDATA[148] = \<const0> ;
  assign M_AXI_WDATA[147] = \<const0> ;
  assign M_AXI_WDATA[146] = \<const0> ;
  assign M_AXI_WDATA[145] = \<const0> ;
  assign M_AXI_WDATA[144] = \<const0> ;
  assign M_AXI_WDATA[143] = \<const0> ;
  assign M_AXI_WDATA[142] = \<const0> ;
  assign M_AXI_WDATA[141] = \<const0> ;
  assign M_AXI_WDATA[140] = \<const0> ;
  assign M_AXI_WDATA[139] = \<const0> ;
  assign M_AXI_WDATA[138] = \<const0> ;
  assign M_AXI_WDATA[137] = \<const0> ;
  assign M_AXI_WDATA[136] = \<const0> ;
  assign M_AXI_WDATA[135] = \<const0> ;
  assign M_AXI_WDATA[134] = \<const0> ;
  assign M_AXI_WDATA[133] = \<const0> ;
  assign M_AXI_WDATA[132] = \<const0> ;
  assign M_AXI_WDATA[131] = \<const0> ;
  assign M_AXI_WDATA[130] = \<const0> ;
  assign M_AXI_WDATA[129] = \<const0> ;
  assign M_AXI_WDATA[128] = \<const0> ;
  assign M_AXI_WDATA[127] = \<const0> ;
  assign M_AXI_WDATA[126] = \<const0> ;
  assign M_AXI_WDATA[125] = \<const0> ;
  assign M_AXI_WDATA[124] = \<const0> ;
  assign M_AXI_WDATA[123] = \<const0> ;
  assign M_AXI_WDATA[122] = \<const0> ;
  assign M_AXI_WDATA[121] = \<const0> ;
  assign M_AXI_WDATA[120] = \<const0> ;
  assign M_AXI_WDATA[119] = \<const0> ;
  assign M_AXI_WDATA[118] = \<const0> ;
  assign M_AXI_WDATA[117] = \<const0> ;
  assign M_AXI_WDATA[116] = \<const0> ;
  assign M_AXI_WDATA[115] = \<const0> ;
  assign M_AXI_WDATA[114] = \<const0> ;
  assign M_AXI_WDATA[113] = \<const0> ;
  assign M_AXI_WDATA[112] = \<const0> ;
  assign M_AXI_WDATA[111] = \<const0> ;
  assign M_AXI_WDATA[110] = \<const0> ;
  assign M_AXI_WDATA[109] = \<const0> ;
  assign M_AXI_WDATA[108] = \<const0> ;
  assign M_AXI_WDATA[107] = \<const0> ;
  assign M_AXI_WDATA[106] = \<const0> ;
  assign M_AXI_WDATA[105] = \<const0> ;
  assign M_AXI_WDATA[104] = \<const0> ;
  assign M_AXI_WDATA[103] = \<const0> ;
  assign M_AXI_WDATA[102] = \<const0> ;
  assign M_AXI_WDATA[101] = \<const0> ;
  assign M_AXI_WDATA[100] = \<const0> ;
  assign M_AXI_WDATA[99] = \<const0> ;
  assign M_AXI_WDATA[98] = \<const0> ;
  assign M_AXI_WDATA[97] = \<const0> ;
  assign M_AXI_WDATA[96] = \<const0> ;
  assign M_AXI_WDATA[95] = \<const0> ;
  assign M_AXI_WDATA[94] = \<const0> ;
  assign M_AXI_WDATA[93] = \<const0> ;
  assign M_AXI_WDATA[92] = \<const0> ;
  assign M_AXI_WDATA[91] = \<const0> ;
  assign M_AXI_WDATA[90] = \<const0> ;
  assign M_AXI_WDATA[89] = \<const0> ;
  assign M_AXI_WDATA[88] = \<const0> ;
  assign M_AXI_WDATA[87] = \<const0> ;
  assign M_AXI_WDATA[86] = \<const0> ;
  assign M_AXI_WDATA[85] = \<const0> ;
  assign M_AXI_WDATA[84] = \<const0> ;
  assign M_AXI_WDATA[83] = \<const0> ;
  assign M_AXI_WDATA[82] = \<const0> ;
  assign M_AXI_WDATA[81] = \<const0> ;
  assign M_AXI_WDATA[80] = \<const0> ;
  assign M_AXI_WDATA[79] = \<const0> ;
  assign M_AXI_WDATA[78] = \<const0> ;
  assign M_AXI_WDATA[77] = \<const0> ;
  assign M_AXI_WDATA[76] = \<const0> ;
  assign M_AXI_WDATA[75] = \<const0> ;
  assign M_AXI_WDATA[74] = \<const0> ;
  assign M_AXI_WDATA[73] = \<const0> ;
  assign M_AXI_WDATA[72] = \<const0> ;
  assign M_AXI_WDATA[71] = \<const0> ;
  assign M_AXI_WDATA[70] = \<const0> ;
  assign M_AXI_WDATA[69] = \<const0> ;
  assign M_AXI_WDATA[68] = \<const0> ;
  assign M_AXI_WDATA[67] = \<const0> ;
  assign M_AXI_WDATA[66] = \<const0> ;
  assign M_AXI_WDATA[65] = \<const0> ;
  assign M_AXI_WDATA[64] = \<const0> ;
  assign M_AXI_WDATA[63] = \<const0> ;
  assign M_AXI_WDATA[62] = \<const0> ;
  assign M_AXI_WDATA[61] = \<const0> ;
  assign M_AXI_WDATA[60] = \<const0> ;
  assign M_AXI_WDATA[59] = \<const0> ;
  assign M_AXI_WDATA[58] = \<const0> ;
  assign M_AXI_WDATA[57] = \<const0> ;
  assign M_AXI_WDATA[56] = \<const0> ;
  assign M_AXI_WDATA[55] = \<const0> ;
  assign M_AXI_WDATA[54] = \<const0> ;
  assign M_AXI_WDATA[53] = \<const0> ;
  assign M_AXI_WDATA[52] = \<const0> ;
  assign M_AXI_WDATA[51] = \<const0> ;
  assign M_AXI_WDATA[50] = \<const0> ;
  assign M_AXI_WDATA[49] = \<const0> ;
  assign M_AXI_WDATA[48] = \<const0> ;
  assign M_AXI_WDATA[47] = \<const0> ;
  assign M_AXI_WDATA[46] = \<const0> ;
  assign M_AXI_WDATA[45] = \<const0> ;
  assign M_AXI_WDATA[44] = \<const0> ;
  assign M_AXI_WDATA[43] = \<const0> ;
  assign M_AXI_WDATA[42] = \<const0> ;
  assign M_AXI_WDATA[41] = \<const0> ;
  assign M_AXI_WDATA[40] = \<const0> ;
  assign M_AXI_WDATA[39] = \<const0> ;
  assign M_AXI_WDATA[38] = \<const0> ;
  assign M_AXI_WDATA[37] = \<const0> ;
  assign M_AXI_WDATA[36] = \<const0> ;
  assign M_AXI_WDATA[35] = \<const0> ;
  assign M_AXI_WDATA[34] = \<const0> ;
  assign M_AXI_WDATA[33] = \<const0> ;
  assign M_AXI_WDATA[32] = \<const0> ;
  assign M_AXI_WDATA[31] = \<const0> ;
  assign M_AXI_WDATA[30] = \<const0> ;
  assign M_AXI_WDATA[29] = \<const0> ;
  assign M_AXI_WDATA[28] = \<const0> ;
  assign M_AXI_WDATA[27] = \<const0> ;
  assign M_AXI_WDATA[26] = \<const0> ;
  assign M_AXI_WDATA[25] = \<const0> ;
  assign M_AXI_WDATA[24] = \<const0> ;
  assign M_AXI_WDATA[23] = \<const0> ;
  assign M_AXI_WDATA[22] = \<const0> ;
  assign M_AXI_WDATA[21] = \<const0> ;
  assign M_AXI_WDATA[20] = \<const0> ;
  assign M_AXI_WDATA[19] = \<const0> ;
  assign M_AXI_WDATA[18] = \<const0> ;
  assign M_AXI_WDATA[17] = \<const0> ;
  assign M_AXI_WDATA[16] = \<const0> ;
  assign M_AXI_WDATA[15] = \<const0> ;
  assign M_AXI_WDATA[14] = \<const0> ;
  assign M_AXI_WDATA[13] = \<const0> ;
  assign M_AXI_WDATA[12] = \<const0> ;
  assign M_AXI_WDATA[11] = \<const0> ;
  assign M_AXI_WDATA[10] = \<const0> ;
  assign M_AXI_WDATA[9] = \<const0> ;
  assign M_AXI_WDATA[8] = \<const0> ;
  assign M_AXI_WDATA[7] = \<const0> ;
  assign M_AXI_WDATA[6] = \<const0> ;
  assign M_AXI_WDATA[5] = \<const0> ;
  assign M_AXI_WDATA[4] = \<const0> ;
  assign M_AXI_WDATA[3] = \<const0> ;
  assign M_AXI_WDATA[2] = \<const0> ;
  assign M_AXI_WDATA[1] = \<const0> ;
  assign M_AXI_WDATA[0] = \<const0> ;
  assign M_AXI_WLAST = \<const0> ;
  assign M_AXI_WSTRB[31] = \<const0> ;
  assign M_AXI_WSTRB[30] = \<const0> ;
  assign M_AXI_WSTRB[29] = \<const0> ;
  assign M_AXI_WSTRB[28] = \<const0> ;
  assign M_AXI_WSTRB[27] = \<const0> ;
  assign M_AXI_WSTRB[26] = \<const0> ;
  assign M_AXI_WSTRB[25] = \<const0> ;
  assign M_AXI_WSTRB[24] = \<const0> ;
  assign M_AXI_WSTRB[23] = \<const0> ;
  assign M_AXI_WSTRB[22] = \<const0> ;
  assign M_AXI_WSTRB[21] = \<const0> ;
  assign M_AXI_WSTRB[20] = \<const0> ;
  assign M_AXI_WSTRB[19] = \<const0> ;
  assign M_AXI_WSTRB[18] = \<const0> ;
  assign M_AXI_WSTRB[17] = \<const0> ;
  assign M_AXI_WSTRB[16] = \<const0> ;
  assign M_AXI_WSTRB[15] = \<const0> ;
  assign M_AXI_WSTRB[14] = \<const0> ;
  assign M_AXI_WSTRB[13] = \<const0> ;
  assign M_AXI_WSTRB[12] = \<const0> ;
  assign M_AXI_WSTRB[11] = \<const0> ;
  assign M_AXI_WSTRB[10] = \<const0> ;
  assign M_AXI_WSTRB[9] = \<const0> ;
  assign M_AXI_WSTRB[8] = \<const0> ;
  assign M_AXI_WSTRB[7] = \<const0> ;
  assign M_AXI_WSTRB[6] = \<const0> ;
  assign M_AXI_WSTRB[5] = \<const0> ;
  assign M_AXI_WSTRB[4] = \<const0> ;
  assign M_AXI_WSTRB[3] = \<const0> ;
  assign M_AXI_WSTRB[2] = \<const0> ;
  assign M_AXI_WSTRB[1] = \<const0> ;
  assign M_AXI_WSTRB[0] = \<const0> ;
  assign M_AXI_WVALID = \<const0> ;
  GND GND
       (.G(\<const0> ));
  LUT3 #(
    .INIT(8'h10)) 
    \axi_int.M_AXI_BREADY_i_1 
       (.I0(reset),
        .I1(M_AXI_BREADY),
        .I2(M_AXI_BVALID),
        .O(\axi_int.M_AXI_BREADY_i_1_n_0 ));
  FDRE \axi_int.M_AXI_BREADY_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.M_AXI_BREADY_i_1_n_0 ),
        .Q(M_AXI_BREADY),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_int.reset_i_1 
       (.I0(resetn),
        .O(p_0_in));
  FDRE \axi_int.reset_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in),
        .Q(reset),
        .R(1'b0));
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
