// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue Apr 21 22:55:13 2026
// Host        : Ubuntu running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /media/ubuntu/large/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_dma_1_0/ps_axi_dma_1_0_sim_netlist.v
// Design      : ps_axi_dma_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_axi_dma_1_0,axi_dma,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "axi_dma,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_axi_dma_1_0
   (lpd_clk,
    lpd_resetn,
    spy_wr,
    spy_data,
    avail_size,
    clk,
    resetn,
    rd_ptr,
    wr_ptr,
    M_AXI_TDATA_cmd,
    M_AXI_TVALID_cmd,
    M_AXI_TREADY_cmd,
    M_AXI_STS_tdata,
    M_AXI_STS_tvalid,
    M_AXI_STS_tready,
    M_AXI_TDATA_in,
    M_AXI_TVALID_in,
    M_AXI_TREADY_in,
    M_AXI_TDATA_out,
    M_AXI_TVALID_out,
    M_AXI_TLAST_out,
    M_AXI_TREADY_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 lpd_clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpd_clk, ASSOCIATED_RESET lpd_resetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input lpd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 lpd_resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME lpd_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input lpd_resetn;
  input spy_wr;
  input [31:0]spy_data;
  output [31:0]avail_size;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI_STS:M_AXI_cmd:M_AXI_in:M_AXI_out, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  output [26:0]rd_ptr;
  input [26:0]wr_ptr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_cmd TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [71:0]M_AXI_TDATA_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_cmd TVALID" *) output M_AXI_TVALID_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_cmd TREADY" *) input M_AXI_TREADY_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_STS, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]M_AXI_STS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS TVALID" *) input M_AXI_STS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS TREADY" *) output M_AXI_STS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_in, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]M_AXI_TDATA_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TVALID" *) input M_AXI_TVALID_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TREADY" *) output M_AXI_TREADY_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_out, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]M_AXI_TDATA_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TVALID" *) output M_AXI_TVALID_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TLAST" *) output M_AXI_TLAST_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TREADY" *) input M_AXI_TREADY_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]M_AXI_STS_tdata;
  wire M_AXI_STS_tready;
  wire M_AXI_STS_tvalid;
  wire [67:5]\^M_AXI_TDATA_cmd ;
  wire [255:0]M_AXI_TDATA_in;
  wire [255:0]M_AXI_TDATA_out;
  wire M_AXI_TLAST_out;
  wire M_AXI_TREADY_cmd;
  wire M_AXI_TREADY_out;
  wire M_AXI_TVALID_cmd;
  wire M_AXI_TVALID_in;
  wire M_AXI_TVALID_out;
  wire [31:0]avail_size;
  wire clk;
  wire lpd_clk;
  wire lpd_resetn;
  wire resetn;
  wire [31:0]spy_data;
  wire spy_wr;
  wire [26:0]wr_ptr;
  wire NLW_inst_M_AXI_TREADY_in_UNCONNECTED;
  wire [71:0]NLW_inst_M_AXI_TDATA_cmd_UNCONNECTED;
  wire [26:0]NLW_inst_rd_ptr_UNCONNECTED;

  assign M_AXI_TDATA_cmd[71] = \<const0> ;
  assign M_AXI_TDATA_cmd[70] = \<const0> ;
  assign M_AXI_TDATA_cmd[69] = \<const0> ;
  assign M_AXI_TDATA_cmd[68] = \<const0> ;
  assign M_AXI_TDATA_cmd[67:37] = \^M_AXI_TDATA_cmd [67:37];
  assign M_AXI_TDATA_cmd[36] = \<const0> ;
  assign M_AXI_TDATA_cmd[35] = \<const0> ;
  assign M_AXI_TDATA_cmd[34] = \<const0> ;
  assign M_AXI_TDATA_cmd[33] = \<const0> ;
  assign M_AXI_TDATA_cmd[32] = \<const0> ;
  assign M_AXI_TDATA_cmd[31] = \<const0> ;
  assign M_AXI_TDATA_cmd[30] = \<const0> ;
  assign M_AXI_TDATA_cmd[29] = \<const0> ;
  assign M_AXI_TDATA_cmd[28] = \<const0> ;
  assign M_AXI_TDATA_cmd[27] = \<const0> ;
  assign M_AXI_TDATA_cmd[26] = \<const0> ;
  assign M_AXI_TDATA_cmd[25] = \<const0> ;
  assign M_AXI_TDATA_cmd[24] = \<const0> ;
  assign M_AXI_TDATA_cmd[23] = \<const1> ;
  assign M_AXI_TDATA_cmd[22] = \<const0> ;
  assign M_AXI_TDATA_cmd[21] = \<const0> ;
  assign M_AXI_TDATA_cmd[20] = \<const0> ;
  assign M_AXI_TDATA_cmd[19] = \<const0> ;
  assign M_AXI_TDATA_cmd[18] = \<const0> ;
  assign M_AXI_TDATA_cmd[17] = \<const0> ;
  assign M_AXI_TDATA_cmd[16] = \<const0> ;
  assign M_AXI_TDATA_cmd[15] = \<const0> ;
  assign M_AXI_TDATA_cmd[14] = \<const0> ;
  assign M_AXI_TDATA_cmd[13] = \<const0> ;
  assign M_AXI_TDATA_cmd[12:5] = \^M_AXI_TDATA_cmd [12:5];
  assign M_AXI_TDATA_cmd[4] = \<const0> ;
  assign M_AXI_TDATA_cmd[3] = \<const0> ;
  assign M_AXI_TDATA_cmd[2] = \<const0> ;
  assign M_AXI_TDATA_cmd[1] = \<const0> ;
  assign M_AXI_TDATA_cmd[0] = \<const0> ;
  assign M_AXI_TREADY_in = \<const1> ;
  assign rd_ptr[26] = \<const0> ;
  assign rd_ptr[25] = \<const0> ;
  assign rd_ptr[24] = \<const0> ;
  assign rd_ptr[23] = \<const0> ;
  assign rd_ptr[22] = \<const0> ;
  assign rd_ptr[21] = \<const0> ;
  assign rd_ptr[20] = \<const0> ;
  assign rd_ptr[19] = \<const0> ;
  assign rd_ptr[18] = \<const0> ;
  assign rd_ptr[17] = \<const0> ;
  assign rd_ptr[16] = \<const0> ;
  assign rd_ptr[15] = \<const0> ;
  assign rd_ptr[14] = \<const0> ;
  assign rd_ptr[13] = \<const0> ;
  assign rd_ptr[12] = \<const0> ;
  assign rd_ptr[11] = \<const0> ;
  assign rd_ptr[10] = \<const0> ;
  assign rd_ptr[9] = \<const0> ;
  assign rd_ptr[8] = \<const0> ;
  assign rd_ptr[7] = \<const0> ;
  assign rd_ptr[6] = \<const0> ;
  assign rd_ptr[5] = \<const0> ;
  assign rd_ptr[4] = \<const0> ;
  assign rd_ptr[3] = \<const0> ;
  assign rd_ptr[2] = \<const0> ;
  assign rd_ptr[1] = \<const0> ;
  assign rd_ptr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* CMD_ST_IDLE = "3'b000" *) 
  (* CMD_ST_WAIT_DONE = "3'b010" *) 
  (* CMD_ST_WAIT_HDR = "3'b001" *) 
  (* CMD_ST_WAIT_SPACE = "3'b011" *) 
  ps_axi_dma_1_0_axi_dma inst
       (.M_AXI_STS_tdata({M_AXI_STS_tdata[7],1'b0,1'b0,1'b0,M_AXI_STS_tdata[3:0]}),
        .M_AXI_STS_tready(M_AXI_STS_tready),
        .M_AXI_STS_tvalid(M_AXI_STS_tvalid),
        .M_AXI_TDATA_cmd({NLW_inst_M_AXI_TDATA_cmd_UNCONNECTED[71:68],\^M_AXI_TDATA_cmd ,NLW_inst_M_AXI_TDATA_cmd_UNCONNECTED[4:0]}),
        .M_AXI_TDATA_in(M_AXI_TDATA_in),
        .M_AXI_TDATA_out(M_AXI_TDATA_out),
        .M_AXI_TLAST_out(M_AXI_TLAST_out),
        .M_AXI_TREADY_cmd(M_AXI_TREADY_cmd),
        .M_AXI_TREADY_in(NLW_inst_M_AXI_TREADY_in_UNCONNECTED),
        .M_AXI_TREADY_out(M_AXI_TREADY_out),
        .M_AXI_TVALID_cmd(M_AXI_TVALID_cmd),
        .M_AXI_TVALID_in(M_AXI_TVALID_in),
        .M_AXI_TVALID_out(M_AXI_TVALID_out),
        .avail_size(avail_size),
        .clk(clk),
        .lpd_clk(lpd_clk),
        .lpd_resetn(lpd_resetn),
        .rd_ptr(NLW_inst_rd_ptr_UNCONNECTED[26:0]),
        .resetn(resetn),
        .spy_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,spy_data[18:5],1'b0,1'b0,1'b0,1'b0,1'b0}),
        .spy_wr(spy_wr),
        .wr_ptr(wr_ptr));
endmodule

(* CMD_ST_IDLE = "3'b000" *) (* CMD_ST_WAIT_DONE = "3'b010" *) (* CMD_ST_WAIT_HDR = "3'b001" *) 
(* CMD_ST_WAIT_SPACE = "3'b011" *) (* ORIG_REF_NAME = "axi_dma" *) 
module ps_axi_dma_1_0_axi_dma
   (lpd_clk,
    lpd_resetn,
    spy_wr,
    spy_data,
    avail_size,
    clk,
    resetn,
    rd_ptr,
    wr_ptr,
    M_AXI_TDATA_cmd,
    M_AXI_TVALID_cmd,
    M_AXI_TREADY_cmd,
    M_AXI_STS_tdata,
    M_AXI_STS_tvalid,
    M_AXI_STS_tready,
    M_AXI_TDATA_in,
    M_AXI_TVALID_in,
    M_AXI_TREADY_in,
    M_AXI_TDATA_out,
    M_AXI_TVALID_out,
    M_AXI_TLAST_out,
    M_AXI_TREADY_out);
  input lpd_clk;
  input lpd_resetn;
  input spy_wr;
  input [31:0]spy_data;
  output [31:0]avail_size;
  input clk;
  input resetn;
  output [26:0]rd_ptr;
  input [26:0]wr_ptr;
  output [71:0]M_AXI_TDATA_cmd;
  output M_AXI_TVALID_cmd;
  input M_AXI_TREADY_cmd;
  input [7:0]M_AXI_STS_tdata;
  input M_AXI_STS_tvalid;
  output M_AXI_STS_tready;
  input [255:0]M_AXI_TDATA_in;
  input M_AXI_TVALID_in;
  output M_AXI_TREADY_in;
  output [255:0]M_AXI_TDATA_out;
  output M_AXI_TVALID_out;
  output M_AXI_TLAST_out;
  input M_AXI_TREADY_out;

  wire \<const0> ;
  wire [7:0]M_AXI_STS_tdata;
  wire M_AXI_STS_tready;
  wire M_AXI_STS_tvalid;
  wire [67:5]\^M_AXI_TDATA_cmd ;
  wire [255:0]M_AXI_TDATA_in;
  wire [255:0]M_AXI_TDATA_out;
  wire M_AXI_TLAST_out;
  wire M_AXI_TREADY_cmd;
  wire M_AXI_TREADY_out;
  wire M_AXI_TVALID_cmd;
  wire M_AXI_TVALID_in;
  wire M_AXI_TVALID_out;
  (* MARK_DEBUG *) wire [26:0]adr;
  wire [31:0]avail_size;
  wire \axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_10_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_11_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_1_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_2_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_3_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_4_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_5_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_6_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_7_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_8_n_0 ;
  wire \axi_dma.M_AXI_TLAST_out_i_9_n_0 ;
  wire \axi_dma.M_AXI_TVALID_cmd_i_1_n_0 ;
  wire \axi_dma.avail_size[31]_i_1_n_0 ;
  wire \axi_dma.blocks[0]_i_1_n_0 ;
  wire \axi_dma.blocks[1]_i_1_n_0 ;
  wire \axi_dma.blocks[2]_i_1_n_0 ;
  wire \axi_dma.blocks[3]_i_1_n_0 ;
  wire \axi_dma.blocks[4]_i_1_n_0 ;
  wire \axi_dma.blocks[5]_i_1_n_0 ;
  wire \axi_dma.blocks[6]_i_1_n_0 ;
  wire \axi_dma.blocks[7]_i_1_n_0 ;
  wire \axi_dma.blocks[7]_i_2_n_0 ;
  wire \axi_dma.cmd_done_i_1_n_0 ;
  wire \axi_dma.cmd_done_i_3_n_0 ;
  wire \axi_dma.cmd_error_i_1_n_0 ;
  wire \axi_dma.cmd_state[2]_i_1_n_0 ;
  wire \axi_dma.cmd_state[2]_i_3_n_0 ;
  wire \axi_dma.cmd_state[2]_i_4_n_0 ;
  wire \axi_dma.cmd_state[2]_i_5_n_0 ;
  wire \axi_dma.cmd_state[2]_i_6_n_0 ;
  wire \axi_dma.cmd_state[2]_i_7_n_0 ;
  wire \axi_dma.cmd_state[2]_i_8_n_0 ;
  wire \axi_dma.cmd_state[2]_i_9_n_0 ;
  wire \axi_dma.curr_beat[13]_i_1_n_0 ;
  wire [13:0]\axi_dma.curr_beat_reg ;
  wire \axi_dma.curr_beat_reg[13]_i_3_n_4 ;
  wire \axi_dma.curr_beat_reg[13]_i_3_n_5 ;
  wire \axi_dma.curr_beat_reg[13]_i_3_n_6 ;
  wire \axi_dma.curr_beat_reg[13]_i_3_n_7 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_0 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_1 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_2 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_3 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_4 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_5 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_6 ;
  wire \axi_dma.curr_beat_reg[8]_i_1_n_7 ;
  wire \axi_dma.dma_active_i_1_n_0 ;
  wire \axi_dma.dma_active_reg_n_0 ;
  wire \axi_dma.fifo_count[0]_i_1_n_0 ;
  wire \axi_dma.fifo_count[13]_i_1_n_0 ;
  wire \axi_dma.fifo_count[13]_i_3_n_0 ;
  wire \axi_dma.fifo_count[13]_i_4_n_0 ;
  wire \axi_dma.fifo_count[13]_i_5_n_0 ;
  wire \axi_dma.fifo_count[13]_i_6_n_0 ;
  wire \axi_dma.fifo_count[13]_i_7_n_0 ;
  wire \axi_dma.fifo_count[8]_i_10_n_0 ;
  wire \axi_dma.fifo_count[8]_i_2_n_0 ;
  wire \axi_dma.fifo_count[8]_i_3_n_0 ;
  wire \axi_dma.fifo_count[8]_i_4_n_0 ;
  wire \axi_dma.fifo_count[8]_i_5_n_0 ;
  wire \axi_dma.fifo_count[8]_i_6_n_0 ;
  wire \axi_dma.fifo_count[8]_i_7_n_0 ;
  wire \axi_dma.fifo_count[8]_i_8_n_0 ;
  wire \axi_dma.fifo_count[8]_i_9_n_0 ;
  wire [13:0]\axi_dma.fifo_count_reg ;
  wire \axi_dma.fifo_count_reg[13]_i_2_n_4 ;
  wire \axi_dma.fifo_count_reg[13]_i_2_n_5 ;
  wire \axi_dma.fifo_count_reg[13]_i_2_n_6 ;
  wire \axi_dma.fifo_count_reg[13]_i_2_n_7 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_0 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_1 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_2 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_3 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_4 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_5 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_6 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_7 ;
  wire \axi_dma.has_mig_size_i_1_n_0 ;
  wire \axi_dma.last_beat[13]_i_3_n_0 ;
  wire \axi_dma.last_beat[13]_i_4_n_0 ;
  wire \axi_dma.last_beat[13]_i_5_n_0 ;
  wire \axi_dma.last_beat[13]_i_6_n_0 ;
  wire \axi_dma.last_beat[13]_i_7_n_0 ;
  wire \axi_dma.last_beat[8]_i_2_n_0 ;
  wire \axi_dma.last_beat[8]_i_3_n_0 ;
  wire \axi_dma.last_beat[8]_i_4_n_0 ;
  wire \axi_dma.last_beat[8]_i_5_n_0 ;
  wire \axi_dma.last_beat[8]_i_6_n_0 ;
  wire \axi_dma.last_beat[8]_i_7_n_0 ;
  wire \axi_dma.last_beat[8]_i_8_n_0 ;
  wire \axi_dma.last_beat[8]_i_9_n_0 ;
  wire \axi_dma.last_beat_reg[13]_i_2_n_4 ;
  wire \axi_dma.last_beat_reg[13]_i_2_n_5 ;
  wire \axi_dma.last_beat_reg[13]_i_2_n_6 ;
  wire \axi_dma.last_beat_reg[13]_i_2_n_7 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_0 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_1 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_2 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_3 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_4 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_5 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_6 ;
  wire \axi_dma.last_beat_reg[8]_i_1_n_7 ;
  wire \axi_dma.last_beat_reg_n_0_[0] ;
  wire \axi_dma.last_beat_reg_n_0_[10] ;
  wire \axi_dma.last_beat_reg_n_0_[11] ;
  wire \axi_dma.last_beat_reg_n_0_[12] ;
  wire \axi_dma.last_beat_reg_n_0_[13] ;
  wire \axi_dma.last_beat_reg_n_0_[1] ;
  wire \axi_dma.last_beat_reg_n_0_[2] ;
  wire \axi_dma.last_beat_reg_n_0_[3] ;
  wire \axi_dma.last_beat_reg_n_0_[4] ;
  wire \axi_dma.last_beat_reg_n_0_[5] ;
  wire \axi_dma.last_beat_reg_n_0_[6] ;
  wire \axi_dma.last_beat_reg_n_0_[7] ;
  wire \axi_dma.last_beat_reg_n_0_[8] ;
  wire \axi_dma.last_beat_reg_n_0_[9] ;
  wire \axi_dma.mig_blocks[15]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[15]_i_3_n_0 ;
  wire \axi_dma.mig_blocks[15]_i_4_n_0 ;
  wire \axi_dma.mig_blocks[15]_i_5_n_0 ;
  wire \axi_dma.mig_blocks[15]_i_6_n_0 ;
  wire \axi_dma.mig_blocks[15]_i_7_n_0 ;
  wire \axi_dma.mig_blocks[15]_i_8_n_0 ;
  wire \axi_dma.mig_blocks[15]_i_9_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_3_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_4_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_5_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_6_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_7_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_8_n_0 ;
  wire \axi_dma.mig_blocks[23]_i_9_n_0 ;
  wire \axi_dma.mig_blocks[26]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[26]_i_3_n_0 ;
  wire \axi_dma.mig_blocks[26]_i_4_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_3_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_4_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_5_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_6_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_7_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_8_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_9_n_0 ;
  wire [26:0]\axi_dma.mig_blocks_reg0 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_0 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_1 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_2 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_3 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_4 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_5 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_6 ;
  wire \axi_dma.mig_blocks_reg[15]_i_1_n_7 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_0 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_1 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_2 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_3 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_4 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_5 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_6 ;
  wire \axi_dma.mig_blocks_reg[23]_i_1_n_7 ;
  wire \axi_dma.mig_blocks_reg[26]_i_1_n_6 ;
  wire \axi_dma.mig_blocks_reg[26]_i_1_n_7 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_0 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_1 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_2 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_3 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_4 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_5 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_6 ;
  wire \axi_dma.mig_blocks_reg[7]_i_1_n_7 ;
  wire \axi_dma.mig_diff[0]_i_1_n_0 ;
  wire \axi_dma.mig_diff[1]_i_1_n_0 ;
  wire \axi_dma.mig_diff[1]_i_2_n_0 ;
  wire \axi_dma.mig_diff[2]_i_1_n_0 ;
  wire \axi_dma.mig_diff[2]_i_2_n_0 ;
  wire \axi_dma.mig_diff[3]_i_1_n_0 ;
  wire \axi_dma.mig_diff[3]_i_2_n_0 ;
  wire \axi_dma.mig_diff[3]_i_3_n_0 ;
  wire \axi_dma.mig_diff[4]_i_1_n_0 ;
  wire \axi_dma.mig_diff[4]_i_2_n_0 ;
  wire \axi_dma.mig_diff[4]_i_3_n_0 ;
  wire \axi_dma.mig_diff[4]_i_4_n_0 ;
  wire \axi_dma.mig_diff[5]_i_1_n_0 ;
  wire \axi_dma.mig_diff[5]_i_2_n_0 ;
  wire \axi_dma.mig_diff[5]_i_3_n_0 ;
  wire \axi_dma.mig_diff[5]_i_4_n_0 ;
  wire \axi_dma.mig_diff[5]_i_5_n_0 ;
  wire \axi_dma.mig_diff[5]_i_6_n_0 ;
  wire \axi_dma.mig_diff[6]_i_1_n_0 ;
  wire \axi_dma.mig_diff[7]_i_10_n_0 ;
  wire \axi_dma.mig_diff[7]_i_11_n_0 ;
  wire \axi_dma.mig_diff[7]_i_1_n_0 ;
  wire \axi_dma.mig_diff[7]_i_2_n_0 ;
  wire \axi_dma.mig_diff[7]_i_3_n_0 ;
  wire \axi_dma.mig_diff[7]_i_4_n_0 ;
  wire \axi_dma.mig_diff[7]_i_5_n_0 ;
  wire \axi_dma.mig_diff[7]_i_6_n_0 ;
  wire \axi_dma.mig_diff[7]_i_7_n_0 ;
  wire \axi_dma.mig_diff[7]_i_8_n_0 ;
  wire \axi_dma.mig_diff[7]_i_9_n_0 ;
  wire \axi_dma.mig_size[0]_i_1_n_0 ;
  wire \axi_dma.mig_size[1]_i_1_n_0 ;
  wire \axi_dma.mig_size[2]_i_1_n_0 ;
  wire \axi_dma.mig_size[3]_i_1_n_0 ;
  wire \axi_dma.mig_size[4]_i_1_n_0 ;
  wire \axi_dma.mig_size[5]_i_1_n_0 ;
  wire \axi_dma.mig_size[6]_i_1_n_0 ;
  wire \axi_dma.mig_size[7]_i_1_n_0 ;
  wire \axi_dma.mig_size[7]_i_2_n_0 ;
  wire \axi_dma.r5_cmd_rd_i_1_n_0 ;
  wire \axi_dma.r5_cmd_rd_reg_n_0 ;
  wire \axi_dma.spy_reset_i_1_n_0 ;
  wire \axi_dma.start_cmd_i_1_n_0 ;
  wire \axi_dma.tag[0]_i_1_n_0 ;
  wire \axi_dma.tag[1]_i_1_n_0 ;
  wire \axi_dma.tag[2]_i_1_n_0 ;
  wire \axi_dma.tag[3]_i_1_n_0 ;
  (* MARK_DEBUG *) wire [7:0]blocks;
  wire clear;
  wire clk;
  (* MARK_DEBUG *) wire cmd_done;
  wire cmd_done0;
  (* MARK_DEBUG *) wire cmd_error;
  (* MARK_DEBUG *) wire [2:0]cmd_state;
  wire curr_beat;
  wire fifo_chg;
  wire [13:1]fifo_count;
  wire fifo_empty;
  wire fifo_rd_en;
  wire fifo_size_empty;
  wire [31:0]fifo_size_out_data;
  wire fifo_size_rd;
  (* MARK_DEBUG *) wire has_mig_size;
  wire [255:0]in_data;
  wire in_wr;
  wire last_beat;
  wire [13:0]last_beat0;
  wire lpd_clk;
  wire lpd_resetn;
  (* MARK_DEBUG *) wire [26:0]mig_blocks;
  (* MARK_DEBUG *) wire [7:0]mig_diff;
  (* MARK_DEBUG *) wire [7:0]mig_size;
  wire [2:0]p_0_in__0;
  wire [13:0]p_0_in__1;
  wire [13:0]r5_cmd_data;
  wire r5_cmd_empty;
  wire reset;
  wire resetn;
  wire [31:0]spy_data;
  wire spy_reset;
  wire spy_wr;
  (* MARK_DEBUG *) wire start_cmd;
  (* MARK_DEBUG *) wire [3:0]tag;
  wire [26:0]wr_ptr;
  wire [7:4]\NLW_axi_dma.curr_beat_reg[13]_i_3_CO_UNCONNECTED ;
  wire [7:5]\NLW_axi_dma.curr_beat_reg[13]_i_3_O_UNCONNECTED ;
  wire [7:4]\NLW_axi_dma.fifo_count_reg[13]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_axi_dma.fifo_count_reg[13]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_axi_dma.last_beat_reg[13]_i_2_CO_UNCONNECTED ;
  wire [7:5]\NLW_axi_dma.last_beat_reg[13]_i_2_O_UNCONNECTED ;
  wire [7:2]\NLW_axi_dma.mig_blocks_reg[26]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_axi_dma.mig_blocks_reg[26]_i_1_O_UNCONNECTED ;
  wire NLW_fifo_i_almost_empty_UNCONNECTED;
  wire NLW_fifo_i_almost_full_UNCONNECTED;
  wire NLW_fifo_i_data_valid_UNCONNECTED;
  wire NLW_fifo_i_dbiterr_UNCONNECTED;
  wire NLW_fifo_i_full_UNCONNECTED;
  wire NLW_fifo_i_overflow_UNCONNECTED;
  wire NLW_fifo_i_prog_empty_UNCONNECTED;
  wire NLW_fifo_i_prog_full_UNCONNECTED;
  wire NLW_fifo_i_rd_rst_busy_UNCONNECTED;
  wire NLW_fifo_i_sbiterr_UNCONNECTED;
  wire NLW_fifo_i_underflow_UNCONNECTED;
  wire NLW_fifo_i_wr_ack_UNCONNECTED;
  wire NLW_fifo_i_wr_rst_busy_UNCONNECTED;
  wire [0:0]NLW_fifo_i_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_fifo_i_wr_data_count_UNCONNECTED;
  wire NLW_fifo_size_ptr_i_full_UNCONNECTED;
  wire NLW_fifo_spy_i_full_UNCONNECTED;

  assign M_AXI_TDATA_cmd[71] = \<const0> ;
  assign M_AXI_TDATA_cmd[70] = \<const0> ;
  assign M_AXI_TDATA_cmd[69] = \<const0> ;
  assign M_AXI_TDATA_cmd[68] = \<const0> ;
  assign M_AXI_TDATA_cmd[67:37] = \^M_AXI_TDATA_cmd [67:37];
  assign M_AXI_TDATA_cmd[36] = \<const0> ;
  assign M_AXI_TDATA_cmd[35] = \<const0> ;
  assign M_AXI_TDATA_cmd[34] = \<const0> ;
  assign M_AXI_TDATA_cmd[33] = \<const0> ;
  assign M_AXI_TDATA_cmd[32] = \<const0> ;
  assign M_AXI_TDATA_cmd[31] = \<const0> ;
  assign M_AXI_TDATA_cmd[30] = \<const0> ;
  assign M_AXI_TDATA_cmd[29] = \<const0> ;
  assign M_AXI_TDATA_cmd[28] = \<const0> ;
  assign M_AXI_TDATA_cmd[27] = \<const0> ;
  assign M_AXI_TDATA_cmd[26] = \<const0> ;
  assign M_AXI_TDATA_cmd[25] = \<const0> ;
  assign M_AXI_TDATA_cmd[24] = \<const0> ;
  assign M_AXI_TDATA_cmd[23] = \<const0> ;
  assign M_AXI_TDATA_cmd[22] = \<const0> ;
  assign M_AXI_TDATA_cmd[21] = \<const0> ;
  assign M_AXI_TDATA_cmd[20] = \<const0> ;
  assign M_AXI_TDATA_cmd[19] = \<const0> ;
  assign M_AXI_TDATA_cmd[18] = \<const0> ;
  assign M_AXI_TDATA_cmd[17] = \<const0> ;
  assign M_AXI_TDATA_cmd[16] = \<const0> ;
  assign M_AXI_TDATA_cmd[15] = \<const0> ;
  assign M_AXI_TDATA_cmd[14] = \<const0> ;
  assign M_AXI_TDATA_cmd[13] = \<const0> ;
  assign M_AXI_TDATA_cmd[12:5] = \^M_AXI_TDATA_cmd [12:5];
  assign M_AXI_TDATA_cmd[4] = \<const0> ;
  assign M_AXI_TDATA_cmd[3] = \<const0> ;
  assign M_AXI_TDATA_cmd[2] = \<const0> ;
  assign M_AXI_TDATA_cmd[1] = \<const0> ;
  assign M_AXI_TDATA_cmd[0] = \<const0> ;
  assign M_AXI_TREADY_in = \<const0> ;
  assign rd_ptr[26] = \<const0> ;
  assign rd_ptr[25] = \<const0> ;
  assign rd_ptr[24] = \<const0> ;
  assign rd_ptr[23] = \<const0> ;
  assign rd_ptr[22] = \<const0> ;
  assign rd_ptr[21] = \<const0> ;
  assign rd_ptr[20] = \<const0> ;
  assign rd_ptr[19] = \<const0> ;
  assign rd_ptr[18] = \<const0> ;
  assign rd_ptr[17] = \<const0> ;
  assign rd_ptr[16] = \<const0> ;
  assign rd_ptr[15] = \<const0> ;
  assign rd_ptr[14] = \<const0> ;
  assign rd_ptr[13] = \<const0> ;
  assign rd_ptr[12] = \<const0> ;
  assign rd_ptr[11] = \<const0> ;
  assign rd_ptr[10] = \<const0> ;
  assign rd_ptr[9] = \<const0> ;
  assign rd_ptr[8] = \<const0> ;
  assign rd_ptr[7] = \<const0> ;
  assign rd_ptr[6] = \<const0> ;
  assign rd_ptr[5] = \<const0> ;
  assign rd_ptr[4] = \<const0> ;
  assign rd_ptr[3] = \<const0> ;
  assign rd_ptr[2] = \<const0> ;
  assign rd_ptr[1] = \<const0> ;
  assign rd_ptr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    M_AXI_TVALID_out_INST_0
       (.I0(\axi_dma.dma_active_reg_n_0 ),
        .I1(fifo_empty),
        .O(M_AXI_TVALID_out));
  FDRE \axi_dma.M_AXI_STS_tready_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(M_AXI_STS_tready),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.M_AXI_TDATA_cmd[67]_i_1 
       (.I0(start_cmd),
        .I1(M_AXI_TVALID_cmd),
        .O(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[10] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[5]),
        .Q(\^M_AXI_TDATA_cmd [10]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[11] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[6]),
        .Q(\^M_AXI_TDATA_cmd [11]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[12] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[7]),
        .Q(\^M_AXI_TDATA_cmd [12]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[37] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[0]),
        .Q(\^M_AXI_TDATA_cmd [37]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[38] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[1]),
        .Q(\^M_AXI_TDATA_cmd [38]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[39] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[2]),
        .Q(\^M_AXI_TDATA_cmd [39]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[40] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[3]),
        .Q(\^M_AXI_TDATA_cmd [40]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[41] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[4]),
        .Q(\^M_AXI_TDATA_cmd [41]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[42] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[5]),
        .Q(\^M_AXI_TDATA_cmd [42]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[43] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[6]),
        .Q(\^M_AXI_TDATA_cmd [43]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[44] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[7]),
        .Q(\^M_AXI_TDATA_cmd [44]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[45] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[8]),
        .Q(\^M_AXI_TDATA_cmd [45]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[46] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[9]),
        .Q(\^M_AXI_TDATA_cmd [46]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[47] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[10]),
        .Q(\^M_AXI_TDATA_cmd [47]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[48] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[11]),
        .Q(\^M_AXI_TDATA_cmd [48]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[49] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[12]),
        .Q(\^M_AXI_TDATA_cmd [49]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[50] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[13]),
        .Q(\^M_AXI_TDATA_cmd [50]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[51] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[14]),
        .Q(\^M_AXI_TDATA_cmd [51]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[52] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[15]),
        .Q(\^M_AXI_TDATA_cmd [52]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[53] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[16]),
        .Q(\^M_AXI_TDATA_cmd [53]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[54] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[17]),
        .Q(\^M_AXI_TDATA_cmd [54]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[55] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[18]),
        .Q(\^M_AXI_TDATA_cmd [55]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[56] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[19]),
        .Q(\^M_AXI_TDATA_cmd [56]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[57] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[20]),
        .Q(\^M_AXI_TDATA_cmd [57]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[58] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[21]),
        .Q(\^M_AXI_TDATA_cmd [58]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[59] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[22]),
        .Q(\^M_AXI_TDATA_cmd [59]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[5] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[0]),
        .Q(\^M_AXI_TDATA_cmd [5]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[60] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[23]),
        .Q(\^M_AXI_TDATA_cmd [60]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[61] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[24]),
        .Q(\^M_AXI_TDATA_cmd [61]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[62] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[25]),
        .Q(\^M_AXI_TDATA_cmd [62]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[63] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(adr[26]),
        .Q(\^M_AXI_TDATA_cmd [63]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[64] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(tag[0]),
        .Q(\^M_AXI_TDATA_cmd [64]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[65] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(tag[1]),
        .Q(\^M_AXI_TDATA_cmd [65]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[66] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(tag[2]),
        .Q(\^M_AXI_TDATA_cmd [66]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[67] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(tag[3]),
        .Q(\^M_AXI_TDATA_cmd [67]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[6] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[1]),
        .Q(\^M_AXI_TDATA_cmd [6]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[7] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[2]),
        .Q(\^M_AXI_TDATA_cmd [7]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[8] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[3]),
        .Q(\^M_AXI_TDATA_cmd [8]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_cmd_reg[9] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_cmd[67]_i_1_n_0 ),
        .D(blocks[4]),
        .Q(\^M_AXI_TDATA_cmd [9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hAABAAAAA)) 
    \axi_dma.M_AXI_TLAST_out_i_1 
       (.I0(\axi_dma.M_AXI_TLAST_out_i_2_n_0 ),
        .I1(r5_cmd_empty),
        .I2(\axi_dma.M_AXI_TLAST_out_i_3_n_0 ),
        .I3(\axi_dma.dma_active_reg_n_0 ),
        .I4(resetn),
        .O(\axi_dma.M_AXI_TLAST_out_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.M_AXI_TLAST_out_i_10 
       (.I0(\axi_dma.curr_beat_reg [3]),
        .I1(\axi_dma.last_beat_reg_n_0_[3] ),
        .I2(\axi_dma.last_beat_reg_n_0_[5] ),
        .I3(\axi_dma.curr_beat_reg [5]),
        .I4(\axi_dma.last_beat_reg_n_0_[4] ),
        .I5(\axi_dma.curr_beat_reg [4]),
        .O(\axi_dma.M_AXI_TLAST_out_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.M_AXI_TLAST_out_i_11 
       (.I0(\axi_dma.curr_beat_reg [0]),
        .I1(\axi_dma.last_beat_reg_n_0_[0] ),
        .I2(\axi_dma.last_beat_reg_n_0_[2] ),
        .I3(\axi_dma.curr_beat_reg [2]),
        .I4(\axi_dma.last_beat_reg_n_0_[1] ),
        .I5(\axi_dma.curr_beat_reg [1]),
        .O(\axi_dma.M_AXI_TLAST_out_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF00800000)) 
    \axi_dma.M_AXI_TLAST_out_i_2 
       (.I0(\axi_dma.M_AXI_TLAST_out_i_4_n_0 ),
        .I1(\axi_dma.M_AXI_TLAST_out_i_5_n_0 ),
        .I2(\axi_dma.M_AXI_TLAST_out_i_6_n_0 ),
        .I3(\axi_dma.curr_beat[13]_i_1_n_0 ),
        .I4(\axi_dma.M_AXI_TLAST_out_i_7_n_0 ),
        .I5(M_AXI_TLAST_out),
        .O(\axi_dma.M_AXI_TLAST_out_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \axi_dma.M_AXI_TLAST_out_i_3 
       (.I0(\axi_dma.M_AXI_TLAST_out_i_8_n_0 ),
        .I1(\axi_dma.M_AXI_TLAST_out_i_9_n_0 ),
        .I2(r5_cmd_data[6]),
        .I3(r5_cmd_data[7]),
        .I4(r5_cmd_data[4]),
        .I5(r5_cmd_data[5]),
        .O(\axi_dma.M_AXI_TLAST_out_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.M_AXI_TLAST_out_i_4 
       (.I0(\axi_dma.curr_beat_reg [6]),
        .I1(\axi_dma.last_beat_reg_n_0_[6] ),
        .I2(\axi_dma.last_beat_reg_n_0_[8] ),
        .I3(\axi_dma.curr_beat_reg [8]),
        .I4(\axi_dma.last_beat_reg_n_0_[7] ),
        .I5(\axi_dma.curr_beat_reg [7]),
        .O(\axi_dma.M_AXI_TLAST_out_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000000000)) 
    \axi_dma.M_AXI_TLAST_out_i_5 
       (.I0(\axi_dma.last_beat_reg_n_0_[13] ),
        .I1(\axi_dma.curr_beat_reg [13]),
        .I2(\axi_dma.last_beat_reg_n_0_[12] ),
        .I3(\axi_dma.curr_beat_reg [12]),
        .I4(\axi_dma.M_AXI_TLAST_out_i_10_n_0 ),
        .I5(\axi_dma.M_AXI_TLAST_out_i_11_n_0 ),
        .O(\axi_dma.M_AXI_TLAST_out_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.M_AXI_TLAST_out_i_6 
       (.I0(\axi_dma.curr_beat_reg [9]),
        .I1(\axi_dma.last_beat_reg_n_0_[9] ),
        .I2(\axi_dma.last_beat_reg_n_0_[11] ),
        .I3(\axi_dma.curr_beat_reg [11]),
        .I4(\axi_dma.last_beat_reg_n_0_[10] ),
        .I5(\axi_dma.curr_beat_reg [10]),
        .O(\axi_dma.M_AXI_TLAST_out_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h2F0F2FFF)) 
    \axi_dma.M_AXI_TLAST_out_i_7 
       (.I0(M_AXI_TREADY_out),
        .I1(fifo_empty),
        .I2(resetn),
        .I3(\axi_dma.dma_active_reg_n_0 ),
        .I4(r5_cmd_empty),
        .O(\axi_dma.M_AXI_TLAST_out_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_dma.M_AXI_TLAST_out_i_8 
       (.I0(r5_cmd_data[13]),
        .I1(r5_cmd_data[12]),
        .I2(r5_cmd_data[9]),
        .I3(r5_cmd_data[8]),
        .I4(r5_cmd_data[11]),
        .I5(r5_cmd_data[10]),
        .O(\axi_dma.M_AXI_TLAST_out_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    \axi_dma.M_AXI_TLAST_out_i_9 
       (.I0(r5_cmd_data[2]),
        .I1(r5_cmd_data[3]),
        .I2(r5_cmd_data[0]),
        .I3(r5_cmd_data[1]),
        .O(\axi_dma.M_AXI_TLAST_out_i_9_n_0 ));
  FDRE \axi_dma.M_AXI_TLAST_out_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.M_AXI_TLAST_out_i_1_n_0 ),
        .Q(M_AXI_TLAST_out),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h3A)) 
    \axi_dma.M_AXI_TVALID_cmd_i_1 
       (.I0(start_cmd),
        .I1(M_AXI_TREADY_cmd),
        .I2(M_AXI_TVALID_cmd),
        .O(\axi_dma.M_AXI_TVALID_cmd_i_1_n_0 ));
  FDRE \axi_dma.M_AXI_TVALID_cmd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.M_AXI_TVALID_cmd_i_1_n_0 ),
        .Q(M_AXI_TVALID_cmd),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[0]),
        .Q(adr[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[10]),
        .Q(adr[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[11]),
        .Q(adr[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[12]),
        .Q(adr[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[13]),
        .Q(adr[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[14]),
        .Q(adr[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[15]),
        .Q(adr[15]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[16]),
        .Q(adr[16]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[17]),
        .Q(adr[17]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[18]),
        .Q(adr[18]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[19]),
        .Q(adr[19]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[1]),
        .Q(adr[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[20]),
        .Q(adr[20]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[21]),
        .Q(adr[21]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[22]),
        .Q(adr[22]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[23]),
        .Q(adr[23]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[24]),
        .Q(adr[24]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[25]),
        .Q(adr[25]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[26]),
        .Q(adr[26]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[2]),
        .Q(adr[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[3]),
        .Q(adr[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[4]),
        .Q(adr[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[5]),
        .Q(adr[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[6]),
        .Q(adr[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[7]),
        .Q(adr[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[8]),
        .Q(adr[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.adr_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(adr[9]),
        .Q(adr[9]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.avail_size[31]_i_1 
       (.I0(fifo_size_empty),
        .O(\axi_dma.avail_size[31]_i_1_n_0 ));
  FDRE \axi_dma.avail_size_reg[0] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[0]),
        .Q(avail_size[0]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[10] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[10]),
        .Q(avail_size[10]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[11] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[11]),
        .Q(avail_size[11]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[12] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[12]),
        .Q(avail_size[12]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[13] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[13]),
        .Q(avail_size[13]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[14] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[14]),
        .Q(avail_size[14]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[15] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[15]),
        .Q(avail_size[15]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[16] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[16]),
        .Q(avail_size[16]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[17] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[17]),
        .Q(avail_size[17]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[18] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[18]),
        .Q(avail_size[18]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[19] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[19]),
        .Q(avail_size[19]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[1] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[1]),
        .Q(avail_size[1]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[20] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[20]),
        .Q(avail_size[20]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[21] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[21]),
        .Q(avail_size[21]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[22] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[22]),
        .Q(avail_size[22]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[23] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[23]),
        .Q(avail_size[23]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[24] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[24]),
        .Q(avail_size[24]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[25] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[25]),
        .Q(avail_size[25]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[26] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[26]),
        .Q(avail_size[26]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[27] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[27]),
        .Q(avail_size[27]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[28] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[28]),
        .Q(avail_size[28]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[29] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[29]),
        .Q(avail_size[29]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[2] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[2]),
        .Q(avail_size[2]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[30] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[30]),
        .Q(avail_size[30]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[31] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[31]),
        .Q(avail_size[31]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[3] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[3]),
        .Q(avail_size[3]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[4] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[4]),
        .Q(avail_size[4]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[5] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[5]),
        .Q(avail_size[5]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[6] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[6]),
        .Q(avail_size[6]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[7] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[7]),
        .Q(avail_size[7]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[8] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[8]),
        .Q(avail_size[8]),
        .R(1'b0));
  FDRE \axi_dma.avail_size_reg[9] 
       (.C(lpd_clk),
        .CE(\axi_dma.avail_size[31]_i_1_n_0 ),
        .D(fifo_size_out_data[9]),
        .Q(avail_size[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hF4)) 
    \axi_dma.blocks[0]_i_1 
       (.I0(reset),
        .I1(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .I2(blocks[0]),
        .O(\axi_dma.blocks[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \axi_dma.blocks[1]_i_1 
       (.I0(reset),
        .I1(blocks[1]),
        .I2(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(\axi_dma.blocks[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \axi_dma.blocks[2]_i_1 
       (.I0(reset),
        .I1(blocks[2]),
        .I2(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(\axi_dma.blocks[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \axi_dma.blocks[3]_i_1 
       (.I0(reset),
        .I1(blocks[3]),
        .I2(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(\axi_dma.blocks[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \axi_dma.blocks[4]_i_1 
       (.I0(reset),
        .I1(blocks[4]),
        .I2(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(\axi_dma.blocks[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \axi_dma.blocks[5]_i_1 
       (.I0(reset),
        .I1(blocks[5]),
        .I2(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(\axi_dma.blocks[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \axi_dma.blocks[6]_i_1 
       (.I0(reset),
        .I1(blocks[6]),
        .I2(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(\axi_dma.blocks[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \axi_dma.blocks[7]_i_1 
       (.I0(reset),
        .I1(cmd_state[2]),
        .I2(cmd_state[0]),
        .I3(cmd_state[1]),
        .O(\axi_dma.blocks[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h8C)) 
    \axi_dma.blocks[7]_i_2 
       (.I0(reset),
        .I1(blocks[7]),
        .I2(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(\axi_dma.blocks[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[0] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[0]_i_1_n_0 ),
        .Q(blocks[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[1] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[1]_i_1_n_0 ),
        .Q(blocks[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[2] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[2]_i_1_n_0 ),
        .Q(blocks[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[3] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[3]_i_1_n_0 ),
        .Q(blocks[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[4] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[4]_i_1_n_0 ),
        .Q(blocks[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[5] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[5]_i_1_n_0 ),
        .Q(blocks[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[6] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[6]_i_1_n_0 ),
        .Q(blocks[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.blocks_reg[7] 
       (.C(clk),
        .CE(\axi_dma.blocks[7]_i_1_n_0 ),
        .D(\axi_dma.blocks[7]_i_2_n_0 ),
        .Q(blocks[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEA000000)) 
    \axi_dma.cmd_done_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_STS_tdata[7]),
        .I2(cmd_done0),
        .I3(M_AXI_STS_tvalid),
        .I4(M_AXI_STS_tready),
        .O(\axi_dma.cmd_done_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \axi_dma.cmd_done_i_2 
       (.I0(tag[3]),
        .I1(M_AXI_STS_tdata[3]),
        .I2(\axi_dma.cmd_done_i_3_n_0 ),
        .O(cmd_done0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.cmd_done_i_3 
       (.I0(tag[0]),
        .I1(M_AXI_STS_tdata[0]),
        .I2(M_AXI_STS_tdata[2]),
        .I3(tag[2]),
        .I4(M_AXI_STS_tdata[1]),
        .I5(tag[1]),
        .O(\axi_dma.cmd_done_i_3_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.cmd_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.cmd_done_i_1_n_0 ),
        .Q(cmd_done),
        .R(reset));
  LUT6 #(
    .INIT(64'hDFFFFFFFDF000000)) 
    \axi_dma.cmd_error_i_1 
       (.I0(cmd_done0),
        .I1(cmd_error),
        .I2(M_AXI_STS_tdata[7]),
        .I3(M_AXI_STS_tvalid),
        .I4(M_AXI_STS_tready),
        .I5(cmd_error),
        .O(\axi_dma.cmd_error_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.cmd_error_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.cmd_error_i_1_n_0 ),
        .Q(cmd_error),
        .R(reset));
  LUT5 #(
    .INIT(32'hCFBBCF88)) 
    \axi_dma.cmd_state[0]_i_1 
       (.I0(cmd_done),
        .I1(cmd_state[1]),
        .I2(has_mig_size),
        .I3(cmd_state[0]),
        .I4(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(p_0_in__0[0]));
  LUT3 #(
    .INIT(8'hEA)) 
    \axi_dma.cmd_state[1]_i_1 
       (.I0(cmd_state[1]),
        .I1(has_mig_size),
        .I2(cmd_state[0]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h07)) 
    \axi_dma.cmd_state[2]_i_1 
       (.I0(cmd_state[1]),
        .I1(cmd_state[0]),
        .I2(cmd_state[2]),
        .O(\axi_dma.cmd_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4744000047770000)) 
    \axi_dma.cmd_state[2]_i_2 
       (.I0(cmd_done),
        .I1(cmd_state[1]),
        .I2(has_mig_size),
        .I3(cmd_state[0]),
        .I4(cmd_state[2]),
        .I5(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_dma.cmd_state[2]_i_3 
       (.I0(\axi_dma.cmd_state[2]_i_4_n_0 ),
        .I1(mig_blocks[0]),
        .I2(mig_blocks[2]),
        .I3(mig_blocks[1]),
        .I4(\axi_dma.cmd_state[2]_i_5_n_0 ),
        .I5(\axi_dma.cmd_state[2]_i_6_n_0 ),
        .O(\axi_dma.cmd_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_dma.cmd_state[2]_i_4 
       (.I0(mig_blocks[5]),
        .I1(mig_blocks[6]),
        .I2(mig_blocks[3]),
        .I3(mig_blocks[4]),
        .I4(\axi_dma.cmd_state[2]_i_7_n_0 ),
        .O(\axi_dma.cmd_state[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_dma.cmd_state[2]_i_5 
       (.I0(mig_blocks[21]),
        .I1(mig_blocks[22]),
        .I2(mig_blocks[19]),
        .I3(mig_blocks[20]),
        .I4(\axi_dma.cmd_state[2]_i_8_n_0 ),
        .O(\axi_dma.cmd_state[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_dma.cmd_state[2]_i_6 
       (.I0(mig_blocks[13]),
        .I1(mig_blocks[14]),
        .I2(mig_blocks[11]),
        .I3(mig_blocks[12]),
        .I4(\axi_dma.cmd_state[2]_i_9_n_0 ),
        .O(\axi_dma.cmd_state[2]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_dma.cmd_state[2]_i_7 
       (.I0(mig_blocks[8]),
        .I1(mig_blocks[7]),
        .I2(mig_blocks[10]),
        .I3(mig_blocks[9]),
        .O(\axi_dma.cmd_state[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_dma.cmd_state[2]_i_8 
       (.I0(mig_blocks[24]),
        .I1(mig_blocks[23]),
        .I2(mig_blocks[26]),
        .I3(mig_blocks[25]),
        .O(\axi_dma.cmd_state[2]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_dma.cmd_state[2]_i_9 
       (.I0(mig_blocks[16]),
        .I1(mig_blocks[15]),
        .I2(mig_blocks[18]),
        .I3(mig_blocks[17]),
        .O(\axi_dma.cmd_state[2]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "CMD_ST_IDLE:000,CMD_ST_WAIT_HDR:001,CMD_ST_WAIT_DONE:010,CMD_ST_WAIT_SPACE:011" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.cmd_state_reg[0] 
       (.C(clk),
        .CE(\axi_dma.cmd_state[2]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(cmd_state[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "CMD_ST_IDLE:000,CMD_ST_WAIT_HDR:001,CMD_ST_WAIT_DONE:010,CMD_ST_WAIT_SPACE:011" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.cmd_state_reg[1] 
       (.C(clk),
        .CE(\axi_dma.cmd_state[2]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(cmd_state[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "CMD_ST_IDLE:000,CMD_ST_WAIT_HDR:001,CMD_ST_WAIT_DONE:010,CMD_ST_WAIT_SPACE:011" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.cmd_state_reg[2] 
       (.C(clk),
        .CE(\axi_dma.cmd_state[2]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(cmd_state[2]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.curr_beat[0]_i_1 
       (.I0(\axi_dma.curr_beat_reg [0]),
        .O(p_0_in__1[0]));
  LUT3 #(
    .INIT(8'h1F)) 
    \axi_dma.curr_beat[13]_i_1 
       (.I0(r5_cmd_empty),
        .I1(\axi_dma.dma_active_reg_n_0 ),
        .I2(resetn),
        .O(\axi_dma.curr_beat[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \axi_dma.curr_beat[13]_i_2 
       (.I0(M_AXI_TLAST_out),
        .I1(fifo_empty),
        .I2(\axi_dma.dma_active_reg_n_0 ),
        .I3(M_AXI_TREADY_out),
        .O(curr_beat));
  FDSE \axi_dma.curr_beat_reg[0] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[0]),
        .Q(\axi_dma.curr_beat_reg [0]),
        .S(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[10] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[10]),
        .Q(\axi_dma.curr_beat_reg [10]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[11] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[11]),
        .Q(\axi_dma.curr_beat_reg [11]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[12] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[12]),
        .Q(\axi_dma.curr_beat_reg [12]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[13] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[13]),
        .Q(\axi_dma.curr_beat_reg [13]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.curr_beat_reg[13]_i_3 
       (.CI(\axi_dma.curr_beat_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.curr_beat_reg[13]_i_3_CO_UNCONNECTED [7:4],\axi_dma.curr_beat_reg[13]_i_3_n_4 ,\axi_dma.curr_beat_reg[13]_i_3_n_5 ,\axi_dma.curr_beat_reg[13]_i_3_n_6 ,\axi_dma.curr_beat_reg[13]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_dma.curr_beat_reg[13]_i_3_O_UNCONNECTED [7:5],p_0_in__1[13:9]}),
        .S({1'b0,1'b0,1'b0,\axi_dma.curr_beat_reg [13:9]}));
  FDRE \axi_dma.curr_beat_reg[1] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[1]),
        .Q(\axi_dma.curr_beat_reg [1]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[2] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[2]),
        .Q(\axi_dma.curr_beat_reg [2]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[3] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[3]),
        .Q(\axi_dma.curr_beat_reg [3]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[4] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[4]),
        .Q(\axi_dma.curr_beat_reg [4]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[5] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[5]),
        .Q(\axi_dma.curr_beat_reg [5]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[6] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[6]),
        .Q(\axi_dma.curr_beat_reg [6]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[7] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[7]),
        .Q(\axi_dma.curr_beat_reg [7]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  FDRE \axi_dma.curr_beat_reg[8] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[8]),
        .Q(\axi_dma.curr_beat_reg [8]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.curr_beat_reg[8]_i_1 
       (.CI(\axi_dma.curr_beat_reg [0]),
        .CI_TOP(1'b0),
        .CO({\axi_dma.curr_beat_reg[8]_i_1_n_0 ,\axi_dma.curr_beat_reg[8]_i_1_n_1 ,\axi_dma.curr_beat_reg[8]_i_1_n_2 ,\axi_dma.curr_beat_reg[8]_i_1_n_3 ,\axi_dma.curr_beat_reg[8]_i_1_n_4 ,\axi_dma.curr_beat_reg[8]_i_1_n_5 ,\axi_dma.curr_beat_reg[8]_i_1_n_6 ,\axi_dma.curr_beat_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__1[8:1]),
        .S(\axi_dma.curr_beat_reg [8:1]));
  FDRE \axi_dma.curr_beat_reg[9] 
       (.C(clk),
        .CE(curr_beat),
        .D(p_0_in__1[9]),
        .Q(\axi_dma.curr_beat_reg [9]),
        .R(\axi_dma.curr_beat[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF3FF5555)) 
    \axi_dma.dma_active_i_1 
       (.I0(r5_cmd_empty),
        .I1(M_AXI_TLAST_out),
        .I2(fifo_empty),
        .I3(M_AXI_TREADY_out),
        .I4(\axi_dma.dma_active_reg_n_0 ),
        .O(\axi_dma.dma_active_i_1_n_0 ));
  FDRE \axi_dma.dma_active_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.dma_active_i_1_n_0 ),
        .Q(\axi_dma.dma_active_reg_n_0 ),
        .R(clear));
  FDRE \axi_dma.fifo_chg_reg 
       (.C(clk),
        .CE(1'b1),
        .D(in_wr),
        .Q(fifo_chg),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h40BFBF40)) 
    \axi_dma.fifo_count[0]_i_1 
       (.I0(fifo_empty),
        .I1(\axi_dma.dma_active_reg_n_0 ),
        .I2(M_AXI_TREADY_out),
        .I3(in_wr),
        .I4(\axi_dma.fifo_count_reg [0]),
        .O(\axi_dma.fifo_count[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \axi_dma.fifo_count[13]_i_1 
       (.I0(in_wr),
        .I1(M_AXI_TREADY_out),
        .I2(\axi_dma.dma_active_reg_n_0 ),
        .I3(fifo_empty),
        .O(\axi_dma.fifo_count[13]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_3 
       (.I0(\axi_dma.fifo_count_reg [12]),
        .I1(\axi_dma.fifo_count_reg [13]),
        .O(\axi_dma.fifo_count[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_4 
       (.I0(\axi_dma.fifo_count_reg [11]),
        .I1(\axi_dma.fifo_count_reg [12]),
        .O(\axi_dma.fifo_count[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_5 
       (.I0(\axi_dma.fifo_count_reg [10]),
        .I1(\axi_dma.fifo_count_reg [11]),
        .O(\axi_dma.fifo_count[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_6 
       (.I0(\axi_dma.fifo_count_reg [9]),
        .I1(\axi_dma.fifo_count_reg [10]),
        .O(\axi_dma.fifo_count[13]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_7 
       (.I0(\axi_dma.fifo_count_reg [8]),
        .I1(\axi_dma.fifo_count_reg [9]),
        .O(\axi_dma.fifo_count[13]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hAA6A)) 
    \axi_dma.fifo_count[8]_i_10 
       (.I0(\axi_dma.fifo_count_reg [1]),
        .I1(M_AXI_TREADY_out),
        .I2(\axi_dma.dma_active_reg_n_0 ),
        .I3(fifo_empty),
        .O(\axi_dma.fifo_count[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_count[8]_i_2 
       (.I0(\axi_dma.fifo_count_reg [1]),
        .O(\axi_dma.fifo_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_3 
       (.I0(\axi_dma.fifo_count_reg [7]),
        .I1(\axi_dma.fifo_count_reg [8]),
        .O(\axi_dma.fifo_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_4 
       (.I0(\axi_dma.fifo_count_reg [6]),
        .I1(\axi_dma.fifo_count_reg [7]),
        .O(\axi_dma.fifo_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_5 
       (.I0(\axi_dma.fifo_count_reg [5]),
        .I1(\axi_dma.fifo_count_reg [6]),
        .O(\axi_dma.fifo_count[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_6 
       (.I0(\axi_dma.fifo_count_reg [4]),
        .I1(\axi_dma.fifo_count_reg [5]),
        .O(\axi_dma.fifo_count[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_7 
       (.I0(\axi_dma.fifo_count_reg [3]),
        .I1(\axi_dma.fifo_count_reg [4]),
        .O(\axi_dma.fifo_count[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_8 
       (.I0(\axi_dma.fifo_count_reg [2]),
        .I1(\axi_dma.fifo_count_reg [3]),
        .O(\axi_dma.fifo_count[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_9 
       (.I0(\axi_dma.fifo_count_reg [1]),
        .I1(\axi_dma.fifo_count_reg [2]),
        .O(\axi_dma.fifo_count[8]_i_9_n_0 ));
  FDRE \axi_dma.fifo_count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_count[0]_i_1_n_0 ),
        .Q(\axi_dma.fifo_count_reg [0]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[10] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[10]),
        .Q(\axi_dma.fifo_count_reg [10]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[11] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[11]),
        .Q(\axi_dma.fifo_count_reg [11]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[12] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[12]),
        .Q(\axi_dma.fifo_count_reg [12]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[13] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[13]),
        .Q(\axi_dma.fifo_count_reg [13]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \axi_dma.fifo_count_reg[13]_i_2 
       (.CI(\axi_dma.fifo_count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.fifo_count_reg[13]_i_2_CO_UNCONNECTED [7:4],\axi_dma.fifo_count_reg[13]_i_2_n_4 ,\axi_dma.fifo_count_reg[13]_i_2_n_5 ,\axi_dma.fifo_count_reg[13]_i_2_n_6 ,\axi_dma.fifo_count_reg[13]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\axi_dma.fifo_count_reg [11:8]}),
        .O({\NLW_axi_dma.fifo_count_reg[13]_i_2_O_UNCONNECTED [7:5],fifo_count[13:9]}),
        .S({1'b0,1'b0,1'b0,\axi_dma.fifo_count[13]_i_3_n_0 ,\axi_dma.fifo_count[13]_i_4_n_0 ,\axi_dma.fifo_count[13]_i_5_n_0 ,\axi_dma.fifo_count[13]_i_6_n_0 ,\axi_dma.fifo_count[13]_i_7_n_0 }));
  FDRE \axi_dma.fifo_count_reg[1] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[1]),
        .Q(\axi_dma.fifo_count_reg [1]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[2] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[2]),
        .Q(\axi_dma.fifo_count_reg [2]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[3] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[3]),
        .Q(\axi_dma.fifo_count_reg [3]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[4] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[4]),
        .Q(\axi_dma.fifo_count_reg [4]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[5] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[5]),
        .Q(\axi_dma.fifo_count_reg [5]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[6] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[6]),
        .Q(\axi_dma.fifo_count_reg [6]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[7] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[7]),
        .Q(\axi_dma.fifo_count_reg [7]),
        .R(clear));
  FDRE \axi_dma.fifo_count_reg[8] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[8]),
        .Q(\axi_dma.fifo_count_reg [8]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \axi_dma.fifo_count_reg[8]_i_1 
       (.CI(\axi_dma.fifo_count_reg [0]),
        .CI_TOP(1'b0),
        .CO({\axi_dma.fifo_count_reg[8]_i_1_n_0 ,\axi_dma.fifo_count_reg[8]_i_1_n_1 ,\axi_dma.fifo_count_reg[8]_i_1_n_2 ,\axi_dma.fifo_count_reg[8]_i_1_n_3 ,\axi_dma.fifo_count_reg[8]_i_1_n_4 ,\axi_dma.fifo_count_reg[8]_i_1_n_5 ,\axi_dma.fifo_count_reg[8]_i_1_n_6 ,\axi_dma.fifo_count_reg[8]_i_1_n_7 }),
        .DI({\axi_dma.fifo_count_reg [7:1],\axi_dma.fifo_count[8]_i_2_n_0 }),
        .O(fifo_count[8:1]),
        .S({\axi_dma.fifo_count[8]_i_3_n_0 ,\axi_dma.fifo_count[8]_i_4_n_0 ,\axi_dma.fifo_count[8]_i_5_n_0 ,\axi_dma.fifo_count[8]_i_6_n_0 ,\axi_dma.fifo_count[8]_i_7_n_0 ,\axi_dma.fifo_count[8]_i_8_n_0 ,\axi_dma.fifo_count[8]_i_9_n_0 ,\axi_dma.fifo_count[8]_i_10_n_0 }));
  FDRE \axi_dma.fifo_count_reg[9] 
       (.C(clk),
        .CE(\axi_dma.fifo_count[13]_i_1_n_0 ),
        .D(fifo_count[9]),
        .Q(\axi_dma.fifo_count_reg [9]),
        .R(clear));
  FDRE \axi_dma.fifo_size_rd_reg 
       (.C(lpd_clk),
        .CE(1'b1),
        .D(\axi_dma.avail_size[31]_i_1_n_0 ),
        .Q(fifo_size_rd),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h000000F8)) 
    \axi_dma.has_mig_size_i_1 
       (.I0(M_AXI_TVALID_in),
        .I1(M_AXI_TDATA_in[79]),
        .I2(has_mig_size),
        .I3(cmd_done),
        .I4(reset),
        .O(\axi_dma.has_mig_size_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.has_mig_size_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.has_mig_size_i_1_n_0 ),
        .Q(has_mig_size),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[0] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[0]),
        .Q(in_data[0]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[100] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[100]),
        .Q(in_data[100]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[101] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[101]),
        .Q(in_data[101]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[102] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[102]),
        .Q(in_data[102]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[103] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[103]),
        .Q(in_data[103]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[104] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[104]),
        .Q(in_data[104]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[105] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[105]),
        .Q(in_data[105]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[106] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[106]),
        .Q(in_data[106]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[107] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[107]),
        .Q(in_data[107]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[108] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[108]),
        .Q(in_data[108]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[109] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[109]),
        .Q(in_data[109]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[10] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[10]),
        .Q(in_data[10]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[110] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[110]),
        .Q(in_data[110]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[111] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[111]),
        .Q(in_data[111]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[112] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[112]),
        .Q(in_data[112]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[113] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[113]),
        .Q(in_data[113]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[114] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[114]),
        .Q(in_data[114]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[115] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[115]),
        .Q(in_data[115]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[116] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[116]),
        .Q(in_data[116]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[117] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[117]),
        .Q(in_data[117]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[118] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[118]),
        .Q(in_data[118]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[119] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[119]),
        .Q(in_data[119]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[11] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[11]),
        .Q(in_data[11]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[120] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[120]),
        .Q(in_data[120]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[121] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[121]),
        .Q(in_data[121]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[122] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[122]),
        .Q(in_data[122]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[123] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[123]),
        .Q(in_data[123]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[124] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[124]),
        .Q(in_data[124]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[125] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[125]),
        .Q(in_data[125]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[126] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[126]),
        .Q(in_data[126]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[127] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[127]),
        .Q(in_data[127]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[128] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[128]),
        .Q(in_data[128]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[129] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[129]),
        .Q(in_data[129]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[12] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[12]),
        .Q(in_data[12]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[130] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[130]),
        .Q(in_data[130]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[131] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[131]),
        .Q(in_data[131]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[132] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[132]),
        .Q(in_data[132]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[133] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[133]),
        .Q(in_data[133]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[134] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[134]),
        .Q(in_data[134]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[135] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[135]),
        .Q(in_data[135]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[136] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[136]),
        .Q(in_data[136]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[137] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[137]),
        .Q(in_data[137]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[138] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[138]),
        .Q(in_data[138]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[139] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[139]),
        .Q(in_data[139]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[13] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[13]),
        .Q(in_data[13]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[140] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[140]),
        .Q(in_data[140]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[141] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[141]),
        .Q(in_data[141]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[142] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[142]),
        .Q(in_data[142]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[143] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[143]),
        .Q(in_data[143]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[144] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[144]),
        .Q(in_data[144]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[145] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[145]),
        .Q(in_data[145]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[146] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[146]),
        .Q(in_data[146]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[147] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[147]),
        .Q(in_data[147]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[148] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[148]),
        .Q(in_data[148]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[149] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[149]),
        .Q(in_data[149]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[14] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[14]),
        .Q(in_data[14]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[150] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[150]),
        .Q(in_data[150]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[151] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[151]),
        .Q(in_data[151]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[152] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[152]),
        .Q(in_data[152]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[153] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[153]),
        .Q(in_data[153]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[154] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[154]),
        .Q(in_data[154]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[155] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[155]),
        .Q(in_data[155]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[156] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[156]),
        .Q(in_data[156]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[157] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[157]),
        .Q(in_data[157]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[158] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[158]),
        .Q(in_data[158]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[159] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[159]),
        .Q(in_data[159]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[15] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[15]),
        .Q(in_data[15]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[160] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[160]),
        .Q(in_data[160]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[161] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[161]),
        .Q(in_data[161]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[162] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[162]),
        .Q(in_data[162]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[163] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[163]),
        .Q(in_data[163]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[164] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[164]),
        .Q(in_data[164]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[165] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[165]),
        .Q(in_data[165]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[166] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[166]),
        .Q(in_data[166]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[167] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[167]),
        .Q(in_data[167]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[168] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[168]),
        .Q(in_data[168]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[169] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[169]),
        .Q(in_data[169]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[16] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[16]),
        .Q(in_data[16]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[170] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[170]),
        .Q(in_data[170]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[171] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[171]),
        .Q(in_data[171]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[172] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[172]),
        .Q(in_data[172]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[173] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[173]),
        .Q(in_data[173]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[174] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[174]),
        .Q(in_data[174]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[175] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[175]),
        .Q(in_data[175]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[176] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[176]),
        .Q(in_data[176]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[177] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[177]),
        .Q(in_data[177]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[178] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[178]),
        .Q(in_data[178]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[179] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[179]),
        .Q(in_data[179]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[17] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[17]),
        .Q(in_data[17]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[180] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[180]),
        .Q(in_data[180]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[181] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[181]),
        .Q(in_data[181]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[182] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[182]),
        .Q(in_data[182]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[183] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[183]),
        .Q(in_data[183]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[184] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[184]),
        .Q(in_data[184]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[185] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[185]),
        .Q(in_data[185]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[186] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[186]),
        .Q(in_data[186]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[187] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[187]),
        .Q(in_data[187]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[188] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[188]),
        .Q(in_data[188]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[189] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[189]),
        .Q(in_data[189]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[18] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[18]),
        .Q(in_data[18]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[190] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[190]),
        .Q(in_data[190]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[191] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[191]),
        .Q(in_data[191]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[192] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[192]),
        .Q(in_data[192]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[193] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[193]),
        .Q(in_data[193]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[194] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[194]),
        .Q(in_data[194]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[195] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[195]),
        .Q(in_data[195]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[196] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[196]),
        .Q(in_data[196]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[197] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[197]),
        .Q(in_data[197]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[198] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[198]),
        .Q(in_data[198]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[199] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[199]),
        .Q(in_data[199]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[19] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[19]),
        .Q(in_data[19]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[1] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[1]),
        .Q(in_data[1]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[200] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[200]),
        .Q(in_data[200]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[201] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[201]),
        .Q(in_data[201]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[202] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[202]),
        .Q(in_data[202]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[203] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[203]),
        .Q(in_data[203]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[204] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[204]),
        .Q(in_data[204]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[205] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[205]),
        .Q(in_data[205]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[206] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[206]),
        .Q(in_data[206]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[207] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[207]),
        .Q(in_data[207]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[208] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[208]),
        .Q(in_data[208]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[209] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[209]),
        .Q(in_data[209]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[20] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[20]),
        .Q(in_data[20]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[210] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[210]),
        .Q(in_data[210]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[211] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[211]),
        .Q(in_data[211]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[212] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[212]),
        .Q(in_data[212]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[213] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[213]),
        .Q(in_data[213]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[214] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[214]),
        .Q(in_data[214]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[215] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[215]),
        .Q(in_data[215]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[216] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[216]),
        .Q(in_data[216]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[217] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[217]),
        .Q(in_data[217]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[218] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[218]),
        .Q(in_data[218]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[219] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[219]),
        .Q(in_data[219]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[21] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[21]),
        .Q(in_data[21]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[220] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[220]),
        .Q(in_data[220]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[221] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[221]),
        .Q(in_data[221]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[222] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[222]),
        .Q(in_data[222]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[223] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[223]),
        .Q(in_data[223]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[224] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[224]),
        .Q(in_data[224]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[225] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[225]),
        .Q(in_data[225]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[226] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[226]),
        .Q(in_data[226]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[227] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[227]),
        .Q(in_data[227]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[228] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[228]),
        .Q(in_data[228]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[229] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[229]),
        .Q(in_data[229]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[22] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[22]),
        .Q(in_data[22]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[230] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[230]),
        .Q(in_data[230]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[231] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[231]),
        .Q(in_data[231]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[232] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[232]),
        .Q(in_data[232]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[233] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[233]),
        .Q(in_data[233]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[234] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[234]),
        .Q(in_data[234]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[235] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[235]),
        .Q(in_data[235]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[236] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[236]),
        .Q(in_data[236]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[237] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[237]),
        .Q(in_data[237]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[238] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[238]),
        .Q(in_data[238]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[239] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[239]),
        .Q(in_data[239]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[23] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[23]),
        .Q(in_data[23]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[240] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[240]),
        .Q(in_data[240]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[241] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[241]),
        .Q(in_data[241]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[242] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[242]),
        .Q(in_data[242]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[243] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[243]),
        .Q(in_data[243]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[244] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[244]),
        .Q(in_data[244]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[245] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[245]),
        .Q(in_data[245]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[246] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[246]),
        .Q(in_data[246]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[247] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[247]),
        .Q(in_data[247]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[248] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[248]),
        .Q(in_data[248]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[249] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[249]),
        .Q(in_data[249]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[24] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[24]),
        .Q(in_data[24]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[250] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[250]),
        .Q(in_data[250]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[251] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[251]),
        .Q(in_data[251]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[252] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[252]),
        .Q(in_data[252]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[253] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[253]),
        .Q(in_data[253]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[254] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[254]),
        .Q(in_data[254]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[255] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[255]),
        .Q(in_data[255]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[25] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[25]),
        .Q(in_data[25]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[26] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[26]),
        .Q(in_data[26]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[27] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[27]),
        .Q(in_data[27]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[28] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[28]),
        .Q(in_data[28]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[29] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[29]),
        .Q(in_data[29]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[2] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[2]),
        .Q(in_data[2]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[30] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[30]),
        .Q(in_data[30]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[31] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[31]),
        .Q(in_data[31]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[32] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[32]),
        .Q(in_data[32]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[33] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[33]),
        .Q(in_data[33]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[34] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[34]),
        .Q(in_data[34]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[35] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[35]),
        .Q(in_data[35]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[36] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[36]),
        .Q(in_data[36]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[37] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[37]),
        .Q(in_data[37]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[38] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[38]),
        .Q(in_data[38]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[39] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[39]),
        .Q(in_data[39]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[3] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[3]),
        .Q(in_data[3]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[40] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[40]),
        .Q(in_data[40]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[41] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[41]),
        .Q(in_data[41]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[42] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[42]),
        .Q(in_data[42]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[43] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[43]),
        .Q(in_data[43]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[44] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[44]),
        .Q(in_data[44]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[45] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[45]),
        .Q(in_data[45]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[46] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[46]),
        .Q(in_data[46]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[47] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[47]),
        .Q(in_data[47]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[48] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[48]),
        .Q(in_data[48]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[49] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[49]),
        .Q(in_data[49]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[4] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[4]),
        .Q(in_data[4]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[50] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[50]),
        .Q(in_data[50]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[51] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[51]),
        .Q(in_data[51]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[52] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[52]),
        .Q(in_data[52]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[53] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[53]),
        .Q(in_data[53]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[54] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[54]),
        .Q(in_data[54]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[55] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[55]),
        .Q(in_data[55]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[56] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[56]),
        .Q(in_data[56]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[57] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[57]),
        .Q(in_data[57]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[58] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[58]),
        .Q(in_data[58]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[59] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[59]),
        .Q(in_data[59]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[5] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[5]),
        .Q(in_data[5]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[60] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[60]),
        .Q(in_data[60]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[61] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[61]),
        .Q(in_data[61]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[62] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[62]),
        .Q(in_data[62]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[63] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[63]),
        .Q(in_data[63]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[64] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[64]),
        .Q(in_data[64]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[65] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[65]),
        .Q(in_data[65]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[66] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[66]),
        .Q(in_data[66]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[67] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[67]),
        .Q(in_data[67]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[68] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[68]),
        .Q(in_data[68]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[69] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[69]),
        .Q(in_data[69]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[6] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[6]),
        .Q(in_data[6]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[70] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[70]),
        .Q(in_data[70]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[71] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[71]),
        .Q(in_data[71]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[72] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[72]),
        .Q(in_data[72]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[73] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[73]),
        .Q(in_data[73]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[74] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[74]),
        .Q(in_data[74]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[75] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[75]),
        .Q(in_data[75]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[76] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[76]),
        .Q(in_data[76]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[77] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[77]),
        .Q(in_data[77]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[78] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[78]),
        .Q(in_data[78]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[79] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[79]),
        .Q(in_data[79]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[7] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[7]),
        .Q(in_data[7]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[80] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[80]),
        .Q(in_data[80]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[81] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[81]),
        .Q(in_data[81]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[82] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[82]),
        .Q(in_data[82]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[83] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[83]),
        .Q(in_data[83]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[84] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[84]),
        .Q(in_data[84]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[85] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[85]),
        .Q(in_data[85]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[86] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[86]),
        .Q(in_data[86]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[87] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[87]),
        .Q(in_data[87]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[88] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[88]),
        .Q(in_data[88]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[89] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[89]),
        .Q(in_data[89]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[8] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[8]),
        .Q(in_data[8]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[90] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[90]),
        .Q(in_data[90]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[91] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[91]),
        .Q(in_data[91]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[92] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[92]),
        .Q(in_data[92]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[93] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[93]),
        .Q(in_data[93]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[94] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[94]),
        .Q(in_data[94]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[95] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[95]),
        .Q(in_data[95]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[96] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[96]),
        .Q(in_data[96]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[97] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[97]),
        .Q(in_data[97]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[98] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[98]),
        .Q(in_data[98]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[99] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[99]),
        .Q(in_data[99]),
        .R(1'b0));
  FDRE \axi_dma.in_data_reg[9] 
       (.C(clk),
        .CE(M_AXI_TVALID_in),
        .D(M_AXI_TDATA_in[9]),
        .Q(in_data[9]),
        .R(1'b0));
  FDRE \axi_dma.in_wr_reg 
       (.C(clk),
        .CE(1'b1),
        .D(M_AXI_TVALID_in),
        .Q(in_wr),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[0]_i_1 
       (.I0(r5_cmd_data[0]),
        .O(last_beat0[0]));
  LUT3 #(
    .INIT(8'h02)) 
    \axi_dma.last_beat[13]_i_1 
       (.I0(resetn),
        .I1(r5_cmd_empty),
        .I2(\axi_dma.dma_active_reg_n_0 ),
        .O(last_beat));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[13]_i_3 
       (.I0(r5_cmd_data[13]),
        .O(\axi_dma.last_beat[13]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[13]_i_4 
       (.I0(r5_cmd_data[12]),
        .O(\axi_dma.last_beat[13]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[13]_i_5 
       (.I0(r5_cmd_data[11]),
        .O(\axi_dma.last_beat[13]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[13]_i_6 
       (.I0(r5_cmd_data[10]),
        .O(\axi_dma.last_beat[13]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[13]_i_7 
       (.I0(r5_cmd_data[9]),
        .O(\axi_dma.last_beat[13]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_2 
       (.I0(r5_cmd_data[8]),
        .O(\axi_dma.last_beat[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_3 
       (.I0(r5_cmd_data[7]),
        .O(\axi_dma.last_beat[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_4 
       (.I0(r5_cmd_data[6]),
        .O(\axi_dma.last_beat[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_5 
       (.I0(r5_cmd_data[5]),
        .O(\axi_dma.last_beat[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_6 
       (.I0(r5_cmd_data[4]),
        .O(\axi_dma.last_beat[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_7 
       (.I0(r5_cmd_data[3]),
        .O(\axi_dma.last_beat[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_8 
       (.I0(r5_cmd_data[2]),
        .O(\axi_dma.last_beat[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.last_beat[8]_i_9 
       (.I0(r5_cmd_data[1]),
        .O(\axi_dma.last_beat[8]_i_9_n_0 ));
  FDRE \axi_dma.last_beat_reg[0] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[0]),
        .Q(\axi_dma.last_beat_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[10] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[10]),
        .Q(\axi_dma.last_beat_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[11] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[11]),
        .Q(\axi_dma.last_beat_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[12] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[12]),
        .Q(\axi_dma.last_beat_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[13] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[13]),
        .Q(\axi_dma.last_beat_reg_n_0_[13] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.last_beat_reg[13]_i_2 
       (.CI(\axi_dma.last_beat_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.last_beat_reg[13]_i_2_CO_UNCONNECTED [7:4],\axi_dma.last_beat_reg[13]_i_2_n_4 ,\axi_dma.last_beat_reg[13]_i_2_n_5 ,\axi_dma.last_beat_reg[13]_i_2_n_6 ,\axi_dma.last_beat_reg[13]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,r5_cmd_data[12:9]}),
        .O({\NLW_axi_dma.last_beat_reg[13]_i_2_O_UNCONNECTED [7:5],last_beat0[13:9]}),
        .S({1'b0,1'b0,1'b0,\axi_dma.last_beat[13]_i_3_n_0 ,\axi_dma.last_beat[13]_i_4_n_0 ,\axi_dma.last_beat[13]_i_5_n_0 ,\axi_dma.last_beat[13]_i_6_n_0 ,\axi_dma.last_beat[13]_i_7_n_0 }));
  FDRE \axi_dma.last_beat_reg[1] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[1]),
        .Q(\axi_dma.last_beat_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[2] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[2]),
        .Q(\axi_dma.last_beat_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[3] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[3]),
        .Q(\axi_dma.last_beat_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[4] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[4]),
        .Q(\axi_dma.last_beat_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[5] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[5]),
        .Q(\axi_dma.last_beat_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[6] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[6]),
        .Q(\axi_dma.last_beat_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[7] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[7]),
        .Q(\axi_dma.last_beat_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \axi_dma.last_beat_reg[8] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[8]),
        .Q(\axi_dma.last_beat_reg_n_0_[8] ),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.last_beat_reg[8]_i_1 
       (.CI(r5_cmd_data[0]),
        .CI_TOP(1'b0),
        .CO({\axi_dma.last_beat_reg[8]_i_1_n_0 ,\axi_dma.last_beat_reg[8]_i_1_n_1 ,\axi_dma.last_beat_reg[8]_i_1_n_2 ,\axi_dma.last_beat_reg[8]_i_1_n_3 ,\axi_dma.last_beat_reg[8]_i_1_n_4 ,\axi_dma.last_beat_reg[8]_i_1_n_5 ,\axi_dma.last_beat_reg[8]_i_1_n_6 ,\axi_dma.last_beat_reg[8]_i_1_n_7 }),
        .DI(r5_cmd_data[8:1]),
        .O(last_beat0[8:1]),
        .S({\axi_dma.last_beat[8]_i_2_n_0 ,\axi_dma.last_beat[8]_i_3_n_0 ,\axi_dma.last_beat[8]_i_4_n_0 ,\axi_dma.last_beat[8]_i_5_n_0 ,\axi_dma.last_beat[8]_i_6_n_0 ,\axi_dma.last_beat[8]_i_7_n_0 ,\axi_dma.last_beat[8]_i_8_n_0 ,\axi_dma.last_beat[8]_i_9_n_0 }));
  FDRE \axi_dma.last_beat_reg[9] 
       (.C(clk),
        .CE(last_beat),
        .D(last_beat0[9]),
        .Q(\axi_dma.last_beat_reg_n_0_[9] ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_2 
       (.I0(wr_ptr[15]),
        .I1(adr[15]),
        .O(\axi_dma.mig_blocks[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_3 
       (.I0(wr_ptr[14]),
        .I1(adr[14]),
        .O(\axi_dma.mig_blocks[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_4 
       (.I0(wr_ptr[13]),
        .I1(adr[13]),
        .O(\axi_dma.mig_blocks[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_5 
       (.I0(wr_ptr[12]),
        .I1(adr[12]),
        .O(\axi_dma.mig_blocks[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_6 
       (.I0(wr_ptr[11]),
        .I1(adr[11]),
        .O(\axi_dma.mig_blocks[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_7 
       (.I0(wr_ptr[10]),
        .I1(adr[10]),
        .O(\axi_dma.mig_blocks[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_8 
       (.I0(wr_ptr[9]),
        .I1(adr[9]),
        .O(\axi_dma.mig_blocks[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[15]_i_9 
       (.I0(wr_ptr[8]),
        .I1(adr[8]),
        .O(\axi_dma.mig_blocks[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_2 
       (.I0(wr_ptr[23]),
        .I1(adr[23]),
        .O(\axi_dma.mig_blocks[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_3 
       (.I0(wr_ptr[22]),
        .I1(adr[22]),
        .O(\axi_dma.mig_blocks[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_4 
       (.I0(wr_ptr[21]),
        .I1(adr[21]),
        .O(\axi_dma.mig_blocks[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_5 
       (.I0(wr_ptr[20]),
        .I1(adr[20]),
        .O(\axi_dma.mig_blocks[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_6 
       (.I0(wr_ptr[19]),
        .I1(adr[19]),
        .O(\axi_dma.mig_blocks[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_7 
       (.I0(wr_ptr[18]),
        .I1(adr[18]),
        .O(\axi_dma.mig_blocks[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_8 
       (.I0(wr_ptr[17]),
        .I1(adr[17]),
        .O(\axi_dma.mig_blocks[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[23]_i_9 
       (.I0(wr_ptr[16]),
        .I1(adr[16]),
        .O(\axi_dma.mig_blocks[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[26]_i_2 
       (.I0(wr_ptr[26]),
        .I1(adr[26]),
        .O(\axi_dma.mig_blocks[26]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[26]_i_3 
       (.I0(wr_ptr[25]),
        .I1(adr[25]),
        .O(\axi_dma.mig_blocks[26]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[26]_i_4 
       (.I0(wr_ptr[24]),
        .I1(adr[24]),
        .O(\axi_dma.mig_blocks[26]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_2 
       (.I0(wr_ptr[7]),
        .I1(adr[7]),
        .O(\axi_dma.mig_blocks[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_3 
       (.I0(wr_ptr[6]),
        .I1(adr[6]),
        .O(\axi_dma.mig_blocks[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_4 
       (.I0(wr_ptr[5]),
        .I1(adr[5]),
        .O(\axi_dma.mig_blocks[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_5 
       (.I0(wr_ptr[4]),
        .I1(adr[4]),
        .O(\axi_dma.mig_blocks[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_6 
       (.I0(wr_ptr[3]),
        .I1(adr[3]),
        .O(\axi_dma.mig_blocks[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_7 
       (.I0(wr_ptr[2]),
        .I1(adr[2]),
        .O(\axi_dma.mig_blocks[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_8 
       (.I0(wr_ptr[1]),
        .I1(adr[1]),
        .O(\axi_dma.mig_blocks[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_blocks[7]_i_9 
       (.I0(wr_ptr[0]),
        .I1(adr[0]),
        .O(\axi_dma.mig_blocks[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [0]),
        .Q(mig_blocks[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [10]),
        .Q(mig_blocks[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [11]),
        .Q(mig_blocks[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [12]),
        .Q(mig_blocks[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [13]),
        .Q(mig_blocks[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [14]),
        .Q(mig_blocks[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [15]),
        .Q(mig_blocks[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_blocks_reg[15]_i_1 
       (.CI(\axi_dma.mig_blocks_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_blocks_reg[15]_i_1_n_0 ,\axi_dma.mig_blocks_reg[15]_i_1_n_1 ,\axi_dma.mig_blocks_reg[15]_i_1_n_2 ,\axi_dma.mig_blocks_reg[15]_i_1_n_3 ,\axi_dma.mig_blocks_reg[15]_i_1_n_4 ,\axi_dma.mig_blocks_reg[15]_i_1_n_5 ,\axi_dma.mig_blocks_reg[15]_i_1_n_6 ,\axi_dma.mig_blocks_reg[15]_i_1_n_7 }),
        .DI(wr_ptr[15:8]),
        .O(\axi_dma.mig_blocks_reg0 [15:8]),
        .S({\axi_dma.mig_blocks[15]_i_2_n_0 ,\axi_dma.mig_blocks[15]_i_3_n_0 ,\axi_dma.mig_blocks[15]_i_4_n_0 ,\axi_dma.mig_blocks[15]_i_5_n_0 ,\axi_dma.mig_blocks[15]_i_6_n_0 ,\axi_dma.mig_blocks[15]_i_7_n_0 ,\axi_dma.mig_blocks[15]_i_8_n_0 ,\axi_dma.mig_blocks[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [16]),
        .Q(mig_blocks[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [17]),
        .Q(mig_blocks[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [18]),
        .Q(mig_blocks[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [19]),
        .Q(mig_blocks[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [1]),
        .Q(mig_blocks[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [20]),
        .Q(mig_blocks[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [21]),
        .Q(mig_blocks[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [22]),
        .Q(mig_blocks[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [23]),
        .Q(mig_blocks[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_blocks_reg[23]_i_1 
       (.CI(\axi_dma.mig_blocks_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_blocks_reg[23]_i_1_n_0 ,\axi_dma.mig_blocks_reg[23]_i_1_n_1 ,\axi_dma.mig_blocks_reg[23]_i_1_n_2 ,\axi_dma.mig_blocks_reg[23]_i_1_n_3 ,\axi_dma.mig_blocks_reg[23]_i_1_n_4 ,\axi_dma.mig_blocks_reg[23]_i_1_n_5 ,\axi_dma.mig_blocks_reg[23]_i_1_n_6 ,\axi_dma.mig_blocks_reg[23]_i_1_n_7 }),
        .DI(wr_ptr[23:16]),
        .O(\axi_dma.mig_blocks_reg0 [23:16]),
        .S({\axi_dma.mig_blocks[23]_i_2_n_0 ,\axi_dma.mig_blocks[23]_i_3_n_0 ,\axi_dma.mig_blocks[23]_i_4_n_0 ,\axi_dma.mig_blocks[23]_i_5_n_0 ,\axi_dma.mig_blocks[23]_i_6_n_0 ,\axi_dma.mig_blocks[23]_i_7_n_0 ,\axi_dma.mig_blocks[23]_i_8_n_0 ,\axi_dma.mig_blocks[23]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [24]),
        .Q(mig_blocks[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [25]),
        .Q(mig_blocks[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [26]),
        .Q(mig_blocks[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_blocks_reg[26]_i_1 
       (.CI(\axi_dma.mig_blocks_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.mig_blocks_reg[26]_i_1_CO_UNCONNECTED [7:2],\axi_dma.mig_blocks_reg[26]_i_1_n_6 ,\axi_dma.mig_blocks_reg[26]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,wr_ptr[25:24]}),
        .O({\NLW_axi_dma.mig_blocks_reg[26]_i_1_O_UNCONNECTED [7:3],\axi_dma.mig_blocks_reg0 [26:24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\axi_dma.mig_blocks[26]_i_2_n_0 ,\axi_dma.mig_blocks[26]_i_3_n_0 ,\axi_dma.mig_blocks[26]_i_4_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [2]),
        .Q(mig_blocks[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [3]),
        .Q(mig_blocks[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [4]),
        .Q(mig_blocks[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [5]),
        .Q(mig_blocks[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [6]),
        .Q(mig_blocks[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [7]),
        .Q(mig_blocks[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_blocks_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_blocks_reg[7]_i_1_n_0 ,\axi_dma.mig_blocks_reg[7]_i_1_n_1 ,\axi_dma.mig_blocks_reg[7]_i_1_n_2 ,\axi_dma.mig_blocks_reg[7]_i_1_n_3 ,\axi_dma.mig_blocks_reg[7]_i_1_n_4 ,\axi_dma.mig_blocks_reg[7]_i_1_n_5 ,\axi_dma.mig_blocks_reg[7]_i_1_n_6 ,\axi_dma.mig_blocks_reg[7]_i_1_n_7 }),
        .DI(wr_ptr[7:0]),
        .O(\axi_dma.mig_blocks_reg0 [7:0]),
        .S({\axi_dma.mig_blocks[7]_i_2_n_0 ,\axi_dma.mig_blocks[7]_i_3_n_0 ,\axi_dma.mig_blocks[7]_i_4_n_0 ,\axi_dma.mig_blocks[7]_i_5_n_0 ,\axi_dma.mig_blocks[7]_i_6_n_0 ,\axi_dma.mig_blocks[7]_i_7_n_0 ,\axi_dma.mig_blocks[7]_i_8_n_0 ,\axi_dma.mig_blocks[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [8]),
        .Q(mig_blocks[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_blocks_reg0 [9]),
        .Q(mig_blocks[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEBFF4100)) 
    \axi_dma.mig_diff[0]_i_1 
       (.I0(reset),
        .I1(mig_size[0]),
        .I2(mig_blocks[0]),
        .I3(cmd_done),
        .I4(mig_diff[0]),
        .O(\axi_dma.mig_diff[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBEEBFFFF14410000)) 
    \axi_dma.mig_diff[1]_i_1 
       (.I0(reset),
        .I1(mig_size[0]),
        .I2(mig_blocks[0]),
        .I3(\axi_dma.mig_diff[1]_i_2_n_0 ),
        .I4(cmd_done),
        .I5(mig_diff[1]),
        .O(\axi_dma.mig_diff[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4BB4)) 
    \axi_dma.mig_diff[1]_i_2 
       (.I0(mig_blocks[0]),
        .I1(mig_size[0]),
        .I2(mig_size[1]),
        .I3(mig_blocks[1]),
        .O(\axi_dma.mig_diff[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hEF40)) 
    \axi_dma.mig_diff[2]_i_1 
       (.I0(reset),
        .I1(\axi_dma.mig_diff[2]_i_2_n_0 ),
        .I2(cmd_done),
        .I3(mig_diff[2]),
        .O(\axi_dma.mig_diff[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9666999696969999)) 
    \axi_dma.mig_diff[2]_i_2 
       (.I0(mig_blocks[2]),
        .I1(mig_size[2]),
        .I2(mig_size[1]),
        .I3(mig_size[0]),
        .I4(mig_blocks[1]),
        .I5(mig_blocks[0]),
        .O(\axi_dma.mig_diff[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF4100)) 
    \axi_dma.mig_diff[3]_i_1 
       (.I0(reset),
        .I1(\axi_dma.mig_diff[3]_i_2_n_0 ),
        .I2(\axi_dma.mig_diff[3]_i_3_n_0 ),
        .I3(cmd_done),
        .I4(mig_diff[3]),
        .O(\axi_dma.mig_diff[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6FFFF6FFFF6FFFF6)) 
    \axi_dma.mig_diff[3]_i_2 
       (.I0(mig_blocks[2]),
        .I1(mig_size[2]),
        .I2(mig_size[1]),
        .I3(mig_size[0]),
        .I4(mig_blocks[1]),
        .I5(mig_blocks[0]),
        .O(\axi_dma.mig_diff[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5556AAA9AAA95556)) 
    \axi_dma.mig_diff[3]_i_3 
       (.I0(\axi_dma.mig_diff[5]_i_6_n_0 ),
        .I1(mig_size[2]),
        .I2(mig_size[1]),
        .I3(mig_size[0]),
        .I4(mig_size[3]),
        .I5(mig_blocks[3]),
        .O(\axi_dma.mig_diff[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF4100)) 
    \axi_dma.mig_diff[4]_i_1 
       (.I0(reset),
        .I1(\axi_dma.mig_diff[4]_i_2_n_0 ),
        .I2(\axi_dma.mig_diff[4]_i_3_n_0 ),
        .I3(cmd_done),
        .I4(mig_diff[4]),
        .O(\axi_dma.mig_diff[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEBBE)) 
    \axi_dma.mig_diff[4]_i_2 
       (.I0(\axi_dma.mig_diff[3]_i_2_n_0 ),
        .I1(mig_blocks[3]),
        .I2(\axi_dma.mig_diff[5]_i_5_n_0 ),
        .I3(\axi_dma.mig_diff[5]_i_6_n_0 ),
        .O(\axi_dma.mig_diff[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1871E78EE78E1871)) 
    \axi_dma.mig_diff[4]_i_3 
       (.I0(\axi_dma.mig_diff[5]_i_6_n_0 ),
        .I1(mig_blocks[3]),
        .I2(mig_size[3]),
        .I3(\axi_dma.mig_diff[4]_i_4_n_0 ),
        .I4(mig_size[4]),
        .I5(mig_blocks[4]),
        .O(\axi_dma.mig_diff[4]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_dma.mig_diff[4]_i_4 
       (.I0(mig_size[0]),
        .I1(mig_size[1]),
        .I2(mig_size[2]),
        .O(\axi_dma.mig_diff[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF4100)) 
    \axi_dma.mig_diff[5]_i_1 
       (.I0(reset),
        .I1(\axi_dma.mig_diff[5]_i_2_n_0 ),
        .I2(\axi_dma.mig_diff[5]_i_3_n_0 ),
        .I3(cmd_done),
        .I4(mig_diff[5]),
        .O(\axi_dma.mig_diff[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEBEBFFEBFFFFBE)) 
    \axi_dma.mig_diff[5]_i_2 
       (.I0(\axi_dma.mig_diff[3]_i_2_n_0 ),
        .I1(mig_blocks[4]),
        .I2(\axi_dma.mig_diff[5]_i_4_n_0 ),
        .I3(\axi_dma.mig_diff[5]_i_5_n_0 ),
        .I4(mig_blocks[3]),
        .I5(\axi_dma.mig_diff[5]_i_6_n_0 ),
        .O(\axi_dma.mig_diff[5]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \axi_dma.mig_diff[5]_i_3 
       (.I0(\axi_dma.mig_diff[7]_i_6_n_0 ),
        .I1(\axi_dma.mig_diff[7]_i_8_n_0 ),
        .I2(mig_blocks[5]),
        .O(\axi_dma.mig_diff[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h0001FFFE)) 
    \axi_dma.mig_diff[5]_i_4 
       (.I0(mig_size[3]),
        .I1(mig_size[0]),
        .I2(mig_size[1]),
        .I3(mig_size[2]),
        .I4(mig_size[4]),
        .O(\axi_dma.mig_diff[5]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h01FE)) 
    \axi_dma.mig_diff[5]_i_5 
       (.I0(mig_size[2]),
        .I1(mig_size[1]),
        .I2(mig_size[0]),
        .I3(mig_size[3]),
        .O(\axi_dma.mig_diff[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFE547E1476105600)) 
    \axi_dma.mig_diff[5]_i_6 
       (.I0(mig_size[2]),
        .I1(mig_size[1]),
        .I2(mig_size[0]),
        .I3(mig_blocks[2]),
        .I4(mig_blocks[0]),
        .I5(mig_blocks[1]),
        .O(\axi_dma.mig_diff[5]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hEBFF4100)) 
    \axi_dma.mig_diff[6]_i_1 
       (.I0(reset),
        .I1(\axi_dma.mig_diff[7]_i_4_n_0 ),
        .I2(\axi_dma.mig_diff[7]_i_3_n_0 ),
        .I3(cmd_done),
        .I4(mig_diff[6]),
        .O(\axi_dma.mig_diff[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABAA)) 
    \axi_dma.mig_diff[7]_i_1 
       (.I0(reset),
        .I1(cmd_state[2]),
        .I2(cmd_state[0]),
        .I3(cmd_state[1]),
        .O(\axi_dma.mig_diff[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h9969)) 
    \axi_dma.mig_diff[7]_i_10 
       (.I0(mig_blocks[7]),
        .I1(mig_size[7]),
        .I2(\axi_dma.mig_diff[7]_i_11_n_0 ),
        .I3(mig_size[6]),
        .O(\axi_dma.mig_diff[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \axi_dma.mig_diff[7]_i_11 
       (.I0(mig_size[4]),
        .I1(mig_size[2]),
        .I2(mig_size[1]),
        .I3(mig_size[0]),
        .I4(mig_size[3]),
        .I5(mig_size[5]),
        .O(\axi_dma.mig_diff[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFEABFFFF54010000)) 
    \axi_dma.mig_diff[7]_i_2 
       (.I0(reset),
        .I1(\axi_dma.mig_diff[7]_i_3_n_0 ),
        .I2(\axi_dma.mig_diff[7]_i_4_n_0 ),
        .I3(\axi_dma.mig_diff[7]_i_5_n_0 ),
        .I4(cmd_done),
        .I5(mig_diff[7]),
        .O(\axi_dma.mig_diff[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1871E78EE78E1871)) 
    \axi_dma.mig_diff[7]_i_3 
       (.I0(\axi_dma.mig_diff[7]_i_6_n_0 ),
        .I1(mig_blocks[5]),
        .I2(mig_size[5]),
        .I3(\axi_dma.mig_diff[7]_i_7_n_0 ),
        .I4(mig_size[6]),
        .I5(mig_blocks[6]),
        .O(\axi_dma.mig_diff[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hEBBE)) 
    \axi_dma.mig_diff[7]_i_4 
       (.I0(\axi_dma.mig_diff[5]_i_2_n_0 ),
        .I1(mig_blocks[5]),
        .I2(\axi_dma.mig_diff[7]_i_8_n_0 ),
        .I3(\axi_dma.mig_diff[7]_i_6_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h001717FFFFE8E800)) 
    \axi_dma.mig_diff[7]_i_5 
       (.I0(\axi_dma.mig_diff[7]_i_8_n_0 ),
        .I1(mig_blocks[5]),
        .I2(\axi_dma.mig_diff[7]_i_6_n_0 ),
        .I3(mig_blocks[6]),
        .I4(\axi_dma.mig_diff[7]_i_9_n_0 ),
        .I5(\axi_dma.mig_diff[7]_i_10_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF59DB41DB415900)) 
    \axi_dma.mig_diff[7]_i_6 
       (.I0(mig_size[4]),
        .I1(\axi_dma.mig_diff[4]_i_4_n_0 ),
        .I2(mig_size[3]),
        .I3(mig_blocks[4]),
        .I4(\axi_dma.mig_diff[5]_i_6_n_0 ),
        .I5(mig_blocks[3]),
        .O(\axi_dma.mig_diff[7]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \axi_dma.mig_diff[7]_i_7 
       (.I0(mig_size[3]),
        .I1(mig_size[0]),
        .I2(mig_size[1]),
        .I3(mig_size[2]),
        .I4(mig_size[4]),
        .O(\axi_dma.mig_diff[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000001FFFFFFFE)) 
    \axi_dma.mig_diff[7]_i_8 
       (.I0(mig_size[4]),
        .I1(mig_size[2]),
        .I2(mig_size[1]),
        .I3(mig_size[0]),
        .I4(mig_size[3]),
        .I5(mig_size[5]),
        .O(\axi_dma.mig_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_diff[7]_i_9 
       (.I0(\axi_dma.mig_diff[7]_i_11_n_0 ),
        .I1(mig_size[6]),
        .O(\axi_dma.mig_diff[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[0] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[0]_i_1_n_0 ),
        .Q(mig_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[1] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[1]_i_1_n_0 ),
        .Q(mig_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[2] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[2]_i_1_n_0 ),
        .Q(mig_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[3] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[3]_i_1_n_0 ),
        .Q(mig_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[4] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[4]_i_1_n_0 ),
        .Q(mig_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[5] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[5]_i_1_n_0 ),
        .Q(mig_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[6] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[6]_i_1_n_0 ),
        .Q(mig_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[7] 
       (.C(clk),
        .CE(\axi_dma.mig_diff[7]_i_1_n_0 ),
        .D(\axi_dma.mig_diff[7]_i_2_n_0 ),
        .Q(mig_diff[7]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[0]_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[64]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[0]),
        .O(\axi_dma.mig_size[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[1]_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[65]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[1]),
        .O(\axi_dma.mig_size[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[2]_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[66]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[2]),
        .O(\axi_dma.mig_size[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[3]_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[67]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[3]),
        .O(\axi_dma.mig_size[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[4]_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[68]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[4]),
        .O(\axi_dma.mig_size[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[5]_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[69]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[5]),
        .O(\axi_dma.mig_size[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[6]_i_1 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[70]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[6]),
        .O(\axi_dma.mig_size[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_size[7]_i_1 
       (.I0(reset),
        .O(\axi_dma.mig_size[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEFFF4000)) 
    \axi_dma.mig_size[7]_i_2 
       (.I0(cmd_done),
        .I1(M_AXI_TDATA_in[71]),
        .I2(M_AXI_TVALID_in),
        .I3(M_AXI_TDATA_in[79]),
        .I4(mig_size[7]),
        .O(\axi_dma.mig_size[7]_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[0] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[0]_i_1_n_0 ),
        .Q(mig_size[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[1] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[1]_i_1_n_0 ),
        .Q(mig_size[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[2] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[2]_i_1_n_0 ),
        .Q(mig_size[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[3] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[3]_i_1_n_0 ),
        .Q(mig_size[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[4] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[4]_i_1_n_0 ),
        .Q(mig_size[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[5] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[5]_i_1_n_0 ),
        .Q(mig_size[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[6] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[6]_i_1_n_0 ),
        .Q(mig_size[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_size_reg[7] 
       (.C(clk),
        .CE(\axi_dma.mig_size[7]_i_1_n_0 ),
        .D(\axi_dma.mig_size[7]_i_2_n_0 ),
        .Q(mig_size[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \axi_dma.r5_cmd_rd_i_1 
       (.I0(r5_cmd_empty),
        .I1(\axi_dma.dma_active_reg_n_0 ),
        .I2(resetn),
        .O(\axi_dma.r5_cmd_rd_i_1_n_0 ));
  FDRE \axi_dma.r5_cmd_rd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.r5_cmd_rd_i_1_n_0 ),
        .Q(\axi_dma.r5_cmd_rd_reg_n_0 ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.reset_i_1 
       (.I0(resetn),
        .O(clear));
  FDRE \axi_dma.reset_reg 
       (.C(clk),
        .CE(1'b1),
        .D(clear),
        .Q(reset),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.spy_reset_i_1 
       (.I0(lpd_resetn),
        .O(\axi_dma.spy_reset_i_1_n_0 ));
  FDRE \axi_dma.spy_reset_reg 
       (.C(lpd_clk),
        .CE(1'b1),
        .D(\axi_dma.spy_reset_i_1_n_0 ),
        .Q(spy_reset),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF20002)) 
    \axi_dma.start_cmd_i_1 
       (.I0(\axi_dma.cmd_state[2]_i_3_n_0 ),
        .I1(cmd_state[0]),
        .I2(cmd_state[2]),
        .I3(cmd_state[1]),
        .I4(start_cmd),
        .O(\axi_dma.start_cmd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.start_cmd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.start_cmd_i_1_n_0 ),
        .Q(start_cmd),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.tag[0]_i_1 
       (.I0(tag[0]),
        .O(\axi_dma.tag[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_dma.tag[1]_i_1 
       (.I0(tag[0]),
        .I1(tag[1]),
        .O(\axi_dma.tag[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \axi_dma.tag[2]_i_1 
       (.I0(tag[0]),
        .I1(tag[1]),
        .I2(tag[2]),
        .O(\axi_dma.tag[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_dma.tag[3]_i_1 
       (.I0(tag[1]),
        .I1(tag[0]),
        .I2(tag[2]),
        .I3(tag[3]),
        .O(\axi_dma.tag[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.tag_reg[0] 
       (.C(clk),
        .CE(cmd_done),
        .D(\axi_dma.tag[0]_i_1_n_0 ),
        .Q(tag[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.tag_reg[1] 
       (.C(clk),
        .CE(cmd_done),
        .D(\axi_dma.tag[1]_i_1_n_0 ),
        .Q(tag[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.tag_reg[2] 
       (.C(clk),
        .CE(cmd_done),
        .D(\axi_dma.tag[2]_i_1_n_0 ),
        .Q(tag[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.tag_reg[3] 
       (.C(clk),
        .CE(cmd_done),
        .D(\axi_dma.tag[3]_i_1_n_0 ),
        .Q(tag[3]),
        .R(reset));
  (* CASCADE_HEIGHT = "0" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* FIFO_MEMORY_TYPE = "0" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_WRITE_DEPTH = "16384" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* P_COMMON_CLOCK = "1" *) 
  (* P_ECC_MODE = "0" *) 
  (* P_FIFO_MEMORY_TYPE = "3" *) 
  (* P_READ_MODE = "1" *) 
  (* P_WAKEUP_TIME = "2" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* READ_DATA_WIDTH = "256" *) 
  (* READ_MODE = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH = "256" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  ps_axi_dma_1_0_xpm_fifo_sync fifo_i
       (.almost_empty(NLW_fifo_i_almost_empty_UNCONNECTED),
        .almost_full(NLW_fifo_i_almost_full_UNCONNECTED),
        .data_valid(NLW_fifo_i_data_valid_UNCONNECTED),
        .dbiterr(NLW_fifo_i_dbiterr_UNCONNECTED),
        .din(in_data),
        .dout(M_AXI_TDATA_out),
        .empty(fifo_empty),
        .full(NLW_fifo_i_full_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_fifo_i_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_i_prog_empty_UNCONNECTED),
        .prog_full(NLW_fifo_i_prog_full_UNCONNECTED),
        .rd_data_count(NLW_fifo_i_rd_data_count_UNCONNECTED[0]),
        .rd_en(fifo_rd_en),
        .rd_rst_busy(NLW_fifo_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .sbiterr(NLW_fifo_i_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_fifo_i_underflow_UNCONNECTED),
        .wr_ack(NLW_fifo_i_wr_ack_UNCONNECTED),
        .wr_clk(clk),
        .wr_data_count(NLW_fifo_i_wr_data_count_UNCONNECTED[0]),
        .wr_en(in_wr),
        .wr_rst_busy(NLW_fifo_i_wr_rst_busy_UNCONNECTED));
  LUT3 #(
    .INIT(8'h40)) 
    fifo_i_i_1
       (.I0(fifo_empty),
        .I1(\axi_dma.dma_active_reg_n_0 ),
        .I2(M_AXI_TREADY_out),
        .O(fifo_rd_en));
  (* CHECK_LICENSE_TYPE = "fifo_ptr,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_axi_dma_1_0_fifo_ptr fifo_size_ptr_i
       (.din({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_dma.fifo_count_reg }),
        .dout(fifo_size_out_data),
        .empty(fifo_size_empty),
        .full(NLW_fifo_size_ptr_i_full_UNCONNECTED),
        .rd_clk(lpd_clk),
        .rd_en(fifo_size_rd),
        .wr_clk(clk),
        .wr_en(fifo_chg));
  (* CHECK_LICENSE_TYPE = "fifo_spy,fifo_generator_v13_2_13,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
  ps_axi_dma_1_0_fifo_spy fifo_spy_i
       (.din(spy_data[18:5]),
        .dout(r5_cmd_data),
        .empty(r5_cmd_empty),
        .full(NLW_fifo_spy_i_full_UNCONNECTED),
        .rd_clk(clk),
        .rd_en(\axi_dma.r5_cmd_rd_reg_n_0 ),
        .rst(spy_reset),
        .wr_clk(lpd_clk),
        .wr_en(spy_wr));
  (* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* x_core_info = "ila,Vivado 2025.1" *) 
  ps_axi_dma_1_0_ila_7 ila_i
       (.clk(clk),
        .probe0(cmd_state),
        .probe1(adr),
        .probe10(mig_diff),
        .probe2(mig_blocks),
        .probe3(start_cmd),
        .probe4(cmd_done),
        .probe5(cmd_error),
        .probe6(blocks),
        .probe7(tag),
        .probe8(has_mig_size),
        .probe9(mig_size));
endmodule

(* CHECK_LICENSE_TYPE = "fifo_ptr,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_ptr" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_axi_dma_1_0_fifo_ptr
   (wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [31:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;


endmodule

(* CHECK_LICENSE_TYPE = "fifo_spy,fifo_generator_v13_2_13,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "fifo_spy" *) 
(* X_CORE_INFO = "fifo_generator_v13_2_13,Vivado 2025.1" *) 
module ps_axi_dma_1_0_fifo_spy
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* X_INTERFACE_MODE = "slave write_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input wr_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* X_INTERFACE_MODE = "slave read_clk" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) 
  (* syn_isclock = "1" *) input rd_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) (* X_INTERFACE_MODE = "slave FIFO_WRITE" *) input [13:0]din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) (* X_INTERFACE_MODE = "slave FIFO_READ" *) input rd_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [13:0]dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* X_INTERFACE_INFO = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;


endmodule

(* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "ila_7" *) 
(* X_CORE_INFO = "ila,Vivado 2025.1" *) 
module ps_axi_dma_1_0_ila_7
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
    probe10);
  (* syn_isclock = "1" *) input clk;
  input [2:0]probe0;
  input [26:0]probe1;
  input [26:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [7:0]probe6;
  input [3:0]probe7;
  input [0:0]probe8;
  input [7:0]probe9;
  input [7:0]probe10;


endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_dma_1_0_xpm_counter_updn__parameterized0
   (ram_full_i0,
    leaving_empty0,
    Q,
    ram_wr_en_pf,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    \count_value_i_reg[1]_0 ,
    rd_en,
    ram_empty_i,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 ,
    \count_value_i_reg[13]_0 ,
    wr_clk);
  output ram_full_i0;
  output leaving_empty0;
  output [13:0]Q;
  input ram_wr_en_pf;
  input \count_value_i_reg[0]_0 ;
  input \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  input [1:0]\count_value_i_reg[1]_0 ;
  input rd_en;
  input ram_empty_i;
  input [13:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 ;
  input [13:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 ;
  input [0:0]\count_value_i_reg[13]_0 ;
  input wr_clk;

  wire [13:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_2__1_n_0 ;
  wire \count_value_i[12]_i_1__1_n_0 ;
  wire \count_value_i[13]_i_1__1_n_0 ;
  wire \count_value_i[13]_i_2__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_2__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[13]_0 ;
  wire [1:0]\count_value_i_reg[1]_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13_n_0 ;
  wire [13:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 ;
  wire [13:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9_n_0 ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ;
  wire going_full1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_full_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire wr_clk;

  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__1 
       (.I0(rd_en),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(\count_value_i_reg[1]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__1_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__1_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__1 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__1_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[12]_i_1__1 
       (.I0(Q[10]),
        .I1(\count_value_i[13]_i_2__1_n_0 ),
        .I2(Q[11]),
        .I3(Q[12]),
        .O(\count_value_i[12]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[13]_i_1__1 
       (.I0(Q[11]),
        .I1(\count_value_i[13]_i_2__1_n_0 ),
        .I2(Q[10]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\count_value_i[13]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[13]_i_2__1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\count_value_i[9]_i_2__1_n_0 ),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\count_value_i[13]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[1]_0 [1]),
        .I1(\count_value_i_reg[1]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__1_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__1_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__1 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[1]_0 [1]),
        .I2(\count_value_i_reg[1]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__1_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__1_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[10]_i_1__1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[11]_i_1__1_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[12]_i_1__1_n_0 ),
        .Q(Q[12]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[13] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[13]_i_1__1_n_0 ),
        .Q(Q[13]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[1]_i_1__1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[2]_i_1__1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[3]_i_1__1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[4]_i_1__1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[5]_i_1__1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[6]_i_1__1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[7]_i_1__1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[8]_i_1__1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[13]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\count_value_i_reg[0]_0 ),
        .D(\count_value_i[9]_i_1__1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[13]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_1 
       (.I0(ram_wr_en_pf),
        .I1(going_full1),
        .I2(leaving_empty0),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ),
        .O(ram_full_i0));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10 
       (.I0(Q[12]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [12]),
        .I2(Q[13]),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [13]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [9]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h20000000)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0 ),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8_n_0 ),
        .O(going_full1));
  LUT5 #(
    .INIT(32'h20000000)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3 
       (.I0(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9_n_0 ),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_10_n_0 ),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_11_n_0 ),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_12_n_0 ),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_13_n_0 ),
        .O(leaving_empty0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5 
       (.I0(Q[12]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [12]),
        .I2(Q[13]),
        .I3(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [13]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [9]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [6]),
        .I2(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0
   (ram_empty_i0,
    Q,
    \gen_pntr_flags_cc.ram_empty_i_reg ,
    leaving_empty0,
    ram_wr_en_pf,
    ram_empty_i,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[0]_0 ,
    rst_d1,
    \gen_pntr_flags_cc.ram_empty_i_i_2_0 ,
    wr_clk);
  output ram_empty_i0;
  output [13:0]Q;
  input \gen_pntr_flags_cc.ram_empty_i_reg ;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [13:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  input wr_clk;

  wire [13:0]Q;
  wire \count_value_i[0]_i_1_n_0 ;
  wire \count_value_i[10]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_1__0_n_0 ;
  wire \count_value_i[11]_i_2__0_n_0 ;
  wire \count_value_i[12]_i_1__0_n_0 ;
  wire \count_value_i[13]_i_1__0_n_0 ;
  wire \count_value_i[13]_i_2__0_n_0 ;
  wire \count_value_i[1]_i_1_n_0 ;
  wire \count_value_i[2]_i_1_n_0 ;
  wire \count_value_i[3]_i_1_n_0 ;
  wire \count_value_i[4]_i_1_n_0 ;
  wire \count_value_i[5]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_1__0_n_0 ;
  wire \count_value_i[6]_i_2__0_n_0 ;
  wire \count_value_i[7]_i_1__0_n_0 ;
  wire \count_value_i[8]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_1__0_n_0 ;
  wire \count_value_i[9]_i_2__0_n_0 ;
  wire [0:0]\count_value_i_reg[0]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [13:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_reg ;
  wire going_empty1;
  wire leaving_empty0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__0_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__0 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__0 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[12]_i_1__0 
       (.I0(Q[10]),
        .I1(\count_value_i[13]_i_2__0_n_0 ),
        .I2(Q[11]),
        .I3(Q[12]),
        .O(\count_value_i[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[13]_i_1__0 
       (.I0(Q[11]),
        .I1(\count_value_i[13]_i_2__0_n_0 ),
        .I2(Q[10]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\count_value_i[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[13]_i_2__0 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\count_value_i[9]_i_2__0_n_0 ),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\count_value_i[13]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[11]_i_1__0_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[12]_i_1__0_n_0 ),
        .Q(Q[12]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[13] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[13]_i_1__0_n_0 ),
        .Q(Q[13]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT5 #(
    .INIT(32'h0FFF0088)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_reg ),
        .I1(going_empty1),
        .I2(leaving_empty0),
        .I3(ram_wr_en_pf),
        .I4(ram_empty_i),
        .O(ram_empty_i0));
  LUT5 #(
    .INIT(32'h20000000)) 
    \gen_pntr_flags_cc.ram_empty_i_i_2 
       (.I0(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ),
        .O(going_empty1));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_3 
       (.I0(Q[6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [8]),
        .I3(Q[8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [7]),
        .I5(Q[7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(Q[12]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [12]),
        .I2(Q[13]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [13]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(Q[3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [5]),
        .I3(Q[5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [4]),
        .I5(Q[4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(Q[0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [2]),
        .I3(Q[2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [1]),
        .I5(Q[1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_7 
       (.I0(Q[9]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [9]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [11]),
        .I3(Q[11]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [10]),
        .I5(Q[10]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_dma_1_0_xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    \count_value_i_reg[0]_0 ,
    rd_en,
    ram_empty_i,
    \count_value_i_reg[1]_0 ,
    wr_clk);
  output [13:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input [1:0]\count_value_i_reg[0]_0 ;
  input rd_en;
  input ram_empty_i;
  input [0:0]\count_value_i_reg[1]_0 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [13:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[11]_i_1__2_n_0 ;
  wire \count_value_i[11]_i_2__2_n_0 ;
  wire \count_value_i[12]_i_1__2_n_0 ;
  wire \count_value_i[13]_i_1__2_n_0 ;
  wire \count_value_i[13]_i_2__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_2__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire rd_en;
  wire wr_clk;

  LUT4 #(
    .INIT(16'h10EF)) 
    \count_value_i[0]_i_1__2 
       (.I0(rd_en),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2__2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__2 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2__2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2__2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[12]_i_1__2 
       (.I0(Q[10]),
        .I1(\count_value_i[13]_i_2__2_n_0 ),
        .I2(Q[11]),
        .I3(Q[12]),
        .O(\count_value_i[12]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[13]_i_1__2 
       (.I0(Q[11]),
        .I1(\count_value_i[13]_i_2__2_n_0 ),
        .I2(Q[10]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\count_value_i[13]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[13]_i_2__2 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\count_value_i[9]_i_2__2_n_0 ),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\count_value_i[13]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h02FFFD00)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2__2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2__2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000AAA200000000)) 
    \count_value_i[6]_i_2__2 
       (.I0(Q[1]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(\count_value_i_reg[0]_0 [0]),
        .I3(rd_en),
        .I4(ram_empty_i),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__2 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2__2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2__2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2__2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[0]_i_1__2_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[10]_i_1__2_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[11]_i_1__2_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[12]_i_1__2_n_0 ),
        .Q(Q[12]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[13] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[13]_i_1__2_n_0 ),
        .Q(Q[13]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[1]_i_1__2_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[2]_i_1__2_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[3]_i_1__2_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[4]_i_1__2_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[5]_i_1__2_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[6]_i_1__2_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[7]_i_1__2_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[8]_i_1__2_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ),
        .D(\count_value_i[9]_i_1__2_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h00FD)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(rd_en),
        .I3(ram_empty_i),
        .O(\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_dma_1_0_xpm_counter_updn__parameterized1_1
   (Q,
    ram_wr_en_pf,
    wr_en,
    \count_value_i_reg[5]_0 ,
    \count_value_i_reg[1]_0 ,
    rst_d1,
    wr_clk);
  output [13:0]Q;
  input ram_wr_en_pf;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input rst_d1;
  input wr_clk;

  wire [13:0]Q;
  wire \count_value_i[0]_i_1__0_n_0 ;
  wire \count_value_i[10]_i_1_n_0 ;
  wire \count_value_i[11]_i_1_n_0 ;
  wire \count_value_i[11]_i_2_n_0 ;
  wire \count_value_i[12]_i_1_n_0 ;
  wire \count_value_i[13]_i_1_n_0 ;
  wire \count_value_i[13]_i_2_n_0 ;
  wire \count_value_i[1]_i_1__0_n_0 ;
  wire \count_value_i[2]_i_1__0_n_0 ;
  wire \count_value_i[3]_i_1__0_n_0 ;
  wire \count_value_i[4]_i_1__0_n_0 ;
  wire \count_value_i[5]_i_1_n_0 ;
  wire \count_value_i[6]_i_1_n_0 ;
  wire \count_value_i[6]_i_2_n_0 ;
  wire \count_value_i[7]_i_1_n_0 ;
  wire \count_value_i[8]_i_1_n_0 ;
  wire \count_value_i[9]_i_1_n_0 ;
  wire \count_value_i[9]_i_2_n_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire ram_wr_en_pf;
  wire rst_d1;
  wire wr_clk;
  wire wr_en;

  LUT1 #(
    .INIT(2'h1)) 
    \count_value_i[0]_i_1__0 
       (.I0(Q[0]),
        .O(\count_value_i[0]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1 
       (.I0(Q[8]),
        .I1(\count_value_i[11]_i_2_n_0 ),
        .I2(Q[7]),
        .I3(Q[9]),
        .I4(Q[10]),
        .O(\count_value_i[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(\count_value_i[11]_i_2_n_0 ),
        .I3(Q[8]),
        .I4(Q[10]),
        .I5(Q[11]),
        .O(\count_value_i[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2 
       (.I0(Q[6]),
        .I1(Q[4]),
        .I2(Q[2]),
        .I3(\count_value_i[6]_i_2_n_0 ),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\count_value_i[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[12]_i_1 
       (.I0(Q[10]),
        .I1(\count_value_i[13]_i_2_n_0 ),
        .I2(Q[11]),
        .I3(Q[12]),
        .O(\count_value_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[13]_i_1 
       (.I0(Q[11]),
        .I1(\count_value_i[13]_i_2_n_0 ),
        .I2(Q[10]),
        .I3(Q[12]),
        .I4(Q[13]),
        .O(\count_value_i[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[13]_i_2 
       (.I0(Q[9]),
        .I1(Q[7]),
        .I2(Q[5]),
        .I3(\count_value_i[9]_i_2_n_0 ),
        .I4(Q[6]),
        .I5(Q[8]),
        .O(\count_value_i[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1 
       (.I0(Q[3]),
        .I1(\count_value_i[6]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[5]),
        .O(\count_value_i[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(\count_value_i[6]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(Q[5]),
        .I5(Q[6]),
        .O(\count_value_i[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2 
       (.I0(Q[1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[1]_0 ),
        .I4(rst_d1),
        .I5(Q[0]),
        .O(\count_value_i[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1 
       (.I0(Q[6]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[5]),
        .I3(Q[7]),
        .I4(Q[8]),
        .O(\count_value_i[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(\count_value_i[9]_i_2_n_0 ),
        .I3(Q[6]),
        .I4(Q[8]),
        .I5(Q[9]),
        .O(\count_value_i[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(ram_wr_en_pf),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\count_value_i[9]_i_2_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1__0_n_0 ),
        .Q(Q[0]),
        .S(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1_n_0 ),
        .Q(Q[10]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[11]_i_1_n_0 ),
        .Q(Q[11]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[12]_i_1_n_0 ),
        .Q(Q[12]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[13] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[13]_i_1_n_0 ),
        .Q(Q[13]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1__0_n_0 ),
        .Q(Q[2]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1__0_n_0 ),
        .Q(Q[3]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1__0_n_0 ),
        .Q(Q[4]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1_n_0 ),
        .Q(Q[8]),
        .R(\count_value_i_reg[1]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1_n_0 ),
        .Q(Q[9]),
        .R(\count_value_i_reg[1]_0 ));
endmodule

(* CASCADE_HEIGHT = "0" *) (* CDC_DEST_SYNC_FF = "2" *) (* COMMON_CLOCK = "1" *) 
(* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "0" *) (* ENABLE_ECC = "0" *) 
(* EN_ADV_FEATURE = "16'b0000011100000111" *) (* EN_AE = "1'b0" *) (* EN_AF = "1'b0" *) 
(* EN_DVLD = "1'b0" *) (* EN_OF = "1'b1" *) (* EN_PE = "1'b1" *) 
(* EN_PF = "1'b1" *) (* EN_RDC = "1'b1" *) (* EN_SIM_ASSERT_ERR = "warning" *) 
(* EN_UF = "1'b1" *) (* EN_WACK = "1'b0" *) (* EN_WDC = "1'b1" *) 
(* FG_EQ_ASYM_DOUT = "1'b0" *) (* FIFO_MEMORY_TYPE = "3" *) (* FIFO_MEM_TYPE = "3" *) 
(* FIFO_READ_DEPTH = "16384" *) (* FIFO_READ_LATENCY = "1" *) (* FIFO_SIZE = "4194304" *) 
(* FIFO_WRITE_DEPTH = "16384" *) (* FULL_RESET_VALUE = "0" *) (* FULL_RST_VAL = "1'b0" *) 
(* ORIG_REF_NAME = "xpm_fifo_base" *) (* PE_THRESH_ADJ = "8" *) (* PE_THRESH_MAX = "16379" *) 
(* PE_THRESH_MIN = "5" *) (* PF_THRESH_ADJ = "8" *) (* PF_THRESH_MAX = "16379" *) 
(* PF_THRESH_MIN = "5" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* RD_DATA_COUNT_WIDTH = "1" *) (* RD_DC_WIDTH_EXT = "15" *) (* RD_LATENCY = "2" *) 
(* RD_MODE = "1" *) (* RD_PNTR_WIDTH = "14" *) (* READ_DATA_WIDTH = "256" *) 
(* READ_MODE = "1" *) (* READ_MODE_LL = "1" *) (* RELATED_CLOCKS = "0" *) 
(* REMOVE_WR_RD_PROT_LOGIC = "0" *) (* SIM_ASSERT_CHK = "0" *) (* USE_ADV_FEATURES = "0707" *) 
(* VERSION = "0" *) (* WAKEUP_TIME = "0" *) (* WIDTH_RATIO = "1" *) 
(* WRITE_DATA_WIDTH = "256" *) (* WR_DATA_COUNT_WIDTH = "1" *) (* WR_DC_WIDTH_EXT = "15" *) 
(* WR_DEPTH_LOG = "14" *) (* WR_PNTR_WIDTH = "14" *) (* WR_RD_RATIO = "0" *) 
(* WR_WIDTH_LOG = "8" *) (* XPM_MODULE = "TRUE" *) (* both_stages_valid = "3" *) 
(* invalid = "0" *) (* keep_hierarchy = "soft" *) (* stage1_valid = "2" *) 
(* stage2_valid = "1" *) 
module ps_axi_dma_1_0_xpm_fifo_base
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    full_n,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_clk,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [255:0]din;
  output full;
  output full_n;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_clk;
  input rd_en;
  output [255:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [1:0]curr_fwft_state;
  wire [255:0]din;
  wire [255:0]dout;
  wire empty;
  wire empty_fwft_i0;
  wire \gen_fwft.ram_regout_en ;
  wire \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_wr_en_pf;
  wire rd_en;
  wire [13:0]rd_pntr_ext;
  wire rdpp1_inst_n_0;
  wire rdpp1_inst_n_1;
  wire rdpp1_inst_n_10;
  wire rdpp1_inst_n_11;
  wire rdpp1_inst_n_12;
  wire rdpp1_inst_n_13;
  wire rdpp1_inst_n_14;
  wire rdpp1_inst_n_2;
  wire rdpp1_inst_n_3;
  wire rdpp1_inst_n_4;
  wire rdpp1_inst_n_5;
  wire rdpp1_inst_n_6;
  wire rdpp1_inst_n_7;
  wire rdpp1_inst_n_8;
  wire rdpp1_inst_n_9;
  wire rst;
  wire rst_d1;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire [13:0]wr_pntr_ext;
  wire wrpp1_inst_n_0;
  wire wrpp1_inst_n_1;
  wire wrpp1_inst_n_10;
  wire wrpp1_inst_n_11;
  wire wrpp1_inst_n_12;
  wire wrpp1_inst_n_13;
  wire wrpp1_inst_n_2;
  wire wrpp1_inst_n_3;
  wire wrpp1_inst_n_4;
  wire wrpp1_inst_n_5;
  wire wrpp1_inst_n_6;
  wire wrpp1_inst_n_7;
  wire wrpp1_inst_n_8;
  wire wrpp1_inst_n_9;
  wire xpm_fifo_rst_inst_n_1;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ;
  wire \NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ;
  wire [255:0]\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED ;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign full_n = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h6A85)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(rd_en),
        .I2(curr_fwft_state[1]),
        .I3(ram_empty_i),
        .O(next_fwft_state__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h7C)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[1]),
        .I2(curr_fwft_state[0]),
        .O(next_fwft_state__0[1]));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[0]),
        .Q(curr_fwft_state[0]),
        .R(xpm_fifo_rst_inst_n_1));
  (* FSM_ENCODED_STATES = "invalid:00,stage1_valid:01,both_stages_valid:10,stage2_valid:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(next_fwft_state__0[1]),
        .Q(curr_fwft_state[1]),
        .R(xpm_fifo_rst_inst_n_1));
  GND GND
       (.G(\<const0> ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF380)) 
    \gen_fwft.empty_fwft_i_i_1 
       (.I0(rd_en),
        .I1(curr_fwft_state[0]),
        .I2(curr_fwft_state[1]),
        .I3(empty),
        .O(empty_fwft_i0));
  FDSE #(
    .INIT(1'b1)) 
    \gen_fwft.empty_fwft_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(empty_fwft_i0),
        .Q(empty),
        .S(xpm_fifo_rst_inst_n_1));
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .R(xpm_fifo_rst_inst_n_1));
  FDSE #(
    .INIT(1'b1)) 
    \gen_pntr_flags_cc.ram_empty_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_empty_i0),
        .Q(ram_empty_i),
        .S(xpm_fifo_rst_inst_n_1));
  (* ADDR_WIDTH_A = "14" *) 
  (* ADDR_WIDTH_B = "14" *) 
  (* AUTO_SLEEP_TIME = "0" *) 
  (* BYTE_WRITE_WIDTH_A = "256" *) 
  (* BYTE_WRITE_WIDTH_B = "256" *) 
  (* CASCADE_HEIGHT = "0" *) 
  (* CLOCKING_MODE = "0" *) 
  (* ECC_BIT_RANGE = "[7:0]" *) 
  (* ECC_MODE = "0" *) 
  (* ECC_TYPE = "NONE" *) 
  (* IGNORE_INIT_SYNTH = "0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* MAX_NUM_CHAR = "0" *) 
  (* MEMORY_INIT_FILE = "none" *) 
  (* MEMORY_INIT_PARAM = "" *) 
  (* MEMORY_OPTIMIZATION = "true" *) 
  (* MEMORY_PRIMITIVE = "3" *) 
  (* MEMORY_SIZE = "4194304" *) 
  (* MEMORY_TYPE = "1" *) 
  (* MESSAGE_CONTROL = "0" *) 
  (* NUM_CHAR_LOC = "0" *) 
  (* P_ECC_MODE = "no_ecc" *) 
  (* P_ENABLE_BYTE_WRITE_A = "0" *) 
  (* P_ENABLE_BYTE_WRITE_B = "0" *) 
  (* P_MAX_DEPTH_DATA = "16384" *) 
  (* P_MEMORY_OPT = "yes" *) 
  (* P_MEMORY_PRIMITIVE = "ultra" *) 
  (* P_MIN_WIDTH_DATA = "256" *) 
  (* P_MIN_WIDTH_DATA_A = "256" *) 
  (* P_MIN_WIDTH_DATA_B = "256" *) 
  (* P_MIN_WIDTH_DATA_ECC = "256" *) 
  (* P_MIN_WIDTH_DATA_LDW = "4" *) 
  (* P_MIN_WIDTH_DATA_SHFT = "256" *) 
  (* P_NUM_COLS_WRITE_A = "1" *) 
  (* P_NUM_COLS_WRITE_B = "1" *) 
  (* P_NUM_COL_READ_A = "1" *) 
  (* P_NUM_COL_READ_B = "1" *) 
  (* P_NUM_COL_WRITE_A = "1" *) 
  (* P_NUM_COL_WRITE_B = "1" *) 
  (* P_NUM_ROWS_READ_A = "1" *) 
  (* P_NUM_ROWS_READ_B = "1" *) 
  (* P_NUM_ROWS_WRITE_A = "1" *) 
  (* P_NUM_ROWS_WRITE_B = "1" *) 
  (* P_SDP_WRITE_MODE = "yes" *) 
  (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
  (* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) 
  (* P_WIDTH_ADDR_READ_A = "14" *) 
  (* P_WIDTH_ADDR_READ_B = "14" *) 
  (* P_WIDTH_ADDR_WRITE_A = "14" *) 
  (* P_WIDTH_ADDR_WRITE_B = "14" *) 
  (* P_WIDTH_COL_WRITE_A = "256" *) 
  (* P_WIDTH_COL_WRITE_B = "256" *) 
  (* RAM_DECOMP = "auto" *) 
  (* READ_DATA_WIDTH_A = "256" *) 
  (* READ_DATA_WIDTH_B = "256" *) 
  (* READ_LATENCY_A = "2" *) 
  (* READ_LATENCY_B = "2" *) 
  (* READ_RESET_VALUE_A = "0" *) 
  (* READ_RESET_VALUE_B = "0" *) 
  (* RST_MODE_A = "SYNC" *) 
  (* RST_MODE_B = "SYNC" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_EMBEDDED_CONSTRAINT = "0" *) 
  (* USE_MEM_INIT = "0" *) 
  (* USE_MEM_INIT_MMI = "0" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WRITE_DATA_WIDTH_A = "256" *) 
  (* WRITE_DATA_WIDTH_B = "256" *) 
  (* WRITE_MODE_A = "2" *) 
  (* WRITE_MODE_B = "1" *) 
  (* WRITE_PROTECT = "1" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* rsta_loop_iter = "256" *) 
  (* rstb_loop_iter = "256" *) 
  ps_axi_dma_1_0_xpm_memory_base \gen_sdpram.xpm_memory_base_inst 
       (.addra(wr_pntr_ext),
        .addrb(rd_pntr_ext),
        .clka(wr_clk),
        .clkb(1'b0),
        .dbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterra_UNCONNECTED ),
        .dbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_dbiterrb_UNCONNECTED ),
        .dina(din),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(\NLW_gen_sdpram.xpm_memory_base_inst_douta_UNCONNECTED [255:0]),
        .doutb(dout),
        .ena(1'b0),
        .enb(rdpp1_inst_n_14),
        .injectdbiterra(1'b0),
        .injectdbiterrb(1'b0),
        .injectsbiterra(1'b0),
        .injectsbiterrb(1'b0),
        .regcea(1'b0),
        .regceb(\gen_fwft.ram_regout_en ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h62)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(rd_en),
        .O(\gen_fwft.ram_regout_en ));
  ps_axi_dma_1_0_xpm_counter_updn__parameterized0 rdp_inst
       (.Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_14),
        .\count_value_i_reg[13]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[1]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11,wrpp1_inst_n_12,wrpp1_inst_n_13}),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_full_i0(ram_full_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ps_axi_dma_1_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_14),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10,rdpp1_inst_n_11,rdpp1_inst_n_12,rdpp1_inst_n_13}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .rd_en(rd_en),
        .wr_clk(wr_clk));
  ps_axi_dma_1_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0 wrp_inst
       (.Q(wr_pntr_ext),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .\gen_pntr_flags_cc.ram_empty_i_i_2_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10,rdpp1_inst_n_11,rdpp1_inst_n_12,rdpp1_inst_n_13}),
        .\gen_pntr_flags_cc.ram_empty_i_reg (rdpp1_inst_n_14),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_empty_i0(ram_empty_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ps_axi_dma_1_0_xpm_counter_updn__parameterized1_1 wrpp1_inst
       (.Q({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11,wrpp1_inst_n_12,wrpp1_inst_n_13}),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[5]_0 (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ps_axi_dma_1_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[13] (\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg_n_0 ),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst(rst),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_reg_bit" *) 
module ps_axi_dma_1_0_xpm_fifo_reg_bit
   (rst_d1,
    Q,
    wr_clk);
  output rst_d1;
  input [0:0]Q;
  input wr_clk;

  wire [0:0]Q;
  wire rst_d1;
  wire wr_clk;

  FDRE #(
    .INIT(1'b0)) 
    d_out_int_reg
       (.C(wr_clk),
        .CE(1'b1),
        .D(Q),
        .Q(rst_d1),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "xpm_fifo_rst" *) 
module ps_axi_dma_1_0_xpm_fifo_rst
   (ram_wr_en_pf,
    Q,
    wr_en,
    \count_value_i_reg[13] ,
    rst_d1,
    rst,
    wr_clk);
  output ram_wr_en_pf;
  output [0:0]Q;
  input wr_en;
  input \count_value_i_reg[13] ;
  input rst_d1;
  input rst;
  input wr_clk;

  wire [0:0]Q;
  wire \count_value_i_reg[13] ;
  wire [1:0]\gen_rst_cc.fifo_wr_rst_cc ;
  wire p_0_in;
  wire \power_on_rst_reg_n_0_[0] ;
  wire ram_wr_en_pf;
  wire rst;
  wire rst_d1;
  wire rst_i;
  wire wr_clk;
  wire wr_en;

  LUT2 #(
    .INIT(4'hE)) 
    \gen_rst_cc.fifo_wr_rst_cc[2]_i_1 
       (.I0(p_0_in),
        .I1(rst),
        .O(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [0]),
        .Q(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .S(rst_i));
  FDSE #(
    .INIT(1'b0)) 
    \gen_rst_cc.fifo_wr_rst_cc_reg[2] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\gen_rst_cc.fifo_wr_rst_cc [1]),
        .Q(Q),
        .S(rst_i));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_sdpram.xpm_memory_base_inst_i_1 
       (.I0(wr_en),
        .I1(\count_value_i_reg[13] ),
        .I2(Q),
        .I3(rst_d1),
        .O(ram_wr_en_pf));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[0] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(1'b0),
        .Q(\power_on_rst_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \power_on_rst_reg[1] 
       (.C(wr_clk),
        .CE(1'b1),
        .D(\power_on_rst_reg_n_0_[0] ),
        .Q(p_0_in),
        .R(1'b0));
endmodule

(* CASCADE_HEIGHT = "0" *) (* DOUT_RESET_VALUE = "0" *) (* ECC_MODE = "no_ecc" *) 
(* EN_ADV_FEATURE_SYNC = "16'b0000011100000111" *) (* EN_SIM_ASSERT_ERR = "warning" *) (* FIFO_MEMORY_TYPE = "ultra" *) 
(* FIFO_READ_LATENCY = "1" *) (* FIFO_WRITE_DEPTH = "16384" *) (* FULL_RESET_VALUE = "0" *) 
(* ORIG_REF_NAME = "xpm_fifo_sync" *) (* PROG_EMPTY_THRESH = "10" *) (* PROG_FULL_THRESH = "10" *) 
(* P_COMMON_CLOCK = "1" *) (* P_ECC_MODE = "0" *) (* P_FIFO_MEMORY_TYPE = "3" *) 
(* P_READ_MODE = "1" *) (* P_WAKEUP_TIME = "2" *) (* RD_DATA_COUNT_WIDTH = "1" *) 
(* READ_DATA_WIDTH = "256" *) (* READ_MODE = "fwft" *) (* SIM_ASSERT_CHK = "0" *) 
(* USE_ADV_FEATURES = "0707" *) (* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH = "256" *) 
(* WR_DATA_COUNT_WIDTH = "1" *) (* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) 
module ps_axi_dma_1_0_xpm_fifo_sync
   (sleep,
    rst,
    wr_clk,
    wr_en,
    din,
    full,
    prog_full,
    wr_data_count,
    overflow,
    wr_rst_busy,
    almost_full,
    wr_ack,
    rd_en,
    dout,
    empty,
    prog_empty,
    rd_data_count,
    underflow,
    rd_rst_busy,
    almost_empty,
    data_valid,
    injectsbiterr,
    injectdbiterr,
    sbiterr,
    dbiterr);
  input sleep;
  input rst;
  input wr_clk;
  input wr_en;
  input [255:0]din;
  output full;
  output prog_full;
  output [0:0]wr_data_count;
  output overflow;
  output wr_rst_busy;
  output almost_full;
  output wr_ack;
  input rd_en;
  output [255:0]dout;
  output empty;
  output prog_empty;
  output [0:0]rd_data_count;
  output underflow;
  output rd_rst_busy;
  output almost_empty;
  output data_valid;
  input injectsbiterr;
  input injectdbiterr;
  output sbiterr;
  output dbiterr;

  wire \<const0> ;
  wire [255:0]din;
  wire [255:0]dout;
  wire empty;
  wire rd_en;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_full_n_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_overflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_underflow_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED;

  assign almost_empty = \<const0> ;
  assign almost_full = \<const0> ;
  assign data_valid = \<const0> ;
  assign dbiterr = \<const0> ;
  assign full = \<const0> ;
  assign overflow = \<const0> ;
  assign prog_empty = \<const0> ;
  assign prog_full = \<const0> ;
  assign rd_data_count[0] = \<const0> ;
  assign rd_rst_busy = \<const0> ;
  assign sbiterr = \<const0> ;
  assign underflow = \<const0> ;
  assign wr_ack = \<const0> ;
  assign wr_data_count[0] = \<const0> ;
  assign wr_rst_busy = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CASCADE_HEIGHT = "0" *) 
  (* CDC_DEST_SYNC_FF = "2" *) 
  (* COMMON_CLOCK = "1" *) 
  (* DOUT_RESET_VALUE = "0" *) 
  (* ECC_MODE = "0" *) 
  (* ENABLE_ECC = "0" *) 
  (* EN_ADV_FEATURE = "16'b0000011100000111" *) 
  (* EN_AE = "1'b0" *) 
  (* EN_AF = "1'b0" *) 
  (* EN_DVLD = "1'b0" *) 
  (* EN_OF = "1'b1" *) 
  (* EN_PE = "1'b1" *) 
  (* EN_PF = "1'b1" *) 
  (* EN_RDC = "1'b1" *) 
  (* EN_SIM_ASSERT_ERR = "warning" *) 
  (* EN_UF = "1'b1" *) 
  (* EN_WACK = "1'b0" *) 
  (* EN_WDC = "1'b1" *) 
  (* FG_EQ_ASYM_DOUT = "1'b0" *) 
  (* FIFO_MEMORY_TYPE = "3" *) 
  (* FIFO_MEM_TYPE = "3" *) 
  (* FIFO_READ_DEPTH = "16384" *) 
  (* FIFO_READ_LATENCY = "1" *) 
  (* FIFO_SIZE = "4194304" *) 
  (* FIFO_WRITE_DEPTH = "16384" *) 
  (* FULL_RESET_VALUE = "0" *) 
  (* FULL_RST_VAL = "1'b0" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* PE_THRESH_ADJ = "8" *) 
  (* PE_THRESH_MAX = "16379" *) 
  (* PE_THRESH_MIN = "5" *) 
  (* PF_THRESH_ADJ = "8" *) 
  (* PF_THRESH_MAX = "16379" *) 
  (* PF_THRESH_MIN = "5" *) 
  (* PROG_EMPTY_THRESH = "10" *) 
  (* PROG_FULL_THRESH = "10" *) 
  (* RD_DATA_COUNT_WIDTH = "1" *) 
  (* RD_DC_WIDTH_EXT = "15" *) 
  (* RD_LATENCY = "2" *) 
  (* RD_MODE = "1" *) 
  (* RD_PNTR_WIDTH = "14" *) 
  (* READ_DATA_WIDTH = "256" *) 
  (* READ_MODE = "1" *) 
  (* READ_MODE_LL = "1" *) 
  (* RELATED_CLOCKS = "0" *) 
  (* REMOVE_WR_RD_PROT_LOGIC = "0" *) 
  (* SIM_ASSERT_CHK = "0" *) 
  (* USE_ADV_FEATURES = "0707" *) 
  (* VERSION = "0" *) 
  (* WAKEUP_TIME = "0" *) 
  (* WIDTH_RATIO = "1" *) 
  (* WRITE_DATA_WIDTH = "256" *) 
  (* WR_DATA_COUNT_WIDTH = "1" *) 
  (* WR_DC_WIDTH_EXT = "15" *) 
  (* WR_DEPTH_LOG = "14" *) 
  (* WR_PNTR_WIDTH = "14" *) 
  (* WR_RD_RATIO = "0" *) 
  (* WR_WIDTH_LOG = "8" *) 
  (* XPM_MODULE = "TRUE" *) 
  (* both_stages_valid = "3" *) 
  (* invalid = "0" *) 
  (* stage1_valid = "2" *) 
  (* stage2_valid = "1" *) 
  ps_axi_dma_1_0_xpm_fifo_base xpm_fifo_base_inst
       (.almost_empty(NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED),
        .almost_full(NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED),
        .data_valid(NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED),
        .dbiterr(NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(NLW_xpm_fifo_base_inst_full_UNCONNECTED),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(rd_en),
        .rd_rst_busy(NLW_xpm_fifo_base_inst_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .sbiterr(NLW_xpm_fifo_base_inst_sbiterr_UNCONNECTED),
        .sleep(sleep),
        .underflow(NLW_xpm_fifo_base_inst_underflow_UNCONNECTED),
        .wr_ack(NLW_xpm_fifo_base_inst_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_xpm_fifo_base_inst_wr_data_count_UNCONNECTED[0]),
        .wr_en(wr_en),
        .wr_rst_busy(NLW_xpm_fifo_base_inst_wr_rst_busy_UNCONNECTED));
endmodule

(* ADDR_WIDTH_A = "14" *) (* ADDR_WIDTH_B = "14" *) (* AUTO_SLEEP_TIME = "0" *) 
(* BYTE_WRITE_WIDTH_A = "256" *) (* BYTE_WRITE_WIDTH_B = "256" *) (* CASCADE_HEIGHT = "0" *) 
(* CLOCKING_MODE = "0" *) (* ECC_BIT_RANGE = "[7:0]" *) (* ECC_MODE = "0" *) 
(* ECC_TYPE = "NONE" *) (* IGNORE_INIT_SYNTH = "0" *) (* MAX_NUM_CHAR = "0" *) 
(* MEMORY_INIT_FILE = "none" *) (* MEMORY_INIT_PARAM = "" *) (* MEMORY_OPTIMIZATION = "true" *) 
(* MEMORY_PRIMITIVE = "3" *) (* MEMORY_SIZE = "4194304" *) (* MEMORY_TYPE = "1" *) 
(* MESSAGE_CONTROL = "0" *) (* NUM_CHAR_LOC = "0" *) (* ORIG_REF_NAME = "xpm_memory_base" *) 
(* P_ECC_MODE = "0" *) (* P_ENABLE_BYTE_WRITE_A = "0" *) (* P_ENABLE_BYTE_WRITE_B = "0" *) 
(* P_MAX_DEPTH_DATA = "16384" *) (* P_MEMORY_OPT = "yes" *) (* P_MEMORY_PRIMITIVE = "ultra" *) 
(* P_MIN_WIDTH_DATA = "256" *) (* P_MIN_WIDTH_DATA_A = "256" *) (* P_MIN_WIDTH_DATA_B = "256" *) 
(* P_MIN_WIDTH_DATA_ECC = "256" *) (* P_MIN_WIDTH_DATA_LDW = "4" *) (* P_MIN_WIDTH_DATA_SHFT = "256" *) 
(* P_NUM_COLS_WRITE_A = "1" *) (* P_NUM_COLS_WRITE_B = "1" *) (* P_NUM_COL_READ_A = "1" *) 
(* P_NUM_COL_READ_B = "1" *) (* P_NUM_COL_WRITE_A = "1" *) (* P_NUM_COL_WRITE_B = "1" *) 
(* P_NUM_ROWS_READ_A = "1" *) (* P_NUM_ROWS_READ_B = "1" *) (* P_NUM_ROWS_WRITE_A = "1" *) 
(* P_NUM_ROWS_WRITE_B = "1" *) (* P_SDP_WRITE_MODE = "yes" *) (* P_WIDTH_ADDR_LSB_READ_A = "0" *) 
(* P_WIDTH_ADDR_LSB_READ_B = "0" *) (* P_WIDTH_ADDR_LSB_READ_COLL_A = "1" *) (* P_WIDTH_ADDR_LSB_READ_COLL_B = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_A = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_B = "0" *) (* P_WIDTH_ADDR_LSB_WRITE_COLL_A = "1" *) 
(* P_WIDTH_ADDR_LSB_WRITE_COLL_B = "1" *) (* P_WIDTH_ADDR_READ_A = "14" *) (* P_WIDTH_ADDR_READ_B = "14" *) 
(* P_WIDTH_ADDR_WRITE_A = "14" *) (* P_WIDTH_ADDR_WRITE_B = "14" *) (* P_WIDTH_COL_WRITE_A = "256" *) 
(* P_WIDTH_COL_WRITE_B = "256" *) (* RAM_DECOMP = "auto" *) (* READ_DATA_WIDTH_A = "256" *) 
(* READ_DATA_WIDTH_B = "256" *) (* READ_LATENCY_A = "2" *) (* READ_LATENCY_B = "2" *) 
(* READ_RESET_VALUE_A = "0" *) (* READ_RESET_VALUE_B = "0" *) (* RST_MODE_A = "SYNC" *) 
(* RST_MODE_B = "SYNC" *) (* SIM_ASSERT_CHK = "0" *) (* USE_EMBEDDED_CONSTRAINT = "0" *) 
(* USE_MEM_INIT = "0" *) (* USE_MEM_INIT_MMI = "0" *) (* VERSION = "0" *) 
(* WAKEUP_TIME = "0" *) (* WRITE_DATA_WIDTH_A = "256" *) (* WRITE_DATA_WIDTH_B = "256" *) 
(* WRITE_MODE_A = "2" *) (* WRITE_MODE_B = "1" *) (* WRITE_PROTECT = "1" *) 
(* XPM_MODULE = "TRUE" *) (* keep_hierarchy = "soft" *) (* rsta_loop_iter = "256" *) 
(* rstb_loop_iter = "256" *) 
module ps_axi_dma_1_0_xpm_memory_base
   (sleep,
    clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    injectsbiterra,
    injectdbiterra,
    douta,
    sbiterra,
    dbiterra,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    injectsbiterrb,
    injectdbiterrb,
    doutb,
    sbiterrb,
    dbiterrb);
  input sleep;
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [0:0]wea;
  input [13:0]addra;
  input [255:0]dina;
  input injectsbiterra;
  input injectdbiterra;
  output [255:0]douta;
  output sbiterra;
  output dbiterra;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [0:0]web;
  input [13:0]addrb;
  input [255:0]dinb;
  input injectsbiterrb;
  input injectdbiterrb;
  output [255:0]doutb;
  output sbiterrb;
  output dbiterrb;

  wire \<const0> ;
  wire [13:0]addra;
  wire [13:0]addrb;
  wire clka;
  wire [255:0]dina;
  wire [255:0]doutb;
  wire enb;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrA_2 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BEWB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BWEA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinB_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutB_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrA_3 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BEWB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BWEA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinB_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutB_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_350 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_351 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_352 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_353 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_354 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_355 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_356 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_357 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_358 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_359 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_360 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_361 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_362 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_363 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_364 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_365 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_366 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_367 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_368 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_369 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_370 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_371 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_372 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_373 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_374 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_375 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_376 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_377 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_378 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_379 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_380 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_381 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_382 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_383 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_384 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_385 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_386 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_387 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_388 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_389 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_390 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_391 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_392 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_393 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_394 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_395 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_396 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_397 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_398 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_399 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_400 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_401 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_402 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_403 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_404 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_405 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_406 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_407 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_408 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_409 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_410 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_411 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_412 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_413 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_414 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_415 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_416 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_417 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_418 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_419 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_420 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_421 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrA_1 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BEWB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BWEA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinB_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutB_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrA_2 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BEWB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BWEA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinB_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutB_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrA_3 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BEWB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BWEA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinB_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutB_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_382 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_383 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_384 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_385 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_386 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_387 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_388 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_389 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_390 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_391 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_392 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_393 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_394 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_395 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_396 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_397 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_398 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_399 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_400 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_401 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_402 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_403 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_404 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_405 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_406 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_407 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_408 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_409 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_410 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_411 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_412 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_413 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_414 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_415 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_416 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_417 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_418 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_419 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_420 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_421 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_350 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_351 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_352 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_353 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_354 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_355 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_356 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_357 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_358 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_359 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_360 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_361 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_362 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_363 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_364 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_365 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_366 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_367 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_368 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_369 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_370 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_371 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_372 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_373 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_374 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_375 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_376 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_377 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_378 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_379 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_380 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_381 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_382 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_383 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_384 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_385 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_386 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_387 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_388 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_389 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_390 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_391 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_392 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_393 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_394 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_395 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_396 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_397 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_398 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_399 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_400 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_401 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_402 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_403 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_404 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_405 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_406 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_407 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_408 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_409 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_410 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_411 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_412 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_413 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_414 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_415 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_416 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_417 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_418 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_419 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_420 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_421 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrA_1 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BEWB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BWEA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinB_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutB_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrA_2 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BEWB_2 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BWEA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinB_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutA_2 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutB_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrA_3 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BEWB_3 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BWEA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinB_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutA_3 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutB_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_350 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_351 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_352 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_353 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_354 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_355 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_356 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_357 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_358 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_359 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_360 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_361 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_362 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_363 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_364 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_365 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_366 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_367 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_368 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_369 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_370 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_371 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_372 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_373 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_374 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_375 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_376 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_377 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_378 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_379 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_380 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_381 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_382 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_383 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_384 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_385 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_386 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_387 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_388 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_389 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_390 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_391 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_392 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_393 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_394 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_395 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_396 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_397 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_398 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_399 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_400 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_401 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_402 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_403 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_404 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_405 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_406 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_407 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_408 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_409 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_410 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_411 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_412 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_413 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_414 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_415 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_416 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_417 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_418 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_419 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_420 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_421 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_9 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrA_1 ;
  wire [22:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BEWB_1 ;
  wire [8:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BWEA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinB_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutA_1 ;
  wire [71:0]\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutB_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_0 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_1 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_2 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_3 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_4 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_5 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_6 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_7 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_8 ;
  wire \gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_9 ;
  wire regceb;
  wire rstb;
  wire sleep;
  wire [0:0]wea;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_B_UNCONNECTED ;
  wire [71:40]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_B_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_A_UNCONNECTED ;
  wire [8:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_B_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_A_UNCONNECTED ;
  wire \NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_B_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_A_UNCONNECTED ;
  wire [22:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_B_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_A_UNCONNECTED ;
  wire [71:0]\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_B_UNCONNECTED ;

  assign dbiterra = \<const0> ;
  assign dbiterrb = \<const0> ;
  assign douta[255] = \<const0> ;
  assign douta[254] = \<const0> ;
  assign douta[253] = \<const0> ;
  assign douta[252] = \<const0> ;
  assign douta[251] = \<const0> ;
  assign douta[250] = \<const0> ;
  assign douta[249] = \<const0> ;
  assign douta[248] = \<const0> ;
  assign douta[247] = \<const0> ;
  assign douta[246] = \<const0> ;
  assign douta[245] = \<const0> ;
  assign douta[244] = \<const0> ;
  assign douta[243] = \<const0> ;
  assign douta[242] = \<const0> ;
  assign douta[241] = \<const0> ;
  assign douta[240] = \<const0> ;
  assign douta[239] = \<const0> ;
  assign douta[238] = \<const0> ;
  assign douta[237] = \<const0> ;
  assign douta[236] = \<const0> ;
  assign douta[235] = \<const0> ;
  assign douta[234] = \<const0> ;
  assign douta[233] = \<const0> ;
  assign douta[232] = \<const0> ;
  assign douta[231] = \<const0> ;
  assign douta[230] = \<const0> ;
  assign douta[229] = \<const0> ;
  assign douta[228] = \<const0> ;
  assign douta[227] = \<const0> ;
  assign douta[226] = \<const0> ;
  assign douta[225] = \<const0> ;
  assign douta[224] = \<const0> ;
  assign douta[223] = \<const0> ;
  assign douta[222] = \<const0> ;
  assign douta[221] = \<const0> ;
  assign douta[220] = \<const0> ;
  assign douta[219] = \<const0> ;
  assign douta[218] = \<const0> ;
  assign douta[217] = \<const0> ;
  assign douta[216] = \<const0> ;
  assign douta[215] = \<const0> ;
  assign douta[214] = \<const0> ;
  assign douta[213] = \<const0> ;
  assign douta[212] = \<const0> ;
  assign douta[211] = \<const0> ;
  assign douta[210] = \<const0> ;
  assign douta[209] = \<const0> ;
  assign douta[208] = \<const0> ;
  assign douta[207] = \<const0> ;
  assign douta[206] = \<const0> ;
  assign douta[205] = \<const0> ;
  assign douta[204] = \<const0> ;
  assign douta[203] = \<const0> ;
  assign douta[202] = \<const0> ;
  assign douta[201] = \<const0> ;
  assign douta[200] = \<const0> ;
  assign douta[199] = \<const0> ;
  assign douta[198] = \<const0> ;
  assign douta[197] = \<const0> ;
  assign douta[196] = \<const0> ;
  assign douta[195] = \<const0> ;
  assign douta[194] = \<const0> ;
  assign douta[193] = \<const0> ;
  assign douta[192] = \<const0> ;
  assign douta[191] = \<const0> ;
  assign douta[190] = \<const0> ;
  assign douta[189] = \<const0> ;
  assign douta[188] = \<const0> ;
  assign douta[187] = \<const0> ;
  assign douta[186] = \<const0> ;
  assign douta[185] = \<const0> ;
  assign douta[184] = \<const0> ;
  assign douta[183] = \<const0> ;
  assign douta[182] = \<const0> ;
  assign douta[181] = \<const0> ;
  assign douta[180] = \<const0> ;
  assign douta[179] = \<const0> ;
  assign douta[178] = \<const0> ;
  assign douta[177] = \<const0> ;
  assign douta[176] = \<const0> ;
  assign douta[175] = \<const0> ;
  assign douta[174] = \<const0> ;
  assign douta[173] = \<const0> ;
  assign douta[172] = \<const0> ;
  assign douta[171] = \<const0> ;
  assign douta[170] = \<const0> ;
  assign douta[169] = \<const0> ;
  assign douta[168] = \<const0> ;
  assign douta[167] = \<const0> ;
  assign douta[166] = \<const0> ;
  assign douta[165] = \<const0> ;
  assign douta[164] = \<const0> ;
  assign douta[163] = \<const0> ;
  assign douta[162] = \<const0> ;
  assign douta[161] = \<const0> ;
  assign douta[160] = \<const0> ;
  assign douta[159] = \<const0> ;
  assign douta[158] = \<const0> ;
  assign douta[157] = \<const0> ;
  assign douta[156] = \<const0> ;
  assign douta[155] = \<const0> ;
  assign douta[154] = \<const0> ;
  assign douta[153] = \<const0> ;
  assign douta[152] = \<const0> ;
  assign douta[151] = \<const0> ;
  assign douta[150] = \<const0> ;
  assign douta[149] = \<const0> ;
  assign douta[148] = \<const0> ;
  assign douta[147] = \<const0> ;
  assign douta[146] = \<const0> ;
  assign douta[145] = \<const0> ;
  assign douta[144] = \<const0> ;
  assign douta[143] = \<const0> ;
  assign douta[142] = \<const0> ;
  assign douta[141] = \<const0> ;
  assign douta[140] = \<const0> ;
  assign douta[139] = \<const0> ;
  assign douta[138] = \<const0> ;
  assign douta[137] = \<const0> ;
  assign douta[136] = \<const0> ;
  assign douta[135] = \<const0> ;
  assign douta[134] = \<const0> ;
  assign douta[133] = \<const0> ;
  assign douta[132] = \<const0> ;
  assign douta[131] = \<const0> ;
  assign douta[130] = \<const0> ;
  assign douta[129] = \<const0> ;
  assign douta[128] = \<const0> ;
  assign douta[127] = \<const0> ;
  assign douta[126] = \<const0> ;
  assign douta[125] = \<const0> ;
  assign douta[124] = \<const0> ;
  assign douta[123] = \<const0> ;
  assign douta[122] = \<const0> ;
  assign douta[121] = \<const0> ;
  assign douta[120] = \<const0> ;
  assign douta[119] = \<const0> ;
  assign douta[118] = \<const0> ;
  assign douta[117] = \<const0> ;
  assign douta[116] = \<const0> ;
  assign douta[115] = \<const0> ;
  assign douta[114] = \<const0> ;
  assign douta[113] = \<const0> ;
  assign douta[112] = \<const0> ;
  assign douta[111] = \<const0> ;
  assign douta[110] = \<const0> ;
  assign douta[109] = \<const0> ;
  assign douta[108] = \<const0> ;
  assign douta[107] = \<const0> ;
  assign douta[106] = \<const0> ;
  assign douta[105] = \<const0> ;
  assign douta[104] = \<const0> ;
  assign douta[103] = \<const0> ;
  assign douta[102] = \<const0> ;
  assign douta[101] = \<const0> ;
  assign douta[100] = \<const0> ;
  assign douta[99] = \<const0> ;
  assign douta[98] = \<const0> ;
  assign douta[97] = \<const0> ;
  assign douta[96] = \<const0> ;
  assign douta[95] = \<const0> ;
  assign douta[94] = \<const0> ;
  assign douta[93] = \<const0> ;
  assign douta[92] = \<const0> ;
  assign douta[91] = \<const0> ;
  assign douta[90] = \<const0> ;
  assign douta[89] = \<const0> ;
  assign douta[88] = \<const0> ;
  assign douta[87] = \<const0> ;
  assign douta[86] = \<const0> ;
  assign douta[85] = \<const0> ;
  assign douta[84] = \<const0> ;
  assign douta[83] = \<const0> ;
  assign douta[82] = \<const0> ;
  assign douta[81] = \<const0> ;
  assign douta[80] = \<const0> ;
  assign douta[79] = \<const0> ;
  assign douta[78] = \<const0> ;
  assign douta[77] = \<const0> ;
  assign douta[76] = \<const0> ;
  assign douta[75] = \<const0> ;
  assign douta[74] = \<const0> ;
  assign douta[73] = \<const0> ;
  assign douta[72] = \<const0> ;
  assign douta[71] = \<const0> ;
  assign douta[70] = \<const0> ;
  assign douta[69] = \<const0> ;
  assign douta[68] = \<const0> ;
  assign douta[67] = \<const0> ;
  assign douta[66] = \<const0> ;
  assign douta[65] = \<const0> ;
  assign douta[64] = \<const0> ;
  assign douta[63] = \<const0> ;
  assign douta[62] = \<const0> ;
  assign douta[61] = \<const0> ;
  assign douta[60] = \<const0> ;
  assign douta[59] = \<const0> ;
  assign douta[58] = \<const0> ;
  assign douta[57] = \<const0> ;
  assign douta[56] = \<const0> ;
  assign douta[55] = \<const0> ;
  assign douta[54] = \<const0> ;
  assign douta[53] = \<const0> ;
  assign douta[52] = \<const0> ;
  assign douta[51] = \<const0> ;
  assign douta[50] = \<const0> ;
  assign douta[49] = \<const0> ;
  assign douta[48] = \<const0> ;
  assign douta[47] = \<const0> ;
  assign douta[46] = \<const0> ;
  assign douta[45] = \<const0> ;
  assign douta[44] = \<const0> ;
  assign douta[43] = \<const0> ;
  assign douta[42] = \<const0> ;
  assign douta[41] = \<const0> ;
  assign douta[40] = \<const0> ;
  assign douta[39] = \<const0> ;
  assign douta[38] = \<const0> ;
  assign douta[37] = \<const0> ;
  assign douta[36] = \<const0> ;
  assign douta[35] = \<const0> ;
  assign douta[34] = \<const0> ;
  assign douta[33] = \<const0> ;
  assign douta[32] = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign sbiterra = \<const0> ;
  assign sbiterrb = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][0] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_421 ),
        .Q(doutb[0]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][100] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_393 ),
        .Q(doutb[100]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][101] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_392 ),
        .Q(doutb[101]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][102] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_391 ),
        .Q(doutb[102]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][103] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_390 ),
        .Q(doutb[103]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][104] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_389 ),
        .Q(doutb[104]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][105] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_388 ),
        .Q(doutb[105]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][106] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_387 ),
        .Q(doutb[106]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][107] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_386 ),
        .Q(doutb[107]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][108] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_385 ),
        .Q(doutb[108]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][109] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_384 ),
        .Q(doutb[109]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][10] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_411 ),
        .Q(doutb[10]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][110] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_383 ),
        .Q(doutb[110]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][111] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_382 ),
        .Q(doutb[111]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][112] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_381 ),
        .Q(doutb[112]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][113] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_380 ),
        .Q(doutb[113]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][114] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_379 ),
        .Q(doutb[114]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][115] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_378 ),
        .Q(doutb[115]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][116] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_377 ),
        .Q(doutb[116]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][117] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_376 ),
        .Q(doutb[117]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][118] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_375 ),
        .Q(doutb[118]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][119] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_374 ),
        .Q(doutb[119]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][11] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_410 ),
        .Q(doutb[11]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][120] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_373 ),
        .Q(doutb[120]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][121] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_372 ),
        .Q(doutb[121]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][122] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_371 ),
        .Q(doutb[122]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][123] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_370 ),
        .Q(doutb[123]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][124] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_369 ),
        .Q(doutb[124]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][125] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_368 ),
        .Q(doutb[125]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][126] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_367 ),
        .Q(doutb[126]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][127] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_366 ),
        .Q(doutb[127]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][128] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_365 ),
        .Q(doutb[128]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][129] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_364 ),
        .Q(doutb[129]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][12] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_409 ),
        .Q(doutb[12]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][130] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_363 ),
        .Q(doutb[130]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][131] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_362 ),
        .Q(doutb[131]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][132] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_361 ),
        .Q(doutb[132]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][133] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_360 ),
        .Q(doutb[133]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][134] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_359 ),
        .Q(doutb[134]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][135] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_358 ),
        .Q(doutb[135]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][136] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_357 ),
        .Q(doutb[136]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][137] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_356 ),
        .Q(doutb[137]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][138] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_355 ),
        .Q(doutb[138]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][139] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_354 ),
        .Q(doutb[139]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][13] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_408 ),
        .Q(doutb[13]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][140] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_353 ),
        .Q(doutb[140]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][141] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_352 ),
        .Q(doutb[141]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][142] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_351 ),
        .Q(doutb[142]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][143] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_350 ),
        .Q(doutb[143]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][144] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_421 ),
        .Q(doutb[144]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][145] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_420 ),
        .Q(doutb[145]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][146] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_419 ),
        .Q(doutb[146]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][147] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_418 ),
        .Q(doutb[147]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][148] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_417 ),
        .Q(doutb[148]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][149] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_416 ),
        .Q(doutb[149]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][14] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_407 ),
        .Q(doutb[14]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][150] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_415 ),
        .Q(doutb[150]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][151] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_414 ),
        .Q(doutb[151]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][152] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_413 ),
        .Q(doutb[152]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][153] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_412 ),
        .Q(doutb[153]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][154] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_411 ),
        .Q(doutb[154]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][155] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_410 ),
        .Q(doutb[155]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][156] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_409 ),
        .Q(doutb[156]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][157] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_408 ),
        .Q(doutb[157]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][158] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_407 ),
        .Q(doutb[158]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][159] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_406 ),
        .Q(doutb[159]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][15] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_406 ),
        .Q(doutb[15]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][160] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_405 ),
        .Q(doutb[160]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][161] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_404 ),
        .Q(doutb[161]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][162] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_403 ),
        .Q(doutb[162]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][163] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_402 ),
        .Q(doutb[163]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][164] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_401 ),
        .Q(doutb[164]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][165] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_400 ),
        .Q(doutb[165]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][166] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_399 ),
        .Q(doutb[166]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][167] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_398 ),
        .Q(doutb[167]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][168] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_397 ),
        .Q(doutb[168]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][169] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_396 ),
        .Q(doutb[169]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][16] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_405 ),
        .Q(doutb[16]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][170] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_395 ),
        .Q(doutb[170]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][171] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_394 ),
        .Q(doutb[171]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][172] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_393 ),
        .Q(doutb[172]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][173] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_392 ),
        .Q(doutb[173]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][174] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_391 ),
        .Q(doutb[174]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][175] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_390 ),
        .Q(doutb[175]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][176] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_389 ),
        .Q(doutb[176]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][177] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_388 ),
        .Q(doutb[177]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][178] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_387 ),
        .Q(doutb[178]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][179] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_386 ),
        .Q(doutb[179]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][17] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_404 ),
        .Q(doutb[17]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][180] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_385 ),
        .Q(doutb[180]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][181] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_384 ),
        .Q(doutb[181]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][182] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_383 ),
        .Q(doutb[182]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][183] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_382 ),
        .Q(doutb[183]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][184] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_381 ),
        .Q(doutb[184]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][185] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_380 ),
        .Q(doutb[185]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][186] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_379 ),
        .Q(doutb[186]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][187] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_378 ),
        .Q(doutb[187]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][188] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_377 ),
        .Q(doutb[188]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][189] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_376 ),
        .Q(doutb[189]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][18] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_403 ),
        .Q(doutb[18]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][190] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_375 ),
        .Q(doutb[190]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][191] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_374 ),
        .Q(doutb[191]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][192] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_373 ),
        .Q(doutb[192]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][193] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_372 ),
        .Q(doutb[193]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][194] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_371 ),
        .Q(doutb[194]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][195] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_370 ),
        .Q(doutb[195]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][196] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_369 ),
        .Q(doutb[196]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][197] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_368 ),
        .Q(doutb[197]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][198] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_367 ),
        .Q(doutb[198]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][199] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_366 ),
        .Q(doutb[199]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][19] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_402 ),
        .Q(doutb[19]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][1] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_420 ),
        .Q(doutb[1]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][200] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_365 ),
        .Q(doutb[200]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][201] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_364 ),
        .Q(doutb[201]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][202] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_363 ),
        .Q(doutb[202]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][203] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_362 ),
        .Q(doutb[203]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][204] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_361 ),
        .Q(doutb[204]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][205] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_360 ),
        .Q(doutb[205]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][206] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_359 ),
        .Q(doutb[206]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][207] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_358 ),
        .Q(doutb[207]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][208] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_357 ),
        .Q(doutb[208]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][209] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_356 ),
        .Q(doutb[209]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][20] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_401 ),
        .Q(doutb[20]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][210] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_355 ),
        .Q(doutb[210]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][211] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_354 ),
        .Q(doutb[211]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][212] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_353 ),
        .Q(doutb[212]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][213] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_352 ),
        .Q(doutb[213]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][214] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_351 ),
        .Q(doutb[214]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][215] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_350 ),
        .Q(doutb[215]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][216] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_421 ),
        .Q(doutb[216]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][217] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_420 ),
        .Q(doutb[217]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][218] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_419 ),
        .Q(doutb[218]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][219] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_418 ),
        .Q(doutb[219]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][21] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_400 ),
        .Q(doutb[21]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][220] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_417 ),
        .Q(doutb[220]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][221] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_416 ),
        .Q(doutb[221]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][222] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_415 ),
        .Q(doutb[222]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][223] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_414 ),
        .Q(doutb[223]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][224] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_413 ),
        .Q(doutb[224]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][225] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_412 ),
        .Q(doutb[225]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][226] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_411 ),
        .Q(doutb[226]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][227] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_410 ),
        .Q(doutb[227]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][228] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_409 ),
        .Q(doutb[228]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][229] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_408 ),
        .Q(doutb[229]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][22] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_399 ),
        .Q(doutb[22]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][230] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_407 ),
        .Q(doutb[230]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][231] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_406 ),
        .Q(doutb[231]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][232] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_405 ),
        .Q(doutb[232]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][233] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_404 ),
        .Q(doutb[233]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][234] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_403 ),
        .Q(doutb[234]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][235] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_402 ),
        .Q(doutb[235]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][236] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_401 ),
        .Q(doutb[236]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][237] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_400 ),
        .Q(doutb[237]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][238] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_399 ),
        .Q(doutb[238]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][239] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_398 ),
        .Q(doutb[239]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][23] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_398 ),
        .Q(doutb[23]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][240] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_397 ),
        .Q(doutb[240]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][241] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_396 ),
        .Q(doutb[241]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][242] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_395 ),
        .Q(doutb[242]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][243] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_394 ),
        .Q(doutb[243]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][244] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_393 ),
        .Q(doutb[244]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][245] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_392 ),
        .Q(doutb[245]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][246] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_391 ),
        .Q(doutb[246]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][247] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_390 ),
        .Q(doutb[247]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][248] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_389 ),
        .Q(doutb[248]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][249] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_388 ),
        .Q(doutb[249]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][24] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_397 ),
        .Q(doutb[24]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][250] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_387 ),
        .Q(doutb[250]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][251] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_386 ),
        .Q(doutb[251]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][252] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_385 ),
        .Q(doutb[252]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][253] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_384 ),
        .Q(doutb[253]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][254] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_383 ),
        .Q(doutb[254]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][255] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_382 ),
        .Q(doutb[255]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][25] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_396 ),
        .Q(doutb[25]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][26] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_395 ),
        .Q(doutb[26]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][27] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_394 ),
        .Q(doutb[27]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][28] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_393 ),
        .Q(doutb[28]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][29] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_392 ),
        .Q(doutb[29]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][2] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_419 ),
        .Q(doutb[2]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][30] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_391 ),
        .Q(doutb[30]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][31] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_390 ),
        .Q(doutb[31]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][32] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_389 ),
        .Q(doutb[32]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][33] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_388 ),
        .Q(doutb[33]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][34] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_387 ),
        .Q(doutb[34]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][35] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_386 ),
        .Q(doutb[35]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][36] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_385 ),
        .Q(doutb[36]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][37] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_384 ),
        .Q(doutb[37]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][38] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_383 ),
        .Q(doutb[38]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][39] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_382 ),
        .Q(doutb[39]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][3] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_418 ),
        .Q(doutb[3]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][40] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_381 ),
        .Q(doutb[40]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][41] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_380 ),
        .Q(doutb[41]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][42] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_379 ),
        .Q(doutb[42]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][43] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_378 ),
        .Q(doutb[43]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][44] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_377 ),
        .Q(doutb[44]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][45] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_376 ),
        .Q(doutb[45]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][46] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_375 ),
        .Q(doutb[46]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][47] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_374 ),
        .Q(doutb[47]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][48] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_373 ),
        .Q(doutb[48]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][49] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_372 ),
        .Q(doutb[49]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][4] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_417 ),
        .Q(doutb[4]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][50] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_371 ),
        .Q(doutb[50]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][51] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_370 ),
        .Q(doutb[51]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][52] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_369 ),
        .Q(doutb[52]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][53] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_368 ),
        .Q(doutb[53]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][54] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_367 ),
        .Q(doutb[54]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][55] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_366 ),
        .Q(doutb[55]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][56] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_365 ),
        .Q(doutb[56]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][57] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_364 ),
        .Q(doutb[57]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][58] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_363 ),
        .Q(doutb[58]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][59] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_362 ),
        .Q(doutb[59]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][5] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_416 ),
        .Q(doutb[5]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][60] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_361 ),
        .Q(doutb[60]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][61] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_360 ),
        .Q(doutb[61]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][62] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_359 ),
        .Q(doutb[62]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][63] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_358 ),
        .Q(doutb[63]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][64] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_357 ),
        .Q(doutb[64]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][65] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_356 ),
        .Q(doutb[65]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][66] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_355 ),
        .Q(doutb[66]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][67] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_354 ),
        .Q(doutb[67]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][68] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_353 ),
        .Q(doutb[68]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][69] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_352 ),
        .Q(doutb[69]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][6] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_415 ),
        .Q(doutb[6]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][70] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_351 ),
        .Q(doutb[70]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][71] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_350 ),
        .Q(doutb[71]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][72] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_421 ),
        .Q(doutb[72]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][73] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_420 ),
        .Q(doutb[73]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][74] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_419 ),
        .Q(doutb[74]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][75] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_418 ),
        .Q(doutb[75]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][76] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_417 ),
        .Q(doutb[76]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][77] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_416 ),
        .Q(doutb[77]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][78] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_415 ),
        .Q(doutb[78]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][79] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_414 ),
        .Q(doutb[79]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][7] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_414 ),
        .Q(doutb[7]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][80] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_413 ),
        .Q(doutb[80]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][81] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_412 ),
        .Q(doutb[81]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][82] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_411 ),
        .Q(doutb[82]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][83] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_410 ),
        .Q(doutb[83]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][84] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_409 ),
        .Q(doutb[84]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][85] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_408 ),
        .Q(doutb[85]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][86] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_407 ),
        .Q(doutb[86]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][87] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_406 ),
        .Q(doutb[87]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][88] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_405 ),
        .Q(doutb[88]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][89] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_404 ),
        .Q(doutb[89]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][8] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_413 ),
        .Q(doutb[8]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][90] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_403 ),
        .Q(doutb[90]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][91] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_402 ),
        .Q(doutb[91]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][92] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_401 ),
        .Q(doutb[92]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][93] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_400 ),
        .Q(doutb[93]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][94] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_399 ),
        .Q(doutb[94]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][95] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_398 ),
        .Q(doutb[95]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][96] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_397 ),
        .Q(doutb[96]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][97] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_396 ),
        .Q(doutb[97]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][98] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_395 ),
        .Q(doutb[98]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][99] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_394 ),
        .Q(doutb[99]),
        .R(rstb));
  FDRE #(
    .INIT(1'b0)) 
    \gen_rd_b.gen_doutb_pipe.gen_stage.doutb_pipe_reg[0][9] 
       (.C(clka),
        .CE(regceb),
        .D(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_412 ),
        .Q(doutb[9]),
        .R(rstb));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("FIRST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h000),
    .SELF_ADDR_B(11'h000),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_0 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({wea,wea,wea,wea,wea,wea,wea,wea,wea}),
        .CAS_IN_ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DBITERR_A(1'b0),
        .CAS_IN_DBITERR_B(1'b0),
        .CAS_IN_DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_EN_A(1'b0),
        .CAS_IN_EN_B(1'b0),
        .CAS_IN_RDACCESS_A(1'b0),
        .CAS_IN_RDACCESS_B(1'b0),
        .CAS_IN_RDB_WR_A(1'b0),
        .CAS_IN_RDB_WR_B(1'b0),
        .CAS_IN_SBITERR_A(1'b0),
        .CAS_IN_SBITERR_B(1'b0),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DBITERR_B_UNCONNECTED ),
        .DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIN_B(dina[71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(enb),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b0),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_0_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h001),
    .SELF_ADDR_B(11'h001),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_1 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrA_1 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_AddrB_1 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BWEA_1 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_BEWB_1 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinA_1 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DinB_1 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutA_1 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_Cas_DoutB_1 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_0_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_1_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTA.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTB.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "215" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M2"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h002),
    .SELF_ADDR_B(11'h002),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_10 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrA_2 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrB_2 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BWEA_2 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BEWB_2 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinA_2 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinB_2 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutA_2 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutB_2 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrA_3 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrB_3 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BWEA_3 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BEWB_3 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinA_3 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinB_3 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutA_3 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutB_3 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_10_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTA.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTB.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "215" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("LAST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M2"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h003),
    .SELF_ADDR_B(11'h003),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_11 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrA_3 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_AddrB_3 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BWEA_3 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_BEWB_3 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinA_3 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DinB_3 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutA_3 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_11_Cas_DoutB_3 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_n_9 ),
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A({\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_350 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_351 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_352 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_353 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_354 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_355 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_356 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_357 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_358 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_359 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_360 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_361 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_362 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_363 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_364 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_365 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_366 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_367 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_368 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_369 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_370 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_371 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_372 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_373 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_374 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_375 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_376 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_377 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_378 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_379 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_380 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_381 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_382 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_383 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_384 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_385 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_386 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_387 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_388 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_389 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_390 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_391 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_392 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_393 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_394 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_395 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_396 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_397 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_398 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_399 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_400 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_401 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_402 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_403 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_404 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_405 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_406 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_407 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_408 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_409 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_410 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_411 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_412 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_413 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_414 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_415 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_416 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_417 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_418 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_419 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_420 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_11_n_421 }),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_11_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_LSB  = "216" *) 
  (* \MEM.PORTA.DATA_MSB  = "255" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_LSB  = "216" *) 
  (* \MEM.PORTB.DATA_MSB  = "255" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "255" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("FIRST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M3"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h000),
    .SELF_ADDR_B(11'h000),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_12 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({wea,wea,wea,wea,wea,wea,wea,wea,wea}),
        .CAS_IN_ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DBITERR_A(1'b0),
        .CAS_IN_DBITERR_B(1'b0),
        .CAS_IN_DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_EN_A(1'b0),
        .CAS_IN_EN_B(1'b0),
        .CAS_IN_RDACCESS_A(1'b0),
        .CAS_IN_RDACCESS_B(1'b0),
        .CAS_IN_RDB_WR_A(1'b0),
        .CAS_IN_RDB_WR_B(1'b0),
        .CAS_IN_SBITERR_A(1'b0),
        .CAS_IN_SBITERR_B(1'b0),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrA_1 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrB_1 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BWEA_1 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BEWB_1 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinA_1 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinB_1 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutA_1 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutB_1 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DBITERR_B_UNCONNECTED ),
        .DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,dina[255:216]}),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(enb),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b0),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_12_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_LSB  = "216" *) 
  (* \MEM.PORTA.DATA_MSB  = "255" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_LSB  = "216" *) 
  (* \MEM.PORTB.DATA_MSB  = "255" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "255" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M3"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h001),
    .SELF_ADDR_B(11'h001),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_13 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrA_1 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_AddrB_1 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BWEA_1 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_BEWB_1 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinA_1 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DinB_1 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutA_1 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_Cas_DoutB_1 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_12_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrA_2 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrB_2 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BWEA_2 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BEWB_2 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinA_2 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinB_2 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutA_2 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutB_2 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_13_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTA.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTA.DATA_LSB  = "216" *) 
  (* \MEM.PORTA.DATA_MSB  = "255" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTB.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTB.DATA_LSB  = "216" *) 
  (* \MEM.PORTB.DATA_MSB  = "255" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "255" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M3"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h002),
    .SELF_ADDR_B(11'h002),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_14 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrA_2 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_AddrB_2 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BWEA_2 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_BEWB_2 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinA_2 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DinB_2 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutA_2 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_Cas_DoutB_2 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_13_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrA_3 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrB_3 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BWEA_3 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BEWB_3 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinA_3 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinB_3 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutA_3 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutB_3 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_14_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTA.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTA.DATA_LSB  = "216" *) 
  (* \MEM.PORTA.DATA_MSB  = "255" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTB.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTB.DATA_LSB  = "216" *) 
  (* \MEM.PORTB.DATA_MSB  = "255" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "216" *) 
  (* ram_slice_end = "255" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("LAST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M3"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h003),
    .SELF_ADDR_B(11'h003),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_15 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrA_3 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_AddrB_3 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BWEA_3 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_BEWB_3 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinA_3 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DinB_3 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutA_3 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_15_Cas_DoutB_3 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_14_n_9 ),
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A({\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_A_UNCONNECTED [71:40],\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_382 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_383 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_384 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_385 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_386 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_387 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_388 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_389 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_390 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_391 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_392 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_393 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_394 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_395 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_396 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_397 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_398 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_399 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_400 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_401 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_402 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_403 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_404 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_405 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_406 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_407 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_408 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_409 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_410 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_411 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_412 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_413 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_414 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_415 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_416 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_417 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_418 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_419 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_420 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_15_n_421 }),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_15_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTA.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTB.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h002),
    .SELF_ADDR_B(11'h002),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_2 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrA_2 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_AddrB_2 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BWEA_2 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_BEWB_2 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinA_2 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DinB_2 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutA_2 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_Cas_DoutB_2 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_1_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_2_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTA.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTA.DATA_LSB  = "0" *) 
  (* \MEM.PORTA.DATA_MSB  = "71" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTB.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTB.DATA_LSB  = "0" *) 
  (* \MEM.PORTB.DATA_MSB  = "71" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "71" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("LAST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M0"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h003),
    .SELF_ADDR_B(11'h003),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_3 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrA_3 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_AddrB_3 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BWEA_3 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_BEWB_3 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinA_3 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DinB_3 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutA_3 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_3_Cas_DoutB_3 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_2_n_9 ),
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A({\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_350 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_351 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_352 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_353 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_354 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_355 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_356 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_357 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_358 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_359 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_360 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_361 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_362 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_363 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_364 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_365 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_366 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_367 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_368 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_369 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_370 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_371 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_372 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_373 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_374 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_375 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_376 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_377 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_378 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_379 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_380 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_381 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_382 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_383 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_384 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_385 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_386 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_387 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_388 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_389 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_390 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_391 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_392 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_393 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_394 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_395 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_396 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_397 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_398 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_399 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_400 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_401 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_402 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_403 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_404 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_405 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_406 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_407 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_408 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_409 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_410 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_411 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_412 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_413 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_414 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_415 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_416 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_417 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_418 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_419 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_420 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_3_n_421 }),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_3_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("FIRST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M1"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h000),
    .SELF_ADDR_B(11'h000),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_4 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({wea,wea,wea,wea,wea,wea,wea,wea,wea}),
        .CAS_IN_ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DBITERR_A(1'b0),
        .CAS_IN_DBITERR_B(1'b0),
        .CAS_IN_DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_EN_A(1'b0),
        .CAS_IN_EN_B(1'b0),
        .CAS_IN_RDACCESS_A(1'b0),
        .CAS_IN_RDACCESS_B(1'b0),
        .CAS_IN_RDB_WR_A(1'b0),
        .CAS_IN_RDB_WR_B(1'b0),
        .CAS_IN_SBITERR_A(1'b0),
        .CAS_IN_SBITERR_B(1'b0),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrA_1 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrB_1 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BWEA_1 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BEWB_1 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinA_1 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinB_1 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutA_1 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutB_1 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DBITERR_B_UNCONNECTED ),
        .DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIN_B(dina[143:72]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(enb),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b0),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_4_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M1"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h001),
    .SELF_ADDR_B(11'h001),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_5 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrA_1 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_AddrB_1 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BWEA_1 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_BEWB_1 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinA_1 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DinB_1 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutA_1 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_Cas_DoutB_1 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_4_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrA_2 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrB_2 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BWEA_2 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BEWB_2 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinA_2 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinB_2 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutA_2 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutB_2 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_5_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTA.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "8192" *) 
  (* \MEM.PORTB.ADDRESS_END  = "12287" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "8192" *) 
  (* ram_addr_end = "12287" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M1"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h002),
    .SELF_ADDR_B(11'h002),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_6 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrA_2 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_AddrB_2 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BWEA_2 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_BEWB_2 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinA_2 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DinB_2 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutA_2 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_Cas_DoutB_2 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_5_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrA_3 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrB_3 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BWEA_3 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BEWB_3 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinA_3 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinB_3 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutA_3 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutB_3 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_6_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTA.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTA.DATA_LSB  = "72" *) 
  (* \MEM.PORTA.DATA_MSB  = "143" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "12288" *) 
  (* \MEM.PORTB.ADDRESS_END  = "16383" *) 
  (* \MEM.PORTB.DATA_LSB  = "72" *) 
  (* \MEM.PORTB.DATA_MSB  = "143" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "12288" *) 
  (* ram_addr_end = "16383" *) 
  (* ram_slice_begin = "72" *) 
  (* ram_slice_end = "143" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("LAST"),
    .CASCADE_ORDER_B("LAST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M1"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h003),
    .SELF_ADDR_B(11'h003),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_7 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrA_3 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_AddrB_3 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BWEA_3 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_BEWB_3 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinA_3 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DinB_3 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutA_3 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_7_Cas_DoutB_3 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_6_n_9 ),
        .CAS_OUT_ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_A_UNCONNECTED [22:0]),
        .CAS_OUT_ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_ADDR_B_UNCONNECTED [22:0]),
        .CAS_OUT_BWE_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_A_UNCONNECTED [8:0]),
        .CAS_OUT_BWE_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_BWE_B_UNCONNECTED [8:0]),
        .CAS_OUT_DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_A_UNCONNECTED ),
        .CAS_OUT_DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DBITERR_B_UNCONNECTED ),
        .CAS_OUT_DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_A_UNCONNECTED [71:0]),
        .CAS_OUT_DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DIN_B_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_A_UNCONNECTED [71:0]),
        .CAS_OUT_DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_DOUT_B_UNCONNECTED [71:0]),
        .CAS_OUT_EN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_A_UNCONNECTED ),
        .CAS_OUT_EN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_EN_B_UNCONNECTED ),
        .CAS_OUT_RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_A_UNCONNECTED ),
        .CAS_OUT_RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDACCESS_B_UNCONNECTED ),
        .CAS_OUT_RDB_WR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_A_UNCONNECTED ),
        .CAS_OUT_RDB_WR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_RDB_WR_B_UNCONNECTED ),
        .CAS_OUT_SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_A_UNCONNECTED ),
        .CAS_OUT_SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_CAS_OUT_SBITERR_B_UNCONNECTED ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A({\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_350 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_351 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_352 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_353 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_354 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_355 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_356 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_357 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_358 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_359 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_360 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_361 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_362 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_363 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_364 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_365 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_366 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_367 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_368 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_369 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_370 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_371 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_372 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_373 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_374 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_375 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_376 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_377 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_378 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_379 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_380 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_381 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_382 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_383 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_384 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_385 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_386 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_387 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_388 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_389 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_390 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_391 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_392 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_393 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_394 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_395 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_396 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_397 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_398 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_399 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_400 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_401 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_402 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_403 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_404 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_405 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_406 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_407 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_408 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_409 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_410 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_411 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_412 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_413 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_414 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_415 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_416 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_417 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_418 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_419 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_420 ,\gen_wr_a.gen_word_narrow.mem_reg_uram_7_n_421 }),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_7_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTA.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "0" *) 
  (* \MEM.PORTB.ADDRESS_END  = "4095" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "4095" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "215" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("FIRST"),
    .CASCADE_ORDER_B("FIRST"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M2"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h000),
    .SELF_ADDR_B(11'h000),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_8 
       (.ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addrb}),
        .ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,addra}),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({wea,wea,wea,wea,wea,wea,wea,wea,wea}),
        .CAS_IN_ADDR_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_ADDR_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_BWE_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DBITERR_A(1'b0),
        .CAS_IN_DBITERR_B(1'b0),
        .CAS_IN_DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DIN_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_DOUT_B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .CAS_IN_EN_A(1'b0),
        .CAS_IN_EN_B(1'b0),
        .CAS_IN_RDACCESS_A(1'b0),
        .CAS_IN_RDACCESS_B(1'b0),
        .CAS_IN_RDB_WR_A(1'b0),
        .CAS_IN_RDB_WR_B(1'b0),
        .CAS_IN_SBITERR_A(1'b0),
        .CAS_IN_SBITERR_B(1'b0),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrA_1 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrB_1 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BWEA_1 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BEWB_1 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinA_1 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinB_1 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutA_1 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutB_1 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DBITERR_B_UNCONNECTED ),
        .DIN_A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIN_B(dina[215:144]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(enb),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b0),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_8_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
  (* \MEM.PORTA.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTA.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTA.DATA_LSB  = "144" *) 
  (* \MEM.PORTA.DATA_MSB  = "215" *) 
  (* \MEM.PORTB.ADDRESS_BEGIN  = "4096" *) 
  (* \MEM.PORTB.ADDRESS_END  = "8191" *) 
  (* \MEM.PORTB.DATA_LSB  = "144" *) 
  (* \MEM.PORTB.DATA_MSB  = "215" *) 
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "4194304" *) 
  (* RTL_RAM_NAME = "xpm_memory_base/gen_wr_a.gen_word_narrow.mem_reg" *) 
  (* RTL_RAM_STYLE = "ultra" *) 
  (* RTL_RAM_TYPE = "RAM_SDP" *) 
  (* ram_addr_begin = "4096" *) 
  (* ram_addr_end = "8191" *) 
  (* ram_slice_begin = "144" *) 
  (* ram_slice_end = "215" *) 
  URAM288 #(
    .AVG_CONS_INACTIVE_CYCLES(10),
    .BWE_MODE_A("PARITY_INDEPENDENT"),
    .BWE_MODE_B("PARITY_INDEPENDENT"),
    .CASCADE_ORDER_A("MIDDLE"),
    .CASCADE_ORDER_B("MIDDLE"),
    .EN_ECC_RD_A("FALSE"),
    .EN_ECC_RD_B("FALSE"),
    .EN_ECC_WR_A("FALSE"),
    .EN_ECC_WR_B("FALSE"),
    .IREG_PRE_A("FALSE"),
    .IREG_PRE_B("FALSE"),
    .IS_CLK_INVERTED(1'b0),
    .IS_EN_A_INVERTED(1'b0),
    .IS_EN_B_INVERTED(1'b0),
    .IS_RDB_WR_A_INVERTED(1'b0),
    .IS_RDB_WR_B_INVERTED(1'b0),
    .IS_RST_A_INVERTED(1'b0),
    .IS_RST_B_INVERTED(1'b0),
    .MATRIX_ID("gen_wr_a.gen_word_narrow.mem_reg_B4_M2"),
    .NUM_UNIQUE_SELF_ADDR_A(4),
    .NUM_UNIQUE_SELF_ADDR_B(4),
    .NUM_URAM_IN_MATRIX(4),
    .OREG_A("FALSE"),
    .OREG_B("FALSE"),
    .OREG_ECC_A("FALSE"),
    .OREG_ECC_B("FALSE"),
    .REG_CAS_A("FALSE"),
    .REG_CAS_B("FALSE"),
    .RST_MODE_A("SYNC"),
    .RST_MODE_B("SYNC"),
    .SELF_ADDR_A(11'h001),
    .SELF_ADDR_B(11'h001),
    .SELF_MASK_A(11'h7FC),
    .SELF_MASK_B(11'h7FC),
    .USE_EXT_CE_A("FALSE"),
    .USE_EXT_CE_B("FALSE")) 
    \gen_wr_a.gen_word_narrow.mem_reg_uram_9 
       (.ADDR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_A_UNCONNECTED [22:0]),
        .ADDR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_ADDR_B_UNCONNECTED [22:0]),
        .BWE_A({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .BWE_B({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CAS_IN_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrA_1 ),
        .CAS_IN_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_AddrB_1 ),
        .CAS_IN_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BWEA_1 ),
        .CAS_IN_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_BEWB_1 ),
        .CAS_IN_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_0 ),
        .CAS_IN_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_1 ),
        .CAS_IN_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinA_1 ),
        .CAS_IN_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DinB_1 ),
        .CAS_IN_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutA_1 ),
        .CAS_IN_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_Cas_DoutB_1 ),
        .CAS_IN_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_2 ),
        .CAS_IN_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_3 ),
        .CAS_IN_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_4 ),
        .CAS_IN_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_5 ),
        .CAS_IN_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_6 ),
        .CAS_IN_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_7 ),
        .CAS_IN_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_8 ),
        .CAS_IN_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_8_n_9 ),
        .CAS_OUT_ADDR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrA_2 ),
        .CAS_OUT_ADDR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_AddrB_2 ),
        .CAS_OUT_BWE_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BWEA_2 ),
        .CAS_OUT_BWE_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_BEWB_2 ),
        .CAS_OUT_DBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_0 ),
        .CAS_OUT_DBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_1 ),
        .CAS_OUT_DIN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinA_2 ),
        .CAS_OUT_DIN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DinB_2 ),
        .CAS_OUT_DOUT_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutA_2 ),
        .CAS_OUT_DOUT_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_10_Cas_DoutB_2 ),
        .CAS_OUT_EN_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_2 ),
        .CAS_OUT_EN_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_3 ),
        .CAS_OUT_RDACCESS_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_4 ),
        .CAS_OUT_RDACCESS_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_5 ),
        .CAS_OUT_RDB_WR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_6 ),
        .CAS_OUT_RDB_WR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_7 ),
        .CAS_OUT_SBITERR_A(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_8 ),
        .CAS_OUT_SBITERR_B(\gen_wr_a.gen_word_narrow.mem_reg_uram_9_n_9 ),
        .CLK(clka),
        .DBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_A_UNCONNECTED ),
        .DBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DBITERR_B_UNCONNECTED ),
        .DIN_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_A_UNCONNECTED [71:0]),
        .DIN_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DIN_B_UNCONNECTED [71:0]),
        .DOUT_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_A_UNCONNECTED [71:0]),
        .DOUT_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_DOUT_B_UNCONNECTED [71:0]),
        .EN_A(1'b1),
        .EN_B(1'b1),
        .INJECT_DBITERR_A(1'b0),
        .INJECT_DBITERR_B(1'b0),
        .INJECT_SBITERR_A(1'b0),
        .INJECT_SBITERR_B(1'b0),
        .OREG_CE_A(1'b1),
        .OREG_CE_B(1'b1),
        .OREG_ECC_CE_A(1'b1),
        .OREG_ECC_CE_B(1'b1),
        .RDACCESS_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_A_UNCONNECTED ),
        .RDACCESS_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_RDACCESS_B_UNCONNECTED ),
        .RDB_WR_A(1'b1),
        .RDB_WR_B(1'b1),
        .RST_A(1'b0),
        .RST_B(1'b0),
        .SBITERR_A(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_A_UNCONNECTED ),
        .SBITERR_B(\NLW_gen_wr_a.gen_word_narrow.mem_reg_uram_9_SBITERR_B_UNCONNECTED ),
        .SLEEP(1'b0));
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
