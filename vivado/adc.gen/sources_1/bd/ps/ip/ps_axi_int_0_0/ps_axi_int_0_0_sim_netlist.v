// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Mar  4 22:04:29 2026
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
   (config_clk,
    config_wr,
    config_adr,
    config_data,
    clk,
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 config_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME config_clk, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input clk;
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
  wire [31:0]M_AXI_AWADDR;
  wire [7:0]M_AXI_AWLEN;
  wire M_AXI_AWREADY;
  wire M_AXI_AWVALID;
  wire M_AXI_BREADY;
  wire [1:0]M_AXI_BRESP;
  wire M_AXI_BVALID;
  wire [255:0]M_AXI_WDATA;
  wire M_AXI_WLAST;
  wire M_AXI_WREADY;
  wire M_AXI_WVALID;
  wire clk;
  wire [7:0]config_adr;
  wire config_clk;
  wire [31:0]config_data;
  wire config_wr;
  wire resetn;
  wire up;
  wire [1:0]NLW_inst_M_AXI_AWBURST_UNCONNECTED;
  wire [1:0]NLW_inst_M_AXI_AWPROT_UNCONNECTED;
  wire [2:0]NLW_inst_M_AXI_AWSIZE_UNCONNECTED;
  wire [31:0]NLW_inst_M_AXI_WSTRB_UNCONNECTED;

  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const1> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const1> ;
  assign M_AXI_AWSIZE[2] = \<const1> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const1> ;
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
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  ps_axi_int_0_0_axi_int inst
       (.M_AXI_AWADDR(M_AXI_AWADDR),
        .M_AXI_AWBURST(NLW_inst_M_AXI_AWBURST_UNCONNECTED[1:0]),
        .M_AXI_AWLEN(M_AXI_AWLEN),
        .M_AXI_AWPROT(NLW_inst_M_AXI_AWPROT_UNCONNECTED[1:0]),
        .M_AXI_AWREADY(M_AXI_AWREADY),
        .M_AXI_AWSIZE(NLW_inst_M_AXI_AWSIZE_UNCONNECTED[2:0]),
        .M_AXI_AWVALID(M_AXI_AWVALID),
        .M_AXI_BREADY(M_AXI_BREADY),
        .M_AXI_BRESP(M_AXI_BRESP),
        .M_AXI_BVALID(M_AXI_BVALID),
        .M_AXI_WDATA(M_AXI_WDATA),
        .M_AXI_WLAST(M_AXI_WLAST),
        .M_AXI_WREADY(M_AXI_WREADY),
        .M_AXI_WSTRB(NLW_inst_M_AXI_WSTRB_UNCONNECTED[31:0]),
        .M_AXI_WVALID(M_AXI_WVALID),
        .clk(clk),
        .config_adr(config_adr),
        .config_clk(config_clk),
        .config_data(config_data),
        .config_wr(config_wr),
        .resetn(resetn),
        .up(up));
endmodule

(* ORIG_REF_NAME = "axi_int" *) (* keep_hierarchy = "soft" *) 
module ps_axi_int_0_0_axi_int
   (config_clk,
    config_wr,
    config_adr,
    config_data,
    clk,
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
  input config_clk;
  input config_wr;
  input [7:0]config_adr;
  input [31:0]config_data;
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
  (* MARK_DEBUG *) wire [31:0]M_AXI_AWADDR;
  (* MARK_DEBUG *) wire [7:0]M_AXI_AWLEN;
  wire [0:0]M_AXI_AWLEN0;
  (* MARK_DEBUG *) wire M_AXI_AWREADY;
  (* MARK_DEBUG *) wire M_AXI_AWVALID;
  (* MARK_DEBUG *) wire M_AXI_BREADY;
  (* MARK_DEBUG *) wire [1:0]M_AXI_BRESP;
  (* MARK_DEBUG *) wire M_AXI_BVALID;
  (* MARK_DEBUG *) wire [255:0]M_AXI_WDATA;
  (* MARK_DEBUG *) wire M_AXI_WLAST;
  (* MARK_DEBUG *) wire M_AXI_WREADY;
  (* MARK_DEBUG *) wire M_AXI_WVALID;
  (* MARK_DEBUG *) wire [26:0]adr;
  wire [26:0]adr__0;
  wire \axi_int.M_AXI_AWADDR[10]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[11]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[12]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[13]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[14]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[15]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[16]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[17]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[18]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[19]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[20]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[21]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[22]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[23]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[24]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[25]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[26]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[27]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[28]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[29]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[30]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[31]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[31]_i_2_n_0 ;
  wire \axi_int.M_AXI_AWADDR[4]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[5]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[6]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[7]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[8]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWADDR[9]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[0]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[1]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[2]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[3]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[4]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[4]_i_2_n_0 ;
  wire \axi_int.M_AXI_AWLEN[5]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[6]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[7]_i_1_n_0 ;
  wire \axi_int.M_AXI_AWLEN[7]_i_3_n_0 ;
  wire \axi_int.M_AXI_AWVALID_i_1_n_0 ;
  wire \axi_int.M_AXI_AWVALID_reg0 ;
  wire \axi_int.M_AXI_WDATA[255]_i_1_n_0 ;
  wire \axi_int.M_AXI_WDATA[39]_i_1_n_0 ;
  wire \axi_int.M_AXI_WLAST_i_1_n_0 ;
  wire \axi_int.M_AXI_WVALID_i_1_n_0 ;
  wire \axi_int.adr[26]_i_1_n_0 ;
  wire \axi_int.adr[7]_i_2_n_0 ;
  wire \axi_int.adr_reg[15]_i_1_n_0 ;
  wire \axi_int.adr_reg[15]_i_1_n_1 ;
  wire \axi_int.adr_reg[15]_i_1_n_2 ;
  wire \axi_int.adr_reg[15]_i_1_n_3 ;
  wire \axi_int.adr_reg[15]_i_1_n_4 ;
  wire \axi_int.adr_reg[15]_i_1_n_5 ;
  wire \axi_int.adr_reg[15]_i_1_n_6 ;
  wire \axi_int.adr_reg[15]_i_1_n_7 ;
  wire \axi_int.adr_reg[23]_i_1_n_0 ;
  wire \axi_int.adr_reg[23]_i_1_n_1 ;
  wire \axi_int.adr_reg[23]_i_1_n_2 ;
  wire \axi_int.adr_reg[23]_i_1_n_3 ;
  wire \axi_int.adr_reg[23]_i_1_n_4 ;
  wire \axi_int.adr_reg[23]_i_1_n_5 ;
  wire \axi_int.adr_reg[23]_i_1_n_6 ;
  wire \axi_int.adr_reg[23]_i_1_n_7 ;
  wire \axi_int.adr_reg[26]_i_2_n_6 ;
  wire \axi_int.adr_reg[26]_i_2_n_7 ;
  wire \axi_int.adr_reg[7]_i_1_n_0 ;
  wire \axi_int.adr_reg[7]_i_1_n_1 ;
  wire \axi_int.adr_reg[7]_i_1_n_2 ;
  wire \axi_int.adr_reg[7]_i_1_n_3 ;
  wire \axi_int.adr_reg[7]_i_1_n_4 ;
  wire \axi_int.adr_reg[7]_i_1_n_5 ;
  wire \axi_int.adr_reg[7]_i_1_n_6 ;
  wire \axi_int.adr_reg[7]_i_1_n_7 ;
  wire \axi_int.busy_i_1_n_0 ;
  wire \axi_int.counter[0]_i_1_n_0 ;
  wire \axi_int.counter[1]_i_1_n_0 ;
  wire \axi_int.counter[2]_i_1_n_0 ;
  wire \axi_int.counter[3]_i_1_n_0 ;
  wire \axi_int.counter[3]_i_2_n_0 ;
  wire \axi_int.counter[4]_i_1_n_0 ;
  wire \axi_int.counter[4]_i_2_n_0 ;
  wire \axi_int.counter[5]_i_1_n_0 ;
  wire \axi_int.counter[5]_i_2_n_0 ;
  wire \axi_int.counter[6]_i_1_n_0 ;
  wire \axi_int.counter[6]_i_2_n_0 ;
  wire \axi_int.counter[7]_i_1_n_0 ;
  wire \axi_int.counter[7]_i_2_n_0 ;
  wire \axi_int.counter[7]_i_3_n_0 ;
  wire \axi_int.counter[7]_i_4_n_0 ;
  wire \axi_int.req_i_1_n_0 ;
  wire \axi_int.req_reg0 ;
  wire \axi_int.req_timeout[1]_i_1_n_0 ;
  wire \axi_int.req_timeout[2]_i_1_n_0 ;
  wire \axi_int.req_timeout[3]_i_1_n_0 ;
  wire \axi_int.req_timeout[4]_i_1_n_0 ;
  wire \axi_int.req_timeout[5]_i_1_n_0 ;
  wire \axi_int.req_timeout[6]_i_1_n_0 ;
  wire \axi_int.req_timeout[7]_i_2_n_0 ;
  wire \axi_int.req_timeout[7]_i_3_n_0 ;
  wire \axi_int.req_timeout[7]_i_4_n_0 ;
  wire [0:0]\axi_int.req_timeout_reg0 ;
  wire \axi_int.size[1]_i_1_n_0 ;
  wire \axi_int.size[2]_i_1_n_0 ;
  wire \axi_int.size[3]_i_1_n_0 ;
  wire \axi_int.size[4]_i_1_n_0 ;
  wire \axi_int.size[5]_i_1_n_0 ;
  wire \axi_int.size[6]_i_1_n_0 ;
  wire \axi_int.size[7]_i_2_n_0 ;
  wire \axi_int.size[7]_i_3_n_0 ;
  (* MARK_DEBUG *) wire busy;
  wire cfg_empty;
  wire clk;
  wire [7:0]config_adr;
  wire config_clk;
  wire [31:0]config_data;
  wire [39:0]config_data_adr_out;
  wire config_wr;
  (* MARK_DEBUG *) wire [7:0]counter;
  wire next;
  wire p_0_in__0;
  wire [39:0]p_1_in__0;
  (* MARK_DEBUG *) wire req;
  (* MARK_DEBUG *) wire [7:0]req_timeout;
  wire reset;
  wire resetn;
  (* MARK_DEBUG *) wire [7:0]size;
  wire start;
  (* MARK_DEBUG *) wire up;
  wire [7:2]\NLW_axi_int.adr_reg[26]_i_2_CO_UNCONNECTED ;
  wire [7:3]\NLW_axi_int.adr_reg[26]_i_2_O_UNCONNECTED ;
  wire NLW_fifo_config_i_full_UNCONNECTED;
  wire NLW_fifo_config_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_config_i_wr_rst_busy_UNCONNECTED;

  assign M_AXI_AWBURST[1] = \<const0> ;
  assign M_AXI_AWBURST[0] = \<const0> ;
  assign M_AXI_AWPROT[1] = \<const0> ;
  assign M_AXI_AWPROT[0] = \<const0> ;
  assign M_AXI_AWSIZE[2] = \<const0> ;
  assign M_AXI_AWSIZE[1] = \<const0> ;
  assign M_AXI_AWSIZE[0] = \<const0> ;
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
  GND GND
       (.G(\<const0> ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[10]_i_1 
       (.I0(M_AXI_AWADDR[10]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[5]),
        .O(\axi_int.M_AXI_AWADDR[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[11]_i_1 
       (.I0(M_AXI_AWADDR[11]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[6]),
        .O(\axi_int.M_AXI_AWADDR[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[12]_i_1 
       (.I0(M_AXI_AWADDR[12]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[7]),
        .O(\axi_int.M_AXI_AWADDR[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[13]_i_1 
       (.I0(M_AXI_AWADDR[13]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[8]),
        .O(\axi_int.M_AXI_AWADDR[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[14]_i_1 
       (.I0(M_AXI_AWADDR[14]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[9]),
        .O(\axi_int.M_AXI_AWADDR[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[15]_i_1 
       (.I0(M_AXI_AWADDR[15]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[10]),
        .O(\axi_int.M_AXI_AWADDR[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[16]_i_1 
       (.I0(M_AXI_AWADDR[16]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[11]),
        .O(\axi_int.M_AXI_AWADDR[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[17]_i_1 
       (.I0(M_AXI_AWADDR[17]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[12]),
        .O(\axi_int.M_AXI_AWADDR[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[18]_i_1 
       (.I0(M_AXI_AWADDR[18]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[13]),
        .O(\axi_int.M_AXI_AWADDR[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[19]_i_1 
       (.I0(M_AXI_AWADDR[19]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[14]),
        .O(\axi_int.M_AXI_AWADDR[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[20]_i_1 
       (.I0(M_AXI_AWADDR[20]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[15]),
        .O(\axi_int.M_AXI_AWADDR[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[21]_i_1 
       (.I0(M_AXI_AWADDR[21]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[16]),
        .O(\axi_int.M_AXI_AWADDR[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[22]_i_1 
       (.I0(M_AXI_AWADDR[22]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[17]),
        .O(\axi_int.M_AXI_AWADDR[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[23]_i_1 
       (.I0(M_AXI_AWADDR[23]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[18]),
        .O(\axi_int.M_AXI_AWADDR[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[24]_i_1 
       (.I0(M_AXI_AWADDR[24]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[19]),
        .O(\axi_int.M_AXI_AWADDR[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[25]_i_1 
       (.I0(M_AXI_AWADDR[25]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[20]),
        .O(\axi_int.M_AXI_AWADDR[25]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[26]_i_1 
       (.I0(M_AXI_AWADDR[26]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[21]),
        .O(\axi_int.M_AXI_AWADDR[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[27]_i_1 
       (.I0(M_AXI_AWADDR[27]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[22]),
        .O(\axi_int.M_AXI_AWADDR[27]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[28]_i_1 
       (.I0(M_AXI_AWADDR[28]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[23]),
        .O(\axi_int.M_AXI_AWADDR[28]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[29]_i_1 
       (.I0(M_AXI_AWADDR[29]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[24]),
        .O(\axi_int.M_AXI_AWADDR[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[30]_i_1 
       (.I0(M_AXI_AWADDR[30]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[25]),
        .O(\axi_int.M_AXI_AWADDR[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    \axi_int.M_AXI_AWADDR[31]_i_1 
       (.I0(busy),
        .I1(req),
        .I2(M_AXI_AWREADY),
        .I3(M_AXI_AWVALID),
        .I4(reset),
        .O(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[31]_i_2 
       (.I0(M_AXI_AWADDR[31]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[26]),
        .O(\axi_int.M_AXI_AWADDR[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000222)) 
    \axi_int.M_AXI_AWADDR[4]_i_1 
       (.I0(req),
        .I1(busy),
        .I2(M_AXI_AWREADY),
        .I3(M_AXI_AWVALID),
        .I4(reset),
        .O(\axi_int.M_AXI_AWADDR[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[5]_i_1 
       (.I0(M_AXI_AWADDR[5]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[0]),
        .O(\axi_int.M_AXI_AWADDR[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[6]_i_1 
       (.I0(M_AXI_AWADDR[6]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[1]),
        .O(\axi_int.M_AXI_AWADDR[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[7]_i_1 
       (.I0(M_AXI_AWADDR[7]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[2]),
        .O(\axi_int.M_AXI_AWADDR[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[8]_i_1 
       (.I0(M_AXI_AWADDR[8]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[3]),
        .O(\axi_int.M_AXI_AWADDR[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hABBBA888)) 
    \axi_int.M_AXI_AWADDR[9]_i_1 
       (.I0(M_AXI_AWADDR[9]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(adr[4]),
        .O(\axi_int.M_AXI_AWADDR[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[0] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(M_AXI_AWADDR[0]),
        .Q(M_AXI_AWADDR[0]),
        .R(\axi_int.M_AXI_AWADDR[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[10] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[10]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[11] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[11]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[12] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[12]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[13] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[13]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[14] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[14]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[15] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[15]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[16] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[16]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[17] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[17]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[18] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[18]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[19] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[19]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[1] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(M_AXI_AWADDR[1]),
        .Q(M_AXI_AWADDR[1]),
        .R(\axi_int.M_AXI_AWADDR[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[20] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[20]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[21] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[21]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[22] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[22]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[23] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[23]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[24] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[24]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[25] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[25]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[26] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[26]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[27] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[27]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[28] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[28]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[29] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[29]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[2] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(M_AXI_AWADDR[2]),
        .Q(M_AXI_AWADDR[2]),
        .R(\axi_int.M_AXI_AWADDR[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[30] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[30]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[31] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[31]_i_2_n_0 ),
        .Q(M_AXI_AWADDR[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[3] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(M_AXI_AWADDR[3]),
        .Q(M_AXI_AWADDR[3]),
        .R(\axi_int.M_AXI_AWADDR[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[4] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(M_AXI_AWADDR[4]),
        .Q(M_AXI_AWADDR[4]),
        .R(\axi_int.M_AXI_AWADDR[4]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[5] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[5]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[6] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[6]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[7] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[7]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[8] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[8]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWADDR_reg[9] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWADDR[9]_i_1_n_0 ),
        .Q(M_AXI_AWADDR[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hA888ABBB)) 
    \axi_int.M_AXI_AWLEN[0]_i_1 
       (.I0(M_AXI_AWLEN[0]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(size[0]),
        .O(\axi_int.M_AXI_AWLEN[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBBA888A888ABBB)) 
    \axi_int.M_AXI_AWLEN[1]_i_1 
       (.I0(M_AXI_AWLEN[1]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(size[1]),
        .I5(size[0]),
        .O(\axi_int.M_AXI_AWLEN[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \axi_int.M_AXI_AWLEN[2]_i_1 
       (.I0(M_AXI_AWLEN[2]),
        .I1(\axi_int.M_AXI_AWVALID_reg0 ),
        .I2(size[1]),
        .I3(size[0]),
        .I4(size[2]),
        .O(\axi_int.M_AXI_AWLEN[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \axi_int.M_AXI_AWLEN[3]_i_1 
       (.I0(M_AXI_AWLEN[3]),
        .I1(\axi_int.M_AXI_AWVALID_reg0 ),
        .I2(size[2]),
        .I3(size[0]),
        .I4(size[1]),
        .I5(size[3]),
        .O(\axi_int.M_AXI_AWLEN[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hABBBA888A888ABBB)) 
    \axi_int.M_AXI_AWLEN[4]_i_1 
       (.I0(M_AXI_AWLEN[4]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(\axi_int.M_AXI_AWLEN[4]_i_2_n_0 ),
        .I5(size[4]),
        .O(\axi_int.M_AXI_AWLEN[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_int.M_AXI_AWLEN[4]_i_2 
       (.I0(size[2]),
        .I1(size[0]),
        .I2(size[1]),
        .I3(size[3]),
        .O(\axi_int.M_AXI_AWLEN[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hABBBA888A888ABBB)) 
    \axi_int.M_AXI_AWLEN[5]_i_1 
       (.I0(M_AXI_AWLEN[5]),
        .I1(reset),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(\axi_int.M_AXI_AWLEN[7]_i_3_n_0 ),
        .I5(size[5]),
        .O(\axi_int.M_AXI_AWLEN[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \axi_int.M_AXI_AWLEN[6]_i_1 
       (.I0(M_AXI_AWLEN[6]),
        .I1(\axi_int.M_AXI_AWVALID_reg0 ),
        .I2(size[5]),
        .I3(\axi_int.M_AXI_AWLEN[7]_i_3_n_0 ),
        .I4(size[6]),
        .O(\axi_int.M_AXI_AWLEN[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \axi_int.M_AXI_AWLEN[7]_i_1 
       (.I0(M_AXI_AWLEN[7]),
        .I1(\axi_int.M_AXI_AWVALID_reg0 ),
        .I2(\axi_int.M_AXI_AWLEN[7]_i_3_n_0 ),
        .I3(size[5]),
        .I4(size[6]),
        .I5(size[7]),
        .O(\axi_int.M_AXI_AWLEN[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hEA)) 
    \axi_int.M_AXI_AWLEN[7]_i_2 
       (.I0(reset),
        .I1(M_AXI_AWVALID),
        .I2(M_AXI_AWREADY),
        .O(\axi_int.M_AXI_AWVALID_reg0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_int.M_AXI_AWLEN[7]_i_3 
       (.I0(size[3]),
        .I1(size[1]),
        .I2(size[0]),
        .I3(size[2]),
        .I4(size[4]),
        .O(\axi_int.M_AXI_AWLEN[7]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[0] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[0]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[1] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[1]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[2] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[2]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[3] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[3]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[4] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[4]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[5] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[5]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[6] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[6]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWLEN_reg[7] 
       (.C(clk),
        .CE(\axi_int.M_AXI_AWADDR[31]_i_1_n_0 ),
        .D(\axi_int.M_AXI_AWLEN[7]_i_1_n_0 ),
        .Q(M_AXI_AWLEN[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000000AEAEAE)) 
    \axi_int.M_AXI_AWVALID_i_1 
       (.I0(M_AXI_AWVALID),
        .I1(req),
        .I2(busy),
        .I3(M_AXI_AWREADY),
        .I4(M_AXI_AWVALID),
        .I5(reset),
        .O(\axi_int.M_AXI_AWVALID_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_AWVALID_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.M_AXI_AWVALID_i_1_n_0 ),
        .Q(M_AXI_AWVALID),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_int.M_AXI_BREADY_reg 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_BVALID),
        .Q(M_AXI_BREADY),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[0]_i_1 
       (.I0(M_AXI_WDATA[0]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[0]),
        .O(p_1_in__0[0]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[10]_i_1 
       (.I0(M_AXI_WDATA[10]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[10]),
        .O(p_1_in__0[10]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[11]_i_1 
       (.I0(M_AXI_WDATA[11]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[11]),
        .O(p_1_in__0[11]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[12]_i_1 
       (.I0(M_AXI_WDATA[12]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[12]),
        .O(p_1_in__0[12]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[13]_i_1 
       (.I0(M_AXI_WDATA[13]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[13]),
        .O(p_1_in__0[13]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[14]_i_1 
       (.I0(M_AXI_WDATA[14]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[14]),
        .O(p_1_in__0[14]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[15]_i_1 
       (.I0(M_AXI_WDATA[15]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[15]),
        .O(p_1_in__0[15]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[16]_i_1 
       (.I0(M_AXI_WDATA[16]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[16]),
        .O(p_1_in__0[16]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[17]_i_1 
       (.I0(M_AXI_WDATA[17]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[17]),
        .O(p_1_in__0[17]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[18]_i_1 
       (.I0(M_AXI_WDATA[18]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[18]),
        .O(p_1_in__0[18]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[19]_i_1 
       (.I0(M_AXI_WDATA[19]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[19]),
        .O(p_1_in__0[19]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[1]_i_1 
       (.I0(M_AXI_WDATA[1]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[1]),
        .O(p_1_in__0[1]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[20]_i_1 
       (.I0(M_AXI_WDATA[20]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[20]),
        .O(p_1_in__0[20]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[21]_i_1 
       (.I0(M_AXI_WDATA[21]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[21]),
        .O(p_1_in__0[21]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[22]_i_1 
       (.I0(M_AXI_WDATA[22]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[22]),
        .O(p_1_in__0[22]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[23]_i_1 
       (.I0(M_AXI_WDATA[23]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[23]),
        .O(p_1_in__0[23]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[24]_i_1 
       (.I0(M_AXI_WDATA[24]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[24]),
        .O(p_1_in__0[24]));
  LUT6 #(
    .INIT(64'h00FE000000000000)) 
    \axi_int.M_AXI_WDATA[255]_i_1 
       (.I0(counter[0]),
        .I1(\axi_int.counter[7]_i_2_n_0 ),
        .I2(counter[7]),
        .I3(reset),
        .I4(M_AXI_WREADY),
        .I5(M_AXI_WVALID),
        .O(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[25]_i_1 
       (.I0(M_AXI_WDATA[25]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[25]),
        .O(p_1_in__0[25]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[26]_i_1 
       (.I0(M_AXI_WDATA[26]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[26]),
        .O(p_1_in__0[26]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[27]_i_1 
       (.I0(M_AXI_WDATA[27]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[27]),
        .O(p_1_in__0[27]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[28]_i_1 
       (.I0(M_AXI_WDATA[28]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[28]),
        .O(p_1_in__0[28]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[29]_i_1 
       (.I0(M_AXI_WDATA[29]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[29]),
        .O(p_1_in__0[29]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[2]_i_1 
       (.I0(M_AXI_WDATA[2]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[2]),
        .O(p_1_in__0[2]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[30]_i_1 
       (.I0(M_AXI_WDATA[30]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[30]),
        .O(p_1_in__0[30]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[31]_i_1 
       (.I0(M_AXI_WDATA[31]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[31]),
        .O(p_1_in__0[31]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[32]_i_1 
       (.I0(M_AXI_WDATA[32]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[32]),
        .O(p_1_in__0[32]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[33]_i_1 
       (.I0(M_AXI_WDATA[33]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[33]),
        .O(p_1_in__0[33]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[34]_i_1 
       (.I0(M_AXI_WDATA[34]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[34]),
        .O(p_1_in__0[34]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[35]_i_1 
       (.I0(M_AXI_WDATA[35]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[35]),
        .O(p_1_in__0[35]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[36]_i_1 
       (.I0(M_AXI_WDATA[36]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[36]),
        .O(p_1_in__0[36]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[37]_i_1 
       (.I0(M_AXI_WDATA[37]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[37]),
        .O(p_1_in__0[37]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[38]_i_1 
       (.I0(M_AXI_WDATA[38]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[38]),
        .O(p_1_in__0[38]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_int.M_AXI_WDATA[39]_i_1 
       (.I0(counter[0]),
        .I1(\axi_int.counter[7]_i_2_n_0 ),
        .I2(counter[7]),
        .I3(reset),
        .O(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[39]_i_2 
       (.I0(M_AXI_WDATA[39]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[39]),
        .O(p_1_in__0[39]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[3]_i_1 
       (.I0(M_AXI_WDATA[3]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[3]),
        .O(p_1_in__0[3]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[4]_i_1 
       (.I0(M_AXI_WDATA[4]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[4]),
        .O(p_1_in__0[4]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[5]_i_1 
       (.I0(M_AXI_WDATA[5]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[5]),
        .O(p_1_in__0[5]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[6]_i_1 
       (.I0(M_AXI_WDATA[6]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[6]),
        .O(p_1_in__0[6]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[7]_i_1 
       (.I0(M_AXI_WDATA[7]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[7]),
        .O(p_1_in__0[7]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[8]_i_1 
       (.I0(M_AXI_WDATA[8]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[8]),
        .O(p_1_in__0[8]));
  LUT5 #(
    .INIT(32'hAAEAAA2A)) 
    \axi_int.M_AXI_WDATA[9]_i_1 
       (.I0(M_AXI_WDATA[9]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(reset),
        .I4(config_data_adr_out[9]),
        .O(p_1_in__0[9]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[0] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[0]),
        .Q(M_AXI_WDATA[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[100] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[100]),
        .Q(M_AXI_WDATA[100]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[101] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[101]),
        .Q(M_AXI_WDATA[101]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[102] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[102]),
        .Q(M_AXI_WDATA[102]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[103] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[103]),
        .Q(M_AXI_WDATA[103]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[104] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[104]),
        .Q(M_AXI_WDATA[104]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[105] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[105]),
        .Q(M_AXI_WDATA[105]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[106] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[106]),
        .Q(M_AXI_WDATA[106]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[107] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[107]),
        .Q(M_AXI_WDATA[107]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[108] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[108]),
        .Q(M_AXI_WDATA[108]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[109] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[109]),
        .Q(M_AXI_WDATA[109]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[10] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[10]),
        .Q(M_AXI_WDATA[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[110] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[110]),
        .Q(M_AXI_WDATA[110]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[111] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[111]),
        .Q(M_AXI_WDATA[111]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[112] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[112]),
        .Q(M_AXI_WDATA[112]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[113] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[113]),
        .Q(M_AXI_WDATA[113]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[114] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[114]),
        .Q(M_AXI_WDATA[114]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[115] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[115]),
        .Q(M_AXI_WDATA[115]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[116] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[116]),
        .Q(M_AXI_WDATA[116]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[117] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[117]),
        .Q(M_AXI_WDATA[117]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[118] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[118]),
        .Q(M_AXI_WDATA[118]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[119] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[119]),
        .Q(M_AXI_WDATA[119]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[11] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[11]),
        .Q(M_AXI_WDATA[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[120] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[120]),
        .Q(M_AXI_WDATA[120]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[121] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[121]),
        .Q(M_AXI_WDATA[121]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[122] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[122]),
        .Q(M_AXI_WDATA[122]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[123] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[123]),
        .Q(M_AXI_WDATA[123]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[124] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[124]),
        .Q(M_AXI_WDATA[124]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[125] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[125]),
        .Q(M_AXI_WDATA[125]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[126] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[126]),
        .Q(M_AXI_WDATA[126]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[127] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[127]),
        .Q(M_AXI_WDATA[127]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[128] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[128]),
        .Q(M_AXI_WDATA[128]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[129] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[129]),
        .Q(M_AXI_WDATA[129]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[12] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[12]),
        .Q(M_AXI_WDATA[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[130] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[130]),
        .Q(M_AXI_WDATA[130]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[131] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[131]),
        .Q(M_AXI_WDATA[131]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[132] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[132]),
        .Q(M_AXI_WDATA[132]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[133] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[133]),
        .Q(M_AXI_WDATA[133]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[134] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[134]),
        .Q(M_AXI_WDATA[134]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[135] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[135]),
        .Q(M_AXI_WDATA[135]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[136] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[136]),
        .Q(M_AXI_WDATA[136]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[137] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[137]),
        .Q(M_AXI_WDATA[137]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[138] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[138]),
        .Q(M_AXI_WDATA[138]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[139] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[139]),
        .Q(M_AXI_WDATA[139]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[13] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[13]),
        .Q(M_AXI_WDATA[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[140] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[140]),
        .Q(M_AXI_WDATA[140]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[141] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[141]),
        .Q(M_AXI_WDATA[141]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[142] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[142]),
        .Q(M_AXI_WDATA[142]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[143] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[143]),
        .Q(M_AXI_WDATA[143]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[144] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[144]),
        .Q(M_AXI_WDATA[144]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[145] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[145]),
        .Q(M_AXI_WDATA[145]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[146] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[146]),
        .Q(M_AXI_WDATA[146]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[147] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[147]),
        .Q(M_AXI_WDATA[147]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[148] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[148]),
        .Q(M_AXI_WDATA[148]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[149] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[149]),
        .Q(M_AXI_WDATA[149]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[14] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[14]),
        .Q(M_AXI_WDATA[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[150] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[150]),
        .Q(M_AXI_WDATA[150]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[151] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[151]),
        .Q(M_AXI_WDATA[151]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[152] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[152]),
        .Q(M_AXI_WDATA[152]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[153] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[153]),
        .Q(M_AXI_WDATA[153]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[154] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[154]),
        .Q(M_AXI_WDATA[154]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[155] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[155]),
        .Q(M_AXI_WDATA[155]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[156] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[156]),
        .Q(M_AXI_WDATA[156]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[157] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[157]),
        .Q(M_AXI_WDATA[157]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[158] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[158]),
        .Q(M_AXI_WDATA[158]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[159] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[159]),
        .Q(M_AXI_WDATA[159]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[15] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[15]),
        .Q(M_AXI_WDATA[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[160] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[160]),
        .Q(M_AXI_WDATA[160]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[161] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[161]),
        .Q(M_AXI_WDATA[161]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[162] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[162]),
        .Q(M_AXI_WDATA[162]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[163] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[163]),
        .Q(M_AXI_WDATA[163]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[164] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[164]),
        .Q(M_AXI_WDATA[164]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[165] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[165]),
        .Q(M_AXI_WDATA[165]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[166] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[166]),
        .Q(M_AXI_WDATA[166]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[167] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[167]),
        .Q(M_AXI_WDATA[167]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[168] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[168]),
        .Q(M_AXI_WDATA[168]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[169] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[169]),
        .Q(M_AXI_WDATA[169]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[16] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[16]),
        .Q(M_AXI_WDATA[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[170] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[170]),
        .Q(M_AXI_WDATA[170]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[171] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[171]),
        .Q(M_AXI_WDATA[171]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[172] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[172]),
        .Q(M_AXI_WDATA[172]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[173] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[173]),
        .Q(M_AXI_WDATA[173]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[174] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[174]),
        .Q(M_AXI_WDATA[174]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[175] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[175]),
        .Q(M_AXI_WDATA[175]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[176] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[176]),
        .Q(M_AXI_WDATA[176]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[177] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[177]),
        .Q(M_AXI_WDATA[177]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[178] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[178]),
        .Q(M_AXI_WDATA[178]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[179] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[179]),
        .Q(M_AXI_WDATA[179]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[17] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[17]),
        .Q(M_AXI_WDATA[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[180] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[180]),
        .Q(M_AXI_WDATA[180]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[181] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[181]),
        .Q(M_AXI_WDATA[181]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[182] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[182]),
        .Q(M_AXI_WDATA[182]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[183] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[183]),
        .Q(M_AXI_WDATA[183]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[184] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[184]),
        .Q(M_AXI_WDATA[184]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[185] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[185]),
        .Q(M_AXI_WDATA[185]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[186] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[186]),
        .Q(M_AXI_WDATA[186]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[187] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[187]),
        .Q(M_AXI_WDATA[187]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[188] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[188]),
        .Q(M_AXI_WDATA[188]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[189] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[189]),
        .Q(M_AXI_WDATA[189]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[18] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[18]),
        .Q(M_AXI_WDATA[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[190] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[190]),
        .Q(M_AXI_WDATA[190]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[191] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[191]),
        .Q(M_AXI_WDATA[191]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[192] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[192]),
        .Q(M_AXI_WDATA[192]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[193] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[193]),
        .Q(M_AXI_WDATA[193]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[194] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[194]),
        .Q(M_AXI_WDATA[194]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[195] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[195]),
        .Q(M_AXI_WDATA[195]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[196] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[196]),
        .Q(M_AXI_WDATA[196]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[197] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[197]),
        .Q(M_AXI_WDATA[197]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[198] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[198]),
        .Q(M_AXI_WDATA[198]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[199] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[199]),
        .Q(M_AXI_WDATA[199]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[19] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[19]),
        .Q(M_AXI_WDATA[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[1] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[1]),
        .Q(M_AXI_WDATA[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[200] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[200]),
        .Q(M_AXI_WDATA[200]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[201] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[201]),
        .Q(M_AXI_WDATA[201]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[202] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[202]),
        .Q(M_AXI_WDATA[202]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[203] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[203]),
        .Q(M_AXI_WDATA[203]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[204] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[204]),
        .Q(M_AXI_WDATA[204]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[205] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[205]),
        .Q(M_AXI_WDATA[205]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[206] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[206]),
        .Q(M_AXI_WDATA[206]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[207] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[207]),
        .Q(M_AXI_WDATA[207]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[208] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[208]),
        .Q(M_AXI_WDATA[208]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[209] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[209]),
        .Q(M_AXI_WDATA[209]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[20] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[20]),
        .Q(M_AXI_WDATA[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[210] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[210]),
        .Q(M_AXI_WDATA[210]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[211] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[211]),
        .Q(M_AXI_WDATA[211]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[212] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[212]),
        .Q(M_AXI_WDATA[212]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[213] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[213]),
        .Q(M_AXI_WDATA[213]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[214] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[214]),
        .Q(M_AXI_WDATA[214]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[215] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[215]),
        .Q(M_AXI_WDATA[215]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[216] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[216]),
        .Q(M_AXI_WDATA[216]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[217] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[217]),
        .Q(M_AXI_WDATA[217]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[218] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[218]),
        .Q(M_AXI_WDATA[218]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[219] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[219]),
        .Q(M_AXI_WDATA[219]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[21] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[21]),
        .Q(M_AXI_WDATA[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[220] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[220]),
        .Q(M_AXI_WDATA[220]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[221] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[221]),
        .Q(M_AXI_WDATA[221]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[222] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[222]),
        .Q(M_AXI_WDATA[222]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[223] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[223]),
        .Q(M_AXI_WDATA[223]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[224] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[224]),
        .Q(M_AXI_WDATA[224]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[225] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[225]),
        .Q(M_AXI_WDATA[225]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[226] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[226]),
        .Q(M_AXI_WDATA[226]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[227] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[227]),
        .Q(M_AXI_WDATA[227]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[228] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[228]),
        .Q(M_AXI_WDATA[228]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[229] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[229]),
        .Q(M_AXI_WDATA[229]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[22] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[22]),
        .Q(M_AXI_WDATA[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[230] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[230]),
        .Q(M_AXI_WDATA[230]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[231] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[231]),
        .Q(M_AXI_WDATA[231]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[232] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[232]),
        .Q(M_AXI_WDATA[232]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[233] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[233]),
        .Q(M_AXI_WDATA[233]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[234] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[234]),
        .Q(M_AXI_WDATA[234]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[235] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[235]),
        .Q(M_AXI_WDATA[235]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[236] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[236]),
        .Q(M_AXI_WDATA[236]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[237] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[237]),
        .Q(M_AXI_WDATA[237]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[238] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[238]),
        .Q(M_AXI_WDATA[238]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[239] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[239]),
        .Q(M_AXI_WDATA[239]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[23] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[23]),
        .Q(M_AXI_WDATA[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[240] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[240]),
        .Q(M_AXI_WDATA[240]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[241] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[241]),
        .Q(M_AXI_WDATA[241]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[242] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[242]),
        .Q(M_AXI_WDATA[242]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[243] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[243]),
        .Q(M_AXI_WDATA[243]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[244] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[244]),
        .Q(M_AXI_WDATA[244]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[245] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[245]),
        .Q(M_AXI_WDATA[245]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[246] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[246]),
        .Q(M_AXI_WDATA[246]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[247] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[247]),
        .Q(M_AXI_WDATA[247]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[248] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[248]),
        .Q(M_AXI_WDATA[248]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[249] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[249]),
        .Q(M_AXI_WDATA[249]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[24] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[24]),
        .Q(M_AXI_WDATA[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[250] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[250]),
        .Q(M_AXI_WDATA[250]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[251] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[251]),
        .Q(M_AXI_WDATA[251]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[252] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[252]),
        .Q(M_AXI_WDATA[252]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[253] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[253]),
        .Q(M_AXI_WDATA[253]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[254] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[254]),
        .Q(M_AXI_WDATA[254]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[255] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[255]),
        .Q(M_AXI_WDATA[255]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[25] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[25]),
        .Q(M_AXI_WDATA[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[26] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[26]),
        .Q(M_AXI_WDATA[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[27] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[27]),
        .Q(M_AXI_WDATA[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[28] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[28]),
        .Q(M_AXI_WDATA[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[29] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[29]),
        .Q(M_AXI_WDATA[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[2] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[2]),
        .Q(M_AXI_WDATA[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[30] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[30]),
        .Q(M_AXI_WDATA[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[31] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[31]),
        .Q(M_AXI_WDATA[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[32] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[32]),
        .Q(M_AXI_WDATA[32]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[33] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[33]),
        .Q(M_AXI_WDATA[33]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[34] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[34]),
        .Q(M_AXI_WDATA[34]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[35] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[35]),
        .Q(M_AXI_WDATA[35]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[36] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[36]),
        .Q(M_AXI_WDATA[36]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[37] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[37]),
        .Q(M_AXI_WDATA[37]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[38] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[38]),
        .Q(M_AXI_WDATA[38]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[39] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[39]),
        .Q(M_AXI_WDATA[39]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[3] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[3]),
        .Q(M_AXI_WDATA[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[40] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[40]),
        .Q(M_AXI_WDATA[40]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[41] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[41]),
        .Q(M_AXI_WDATA[41]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[42] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[42]),
        .Q(M_AXI_WDATA[42]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[43] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[43]),
        .Q(M_AXI_WDATA[43]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[44] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[44]),
        .Q(M_AXI_WDATA[44]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[45] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[45]),
        .Q(M_AXI_WDATA[45]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[46] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[46]),
        .Q(M_AXI_WDATA[46]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[47] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[47]),
        .Q(M_AXI_WDATA[47]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[48] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[48]),
        .Q(M_AXI_WDATA[48]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[49] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[49]),
        .Q(M_AXI_WDATA[49]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[4] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[4]),
        .Q(M_AXI_WDATA[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[50] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[50]),
        .Q(M_AXI_WDATA[50]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[51] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[51]),
        .Q(M_AXI_WDATA[51]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[52] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[52]),
        .Q(M_AXI_WDATA[52]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[53] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[53]),
        .Q(M_AXI_WDATA[53]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[54] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[54]),
        .Q(M_AXI_WDATA[54]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[55] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[55]),
        .Q(M_AXI_WDATA[55]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[56] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[56]),
        .Q(M_AXI_WDATA[56]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[57] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[57]),
        .Q(M_AXI_WDATA[57]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[58] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[58]),
        .Q(M_AXI_WDATA[58]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[59] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[59]),
        .Q(M_AXI_WDATA[59]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[5] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[5]),
        .Q(M_AXI_WDATA[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[60] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[60]),
        .Q(M_AXI_WDATA[60]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[61] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[61]),
        .Q(M_AXI_WDATA[61]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[62] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[62]),
        .Q(M_AXI_WDATA[62]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[63] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[63]),
        .Q(M_AXI_WDATA[63]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[64] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[64]),
        .Q(M_AXI_WDATA[64]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[65] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[65]),
        .Q(M_AXI_WDATA[65]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[66] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[66]),
        .Q(M_AXI_WDATA[66]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[67] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[67]),
        .Q(M_AXI_WDATA[67]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[68] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[68]),
        .Q(M_AXI_WDATA[68]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[69] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[69]),
        .Q(M_AXI_WDATA[69]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[6] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[6]),
        .Q(M_AXI_WDATA[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[70] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[70]),
        .Q(M_AXI_WDATA[70]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[71] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[71]),
        .Q(M_AXI_WDATA[71]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[72] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[72]),
        .Q(M_AXI_WDATA[72]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[73] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[73]),
        .Q(M_AXI_WDATA[73]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[74] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[74]),
        .Q(M_AXI_WDATA[74]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[75] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[75]),
        .Q(M_AXI_WDATA[75]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[76] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[76]),
        .Q(M_AXI_WDATA[76]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[77] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[77]),
        .Q(M_AXI_WDATA[77]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[78] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[78]),
        .Q(M_AXI_WDATA[78]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[79] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[79]),
        .Q(M_AXI_WDATA[79]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[7] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[7]),
        .Q(M_AXI_WDATA[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[80] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[80]),
        .Q(M_AXI_WDATA[80]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[81] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[81]),
        .Q(M_AXI_WDATA[81]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[82] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[82]),
        .Q(M_AXI_WDATA[82]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[83] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[83]),
        .Q(M_AXI_WDATA[83]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[84] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[84]),
        .Q(M_AXI_WDATA[84]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[85] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[85]),
        .Q(M_AXI_WDATA[85]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[86] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[86]),
        .Q(M_AXI_WDATA[86]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[87] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[87]),
        .Q(M_AXI_WDATA[87]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[88] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[88]),
        .Q(M_AXI_WDATA[88]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[89] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[89]),
        .Q(M_AXI_WDATA[89]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[8] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[8]),
        .Q(M_AXI_WDATA[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[90] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[90]),
        .Q(M_AXI_WDATA[90]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[91] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[91]),
        .Q(M_AXI_WDATA[91]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[92] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[92]),
        .Q(M_AXI_WDATA[92]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[93] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[93]),
        .Q(M_AXI_WDATA[93]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[94] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[94]),
        .Q(M_AXI_WDATA[94]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[95] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[95]),
        .Q(M_AXI_WDATA[95]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[96] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[96]),
        .Q(M_AXI_WDATA[96]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[97] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[97]),
        .Q(M_AXI_WDATA[97]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[98] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[98]),
        .Q(M_AXI_WDATA[98]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[99] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(M_AXI_WDATA[99]),
        .Q(M_AXI_WDATA[99]),
        .R(\axi_int.M_AXI_WDATA[255]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WDATA_reg[9] 
       (.C(clk),
        .CE(\axi_int.M_AXI_WDATA[39]_i_1_n_0 ),
        .D(p_1_in__0[9]),
        .Q(M_AXI_WDATA[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000001000100010)) 
    \axi_int.M_AXI_WLAST_i_1 
       (.I0(\axi_int.counter[7]_i_2_n_0 ),
        .I1(counter[7]),
        .I2(counter[0]),
        .I3(reset),
        .I4(M_AXI_WLAST),
        .I5(M_AXI_WREADY),
        .O(\axi_int.M_AXI_WLAST_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_int.M_AXI_WLAST_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.M_AXI_WLAST_i_1_n_0 ),
        .Q(M_AXI_WLAST),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000EA00EA00EA)) 
    \axi_int.M_AXI_WVALID_i_1 
       (.I0(M_AXI_WVALID),
        .I1(M_AXI_AWVALID),
        .I2(M_AXI_AWREADY),
        .I3(reset),
        .I4(M_AXI_WLAST),
        .I5(M_AXI_WREADY),
        .O(\axi_int.M_AXI_WVALID_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.M_AXI_WVALID_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.M_AXI_WVALID_i_1_n_0 ),
        .Q(M_AXI_WVALID),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_int.adr[26]_i_1 
       (.I0(counter[7]),
        .I1(\axi_int.counter[7]_i_2_n_0 ),
        .I2(counter[0]),
        .O(\axi_int.adr[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_int.adr[7]_i_2 
       (.I0(adr[0]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .O(\axi_int.adr[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[0] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[0]),
        .Q(adr[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[10] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[10]),
        .Q(adr[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[11] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[11]),
        .Q(adr[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[12] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[12]),
        .Q(adr[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[13] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[13]),
        .Q(adr[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[14] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[14]),
        .Q(adr[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[15] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[15]),
        .Q(adr[15]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_int.adr_reg[15]_i_1 
       (.CI(\axi_int.adr_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_int.adr_reg[15]_i_1_n_0 ,\axi_int.adr_reg[15]_i_1_n_1 ,\axi_int.adr_reg[15]_i_1_n_2 ,\axi_int.adr_reg[15]_i_1_n_3 ,\axi_int.adr_reg[15]_i_1_n_4 ,\axi_int.adr_reg[15]_i_1_n_5 ,\axi_int.adr_reg[15]_i_1_n_6 ,\axi_int.adr_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(adr__0[15:8]),
        .S(adr[15:8]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[16] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[16]),
        .Q(adr[16]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[17] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[17]),
        .Q(adr[17]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[18] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[18]),
        .Q(adr[18]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[19] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[19]),
        .Q(adr[19]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[1] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[1]),
        .Q(adr[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[20] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[20]),
        .Q(adr[20]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[21] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[21]),
        .Q(adr[21]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[22] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[22]),
        .Q(adr[22]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[23] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[23]),
        .Q(adr[23]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_int.adr_reg[23]_i_1 
       (.CI(\axi_int.adr_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_int.adr_reg[23]_i_1_n_0 ,\axi_int.adr_reg[23]_i_1_n_1 ,\axi_int.adr_reg[23]_i_1_n_2 ,\axi_int.adr_reg[23]_i_1_n_3 ,\axi_int.adr_reg[23]_i_1_n_4 ,\axi_int.adr_reg[23]_i_1_n_5 ,\axi_int.adr_reg[23]_i_1_n_6 ,\axi_int.adr_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(adr__0[23:16]),
        .S(adr[23:16]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[24] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[24]),
        .Q(adr[24]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[25] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[25]),
        .Q(adr[25]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[26] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[26]),
        .Q(adr[26]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_int.adr_reg[26]_i_2 
       (.CI(\axi_int.adr_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_int.adr_reg[26]_i_2_CO_UNCONNECTED [7:2],\axi_int.adr_reg[26]_i_2_n_6 ,\axi_int.adr_reg[26]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_int.adr_reg[26]_i_2_O_UNCONNECTED [7:3],adr__0[26:24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,adr[26:24]}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[2] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[2]),
        .Q(adr[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[3] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[3]),
        .Q(adr[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[4] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[4]),
        .Q(adr[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[5] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[5]),
        .Q(adr[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[6] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[6]),
        .Q(adr[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[7] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[7]),
        .Q(adr[7]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_int.adr_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_int.adr_reg[7]_i_1_n_0 ,\axi_int.adr_reg[7]_i_1_n_1 ,\axi_int.adr_reg[7]_i_1_n_2 ,\axi_int.adr_reg[7]_i_1_n_3 ,\axi_int.adr_reg[7]_i_1_n_4 ,\axi_int.adr_reg[7]_i_1_n_5 ,\axi_int.adr_reg[7]_i_1_n_6 ,\axi_int.adr_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,adr[0]}),
        .O(adr__0[7:0]),
        .S({adr[7:1],\axi_int.adr[7]_i_2_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[8] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[8]),
        .Q(adr[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.adr_reg[9] 
       (.C(clk),
        .CE(\axi_int.adr[26]_i_1_n_0 ),
        .D(adr__0[9]),
        .Q(adr[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'h0000544454445444)) 
    \axi_int.busy_i_1 
       (.I0(reset),
        .I1(busy),
        .I2(M_AXI_AWVALID),
        .I3(M_AXI_AWREADY),
        .I4(M_AXI_BVALID),
        .I5(M_AXI_BREADY),
        .O(\axi_int.busy_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.busy_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.busy_i_1_n_0 ),
        .Q(busy),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF6A006A006A00)) 
    \axi_int.counter[0]_i_1 
       (.I0(counter[0]),
        .I1(M_AXI_WVALID),
        .I2(M_AXI_WREADY),
        .I3(\axi_int.adr[26]_i_1_n_0 ),
        .I4(size[0]),
        .I5(\axi_int.counter[7]_i_4_n_0 ),
        .O(\axi_int.counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9999999900F00000)) 
    \axi_int.counter[1]_i_1 
       (.I0(\axi_int.counter[7]_i_3_n_0 ),
        .I1(counter[1]),
        .I2(size[1]),
        .I3(busy),
        .I4(req),
        .I5(\axi_int.adr[26]_i_1_n_0 ),
        .O(\axi_int.counter[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE100E100E100)) 
    \axi_int.counter[2]_i_1 
       (.I0(counter[1]),
        .I1(\axi_int.counter[7]_i_3_n_0 ),
        .I2(counter[2]),
        .I3(\axi_int.adr[26]_i_1_n_0 ),
        .I4(size[2]),
        .I5(\axi_int.counter[7]_i_4_n_0 ),
        .O(\axi_int.counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE100E100E100)) 
    \axi_int.counter[3]_i_1 
       (.I0(\axi_int.counter[3]_i_2_n_0 ),
        .I1(\axi_int.counter[7]_i_3_n_0 ),
        .I2(counter[3]),
        .I3(\axi_int.adr[26]_i_1_n_0 ),
        .I4(size[3]),
        .I5(\axi_int.counter[7]_i_4_n_0 ),
        .O(\axi_int.counter[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_int.counter[3]_i_2 
       (.I0(counter[1]),
        .I1(counter[2]),
        .O(\axi_int.counter[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE100E100E100)) 
    \axi_int.counter[4]_i_1 
       (.I0(\axi_int.counter[4]_i_2_n_0 ),
        .I1(\axi_int.counter[7]_i_3_n_0 ),
        .I2(counter[4]),
        .I3(\axi_int.adr[26]_i_1_n_0 ),
        .I4(size[4]),
        .I5(\axi_int.counter[7]_i_4_n_0 ),
        .O(\axi_int.counter[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_int.counter[4]_i_2 
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[3]),
        .O(\axi_int.counter[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE100E100E100)) 
    \axi_int.counter[5]_i_1 
       (.I0(\axi_int.counter[5]_i_2_n_0 ),
        .I1(\axi_int.counter[7]_i_3_n_0 ),
        .I2(counter[5]),
        .I3(\axi_int.adr[26]_i_1_n_0 ),
        .I4(size[5]),
        .I5(\axi_int.counter[7]_i_4_n_0 ),
        .O(\axi_int.counter[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_int.counter[5]_i_2 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[2]),
        .I3(counter[4]),
        .O(\axi_int.counter[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE100E100E100)) 
    \axi_int.counter[6]_i_1 
       (.I0(\axi_int.counter[6]_i_2_n_0 ),
        .I1(\axi_int.counter[7]_i_3_n_0 ),
        .I2(counter[6]),
        .I3(\axi_int.adr[26]_i_1_n_0 ),
        .I4(size[6]),
        .I5(\axi_int.counter[7]_i_4_n_0 ),
        .O(\axi_int.counter[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_int.counter[6]_i_2 
       (.I0(counter[4]),
        .I1(counter[2]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(counter[5]),
        .O(\axi_int.counter[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFE1E0E1E0E1E0)) 
    \axi_int.counter[7]_i_1 
       (.I0(\axi_int.counter[7]_i_2_n_0 ),
        .I1(\axi_int.counter[7]_i_3_n_0 ),
        .I2(counter[7]),
        .I3(counter[0]),
        .I4(size[7]),
        .I5(\axi_int.counter[7]_i_4_n_0 ),
        .O(\axi_int.counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_int.counter[7]_i_2 
       (.I0(counter[5]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[4]),
        .I5(counter[6]),
        .O(\axi_int.counter[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hF7)) 
    \axi_int.counter[7]_i_3 
       (.I0(M_AXI_WVALID),
        .I1(M_AXI_WREADY),
        .I2(counter[0]),
        .O(\axi_int.counter[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \axi_int.counter[7]_i_4 
       (.I0(busy),
        .I1(req),
        .I2(counter[0]),
        .I3(\axi_int.counter[7]_i_2_n_0 ),
        .I4(counter[7]),
        .O(\axi_int.counter[7]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[0]_i_1_n_0 ),
        .Q(counter[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[1]_i_1_n_0 ),
        .Q(counter[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[2]_i_1_n_0 ),
        .Q(counter[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[3]_i_1_n_0 ),
        .Q(counter[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[4]_i_1_n_0 ),
        .Q(counter[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[5]_i_1_n_0 ),
        .Q(counter[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[6]_i_1_n_0 ),
        .Q(counter[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  FDRE \axi_int.counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.counter[7]_i_1_n_0 ),
        .Q(counter[7]),
        .R(reset));
  LUT6 #(
    .INIT(64'h000000000000AAAB)) 
    \axi_int.req_i_1 
       (.I0(req),
        .I1(req_timeout[6]),
        .I2(\axi_int.req_timeout[7]_i_4_n_0 ),
        .I3(req_timeout[7]),
        .I4(reset),
        .I5(cfg_empty),
        .O(\axi_int.req_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_int.req_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_int.req_i_1_n_0 ),
        .Q(req),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_int.req_timeout[0]_i_1 
       (.I0(req_timeout[0]),
        .O(\axi_int.req_timeout_reg0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_int.req_timeout[1]_i_1 
       (.I0(req_timeout[0]),
        .I1(req_timeout[1]),
        .O(\axi_int.req_timeout[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \axi_int.req_timeout[2]_i_1 
       (.I0(req_timeout[1]),
        .I1(req_timeout[0]),
        .I2(req_timeout[2]),
        .O(\axi_int.req_timeout[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFE01)) 
    \axi_int.req_timeout[3]_i_1 
       (.I0(req_timeout[2]),
        .I1(req_timeout[0]),
        .I2(req_timeout[1]),
        .I3(req_timeout[3]),
        .O(\axi_int.req_timeout[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \axi_int.req_timeout[4]_i_1 
       (.I0(req_timeout[3]),
        .I1(req_timeout[1]),
        .I2(req_timeout[0]),
        .I3(req_timeout[2]),
        .I4(req_timeout[4]),
        .O(\axi_int.req_timeout[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \axi_int.req_timeout[5]_i_1 
       (.I0(req_timeout[4]),
        .I1(req_timeout[2]),
        .I2(req_timeout[0]),
        .I3(req_timeout[1]),
        .I4(req_timeout[3]),
        .I5(req_timeout[5]),
        .O(\axi_int.req_timeout[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_int.req_timeout[6]_i_1 
       (.I0(\axi_int.req_timeout[7]_i_4_n_0 ),
        .I1(req_timeout[6]),
        .O(\axi_int.req_timeout[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \axi_int.req_timeout[7]_i_1 
       (.I0(cfg_empty),
        .I1(reset),
        .O(\axi_int.req_reg0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \axi_int.req_timeout[7]_i_2 
       (.I0(req_timeout[7]),
        .I1(\axi_int.req_timeout[7]_i_4_n_0 ),
        .I2(req_timeout[6]),
        .O(\axi_int.req_timeout[7]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hE1)) 
    \axi_int.req_timeout[7]_i_3 
       (.I0(req_timeout[6]),
        .I1(\axi_int.req_timeout[7]_i_4_n_0 ),
        .I2(req_timeout[7]),
        .O(\axi_int.req_timeout[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_int.req_timeout[7]_i_4 
       (.I0(req_timeout[4]),
        .I1(req_timeout[2]),
        .I2(req_timeout[0]),
        .I3(req_timeout[1]),
        .I4(req_timeout[3]),
        .I5(req_timeout[5]),
        .O(\axi_int.req_timeout[7]_i_4_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.req_timeout_reg[0] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout_reg0 ),
        .Q(req_timeout[0]),
        .R(\axi_int.req_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \axi_int.req_timeout_reg[1] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout[1]_i_1_n_0 ),
        .Q(req_timeout[1]),
        .S(\axi_int.req_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.req_timeout_reg[2] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout[2]_i_1_n_0 ),
        .Q(req_timeout[2]),
        .R(\axi_int.req_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.req_timeout_reg[3] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout[3]_i_1_n_0 ),
        .Q(req_timeout[3]),
        .R(\axi_int.req_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \axi_int.req_timeout_reg[4] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout[4]_i_1_n_0 ),
        .Q(req_timeout[4]),
        .S(\axi_int.req_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \axi_int.req_timeout_reg[5] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout[5]_i_1_n_0 ),
        .Q(req_timeout[5]),
        .S(\axi_int.req_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.req_timeout_reg[6] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout[6]_i_1_n_0 ),
        .Q(req_timeout[6]),
        .R(\axi_int.req_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.req_timeout_reg[7] 
       (.C(clk),
        .CE(\axi_int.req_timeout[7]_i_2_n_0 ),
        .D(\axi_int.req_timeout[7]_i_3_n_0 ),
        .Q(req_timeout[7]),
        .R(\axi_int.req_reg0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_int.reset_i_1 
       (.I0(resetn),
        .O(p_0_in__0));
  FDRE \axi_int.reset_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0),
        .Q(reset),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_int.size[0]_i_1 
       (.I0(size[0]),
        .O(M_AXI_AWLEN0));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_int.size[1]_i_1 
       (.I0(size[0]),
        .I1(size[1]),
        .O(\axi_int.size[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \axi_int.size[2]_i_1 
       (.I0(size[1]),
        .I1(size[0]),
        .I2(size[2]),
        .O(\axi_int.size[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_int.size[3]_i_1 
       (.I0(size[2]),
        .I1(size[0]),
        .I2(size[1]),
        .I3(size[3]),
        .O(\axi_int.size[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_int.size[4]_i_1 
       (.I0(size[3]),
        .I1(size[1]),
        .I2(size[0]),
        .I3(size[2]),
        .I4(size[4]),
        .O(\axi_int.size[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_int.size[5]_i_1 
       (.I0(size[4]),
        .I1(size[2]),
        .I2(size[0]),
        .I3(size[1]),
        .I4(size[3]),
        .I5(size[5]),
        .O(\axi_int.size[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_int.size[6]_i_1 
       (.I0(\axi_int.size[7]_i_3_n_0 ),
        .I1(size[4]),
        .I2(size[5]),
        .I3(size[6]),
        .O(\axi_int.size[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_int.size[7]_i_1 
       (.I0(M_AXI_AWVALID),
        .I1(M_AXI_AWREADY),
        .O(start));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_int.size[7]_i_2 
       (.I0(\axi_int.size[7]_i_3_n_0 ),
        .I1(size[6]),
        .I2(size[5]),
        .I3(size[4]),
        .I4(size[7]),
        .O(\axi_int.size[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \axi_int.size[7]_i_3 
       (.I0(size[2]),
        .I1(size[0]),
        .I2(size[1]),
        .I3(size[3]),
        .O(\axi_int.size[7]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDSE \axi_int.size_reg[0] 
       (.C(clk),
        .CE(start),
        .D(M_AXI_AWLEN0),
        .Q(size[0]),
        .S(cfg_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.size_reg[1] 
       (.C(clk),
        .CE(start),
        .D(\axi_int.size[1]_i_1_n_0 ),
        .Q(size[1]),
        .R(cfg_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.size_reg[2] 
       (.C(clk),
        .CE(start),
        .D(\axi_int.size[2]_i_1_n_0 ),
        .Q(size[2]),
        .R(cfg_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.size_reg[3] 
       (.C(clk),
        .CE(start),
        .D(\axi_int.size[3]_i_1_n_0 ),
        .Q(size[3]),
        .R(cfg_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.size_reg[4] 
       (.C(clk),
        .CE(start),
        .D(\axi_int.size[4]_i_1_n_0 ),
        .Q(size[4]),
        .R(cfg_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.size_reg[5] 
       (.C(clk),
        .CE(start),
        .D(\axi_int.size[5]_i_1_n_0 ),
        .Q(size[5]),
        .R(cfg_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.size_reg[6] 
       (.C(clk),
        .CE(start),
        .D(\axi_int.size[6]_i_1_n_0 ),
        .Q(size[6]),
        .R(cfg_empty));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_int.size_reg[7] 
       (.C(clk),
        .CE(start),
        .D(\axi_int.size[7]_i_2_n_0 ),
        .Q(size[7]),
        .R(cfg_empty));
  (* CHECK_LICENSE_TYPE = "fifo_config,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_axi_int_0_0_fifo_config fifo_config_i
       (.din({config_data,config_adr}),
        .dout(config_data_adr_out),
        .empty(cfg_empty),
        .full(NLW_fifo_config_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(next),
        .rd_rst_busy(NLW_fifo_config_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .wr_clk(config_clk),
        .wr_en(config_wr),
        .wr_rst_busy(NLW_fifo_config_i_wr_rst_busy_UNCONNECTED));
  LUT2 #(
    .INIT(4'h8)) 
    fifo_config_i_i_1
       (.I0(M_AXI_WVALID),
        .I1(M_AXI_WREADY),
        .O(next));
  (* CHECK_LICENSE_TYPE = "ila_6,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_axi_int_0_0_ila_6 ila_i
       (.clk(clk),
        .probe0(up),
        .probe1(M_AXI_AWADDR[30:0]),
        .probe10(M_AXI_BRESP),
        .probe11(M_AXI_BREADY),
        .probe12(req_timeout),
        .probe13(req),
        .probe14(busy),
        .probe15(adr),
        .probe16(size),
        .probe17(counter),
        .probe2(M_AXI_AWLEN),
        .probe3(M_AXI_AWVALID),
        .probe4(M_AXI_AWREADY),
        .probe5(M_AXI_WDATA[39:0]),
        .probe6(M_AXI_WLAST),
        .probe7(M_AXI_WVALID),
        .probe8(M_AXI_WREADY),
        .probe9(M_AXI_BVALID));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_config,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_config" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_axi_int_0_0_fifo_config
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

(* CHECK_LICENSE_TYPE = "ila_6,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_6" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_axi_int_0_0_ila_6
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
  input [30:0]probe1;
  input [7:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [39:0]probe5;
  input [0:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  input [1:0]probe10;
  input [0:0]probe11;
  input [7:0]probe12;
  input [0:0]probe13;
  input [0:0]probe14;
  input [26:0]probe15;
  input [7:0]probe16;
  input [7:0]probe17;


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
