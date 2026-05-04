// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Tue May  5 00:50:26 2026
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
   (clk,
    resetn,
    irq,
    mig_rd_ptr,
    mig_wr_ptr,
    linux_wr_ptr,
    linux_rd_ptr,
    M_AXI_TDATA_in_cmd,
    M_AXI_TVALID_in_cmd,
    M_AXI_TREADY_in_cmd,
    M_AXI_STS_in_tdata,
    M_AXI_STS_in_tvalid,
    M_AXI_STS_in_tready,
    M_AXI_TDATA_out_cmd,
    M_AXI_TVALID_out_cmd,
    M_AXI_TREADY_out_cmd,
    M_AXI_STS_out_tdata,
    M_AXI_STS_out_tvalid,
    M_AXI_STS_out_tready,
    M_AXI_TDATA_in,
    M_AXI_TVALID_in,
    M_AXI_TREADY_in,
    M_AXI_TDATA_out,
    M_AXI_TVALID_out,
    M_AXI_TLAST_out,
    M_AXI_TREADY_out);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF M_AXI_STS_in:M_AXI_STS_out:M_AXI_in:M_AXI_in_cmd:M_AXI_out:M_AXI_out_cmd, ASSOCIATED_RESET resetn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 irq INTERRUPT" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) output irq;
  output [26:0]mig_rd_ptr;
  input [26:0]mig_wr_ptr;
  output [31:0]linux_wr_ptr;
  input [31:0]linux_rd_ptr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_in_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [71:0]M_AXI_TDATA_in_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TVALID" *) output M_AXI_TVALID_in_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in_cmd TREADY" *) input M_AXI_TREADY_in_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_STS_in, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]M_AXI_STS_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TVALID" *) input M_AXI_STS_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_in TREADY" *) output M_AXI_STS_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_out_cmd, TDATA_NUM_BYTES 9, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [71:0]M_AXI_TDATA_out_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TVALID" *) output M_AXI_TVALID_out_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out_cmd TREADY" *) input M_AXI_TREADY_out_cmd;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_STS_out, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [7:0]M_AXI_STS_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TVALID" *) input M_AXI_STS_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_STS_out TREADY" *) output M_AXI_STS_out_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_in, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]M_AXI_TDATA_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TVALID" *) input M_AXI_TVALID_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_in TREADY" *) output M_AXI_TREADY_in;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI_out, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN ps_ddr4_0_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]M_AXI_TDATA_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TVALID" *) output M_AXI_TVALID_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TLAST" *) output M_AXI_TLAST_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXI_out TREADY" *) input M_AXI_TREADY_out;

  wire \<const0> ;
  wire \<const1> ;
  wire [7:0]M_AXI_STS_in_tdata;
  wire M_AXI_STS_in_tready;
  wire M_AXI_STS_in_tvalid;
  wire M_AXI_STS_out_tready;
  wire [255:0]M_AXI_TDATA_in;
  wire [67:5]\^M_AXI_TDATA_in_cmd ;
  wire [255:0]M_AXI_TDATA_out;
  wire M_AXI_TREADY_in;
  wire M_AXI_TREADY_in_cmd;
  wire M_AXI_TVALID_in;
  wire M_AXI_TVALID_in_cmd;
  wire clk;
  wire [26:0]mig_rd_ptr;
  wire [26:0]mig_wr_ptr;
  wire resetn;
  wire NLW_inst_M_AXI_TLAST_out_UNCONNECTED;
  wire NLW_inst_M_AXI_TVALID_out_UNCONNECTED;
  wire NLW_inst_M_AXI_TVALID_out_cmd_UNCONNECTED;
  wire NLW_inst_irq_UNCONNECTED;
  wire [71:0]NLW_inst_M_AXI_TDATA_in_cmd_UNCONNECTED;
  wire [71:0]NLW_inst_M_AXI_TDATA_out_cmd_UNCONNECTED;
  wire [31:0]NLW_inst_linux_wr_ptr_UNCONNECTED;

  assign M_AXI_TDATA_in_cmd[71] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[70] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[69] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[68] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[67:37] = \^M_AXI_TDATA_in_cmd [67:37];
  assign M_AXI_TDATA_in_cmd[36] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[35] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[34] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[33] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[32] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[31] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[30] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[29] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[28] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[27] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[26] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[25] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[24] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[23] = \<const1> ;
  assign M_AXI_TDATA_in_cmd[22] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[21] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[20] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[19] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[18] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[17] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[16] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[15] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[14] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[13] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[12:5] = \^M_AXI_TDATA_in_cmd [12:5];
  assign M_AXI_TDATA_in_cmd[4] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[3] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[2] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[1] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[0] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[71] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[70] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[69] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[68] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[67] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[66] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[65] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[64] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[63] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[62] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[61] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[60] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[59] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[58] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[57] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[56] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[55] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[54] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[53] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[52] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[51] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[50] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[49] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[48] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[47] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[46] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[45] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[44] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[43] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[42] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[41] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[40] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[39] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[38] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[37] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[36] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[35] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[34] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[33] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[32] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[31] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[30] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[29] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[28] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[27] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[26] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[25] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[24] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[23] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[22] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[21] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[20] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[19] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[18] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[17] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[16] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[15] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[14] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[13] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[12] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[11] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[10] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[9] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[8] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[7] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[6] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[5] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[4] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[3] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[2] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[1] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[0] = \<const0> ;
  assign M_AXI_TLAST_out = \<const0> ;
  assign M_AXI_TVALID_out = \<const0> ;
  assign M_AXI_TVALID_out_cmd = \<const0> ;
  assign irq = \<const0> ;
  assign linux_wr_ptr[31] = \<const0> ;
  assign linux_wr_ptr[30] = \<const0> ;
  assign linux_wr_ptr[29] = \<const0> ;
  assign linux_wr_ptr[28] = \<const0> ;
  assign linux_wr_ptr[27] = \<const0> ;
  assign linux_wr_ptr[26] = \<const0> ;
  assign linux_wr_ptr[25] = \<const0> ;
  assign linux_wr_ptr[24] = \<const0> ;
  assign linux_wr_ptr[23] = \<const0> ;
  assign linux_wr_ptr[22] = \<const0> ;
  assign linux_wr_ptr[21] = \<const0> ;
  assign linux_wr_ptr[20] = \<const0> ;
  assign linux_wr_ptr[19] = \<const0> ;
  assign linux_wr_ptr[18] = \<const0> ;
  assign linux_wr_ptr[17] = \<const0> ;
  assign linux_wr_ptr[16] = \<const0> ;
  assign linux_wr_ptr[15] = \<const0> ;
  assign linux_wr_ptr[14] = \<const0> ;
  assign linux_wr_ptr[13] = \<const0> ;
  assign linux_wr_ptr[12] = \<const0> ;
  assign linux_wr_ptr[11] = \<const0> ;
  assign linux_wr_ptr[10] = \<const0> ;
  assign linux_wr_ptr[9] = \<const0> ;
  assign linux_wr_ptr[8] = \<const0> ;
  assign linux_wr_ptr[7] = \<const0> ;
  assign linux_wr_ptr[6] = \<const0> ;
  assign linux_wr_ptr[5] = \<const0> ;
  assign linux_wr_ptr[4] = \<const0> ;
  assign linux_wr_ptr[3] = \<const0> ;
  assign linux_wr_ptr[2] = \<const0> ;
  assign linux_wr_ptr[1] = \<const0> ;
  assign linux_wr_ptr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* MIG_ST_IDLE = "3'b000" *) 
  (* MIG_ST_WAIT_DATA = "3'b011" *) 
  (* MIG_ST_WAIT_HDR = "3'b001" *) 
  (* MIG_ST_WAIT_NEXT = "3'b100" *) 
  (* MIG_ST_WAIT_SPACE = "3'b010" *) 
  ps_axi_dma_1_0_axi_dma inst
       (.M_AXI_STS_in_tdata({M_AXI_STS_in_tdata[7],1'b0,1'b0,1'b0,M_AXI_STS_in_tdata[3:0]}),
        .M_AXI_STS_in_tready(M_AXI_STS_in_tready),
        .M_AXI_STS_in_tvalid(M_AXI_STS_in_tvalid),
        .M_AXI_STS_out_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_STS_out_tready(M_AXI_STS_out_tready),
        .M_AXI_STS_out_tvalid(1'b0),
        .M_AXI_TDATA_in(M_AXI_TDATA_in),
        .M_AXI_TDATA_in_cmd({NLW_inst_M_AXI_TDATA_in_cmd_UNCONNECTED[71:68],\^M_AXI_TDATA_in_cmd ,NLW_inst_M_AXI_TDATA_in_cmd_UNCONNECTED[4:0]}),
        .M_AXI_TDATA_out(M_AXI_TDATA_out),
        .M_AXI_TDATA_out_cmd(NLW_inst_M_AXI_TDATA_out_cmd_UNCONNECTED[71:0]),
        .M_AXI_TLAST_out(NLW_inst_M_AXI_TLAST_out_UNCONNECTED),
        .M_AXI_TREADY_in(M_AXI_TREADY_in),
        .M_AXI_TREADY_in_cmd(M_AXI_TREADY_in_cmd),
        .M_AXI_TREADY_out(1'b0),
        .M_AXI_TREADY_out_cmd(1'b0),
        .M_AXI_TVALID_in(M_AXI_TVALID_in),
        .M_AXI_TVALID_in_cmd(M_AXI_TVALID_in_cmd),
        .M_AXI_TVALID_out(NLW_inst_M_AXI_TVALID_out_UNCONNECTED),
        .M_AXI_TVALID_out_cmd(NLW_inst_M_AXI_TVALID_out_cmd_UNCONNECTED),
        .clk(clk),
        .irq(NLW_inst_irq_UNCONNECTED),
        .linux_rd_ptr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .linux_wr_ptr(NLW_inst_linux_wr_ptr_UNCONNECTED[31:0]),
        .mig_rd_ptr(mig_rd_ptr),
        .mig_wr_ptr(mig_wr_ptr),
        .resetn(resetn));
endmodule

(* MIG_ST_IDLE = "3'b000" *) (* MIG_ST_WAIT_DATA = "3'b011" *) (* MIG_ST_WAIT_HDR = "3'b001" *) 
(* MIG_ST_WAIT_NEXT = "3'b100" *) (* MIG_ST_WAIT_SPACE = "3'b010" *) (* ORIG_REF_NAME = "axi_dma" *) 
module ps_axi_dma_1_0_axi_dma
   (clk,
    resetn,
    irq,
    mig_rd_ptr,
    mig_wr_ptr,
    linux_wr_ptr,
    linux_rd_ptr,
    M_AXI_TDATA_in_cmd,
    M_AXI_TVALID_in_cmd,
    M_AXI_TREADY_in_cmd,
    M_AXI_STS_in_tdata,
    M_AXI_STS_in_tvalid,
    M_AXI_STS_in_tready,
    M_AXI_TDATA_out_cmd,
    M_AXI_TVALID_out_cmd,
    M_AXI_TREADY_out_cmd,
    M_AXI_STS_out_tdata,
    M_AXI_STS_out_tvalid,
    M_AXI_STS_out_tready,
    M_AXI_TDATA_in,
    M_AXI_TVALID_in,
    M_AXI_TREADY_in,
    M_AXI_TDATA_out,
    M_AXI_TVALID_out,
    M_AXI_TLAST_out,
    M_AXI_TREADY_out);
  input clk;
  input resetn;
  output irq;
  output [26:0]mig_rd_ptr;
  input [26:0]mig_wr_ptr;
  output [31:0]linux_wr_ptr;
  input [31:0]linux_rd_ptr;
  output [71:0]M_AXI_TDATA_in_cmd;
  output M_AXI_TVALID_in_cmd;
  input M_AXI_TREADY_in_cmd;
  input [7:0]M_AXI_STS_in_tdata;
  input M_AXI_STS_in_tvalid;
  output M_AXI_STS_in_tready;
  output [71:0]M_AXI_TDATA_out_cmd;
  output M_AXI_TVALID_out_cmd;
  input M_AXI_TREADY_out_cmd;
  input [7:0]M_AXI_STS_out_tdata;
  input M_AXI_STS_out_tvalid;
  output M_AXI_STS_out_tready;
  input [255:0]M_AXI_TDATA_in;
  input M_AXI_TVALID_in;
  output M_AXI_TREADY_in;
  output [255:0]M_AXI_TDATA_out;
  output M_AXI_TVALID_out;
  output M_AXI_TLAST_out;
  input M_AXI_TREADY_out;

  wire \<const0> ;
  wire [7:0]M_AXI_STS_in_tdata;
  wire M_AXI_STS_in_tvalid;
  wire M_AXI_STS_out_tready;
  wire [255:0]M_AXI_TDATA_in;
  wire [67:5]\^M_AXI_TDATA_in_cmd ;
  wire [255:0]M_AXI_TDATA_out;
  wire M_AXI_TREADY_in;
  wire M_AXI_TREADY_in_cmd;
  wire M_AXI_TVALID_in;
  wire M_AXI_TVALID_in_cmd;
  wire \axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ;
  wire \axi_dma.M_AXI_TREADY_in_i_1_n_0 ;
  wire \axi_dma.M_AXI_TVALID_in_cmd_i_1_n_0 ;
  wire \axi_dma.fifo_count[0]_i_1_n_0 ;
  wire \axi_dma.fifo_count[13]_i_2_n_0 ;
  wire \axi_dma.fifo_count[13]_i_3_n_0 ;
  wire \axi_dma.fifo_count[13]_i_4_n_0 ;
  wire \axi_dma.fifo_count[13]_i_5_n_0 ;
  wire \axi_dma.fifo_count[13]_i_6_n_0 ;
  wire \axi_dma.fifo_count[8]_i_2_n_0 ;
  wire \axi_dma.fifo_count[8]_i_3_n_0 ;
  wire \axi_dma.fifo_count[8]_i_4_n_0 ;
  wire \axi_dma.fifo_count[8]_i_5_n_0 ;
  wire \axi_dma.fifo_count[8]_i_6_n_0 ;
  wire \axi_dma.fifo_count[8]_i_7_n_0 ;
  wire \axi_dma.fifo_count[8]_i_8_n_0 ;
  wire \axi_dma.fifo_count[8]_i_9_n_0 ;
  wire \axi_dma.fifo_count_reg[13]_i_1_n_4 ;
  wire \axi_dma.fifo_count_reg[13]_i_1_n_5 ;
  wire \axi_dma.fifo_count_reg[13]_i_1_n_6 ;
  wire \axi_dma.fifo_count_reg[13]_i_1_n_7 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_0 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_1 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_2 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_3 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_4 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_5 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_6 ;
  wire \axi_dma.fifo_count_reg[8]_i_1_n_7 ;
  wire \axi_dma.fifo_has_space_i_10_n_0 ;
  wire \axi_dma.fifo_has_space_i_11_n_0 ;
  wire \axi_dma.fifo_has_space_i_12_n_0 ;
  wire \axi_dma.fifo_has_space_i_1_n_0 ;
  wire \axi_dma.fifo_has_space_i_4_n_0 ;
  wire \axi_dma.fifo_has_space_i_5_n_0 ;
  wire \axi_dma.fifo_has_space_i_6_n_0 ;
  wire \axi_dma.fifo_has_space_i_7_n_0 ;
  wire \axi_dma.fifo_has_space_i_8_n_0 ;
  wire \axi_dma.fifo_has_space_i_9_n_0 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_0 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_1 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_2 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_3 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_4 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_5 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_6 ;
  wire \axi_dma.fifo_has_space_reg_i_3_n_7 ;
  wire \axi_dma.fifo_space[10]_i_1_n_0 ;
  wire \axi_dma.fifo_space[11]_i_1_n_0 ;
  wire \axi_dma.fifo_space[12]_i_1_n_0 ;
  wire \axi_dma.fifo_space[13]_i_1_n_0 ;
  wire \axi_dma.fifo_space[1]_i_1_n_0 ;
  wire \axi_dma.fifo_space[2]_i_1_n_0 ;
  wire \axi_dma.fifo_space[3]_i_1_n_0 ;
  wire \axi_dma.fifo_space[4]_i_1_n_0 ;
  wire \axi_dma.fifo_space[5]_i_1_n_0 ;
  wire \axi_dma.fifo_space[6]_i_1_n_0 ;
  wire \axi_dma.fifo_space[7]_i_1_n_0 ;
  wire \axi_dma.fifo_space[8]_i_1_n_0 ;
  wire \axi_dma.fifo_space[9]_i_1_n_0 ;
  wire \axi_dma.mig_adr[0]_i_1_n_0 ;
  wire \axi_dma.mig_adr[10]_i_1_n_0 ;
  wire \axi_dma.mig_adr[11]_i_1_n_0 ;
  wire \axi_dma.mig_adr[12]_i_1_n_0 ;
  wire \axi_dma.mig_adr[13]_i_1_n_0 ;
  wire \axi_dma.mig_adr[14]_i_1_n_0 ;
  wire \axi_dma.mig_adr[15]_i_1_n_0 ;
  wire \axi_dma.mig_adr[16]_i_1_n_0 ;
  wire \axi_dma.mig_adr[17]_i_1_n_0 ;
  wire \axi_dma.mig_adr[18]_i_1_n_0 ;
  wire \axi_dma.mig_adr[19]_i_1_n_0 ;
  wire \axi_dma.mig_adr[1]_i_1_n_0 ;
  wire \axi_dma.mig_adr[20]_i_1_n_0 ;
  wire \axi_dma.mig_adr[21]_i_1_n_0 ;
  wire \axi_dma.mig_adr[22]_i_1_n_0 ;
  wire \axi_dma.mig_adr[23]_i_1_n_0 ;
  wire \axi_dma.mig_adr[24]_i_1_n_0 ;
  wire \axi_dma.mig_adr[25]_i_1_n_0 ;
  wire \axi_dma.mig_adr[26]_i_1_n_0 ;
  wire \axi_dma.mig_adr[26]_i_2_n_0 ;
  wire \axi_dma.mig_adr[2]_i_1_n_0 ;
  wire \axi_dma.mig_adr[3]_i_1_n_0 ;
  wire \axi_dma.mig_adr[4]_i_1_n_0 ;
  wire \axi_dma.mig_adr[5]_i_1_n_0 ;
  wire \axi_dma.mig_adr[6]_i_1_n_0 ;
  wire \axi_dma.mig_adr[7]_i_10_n_0 ;
  wire \axi_dma.mig_adr[7]_i_11_n_0 ;
  wire \axi_dma.mig_adr[7]_i_12_n_0 ;
  wire \axi_dma.mig_adr[7]_i_1_n_0 ;
  wire \axi_dma.mig_adr[7]_i_4_n_0 ;
  wire \axi_dma.mig_adr[7]_i_5_n_0 ;
  wire \axi_dma.mig_adr[7]_i_6_n_0 ;
  wire \axi_dma.mig_adr[7]_i_7_n_0 ;
  wire \axi_dma.mig_adr[7]_i_8_n_0 ;
  wire \axi_dma.mig_adr[7]_i_9_n_0 ;
  wire \axi_dma.mig_adr[8]_i_1_n_0 ;
  wire \axi_dma.mig_adr[9]_i_1_n_0 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_0 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_1 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_2 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_3 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_4 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_5 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_6 ;
  wire \axi_dma.mig_adr_reg[15]_i_2_n_7 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_0 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_1 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_2 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_3 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_4 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_5 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_6 ;
  wire \axi_dma.mig_adr_reg[15]_i_3_n_7 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_0 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_1 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_2 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_3 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_4 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_5 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_6 ;
  wire \axi_dma.mig_adr_reg[23]_i_2_n_7 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_0 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_1 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_2 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_3 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_4 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_5 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_6 ;
  wire \axi_dma.mig_adr_reg[23]_i_3_n_7 ;
  wire \axi_dma.mig_adr_reg[26]_i_3_n_6 ;
  wire \axi_dma.mig_adr_reg[26]_i_3_n_7 ;
  wire \axi_dma.mig_adr_reg[26]_i_4_n_6 ;
  wire \axi_dma.mig_adr_reg[26]_i_4_n_7 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_0 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_1 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_2 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_3 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_4 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_5 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_6 ;
  wire \axi_dma.mig_adr_reg[7]_i_2_n_7 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_0 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_1 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_2 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_3 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_4 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_5 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_6 ;
  wire \axi_dma.mig_adr_reg[7]_i_3_n_7 ;
  wire \axi_dma.mig_avail[15]_i_2_n_0 ;
  wire \axi_dma.mig_avail[15]_i_3_n_0 ;
  wire \axi_dma.mig_avail[15]_i_4_n_0 ;
  wire \axi_dma.mig_avail[15]_i_5_n_0 ;
  wire \axi_dma.mig_avail[15]_i_6_n_0 ;
  wire \axi_dma.mig_avail[15]_i_7_n_0 ;
  wire \axi_dma.mig_avail[15]_i_8_n_0 ;
  wire \axi_dma.mig_avail[15]_i_9_n_0 ;
  wire \axi_dma.mig_avail[23]_i_2_n_0 ;
  wire \axi_dma.mig_avail[23]_i_3_n_0 ;
  wire \axi_dma.mig_avail[23]_i_4_n_0 ;
  wire \axi_dma.mig_avail[23]_i_5_n_0 ;
  wire \axi_dma.mig_avail[23]_i_6_n_0 ;
  wire \axi_dma.mig_avail[23]_i_7_n_0 ;
  wire \axi_dma.mig_avail[23]_i_8_n_0 ;
  wire \axi_dma.mig_avail[23]_i_9_n_0 ;
  wire \axi_dma.mig_avail[26]_i_2_n_0 ;
  wire \axi_dma.mig_avail[26]_i_3_n_0 ;
  wire \axi_dma.mig_avail[26]_i_4_n_0 ;
  wire \axi_dma.mig_avail[7]_i_2_n_0 ;
  wire \axi_dma.mig_avail[7]_i_3_n_0 ;
  wire \axi_dma.mig_avail[7]_i_4_n_0 ;
  wire \axi_dma.mig_avail[7]_i_5_n_0 ;
  wire \axi_dma.mig_avail[7]_i_6_n_0 ;
  wire \axi_dma.mig_avail[7]_i_7_n_0 ;
  wire \axi_dma.mig_avail[7]_i_8_n_0 ;
  wire \axi_dma.mig_avail[7]_i_9_n_0 ;
  wire [26:0]\axi_dma.mig_avail_reg0 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_0 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_1 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_2 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_3 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_4 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_5 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_6 ;
  wire \axi_dma.mig_avail_reg[15]_i_1_n_7 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_0 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_1 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_2 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_3 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_4 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_5 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_6 ;
  wire \axi_dma.mig_avail_reg[23]_i_1_n_7 ;
  wire \axi_dma.mig_avail_reg[26]_i_1_n_6 ;
  wire \axi_dma.mig_avail_reg[26]_i_1_n_7 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_0 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_1 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_2 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_3 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_4 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_5 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_6 ;
  wire \axi_dma.mig_avail_reg[7]_i_1_n_7 ;
  wire \axi_dma.mig_blocks[0]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[0]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[1]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[1]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[2]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[2]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[3]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[4]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[5]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[5]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[5]_i_3_n_0 ;
  wire \axi_dma.mig_blocks[6]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[6]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_1_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_2_n_0 ;
  wire \axi_dma.mig_blocks[7]_i_3_n_0 ;
  wire \axi_dma.mig_cmd_done_i_1_n_0 ;
  wire \axi_dma.mig_cmd_done_i_2_n_0 ;
  wire \axi_dma.mig_cmd_error_i_1_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_10_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_11_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_12_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_2_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_3_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_4_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_5_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_6_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_7_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_8_n_0 ;
  wire \axi_dma.mig_cmd_state[0]_i_9_n_0 ;
  wire \axi_dma.mig_cmd_state[2]_i_1_n_0 ;
  wire \axi_dma.mig_diff[7]_i_10_n_0 ;
  wire \axi_dma.mig_diff[7]_i_11_n_0 ;
  wire \axi_dma.mig_diff[7]_i_12_n_0 ;
  wire \axi_dma.mig_diff[7]_i_13_n_0 ;
  wire \axi_dma.mig_diff[7]_i_14_n_0 ;
  wire \axi_dma.mig_diff[7]_i_15_n_0 ;
  wire \axi_dma.mig_diff[7]_i_16_n_0 ;
  wire \axi_dma.mig_diff[7]_i_17_n_0 ;
  wire \axi_dma.mig_diff[7]_i_2_n_0 ;
  wire \axi_dma.mig_diff[7]_i_3_n_0 ;
  wire \axi_dma.mig_diff[7]_i_4_n_0 ;
  wire \axi_dma.mig_diff[7]_i_5_n_0 ;
  wire \axi_dma.mig_diff[7]_i_6_n_0 ;
  wire \axi_dma.mig_diff[7]_i_7_n_0 ;
  wire \axi_dma.mig_diff[7]_i_8_n_0 ;
  wire \axi_dma.mig_diff[7]_i_9_n_0 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_1 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_10 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_11 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_12 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_13 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_14 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_15 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_2 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_3 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_4 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_5 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_6 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_7 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_8 ;
  wire \axi_dma.mig_diff_reg[7]_i_1_n_9 ;
  wire \axi_dma.mig_env_0[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_0[9]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_1[9]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_2[9]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_3[9]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_4[9]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_5[9]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_6[9]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[0]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[10]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[11]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[12]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[13]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[14]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[15]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[1]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[2]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[3]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[4]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[5]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[6]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[7]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[8]_i_1_n_0 ;
  wire \axi_dma.mig_env_7[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_angle[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_blocks[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_doa_error[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_mean[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_env_std[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_flags[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[16]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[17]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[18]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[19]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[20]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[21]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[22]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[23]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[24]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[25]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[26]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[27]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[28]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[29]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[30]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[31]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_freq_std[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_env[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_max_pos[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_phase_std[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[16]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[17]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[18]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[19]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[20]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[21]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[22]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[23]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[24]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[25]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[26]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[27]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[28]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[29]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[30]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[31]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[32]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[33]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[34]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[35]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[36]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[37]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[38]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[39]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[40]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[41]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[42]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[43]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[44]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[45]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[46]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[47]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[48]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[49]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[50]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[51]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[52]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[53]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[54]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[55]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[56]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[57]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[58]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[59]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[60]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[61]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[62]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[63]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_sample[9]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[0]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[10]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[11]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[12]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[13]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[14]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[15]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[1]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[2]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[3]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[4]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[5]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[6]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[7]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[8]_i_1_n_0 ;
  wire \axi_dma.mig_hdr_size[9]_i_1_n_0 ;
  wire \axi_dma.mig_preview_i_10_n_0 ;
  wire \axi_dma.mig_preview_i_11_n_0 ;
  wire \axi_dma.mig_preview_i_12_n_0 ;
  wire \axi_dma.mig_preview_i_13_n_0 ;
  wire \axi_dma.mig_preview_i_1_n_0 ;
  wire \axi_dma.mig_preview_i_2_n_0 ;
  wire \axi_dma.mig_preview_i_5_n_0 ;
  wire \axi_dma.mig_preview_i_6_n_0 ;
  wire \axi_dma.mig_preview_i_7_n_0 ;
  wire \axi_dma.mig_preview_i_8_n_0 ;
  wire \axi_dma.mig_preview_i_9_n_0 ;
  wire \axi_dma.mig_preview_reg_i_4_n_0 ;
  wire \axi_dma.mig_preview_reg_i_4_n_1 ;
  wire \axi_dma.mig_preview_reg_i_4_n_2 ;
  wire \axi_dma.mig_preview_reg_i_4_n_3 ;
  wire \axi_dma.mig_preview_reg_i_4_n_4 ;
  wire \axi_dma.mig_preview_reg_i_4_n_5 ;
  wire \axi_dma.mig_preview_reg_i_4_n_6 ;
  wire \axi_dma.mig_preview_reg_i_4_n_7 ;
  wire \axi_dma.mig_rd_ptr[0]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[10]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[11]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[12]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[13]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[14]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[15]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_10_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_3_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_4_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_5_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_6_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_7_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_8_n_0 ;
  wire \axi_dma.mig_rd_ptr[16]_i_9_n_0 ;
  wire \axi_dma.mig_rd_ptr[17]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[18]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[19]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[1]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[20]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[21]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[22]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[23]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_10_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_3_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_4_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_5_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_6_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_7_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_8_n_0 ;
  wire \axi_dma.mig_rd_ptr[24]_i_9_n_0 ;
  wire \axi_dma.mig_rd_ptr[25]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[26]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[26]_i_2_n_0 ;
  wire \axi_dma.mig_rd_ptr[26]_i_4_n_0 ;
  wire \axi_dma.mig_rd_ptr[26]_i_5_n_0 ;
  wire \axi_dma.mig_rd_ptr[2]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[3]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[4]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[5]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[6]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[7]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_10_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_3_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_4_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_5_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_6_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_7_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_8_n_0 ;
  wire \axi_dma.mig_rd_ptr[8]_i_9_n_0 ;
  wire \axi_dma.mig_rd_ptr[9]_i_1_n_0 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_0 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_1 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_2 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_3 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_4 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_5 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_6 ;
  wire \axi_dma.mig_rd_ptr_reg[16]_i_2_n_7 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_0 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_1 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_2 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_3 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_4 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_5 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_6 ;
  wire \axi_dma.mig_rd_ptr_reg[24]_i_2_n_7 ;
  wire \axi_dma.mig_rd_ptr_reg[26]_i_3_n_7 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_0 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_1 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_2 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_3 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_4 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_5 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_6 ;
  wire \axi_dma.mig_rd_ptr_reg[8]_i_2_n_7 ;
  wire \axi_dma.mig_size_reg0 ;
  wire \axi_dma.mig_start_cmd_i_1_n_0 ;
  wire \axi_dma.mig_tag[0]_i_1_n_0 ;
  wire \axi_dma.mig_tag[1]_i_1_n_0 ;
  wire \axi_dma.mig_tag[2]_i_1_n_0 ;
  wire \axi_dma.mig_tag[3]_i_1_n_0 ;
  wire \axi_dma.reset_i_1_n_0 ;
  wire clk;
  wire data0;
  (* MARK_DEBUG *) wire [13:0]fifo_count;
  wire [13:1]fifo_count__0;
  wire fifo_full;
  (* MARK_DEBUG *) wire fifo_has_space;
  wire [255:0]fifo_in_data;
  (* MARK_DEBUG *) wire [13:0]fifo_space;
  wire fifo_wr_en;
  (* MARK_DEBUG *) wire [26:0]mig_adr;
  wire [26:0]mig_adr0_in;
  wire [26:0]mig_adr__0;
  (* MARK_DEBUG *) wire [26:0]mig_avail;
  (* MARK_DEBUG *) wire [7:0]mig_blocks;
  wire [4:3]mig_blocks__0;
  wire mig_cmd_check;
  (* MARK_DEBUG *) wire mig_cmd_done;
  wire mig_cmd_done0;
  (* MARK_DEBUG *) wire mig_cmd_error;
  (* MARK_DEBUG *) wire [2:0]mig_cmd_state;
  (* MARK_DEBUG *) wire [7:0]mig_diff;
  (* MARK_DEBUG *) wire [15:0]mig_env_0;
  (* MARK_DEBUG *) wire [15:0]mig_env_1;
  (* MARK_DEBUG *) wire [15:0]mig_env_2;
  (* MARK_DEBUG *) wire [15:0]mig_env_3;
  (* MARK_DEBUG *) wire [15:0]mig_env_4;
  (* MARK_DEBUG *) wire [15:0]mig_env_5;
  (* MARK_DEBUG *) wire [15:0]mig_env_6;
  (* MARK_DEBUG *) wire [15:0]mig_env_7;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_angle;
  (* MARK_DEBUG *) wire [7:0]mig_hdr_blocks;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_doa_error;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_env_mean;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_env_std;
  (* MARK_DEBUG *) wire [7:0]mig_hdr_flags;
  (* MARK_DEBUG *) wire [31:0]mig_hdr_freq;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_freq_std;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_max_env;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_max_pos;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_phase_std;
  (* MARK_DEBUG *) wire [63:0]mig_hdr_sample;
  (* MARK_DEBUG *) wire [15:0]mig_hdr_size;
  (* MARK_DEBUG *) wire mig_preview;
  wire [26:0]mig_rd_ptr;
  wire [26:1]mig_rd_ptr0;
  (* MARK_DEBUG *) wire [7:0]mig_size;
  (* MARK_DEBUG *) wire mig_start_cmd;
  (* MARK_DEBUG *) wire [3:0]mig_tag;
  wire [26:0]mig_wr_ptr;
  wire [2:0]p_0_in__0;
  wire p_1_in__0;
  wire p_7_in;
  wire reset;
  wire resetn;
  wire [7:4]\NLW_axi_dma.fifo_count_reg[13]_i_1_CO_UNCONNECTED ;
  wire [7:5]\NLW_axi_dma.fifo_count_reg[13]_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_axi_dma.fifo_has_space_reg_i_2_CO_UNCONNECTED ;
  wire [7:1]\NLW_axi_dma.fifo_has_space_reg_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_axi_dma.fifo_has_space_reg_i_3_O_UNCONNECTED ;
  wire [7:2]\NLW_axi_dma.mig_adr_reg[26]_i_3_CO_UNCONNECTED ;
  wire [7:3]\NLW_axi_dma.mig_adr_reg[26]_i_3_O_UNCONNECTED ;
  wire [7:2]\NLW_axi_dma.mig_adr_reg[26]_i_4_CO_UNCONNECTED ;
  wire [7:3]\NLW_axi_dma.mig_adr_reg[26]_i_4_O_UNCONNECTED ;
  wire [7:2]\NLW_axi_dma.mig_avail_reg[26]_i_1_CO_UNCONNECTED ;
  wire [7:3]\NLW_axi_dma.mig_avail_reg[26]_i_1_O_UNCONNECTED ;
  wire [7:7]\NLW_axi_dma.mig_diff_reg[7]_i_1_CO_UNCONNECTED ;
  wire [7:1]\NLW_axi_dma.mig_preview_reg_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_axi_dma.mig_preview_reg_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_axi_dma.mig_preview_reg_i_4_O_UNCONNECTED ;
  wire [7:1]\NLW_axi_dma.mig_rd_ptr_reg[26]_i_3_CO_UNCONNECTED ;
  wire [7:2]\NLW_axi_dma.mig_rd_ptr_reg[26]_i_3_O_UNCONNECTED ;
  wire NLW_fifo_i_almost_empty_UNCONNECTED;
  wire NLW_fifo_i_almost_full_UNCONNECTED;
  wire NLW_fifo_i_data_valid_UNCONNECTED;
  wire NLW_fifo_i_dbiterr_UNCONNECTED;
  wire NLW_fifo_i_empty_UNCONNECTED;
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

  assign M_AXI_STS_in_tready = M_AXI_STS_out_tready;
  assign M_AXI_TDATA_in_cmd[71] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[70] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[69] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[68] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[67:37] = \^M_AXI_TDATA_in_cmd [67:37];
  assign M_AXI_TDATA_in_cmd[36] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[35] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[34] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[33] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[32] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[31] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[30] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[29] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[28] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[27] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[26] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[25] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[24] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[23] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[22] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[21] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[20] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[19] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[18] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[17] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[16] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[15] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[14] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[13] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[12:5] = \^M_AXI_TDATA_in_cmd [12:5];
  assign M_AXI_TDATA_in_cmd[4] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[3] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[2] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[1] = \<const0> ;
  assign M_AXI_TDATA_in_cmd[0] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[71] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[70] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[69] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[68] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[67] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[66] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[65] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[64] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[63] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[62] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[61] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[60] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[59] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[58] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[57] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[56] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[55] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[54] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[53] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[52] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[51] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[50] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[49] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[48] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[47] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[46] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[45] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[44] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[43] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[42] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[41] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[40] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[39] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[38] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[37] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[36] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[35] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[34] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[33] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[32] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[31] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[30] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[29] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[28] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[27] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[26] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[25] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[24] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[23] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[22] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[21] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[20] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[19] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[18] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[17] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[16] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[15] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[14] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[13] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[12] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[11] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[10] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[9] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[8] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[7] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[6] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[5] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[4] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[3] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[2] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[1] = \<const0> ;
  assign M_AXI_TDATA_out_cmd[0] = \<const0> ;
  assign M_AXI_TLAST_out = \<const0> ;
  assign M_AXI_TVALID_out = \<const0> ;
  assign M_AXI_TVALID_out_cmd = \<const0> ;
  assign irq = \<const0> ;
  assign linux_wr_ptr[31] = \<const0> ;
  assign linux_wr_ptr[30] = \<const0> ;
  assign linux_wr_ptr[29] = \<const0> ;
  assign linux_wr_ptr[28] = \<const0> ;
  assign linux_wr_ptr[27] = \<const0> ;
  assign linux_wr_ptr[26] = \<const0> ;
  assign linux_wr_ptr[25] = \<const0> ;
  assign linux_wr_ptr[24] = \<const0> ;
  assign linux_wr_ptr[23] = \<const0> ;
  assign linux_wr_ptr[22] = \<const0> ;
  assign linux_wr_ptr[21] = \<const0> ;
  assign linux_wr_ptr[20] = \<const0> ;
  assign linux_wr_ptr[19] = \<const0> ;
  assign linux_wr_ptr[18] = \<const0> ;
  assign linux_wr_ptr[17] = \<const0> ;
  assign linux_wr_ptr[16] = \<const0> ;
  assign linux_wr_ptr[15] = \<const0> ;
  assign linux_wr_ptr[14] = \<const0> ;
  assign linux_wr_ptr[13] = \<const0> ;
  assign linux_wr_ptr[12] = \<const0> ;
  assign linux_wr_ptr[11] = \<const0> ;
  assign linux_wr_ptr[10] = \<const0> ;
  assign linux_wr_ptr[9] = \<const0> ;
  assign linux_wr_ptr[8] = \<const0> ;
  assign linux_wr_ptr[7] = \<const0> ;
  assign linux_wr_ptr[6] = \<const0> ;
  assign linux_wr_ptr[5] = \<const0> ;
  assign linux_wr_ptr[4] = \<const0> ;
  assign linux_wr_ptr[3] = \<const0> ;
  assign linux_wr_ptr[2] = \<const0> ;
  assign linux_wr_ptr[1] = \<const0> ;
  assign linux_wr_ptr[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FDRE \axi_dma.M_AXI_STS_in_tready_reg 
       (.C(clk),
        .CE(1'b1),
        .D(1'b1),
        .Q(M_AXI_STS_out_tready),
        .R(reset));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.M_AXI_TDATA_in_cmd[67]_i_1 
       (.I0(mig_start_cmd),
        .I1(M_AXI_TVALID_in_cmd),
        .O(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[10] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[5]),
        .Q(\^M_AXI_TDATA_in_cmd [10]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[11] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[6]),
        .Q(\^M_AXI_TDATA_in_cmd [11]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[12] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[7]),
        .Q(\^M_AXI_TDATA_in_cmd [12]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[37] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[0]),
        .Q(\^M_AXI_TDATA_in_cmd [37]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[38] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[1]),
        .Q(\^M_AXI_TDATA_in_cmd [38]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[39] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[2]),
        .Q(\^M_AXI_TDATA_in_cmd [39]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[40] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[3]),
        .Q(\^M_AXI_TDATA_in_cmd [40]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[41] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[4]),
        .Q(\^M_AXI_TDATA_in_cmd [41]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[42] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[5]),
        .Q(\^M_AXI_TDATA_in_cmd [42]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[43] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[6]),
        .Q(\^M_AXI_TDATA_in_cmd [43]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[44] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[7]),
        .Q(\^M_AXI_TDATA_in_cmd [44]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[45] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[8]),
        .Q(\^M_AXI_TDATA_in_cmd [45]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[46] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[9]),
        .Q(\^M_AXI_TDATA_in_cmd [46]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[47] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[10]),
        .Q(\^M_AXI_TDATA_in_cmd [47]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[48] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[11]),
        .Q(\^M_AXI_TDATA_in_cmd [48]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[49] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[12]),
        .Q(\^M_AXI_TDATA_in_cmd [49]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[50] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[13]),
        .Q(\^M_AXI_TDATA_in_cmd [50]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[51] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[14]),
        .Q(\^M_AXI_TDATA_in_cmd [51]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[52] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[15]),
        .Q(\^M_AXI_TDATA_in_cmd [52]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[53] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[16]),
        .Q(\^M_AXI_TDATA_in_cmd [53]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[54] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[17]),
        .Q(\^M_AXI_TDATA_in_cmd [54]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[55] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[18]),
        .Q(\^M_AXI_TDATA_in_cmd [55]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[56] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[19]),
        .Q(\^M_AXI_TDATA_in_cmd [56]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[57] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[20]),
        .Q(\^M_AXI_TDATA_in_cmd [57]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[58] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[21]),
        .Q(\^M_AXI_TDATA_in_cmd [58]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[59] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[22]),
        .Q(\^M_AXI_TDATA_in_cmd [59]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[5] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[0]),
        .Q(\^M_AXI_TDATA_in_cmd [5]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[60] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[23]),
        .Q(\^M_AXI_TDATA_in_cmd [60]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[61] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[24]),
        .Q(\^M_AXI_TDATA_in_cmd [61]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[62] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[25]),
        .Q(\^M_AXI_TDATA_in_cmd [62]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[63] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_adr[26]),
        .Q(\^M_AXI_TDATA_in_cmd [63]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[64] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_tag[0]),
        .Q(\^M_AXI_TDATA_in_cmd [64]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[65] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_tag[1]),
        .Q(\^M_AXI_TDATA_in_cmd [65]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[66] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_tag[2]),
        .Q(\^M_AXI_TDATA_in_cmd [66]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[67] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_tag[3]),
        .Q(\^M_AXI_TDATA_in_cmd [67]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[6] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[1]),
        .Q(\^M_AXI_TDATA_in_cmd [6]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[7] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[2]),
        .Q(\^M_AXI_TDATA_in_cmd [7]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[8] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[3]),
        .Q(\^M_AXI_TDATA_in_cmd [8]),
        .R(1'b0));
  FDRE \axi_dma.M_AXI_TDATA_in_cmd_reg[9] 
       (.C(clk),
        .CE(\axi_dma.M_AXI_TDATA_in_cmd[67]_i_1_n_0 ),
        .D(mig_blocks[4]),
        .Q(\^M_AXI_TDATA_in_cmd [9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.M_AXI_TREADY_in_i_1 
       (.I0(fifo_full),
        .O(\axi_dma.M_AXI_TREADY_in_i_1_n_0 ));
  FDRE \axi_dma.M_AXI_TREADY_in_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.M_AXI_TREADY_in_i_1_n_0 ),
        .Q(M_AXI_TREADY_in),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h3A)) 
    \axi_dma.M_AXI_TVALID_in_cmd_i_1 
       (.I0(mig_start_cmd),
        .I1(M_AXI_TREADY_in_cmd),
        .I2(M_AXI_TVALID_in_cmd),
        .O(\axi_dma.M_AXI_TVALID_in_cmd_i_1_n_0 ));
  FDRE \axi_dma.M_AXI_TVALID_in_cmd_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.M_AXI_TVALID_in_cmd_i_1_n_0 ),
        .Q(M_AXI_TVALID_in_cmd),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_count[0]_i_1 
       (.I0(fifo_count[0]),
        .O(\axi_dma.fifo_count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_2 
       (.I0(fifo_count[12]),
        .I1(fifo_count[13]),
        .O(\axi_dma.fifo_count[13]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_3 
       (.I0(fifo_count[11]),
        .I1(fifo_count[12]),
        .O(\axi_dma.fifo_count[13]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_4 
       (.I0(fifo_count[10]),
        .I1(fifo_count[11]),
        .O(\axi_dma.fifo_count[13]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_5 
       (.I0(fifo_count[9]),
        .I1(fifo_count[10]),
        .O(\axi_dma.fifo_count[13]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[13]_i_6 
       (.I0(fifo_count[8]),
        .I1(fifo_count[9]),
        .O(\axi_dma.fifo_count[13]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_count[8]_i_2 
       (.I0(fifo_count[1]),
        .O(\axi_dma.fifo_count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_3 
       (.I0(fifo_count[7]),
        .I1(fifo_count[8]),
        .O(\axi_dma.fifo_count[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_4 
       (.I0(fifo_count[6]),
        .I1(fifo_count[7]),
        .O(\axi_dma.fifo_count[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_5 
       (.I0(fifo_count[5]),
        .I1(fifo_count[6]),
        .O(\axi_dma.fifo_count[8]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_6 
       (.I0(fifo_count[4]),
        .I1(fifo_count[5]),
        .O(\axi_dma.fifo_count[8]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_7 
       (.I0(fifo_count[3]),
        .I1(fifo_count[4]),
        .O(\axi_dma.fifo_count[8]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_8 
       (.I0(fifo_count[2]),
        .I1(fifo_count[3]),
        .O(\axi_dma.fifo_count[8]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_count[8]_i_9 
       (.I0(fifo_count[1]),
        .I1(fifo_count[2]),
        .O(\axi_dma.fifo_count[8]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[0] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(\axi_dma.fifo_count[0]_i_1_n_0 ),
        .Q(fifo_count[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[10] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[10]),
        .Q(fifo_count[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[11] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[11]),
        .Q(fifo_count[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[12] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[12]),
        .Q(fifo_count[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[13] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[13]),
        .Q(fifo_count[13]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \axi_dma.fifo_count_reg[13]_i_1 
       (.CI(\axi_dma.fifo_count_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.fifo_count_reg[13]_i_1_CO_UNCONNECTED [7:4],\axi_dma.fifo_count_reg[13]_i_1_n_4 ,\axi_dma.fifo_count_reg[13]_i_1_n_5 ,\axi_dma.fifo_count_reg[13]_i_1_n_6 ,\axi_dma.fifo_count_reg[13]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,fifo_count[11:8]}),
        .O({\NLW_axi_dma.fifo_count_reg[13]_i_1_O_UNCONNECTED [7:5],fifo_count__0[13:9]}),
        .S({1'b0,1'b0,1'b0,\axi_dma.fifo_count[13]_i_2_n_0 ,\axi_dma.fifo_count[13]_i_3_n_0 ,\axi_dma.fifo_count[13]_i_4_n_0 ,\axi_dma.fifo_count[13]_i_5_n_0 ,\axi_dma.fifo_count[13]_i_6_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[1] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[1]),
        .Q(fifo_count[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[2] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[2]),
        .Q(fifo_count[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[3] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[3]),
        .Q(fifo_count[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[4] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[4]),
        .Q(fifo_count[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[5] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[5]),
        .Q(fifo_count[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[6] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[6]),
        .Q(fifo_count[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[7] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[7]),
        .Q(fifo_count[7]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[8] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[8]),
        .Q(fifo_count[8]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY8 \axi_dma.fifo_count_reg[8]_i_1 
       (.CI(fifo_count[0]),
        .CI_TOP(1'b0),
        .CO({\axi_dma.fifo_count_reg[8]_i_1_n_0 ,\axi_dma.fifo_count_reg[8]_i_1_n_1 ,\axi_dma.fifo_count_reg[8]_i_1_n_2 ,\axi_dma.fifo_count_reg[8]_i_1_n_3 ,\axi_dma.fifo_count_reg[8]_i_1_n_4 ,\axi_dma.fifo_count_reg[8]_i_1_n_5 ,\axi_dma.fifo_count_reg[8]_i_1_n_6 ,\axi_dma.fifo_count_reg[8]_i_1_n_7 }),
        .DI({fifo_count[7:1],\axi_dma.fifo_count[8]_i_2_n_0 }),
        .O(fifo_count__0[8:1]),
        .S({\axi_dma.fifo_count[8]_i_3_n_0 ,\axi_dma.fifo_count[8]_i_4_n_0 ,\axi_dma.fifo_count[8]_i_5_n_0 ,\axi_dma.fifo_count[8]_i_6_n_0 ,\axi_dma.fifo_count[8]_i_7_n_0 ,\axi_dma.fifo_count[8]_i_8_n_0 ,\axi_dma.fifo_count[8]_i_9_n_0 ,fifo_count[1]}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.fifo_count_reg[9] 
       (.C(clk),
        .CE(fifo_wr_en),
        .D(fifo_count__0[9]),
        .Q(fifo_count[9]),
        .R(reset));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_dma.fifo_has_space_i_1 
       (.I0(fifo_space[12]),
        .I1(fifo_space[13]),
        .I2(fifo_space[10]),
        .I3(fifo_space[11]),
        .I4(fifo_space[9]),
        .I5(fifo_space[8]),
        .O(\axi_dma.fifo_has_space_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_10 
       (.I0(mig_size[2]),
        .I1(fifo_space[2]),
        .O(\axi_dma.fifo_has_space_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_11 
       (.I0(mig_size[1]),
        .I1(fifo_space[1]),
        .O(\axi_dma.fifo_has_space_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_12 
       (.I0(mig_size[0]),
        .I1(fifo_space[0]),
        .O(\axi_dma.fifo_has_space_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_has_space_i_4 
       (.I0(fifo_space[8]),
        .O(\axi_dma.fifo_has_space_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_5 
       (.I0(mig_size[7]),
        .I1(fifo_space[7]),
        .O(\axi_dma.fifo_has_space_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_6 
       (.I0(mig_size[6]),
        .I1(fifo_space[6]),
        .O(\axi_dma.fifo_has_space_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_7 
       (.I0(mig_size[5]),
        .I1(fifo_space[5]),
        .O(\axi_dma.fifo_has_space_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_8 
       (.I0(mig_size[4]),
        .I1(fifo_space[4]),
        .O(\axi_dma.fifo_has_space_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.fifo_has_space_i_9 
       (.I0(mig_size[3]),
        .I1(fifo_space[3]),
        .O(\axi_dma.fifo_has_space_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDSE \axi_dma.fifo_has_space_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in__0),
        .Q(fifo_has_space),
        .S(\axi_dma.fifo_has_space_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.fifo_has_space_reg_i_2 
       (.CI(\axi_dma.fifo_has_space_reg_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO(\NLW_axi_dma.fifo_has_space_reg_i_2_CO_UNCONNECTED [7:0]),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_dma.fifo_has_space_reg_i_2_O_UNCONNECTED [7:1],p_1_in__0}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_dma.fifo_has_space_i_4_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.fifo_has_space_reg_i_3 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\axi_dma.fifo_has_space_reg_i_3_n_0 ,\axi_dma.fifo_has_space_reg_i_3_n_1 ,\axi_dma.fifo_has_space_reg_i_3_n_2 ,\axi_dma.fifo_has_space_reg_i_3_n_3 ,\axi_dma.fifo_has_space_reg_i_3_n_4 ,\axi_dma.fifo_has_space_reg_i_3_n_5 ,\axi_dma.fifo_has_space_reg_i_3_n_6 ,\axi_dma.fifo_has_space_reg_i_3_n_7 }),
        .DI(mig_size),
        .O(\NLW_axi_dma.fifo_has_space_reg_i_3_O_UNCONNECTED [7:0]),
        .S({\axi_dma.fifo_has_space_i_5_n_0 ,\axi_dma.fifo_has_space_i_6_n_0 ,\axi_dma.fifo_has_space_i_7_n_0 ,\axi_dma.fifo_has_space_i_8_n_0 ,\axi_dma.fifo_has_space_i_9_n_0 ,\axi_dma.fifo_has_space_i_10_n_0 ,\axi_dma.fifo_has_space_i_11_n_0 ,\axi_dma.fifo_has_space_i_12_n_0 }));
  FDRE \axi_dma.fifo_in_data_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[0]),
        .Q(fifo_in_data[0]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[100] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[100]),
        .Q(fifo_in_data[100]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[101] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[101]),
        .Q(fifo_in_data[101]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[102] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[102]),
        .Q(fifo_in_data[102]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[103] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[103]),
        .Q(fifo_in_data[103]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[104] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[104]),
        .Q(fifo_in_data[104]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[105] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[105]),
        .Q(fifo_in_data[105]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[106] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[106]),
        .Q(fifo_in_data[106]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[107] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[107]),
        .Q(fifo_in_data[107]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[108] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[108]),
        .Q(fifo_in_data[108]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[109] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[109]),
        .Q(fifo_in_data[109]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[10]),
        .Q(fifo_in_data[10]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[110] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[110]),
        .Q(fifo_in_data[110]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[111] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[111]),
        .Q(fifo_in_data[111]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[112] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[112]),
        .Q(fifo_in_data[112]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[113] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[113]),
        .Q(fifo_in_data[113]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[114] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[114]),
        .Q(fifo_in_data[114]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[115] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[115]),
        .Q(fifo_in_data[115]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[116] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[116]),
        .Q(fifo_in_data[116]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[117] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[117]),
        .Q(fifo_in_data[117]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[118] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[118]),
        .Q(fifo_in_data[118]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[119] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[119]),
        .Q(fifo_in_data[119]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[11]),
        .Q(fifo_in_data[11]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[120] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[120]),
        .Q(fifo_in_data[120]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[121] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[121]),
        .Q(fifo_in_data[121]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[122] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[122]),
        .Q(fifo_in_data[122]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[123] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[123]),
        .Q(fifo_in_data[123]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[124] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[124]),
        .Q(fifo_in_data[124]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[125] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[125]),
        .Q(fifo_in_data[125]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[126] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[126]),
        .Q(fifo_in_data[126]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[127] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[127]),
        .Q(fifo_in_data[127]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[128] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[128]),
        .Q(fifo_in_data[128]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[129] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[129]),
        .Q(fifo_in_data[129]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[12]),
        .Q(fifo_in_data[12]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[130] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[130]),
        .Q(fifo_in_data[130]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[131] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[131]),
        .Q(fifo_in_data[131]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[132] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[132]),
        .Q(fifo_in_data[132]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[133] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[133]),
        .Q(fifo_in_data[133]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[134] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[134]),
        .Q(fifo_in_data[134]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[135] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[135]),
        .Q(fifo_in_data[135]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[136] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[136]),
        .Q(fifo_in_data[136]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[137] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[137]),
        .Q(fifo_in_data[137]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[138] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[138]),
        .Q(fifo_in_data[138]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[139] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[139]),
        .Q(fifo_in_data[139]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[13]),
        .Q(fifo_in_data[13]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[140] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[140]),
        .Q(fifo_in_data[140]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[141] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[141]),
        .Q(fifo_in_data[141]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[142] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[142]),
        .Q(fifo_in_data[142]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[143] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[143]),
        .Q(fifo_in_data[143]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[144] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[144]),
        .Q(fifo_in_data[144]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[145] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[145]),
        .Q(fifo_in_data[145]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[146] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[146]),
        .Q(fifo_in_data[146]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[147] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[147]),
        .Q(fifo_in_data[147]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[148] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[148]),
        .Q(fifo_in_data[148]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[149] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[149]),
        .Q(fifo_in_data[149]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[14]),
        .Q(fifo_in_data[14]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[150] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[150]),
        .Q(fifo_in_data[150]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[151] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[151]),
        .Q(fifo_in_data[151]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[152] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[152]),
        .Q(fifo_in_data[152]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[153] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[153]),
        .Q(fifo_in_data[153]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[154] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[154]),
        .Q(fifo_in_data[154]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[155] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[155]),
        .Q(fifo_in_data[155]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[156] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[156]),
        .Q(fifo_in_data[156]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[157] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[157]),
        .Q(fifo_in_data[157]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[158] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[158]),
        .Q(fifo_in_data[158]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[159] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[159]),
        .Q(fifo_in_data[159]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[15]),
        .Q(fifo_in_data[15]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[160] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[160]),
        .Q(fifo_in_data[160]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[161] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[161]),
        .Q(fifo_in_data[161]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[162] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[162]),
        .Q(fifo_in_data[162]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[163] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[163]),
        .Q(fifo_in_data[163]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[164] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[164]),
        .Q(fifo_in_data[164]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[165] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[165]),
        .Q(fifo_in_data[165]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[166] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[166]),
        .Q(fifo_in_data[166]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[167] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[167]),
        .Q(fifo_in_data[167]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[168] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[168]),
        .Q(fifo_in_data[168]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[169] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[169]),
        .Q(fifo_in_data[169]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[16] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[16]),
        .Q(fifo_in_data[16]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[170] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[170]),
        .Q(fifo_in_data[170]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[171] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[171]),
        .Q(fifo_in_data[171]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[172] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[172]),
        .Q(fifo_in_data[172]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[173] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[173]),
        .Q(fifo_in_data[173]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[174] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[174]),
        .Q(fifo_in_data[174]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[175] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[175]),
        .Q(fifo_in_data[175]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[176] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[176]),
        .Q(fifo_in_data[176]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[177] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[177]),
        .Q(fifo_in_data[177]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[178] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[178]),
        .Q(fifo_in_data[178]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[179] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[179]),
        .Q(fifo_in_data[179]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[17] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[17]),
        .Q(fifo_in_data[17]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[180] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[180]),
        .Q(fifo_in_data[180]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[181] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[181]),
        .Q(fifo_in_data[181]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[182] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[182]),
        .Q(fifo_in_data[182]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[183] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[183]),
        .Q(fifo_in_data[183]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[184] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[184]),
        .Q(fifo_in_data[184]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[185] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[185]),
        .Q(fifo_in_data[185]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[186] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[186]),
        .Q(fifo_in_data[186]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[187] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[187]),
        .Q(fifo_in_data[187]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[188] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[188]),
        .Q(fifo_in_data[188]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[189] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[189]),
        .Q(fifo_in_data[189]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[18] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[18]),
        .Q(fifo_in_data[18]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[190] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[190]),
        .Q(fifo_in_data[190]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[191] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[191]),
        .Q(fifo_in_data[191]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[192] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[192]),
        .Q(fifo_in_data[192]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[193] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[193]),
        .Q(fifo_in_data[193]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[194] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[194]),
        .Q(fifo_in_data[194]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[195] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[195]),
        .Q(fifo_in_data[195]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[196] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[196]),
        .Q(fifo_in_data[196]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[197] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[197]),
        .Q(fifo_in_data[197]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[198] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[198]),
        .Q(fifo_in_data[198]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[199] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[199]),
        .Q(fifo_in_data[199]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[19] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[19]),
        .Q(fifo_in_data[19]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[1]),
        .Q(fifo_in_data[1]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[200] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[200]),
        .Q(fifo_in_data[200]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[201] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[201]),
        .Q(fifo_in_data[201]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[202] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[202]),
        .Q(fifo_in_data[202]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[203] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[203]),
        .Q(fifo_in_data[203]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[204] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[204]),
        .Q(fifo_in_data[204]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[205] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[205]),
        .Q(fifo_in_data[205]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[206] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[206]),
        .Q(fifo_in_data[206]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[207] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[207]),
        .Q(fifo_in_data[207]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[208] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[208]),
        .Q(fifo_in_data[208]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[209] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[209]),
        .Q(fifo_in_data[209]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[20] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[20]),
        .Q(fifo_in_data[20]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[210] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[210]),
        .Q(fifo_in_data[210]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[211] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[211]),
        .Q(fifo_in_data[211]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[212] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[212]),
        .Q(fifo_in_data[212]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[213] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[213]),
        .Q(fifo_in_data[213]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[214] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[214]),
        .Q(fifo_in_data[214]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[215] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[215]),
        .Q(fifo_in_data[215]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[216] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[216]),
        .Q(fifo_in_data[216]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[217] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[217]),
        .Q(fifo_in_data[217]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[218] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[218]),
        .Q(fifo_in_data[218]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[219] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[219]),
        .Q(fifo_in_data[219]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[21] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[21]),
        .Q(fifo_in_data[21]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[220] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[220]),
        .Q(fifo_in_data[220]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[221] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[221]),
        .Q(fifo_in_data[221]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[222] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[222]),
        .Q(fifo_in_data[222]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[223] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[223]),
        .Q(fifo_in_data[223]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[224] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[224]),
        .Q(fifo_in_data[224]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[225] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[225]),
        .Q(fifo_in_data[225]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[226] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[226]),
        .Q(fifo_in_data[226]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[227] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[227]),
        .Q(fifo_in_data[227]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[228] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[228]),
        .Q(fifo_in_data[228]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[229] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[229]),
        .Q(fifo_in_data[229]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[22] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[22]),
        .Q(fifo_in_data[22]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[230] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[230]),
        .Q(fifo_in_data[230]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[231] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[231]),
        .Q(fifo_in_data[231]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[232] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[232]),
        .Q(fifo_in_data[232]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[233] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[233]),
        .Q(fifo_in_data[233]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[234] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[234]),
        .Q(fifo_in_data[234]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[235] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[235]),
        .Q(fifo_in_data[235]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[236] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[236]),
        .Q(fifo_in_data[236]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[237] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[237]),
        .Q(fifo_in_data[237]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[238] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[238]),
        .Q(fifo_in_data[238]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[239] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[239]),
        .Q(fifo_in_data[239]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[23] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[23]),
        .Q(fifo_in_data[23]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[240] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[240]),
        .Q(fifo_in_data[240]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[241] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[241]),
        .Q(fifo_in_data[241]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[242] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[242]),
        .Q(fifo_in_data[242]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[243] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[243]),
        .Q(fifo_in_data[243]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[244] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[244]),
        .Q(fifo_in_data[244]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[245] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[245]),
        .Q(fifo_in_data[245]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[246] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[246]),
        .Q(fifo_in_data[246]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[247] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[247]),
        .Q(fifo_in_data[247]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[248] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[248]),
        .Q(fifo_in_data[248]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[249] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[249]),
        .Q(fifo_in_data[249]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[24] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[24]),
        .Q(fifo_in_data[24]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[250] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[250]),
        .Q(fifo_in_data[250]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[251] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[251]),
        .Q(fifo_in_data[251]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[252] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[252]),
        .Q(fifo_in_data[252]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[253] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[253]),
        .Q(fifo_in_data[253]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[254] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[254]),
        .Q(fifo_in_data[254]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[255] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[255]),
        .Q(fifo_in_data[255]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[25] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[25]),
        .Q(fifo_in_data[25]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[26] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[26]),
        .Q(fifo_in_data[26]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[27] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[27]),
        .Q(fifo_in_data[27]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[28] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[28]),
        .Q(fifo_in_data[28]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[29] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[29]),
        .Q(fifo_in_data[29]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[2]),
        .Q(fifo_in_data[2]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[30] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[30]),
        .Q(fifo_in_data[30]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[31] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[31]),
        .Q(fifo_in_data[31]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[32] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[32]),
        .Q(fifo_in_data[32]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[33] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[33]),
        .Q(fifo_in_data[33]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[34] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[34]),
        .Q(fifo_in_data[34]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[35] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[35]),
        .Q(fifo_in_data[35]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[36] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[36]),
        .Q(fifo_in_data[36]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[37] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[37]),
        .Q(fifo_in_data[37]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[38] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[38]),
        .Q(fifo_in_data[38]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[39] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[39]),
        .Q(fifo_in_data[39]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[3]),
        .Q(fifo_in_data[3]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[40] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[40]),
        .Q(fifo_in_data[40]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[41] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[41]),
        .Q(fifo_in_data[41]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[42] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[42]),
        .Q(fifo_in_data[42]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[43] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[43]),
        .Q(fifo_in_data[43]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[44] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[44]),
        .Q(fifo_in_data[44]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[45] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[45]),
        .Q(fifo_in_data[45]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[46] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[46]),
        .Q(fifo_in_data[46]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[47] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[47]),
        .Q(fifo_in_data[47]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[48] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[48]),
        .Q(fifo_in_data[48]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[49] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[49]),
        .Q(fifo_in_data[49]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[4]),
        .Q(fifo_in_data[4]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[50] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[50]),
        .Q(fifo_in_data[50]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[51] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[51]),
        .Q(fifo_in_data[51]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[52] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[52]),
        .Q(fifo_in_data[52]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[53] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[53]),
        .Q(fifo_in_data[53]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[54] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[54]),
        .Q(fifo_in_data[54]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[55] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[55]),
        .Q(fifo_in_data[55]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[56] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[56]),
        .Q(fifo_in_data[56]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[57] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[57]),
        .Q(fifo_in_data[57]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[58] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[58]),
        .Q(fifo_in_data[58]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[59] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[59]),
        .Q(fifo_in_data[59]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[5]),
        .Q(fifo_in_data[5]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[60] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[60]),
        .Q(fifo_in_data[60]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[61] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[61]),
        .Q(fifo_in_data[61]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[62] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[62]),
        .Q(fifo_in_data[62]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[63] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[63]),
        .Q(fifo_in_data[63]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[64] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[64]),
        .Q(fifo_in_data[64]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[65] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[65]),
        .Q(fifo_in_data[65]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[66] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[66]),
        .Q(fifo_in_data[66]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[67] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[67]),
        .Q(fifo_in_data[67]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[68] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[68]),
        .Q(fifo_in_data[68]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[69] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[69]),
        .Q(fifo_in_data[69]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[6]),
        .Q(fifo_in_data[6]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[70] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[70]),
        .Q(fifo_in_data[70]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[71] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[71]),
        .Q(fifo_in_data[71]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[72] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[72]),
        .Q(fifo_in_data[72]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[73] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[73]),
        .Q(fifo_in_data[73]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[74] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[74]),
        .Q(fifo_in_data[74]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[75] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[75]),
        .Q(fifo_in_data[75]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[76] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[76]),
        .Q(fifo_in_data[76]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[77] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[77]),
        .Q(fifo_in_data[77]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[78] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[78]),
        .Q(fifo_in_data[78]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[79] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[79]),
        .Q(fifo_in_data[79]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[7]),
        .Q(fifo_in_data[7]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[80] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[80]),
        .Q(fifo_in_data[80]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[81] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[81]),
        .Q(fifo_in_data[81]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[82] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[82]),
        .Q(fifo_in_data[82]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[83] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[83]),
        .Q(fifo_in_data[83]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[84] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[84]),
        .Q(fifo_in_data[84]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[85] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[85]),
        .Q(fifo_in_data[85]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[86] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[86]),
        .Q(fifo_in_data[86]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[87] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[87]),
        .Q(fifo_in_data[87]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[88] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[88]),
        .Q(fifo_in_data[88]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[89] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[89]),
        .Q(fifo_in_data[89]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[8]),
        .Q(fifo_in_data[8]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[90] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[90]),
        .Q(fifo_in_data[90]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[91] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[91]),
        .Q(fifo_in_data[91]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[92] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[92]),
        .Q(fifo_in_data[92]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[93] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[93]),
        .Q(fifo_in_data[93]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[94] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[94]),
        .Q(fifo_in_data[94]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[95] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[95]),
        .Q(fifo_in_data[95]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[96] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[96]),
        .Q(fifo_in_data[96]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[97] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[97]),
        .Q(fifo_in_data[97]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[98] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[98]),
        .Q(fifo_in_data[98]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[99] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[99]),
        .Q(fifo_in_data[99]),
        .R(1'b0));
  FDRE \axi_dma.fifo_in_data_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(M_AXI_TDATA_in[9]),
        .Q(fifo_in_data[9]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[10]_i_1 
       (.I0(fifo_count[10]),
        .O(\axi_dma.fifo_space[10]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[11]_i_1 
       (.I0(fifo_count[11]),
        .O(\axi_dma.fifo_space[11]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[12]_i_1 
       (.I0(fifo_count[12]),
        .O(\axi_dma.fifo_space[12]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[13]_i_1 
       (.I0(fifo_count[13]),
        .O(\axi_dma.fifo_space[13]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[1]_i_1 
       (.I0(fifo_count[1]),
        .O(\axi_dma.fifo_space[1]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[2]_i_1 
       (.I0(fifo_count[2]),
        .O(\axi_dma.fifo_space[2]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[3]_i_1 
       (.I0(fifo_count[3]),
        .O(\axi_dma.fifo_space[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[4]_i_1 
       (.I0(fifo_count[4]),
        .O(\axi_dma.fifo_space[4]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[5]_i_1 
       (.I0(fifo_count[5]),
        .O(\axi_dma.fifo_space[5]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[6]_i_1 
       (.I0(fifo_count[6]),
        .O(\axi_dma.fifo_space[6]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[7]_i_1 
       (.I0(fifo_count[7]),
        .O(\axi_dma.fifo_space[7]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[8]_i_1 
       (.I0(fifo_count[8]),
        .O(\axi_dma.fifo_space[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.fifo_space[9]_i_1 
       (.I0(fifo_count[9]),
        .O(\axi_dma.fifo_space[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_count[0]_i_1_n_0 ),
        .Q(fifo_space[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[10]_i_1_n_0 ),
        .Q(fifo_space[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[11]_i_1_n_0 ),
        .Q(fifo_space[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[12]_i_1_n_0 ),
        .Q(fifo_space[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[13]_i_1_n_0 ),
        .Q(fifo_space[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[1]_i_1_n_0 ),
        .Q(fifo_space[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[2]_i_1_n_0 ),
        .Q(fifo_space[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[3]_i_1_n_0 ),
        .Q(fifo_space[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[4]_i_1_n_0 ),
        .Q(fifo_space[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[5]_i_1_n_0 ),
        .Q(fifo_space[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[6]_i_1_n_0 ),
        .Q(fifo_space[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[7]_i_1_n_0 ),
        .Q(fifo_space[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[8]_i_1_n_0 ),
        .Q(fifo_space[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.fifo_space_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.fifo_space[9]_i_1_n_0 ),
        .Q(fifo_space[9]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_dma.fifo_wr_en_i_1 
       (.I0(M_AXI_TVALID_in),
        .I1(M_AXI_TREADY_in),
        .O(p_7_in));
  FDRE \axi_dma.fifo_wr_en_reg 
       (.C(clk),
        .CE(1'b1),
        .D(p_7_in),
        .Q(fifo_wr_en),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[0]_i_1 
       (.I0(mig_adr__0[0]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[0]),
        .O(\axi_dma.mig_adr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[10]_i_1 
       (.I0(mig_adr__0[10]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[10]),
        .O(\axi_dma.mig_adr[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[11]_i_1 
       (.I0(mig_adr__0[11]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[11]),
        .O(\axi_dma.mig_adr[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[12]_i_1 
       (.I0(mig_adr__0[12]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[12]),
        .O(\axi_dma.mig_adr[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[13]_i_1 
       (.I0(mig_adr__0[13]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[13]),
        .O(\axi_dma.mig_adr[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[14]_i_1 
       (.I0(mig_adr__0[14]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[14]),
        .O(\axi_dma.mig_adr[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[15]_i_1 
       (.I0(mig_adr__0[15]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[15]),
        .O(\axi_dma.mig_adr[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[16]_i_1 
       (.I0(mig_adr__0[16]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[16]),
        .O(\axi_dma.mig_adr[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[17]_i_1 
       (.I0(mig_adr__0[17]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[17]),
        .O(\axi_dma.mig_adr[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[18]_i_1 
       (.I0(mig_adr__0[18]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[18]),
        .O(\axi_dma.mig_adr[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[19]_i_1 
       (.I0(mig_adr__0[19]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[19]),
        .O(\axi_dma.mig_adr[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[1]_i_1 
       (.I0(mig_adr__0[1]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[1]),
        .O(\axi_dma.mig_adr[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[20]_i_1 
       (.I0(mig_adr__0[20]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[20]),
        .O(\axi_dma.mig_adr[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[21]_i_1 
       (.I0(mig_adr__0[21]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[21]),
        .O(\axi_dma.mig_adr[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[22]_i_1 
       (.I0(mig_adr__0[22]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[22]),
        .O(\axi_dma.mig_adr[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[23]_i_1 
       (.I0(mig_adr__0[23]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[23]),
        .O(\axi_dma.mig_adr[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[24]_i_1 
       (.I0(mig_adr__0[24]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[24]),
        .O(\axi_dma.mig_adr[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[25]_i_1 
       (.I0(mig_adr__0[25]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[25]),
        .O(\axi_dma.mig_adr[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h34)) 
    \axi_dma.mig_adr[26]_i_1 
       (.I0(mig_cmd_state[1]),
        .I1(mig_cmd_state[2]),
        .I2(mig_cmd_state[0]),
        .O(\axi_dma.mig_adr[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[26]_i_2 
       (.I0(mig_adr__0[26]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[26]),
        .O(\axi_dma.mig_adr[26]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[2]_i_1 
       (.I0(mig_adr__0[2]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[2]),
        .O(\axi_dma.mig_adr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[3]_i_1 
       (.I0(mig_adr__0[3]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[3]),
        .O(\axi_dma.mig_adr[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[4]_i_1 
       (.I0(mig_adr__0[4]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[4]),
        .O(\axi_dma.mig_adr[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[5]_i_1 
       (.I0(mig_adr__0[5]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[5]),
        .O(\axi_dma.mig_adr[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[6]_i_1 
       (.I0(mig_adr__0[6]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[6]),
        .O(\axi_dma.mig_adr[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[7]_i_1 
       (.I0(mig_adr__0[7]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[7]),
        .O(\axi_dma.mig_adr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_10 
       (.I0(mig_adr[1]),
        .I1(mig_blocks[1]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_11 
       (.I0(mig_adr[0]),
        .I1(mig_blocks[0]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_dma.mig_adr[7]_i_12 
       (.I0(mig_adr[0]),
        .I1(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_4 
       (.I0(mig_adr[7]),
        .I1(mig_blocks[7]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_5 
       (.I0(mig_adr[6]),
        .I1(mig_blocks[6]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_6 
       (.I0(mig_adr[5]),
        .I1(mig_blocks[5]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_7 
       (.I0(mig_adr[4]),
        .I1(mig_blocks[4]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_8 
       (.I0(mig_adr[3]),
        .I1(mig_blocks[3]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \axi_dma.mig_adr[7]_i_9 
       (.I0(mig_adr[2]),
        .I1(mig_blocks[2]),
        .I2(mig_cmd_check),
        .O(\axi_dma.mig_adr[7]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[8]_i_1 
       (.I0(mig_adr__0[8]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[8]),
        .O(\axi_dma.mig_adr[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hABA8)) 
    \axi_dma.mig_adr[9]_i_1 
       (.I0(mig_adr__0[9]),
        .I1(mig_cmd_state[1]),
        .I2(mig_cmd_state[2]),
        .I3(mig_adr0_in[9]),
        .O(\axi_dma.mig_adr[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[0] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[0]_i_1_n_0 ),
        .Q(mig_adr[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[10] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[10]_i_1_n_0 ),
        .Q(mig_adr[10]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[11] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[11]_i_1_n_0 ),
        .Q(mig_adr[11]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[12] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[12]_i_1_n_0 ),
        .Q(mig_adr[12]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[13] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[13]_i_1_n_0 ),
        .Q(mig_adr[13]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[14] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[14]_i_1_n_0 ),
        .Q(mig_adr[14]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[15] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[15]_i_1_n_0 ),
        .Q(mig_adr[15]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[15]_i_2 
       (.CI(\axi_dma.mig_adr_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_adr_reg[15]_i_2_n_0 ,\axi_dma.mig_adr_reg[15]_i_2_n_1 ,\axi_dma.mig_adr_reg[15]_i_2_n_2 ,\axi_dma.mig_adr_reg[15]_i_2_n_3 ,\axi_dma.mig_adr_reg[15]_i_2_n_4 ,\axi_dma.mig_adr_reg[15]_i_2_n_5 ,\axi_dma.mig_adr_reg[15]_i_2_n_6 ,\axi_dma.mig_adr_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(mig_adr__0[15:8]),
        .S(mig_adr[15:8]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[15]_i_3 
       (.CI(\axi_dma.mig_adr_reg[7]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_adr_reg[15]_i_3_n_0 ,\axi_dma.mig_adr_reg[15]_i_3_n_1 ,\axi_dma.mig_adr_reg[15]_i_3_n_2 ,\axi_dma.mig_adr_reg[15]_i_3_n_3 ,\axi_dma.mig_adr_reg[15]_i_3_n_4 ,\axi_dma.mig_adr_reg[15]_i_3_n_5 ,\axi_dma.mig_adr_reg[15]_i_3_n_6 ,\axi_dma.mig_adr_reg[15]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(mig_adr0_in[15:8]),
        .S(mig_adr[15:8]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[16] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[16]_i_1_n_0 ),
        .Q(mig_adr[16]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[17] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[17]_i_1_n_0 ),
        .Q(mig_adr[17]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[18] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[18]_i_1_n_0 ),
        .Q(mig_adr[18]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[19] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[19]_i_1_n_0 ),
        .Q(mig_adr[19]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[1] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[1]_i_1_n_0 ),
        .Q(mig_adr[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[20] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[20]_i_1_n_0 ),
        .Q(mig_adr[20]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[21] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[21]_i_1_n_0 ),
        .Q(mig_adr[21]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[22] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[22]_i_1_n_0 ),
        .Q(mig_adr[22]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[23] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[23]_i_1_n_0 ),
        .Q(mig_adr[23]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[23]_i_2 
       (.CI(\axi_dma.mig_adr_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_adr_reg[23]_i_2_n_0 ,\axi_dma.mig_adr_reg[23]_i_2_n_1 ,\axi_dma.mig_adr_reg[23]_i_2_n_2 ,\axi_dma.mig_adr_reg[23]_i_2_n_3 ,\axi_dma.mig_adr_reg[23]_i_2_n_4 ,\axi_dma.mig_adr_reg[23]_i_2_n_5 ,\axi_dma.mig_adr_reg[23]_i_2_n_6 ,\axi_dma.mig_adr_reg[23]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(mig_adr__0[23:16]),
        .S(mig_adr[23:16]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[23]_i_3 
       (.CI(\axi_dma.mig_adr_reg[15]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_adr_reg[23]_i_3_n_0 ,\axi_dma.mig_adr_reg[23]_i_3_n_1 ,\axi_dma.mig_adr_reg[23]_i_3_n_2 ,\axi_dma.mig_adr_reg[23]_i_3_n_3 ,\axi_dma.mig_adr_reg[23]_i_3_n_4 ,\axi_dma.mig_adr_reg[23]_i_3_n_5 ,\axi_dma.mig_adr_reg[23]_i_3_n_6 ,\axi_dma.mig_adr_reg[23]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(mig_adr0_in[23:16]),
        .S(mig_adr[23:16]));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[24] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[24]_i_1_n_0 ),
        .Q(mig_adr[24]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[25] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[25]_i_1_n_0 ),
        .Q(mig_adr[25]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[26] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[26]_i_2_n_0 ),
        .Q(mig_adr[26]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[26]_i_3 
       (.CI(\axi_dma.mig_adr_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.mig_adr_reg[26]_i_3_CO_UNCONNECTED [7:2],\axi_dma.mig_adr_reg[26]_i_3_n_6 ,\axi_dma.mig_adr_reg[26]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_dma.mig_adr_reg[26]_i_3_O_UNCONNECTED [7:3],mig_adr__0[26:24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,mig_adr[26:24]}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[26]_i_4 
       (.CI(\axi_dma.mig_adr_reg[23]_i_3_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.mig_adr_reg[26]_i_4_CO_UNCONNECTED [7:2],\axi_dma.mig_adr_reg[26]_i_4_n_6 ,\axi_dma.mig_adr_reg[26]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_axi_dma.mig_adr_reg[26]_i_4_O_UNCONNECTED [7:3],mig_adr0_in[26:24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,mig_adr[26:24]}));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[2] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[2]_i_1_n_0 ),
        .Q(mig_adr[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[3] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[3]_i_1_n_0 ),
        .Q(mig_adr[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[4] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[4]_i_1_n_0 ),
        .Q(mig_adr[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[5] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[5]_i_1_n_0 ),
        .Q(mig_adr[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[6] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[6]_i_1_n_0 ),
        .Q(mig_adr[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[7] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[7]_i_1_n_0 ),
        .Q(mig_adr[7]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_adr_reg[7]_i_2_n_0 ,\axi_dma.mig_adr_reg[7]_i_2_n_1 ,\axi_dma.mig_adr_reg[7]_i_2_n_2 ,\axi_dma.mig_adr_reg[7]_i_2_n_3 ,\axi_dma.mig_adr_reg[7]_i_2_n_4 ,\axi_dma.mig_adr_reg[7]_i_2_n_5 ,\axi_dma.mig_adr_reg[7]_i_2_n_6 ,\axi_dma.mig_adr_reg[7]_i_2_n_7 }),
        .DI(mig_adr[7:0]),
        .O(mig_adr__0[7:0]),
        .S({\axi_dma.mig_adr[7]_i_4_n_0 ,\axi_dma.mig_adr[7]_i_5_n_0 ,\axi_dma.mig_adr[7]_i_6_n_0 ,\axi_dma.mig_adr[7]_i_7_n_0 ,\axi_dma.mig_adr[7]_i_8_n_0 ,\axi_dma.mig_adr[7]_i_9_n_0 ,\axi_dma.mig_adr[7]_i_10_n_0 ,\axi_dma.mig_adr[7]_i_11_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_adr_reg[7]_i_3 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_adr_reg[7]_i_3_n_0 ,\axi_dma.mig_adr_reg[7]_i_3_n_1 ,\axi_dma.mig_adr_reg[7]_i_3_n_2 ,\axi_dma.mig_adr_reg[7]_i_3_n_3 ,\axi_dma.mig_adr_reg[7]_i_3_n_4 ,\axi_dma.mig_adr_reg[7]_i_3_n_5 ,\axi_dma.mig_adr_reg[7]_i_3_n_6 ,\axi_dma.mig_adr_reg[7]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mig_adr[0]}),
        .O(mig_adr0_in[7:0]),
        .S({mig_adr[7:1],\axi_dma.mig_adr[7]_i_12_n_0 }));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[8] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[8]_i_1_n_0 ),
        .Q(mig_adr[8]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_adr_reg[9] 
       (.C(clk),
        .CE(\axi_dma.mig_adr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_adr[9]_i_1_n_0 ),
        .Q(mig_adr[9]),
        .R(reset));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_2 
       (.I0(mig_wr_ptr[15]),
        .I1(mig_rd_ptr[15]),
        .O(\axi_dma.mig_avail[15]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_3 
       (.I0(mig_wr_ptr[14]),
        .I1(mig_rd_ptr[14]),
        .O(\axi_dma.mig_avail[15]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_4 
       (.I0(mig_wr_ptr[13]),
        .I1(mig_rd_ptr[13]),
        .O(\axi_dma.mig_avail[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_5 
       (.I0(mig_wr_ptr[12]),
        .I1(mig_rd_ptr[12]),
        .O(\axi_dma.mig_avail[15]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_6 
       (.I0(mig_wr_ptr[11]),
        .I1(mig_rd_ptr[11]),
        .O(\axi_dma.mig_avail[15]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_7 
       (.I0(mig_wr_ptr[10]),
        .I1(mig_rd_ptr[10]),
        .O(\axi_dma.mig_avail[15]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_8 
       (.I0(mig_wr_ptr[9]),
        .I1(mig_rd_ptr[9]),
        .O(\axi_dma.mig_avail[15]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[15]_i_9 
       (.I0(mig_wr_ptr[8]),
        .I1(mig_rd_ptr[8]),
        .O(\axi_dma.mig_avail[15]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_2 
       (.I0(mig_wr_ptr[23]),
        .I1(mig_rd_ptr[23]),
        .O(\axi_dma.mig_avail[23]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_3 
       (.I0(mig_wr_ptr[22]),
        .I1(mig_rd_ptr[22]),
        .O(\axi_dma.mig_avail[23]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_4 
       (.I0(mig_wr_ptr[21]),
        .I1(mig_rd_ptr[21]),
        .O(\axi_dma.mig_avail[23]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_5 
       (.I0(mig_wr_ptr[20]),
        .I1(mig_rd_ptr[20]),
        .O(\axi_dma.mig_avail[23]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_6 
       (.I0(mig_wr_ptr[19]),
        .I1(mig_rd_ptr[19]),
        .O(\axi_dma.mig_avail[23]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_7 
       (.I0(mig_wr_ptr[18]),
        .I1(mig_rd_ptr[18]),
        .O(\axi_dma.mig_avail[23]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_8 
       (.I0(mig_wr_ptr[17]),
        .I1(mig_rd_ptr[17]),
        .O(\axi_dma.mig_avail[23]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[23]_i_9 
       (.I0(mig_wr_ptr[16]),
        .I1(mig_rd_ptr[16]),
        .O(\axi_dma.mig_avail[23]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[26]_i_2 
       (.I0(mig_wr_ptr[26]),
        .I1(mig_rd_ptr[26]),
        .O(\axi_dma.mig_avail[26]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[26]_i_3 
       (.I0(mig_wr_ptr[25]),
        .I1(mig_rd_ptr[25]),
        .O(\axi_dma.mig_avail[26]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[26]_i_4 
       (.I0(mig_wr_ptr[24]),
        .I1(mig_rd_ptr[24]),
        .O(\axi_dma.mig_avail[26]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_2 
       (.I0(mig_wr_ptr[7]),
        .I1(mig_rd_ptr[7]),
        .O(\axi_dma.mig_avail[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_3 
       (.I0(mig_wr_ptr[6]),
        .I1(mig_rd_ptr[6]),
        .O(\axi_dma.mig_avail[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_4 
       (.I0(mig_wr_ptr[5]),
        .I1(mig_rd_ptr[5]),
        .O(\axi_dma.mig_avail[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_5 
       (.I0(mig_wr_ptr[4]),
        .I1(mig_rd_ptr[4]),
        .O(\axi_dma.mig_avail[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_6 
       (.I0(mig_wr_ptr[3]),
        .I1(mig_rd_ptr[3]),
        .O(\axi_dma.mig_avail[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_7 
       (.I0(mig_wr_ptr[2]),
        .I1(mig_rd_ptr[2]),
        .O(\axi_dma.mig_avail[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_8 
       (.I0(mig_wr_ptr[1]),
        .I1(mig_rd_ptr[1]),
        .O(\axi_dma.mig_avail[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \axi_dma.mig_avail[7]_i_9 
       (.I0(mig_wr_ptr[0]),
        .I1(mig_rd_ptr[0]),
        .O(\axi_dma.mig_avail[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [0]),
        .Q(mig_avail[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [10]),
        .Q(mig_avail[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [11]),
        .Q(mig_avail[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [12]),
        .Q(mig_avail[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [13]),
        .Q(mig_avail[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [14]),
        .Q(mig_avail[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [15]),
        .Q(mig_avail[15]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_avail_reg[15]_i_1 
       (.CI(\axi_dma.mig_avail_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_avail_reg[15]_i_1_n_0 ,\axi_dma.mig_avail_reg[15]_i_1_n_1 ,\axi_dma.mig_avail_reg[15]_i_1_n_2 ,\axi_dma.mig_avail_reg[15]_i_1_n_3 ,\axi_dma.mig_avail_reg[15]_i_1_n_4 ,\axi_dma.mig_avail_reg[15]_i_1_n_5 ,\axi_dma.mig_avail_reg[15]_i_1_n_6 ,\axi_dma.mig_avail_reg[15]_i_1_n_7 }),
        .DI(mig_wr_ptr[15:8]),
        .O(\axi_dma.mig_avail_reg0 [15:8]),
        .S({\axi_dma.mig_avail[15]_i_2_n_0 ,\axi_dma.mig_avail[15]_i_3_n_0 ,\axi_dma.mig_avail[15]_i_4_n_0 ,\axi_dma.mig_avail[15]_i_5_n_0 ,\axi_dma.mig_avail[15]_i_6_n_0 ,\axi_dma.mig_avail[15]_i_7_n_0 ,\axi_dma.mig_avail[15]_i_8_n_0 ,\axi_dma.mig_avail[15]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [16]),
        .Q(mig_avail[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [17]),
        .Q(mig_avail[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [18]),
        .Q(mig_avail[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [19]),
        .Q(mig_avail[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [1]),
        .Q(mig_avail[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [20]),
        .Q(mig_avail[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [21]),
        .Q(mig_avail[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [22]),
        .Q(mig_avail[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [23]),
        .Q(mig_avail[23]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_avail_reg[23]_i_1 
       (.CI(\axi_dma.mig_avail_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_avail_reg[23]_i_1_n_0 ,\axi_dma.mig_avail_reg[23]_i_1_n_1 ,\axi_dma.mig_avail_reg[23]_i_1_n_2 ,\axi_dma.mig_avail_reg[23]_i_1_n_3 ,\axi_dma.mig_avail_reg[23]_i_1_n_4 ,\axi_dma.mig_avail_reg[23]_i_1_n_5 ,\axi_dma.mig_avail_reg[23]_i_1_n_6 ,\axi_dma.mig_avail_reg[23]_i_1_n_7 }),
        .DI(mig_wr_ptr[23:16]),
        .O(\axi_dma.mig_avail_reg0 [23:16]),
        .S({\axi_dma.mig_avail[23]_i_2_n_0 ,\axi_dma.mig_avail[23]_i_3_n_0 ,\axi_dma.mig_avail[23]_i_4_n_0 ,\axi_dma.mig_avail[23]_i_5_n_0 ,\axi_dma.mig_avail[23]_i_6_n_0 ,\axi_dma.mig_avail[23]_i_7_n_0 ,\axi_dma.mig_avail[23]_i_8_n_0 ,\axi_dma.mig_avail[23]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [24]),
        .Q(mig_avail[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [25]),
        .Q(mig_avail[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [26]),
        .Q(mig_avail[26]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_avail_reg[26]_i_1 
       (.CI(\axi_dma.mig_avail_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.mig_avail_reg[26]_i_1_CO_UNCONNECTED [7:2],\axi_dma.mig_avail_reg[26]_i_1_n_6 ,\axi_dma.mig_avail_reg[26]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mig_wr_ptr[25:24]}),
        .O({\NLW_axi_dma.mig_avail_reg[26]_i_1_O_UNCONNECTED [7:3],\axi_dma.mig_avail_reg0 [26:24]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,\axi_dma.mig_avail[26]_i_2_n_0 ,\axi_dma.mig_avail[26]_i_3_n_0 ,\axi_dma.mig_avail[26]_i_4_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [2]),
        .Q(mig_avail[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [3]),
        .Q(mig_avail[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [4]),
        .Q(mig_avail[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [5]),
        .Q(mig_avail[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [6]),
        .Q(mig_avail[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [7]),
        .Q(mig_avail[7]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_avail_reg[7]_i_1 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_avail_reg[7]_i_1_n_0 ,\axi_dma.mig_avail_reg[7]_i_1_n_1 ,\axi_dma.mig_avail_reg[7]_i_1_n_2 ,\axi_dma.mig_avail_reg[7]_i_1_n_3 ,\axi_dma.mig_avail_reg[7]_i_1_n_4 ,\axi_dma.mig_avail_reg[7]_i_1_n_5 ,\axi_dma.mig_avail_reg[7]_i_1_n_6 ,\axi_dma.mig_avail_reg[7]_i_1_n_7 }),
        .DI(mig_wr_ptr[7:0]),
        .O(\axi_dma.mig_avail_reg0 [7:0]),
        .S({\axi_dma.mig_avail[7]_i_2_n_0 ,\axi_dma.mig_avail[7]_i_3_n_0 ,\axi_dma.mig_avail[7]_i_4_n_0 ,\axi_dma.mig_avail[7]_i_5_n_0 ,\axi_dma.mig_avail[7]_i_6_n_0 ,\axi_dma.mig_avail[7]_i_7_n_0 ,\axi_dma.mig_avail[7]_i_8_n_0 ,\axi_dma.mig_avail[7]_i_9_n_0 }));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [8]),
        .Q(mig_avail[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_avail_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_avail_reg0 [9]),
        .Q(mig_avail[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFF33FF2020)) 
    \axi_dma.mig_blocks[0]_i_1 
       (.I0(\axi_dma.mig_cmd_state[0]_i_4_n_0 ),
        .I1(mig_cmd_state[1]),
        .I2(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .I3(fifo_has_space),
        .I4(mig_blocks[0]),
        .I5(\axi_dma.mig_blocks[0]_i_2_n_0 ),
        .O(\axi_dma.mig_blocks[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6000)) 
    \axi_dma.mig_blocks[0]_i_2 
       (.I0(mig_preview),
        .I1(mig_size[0]),
        .I2(mig_cmd_state[1]),
        .I3(fifo_has_space),
        .O(\axi_dma.mig_blocks[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAAAEEEAEEE)) 
    \axi_dma.mig_blocks[1]_i_1 
       (.I0(\axi_dma.mig_blocks[1]_i_2_n_0 ),
        .I1(mig_blocks[1]),
        .I2(fifo_has_space),
        .I3(mig_cmd_state[1]),
        .I4(\axi_dma.mig_blocks[7]_i_3_n_0 ),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(\axi_dma.mig_blocks[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6A000000)) 
    \axi_dma.mig_blocks[1]_i_2 
       (.I0(mig_size[1]),
        .I1(mig_size[0]),
        .I2(mig_preview),
        .I3(mig_cmd_state[1]),
        .I4(fifo_has_space),
        .O(\axi_dma.mig_blocks[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAAAEEEAEEE)) 
    \axi_dma.mig_blocks[2]_i_1 
       (.I0(\axi_dma.mig_blocks[2]_i_2_n_0 ),
        .I1(mig_blocks[2]),
        .I2(fifo_has_space),
        .I3(mig_cmd_state[1]),
        .I4(\axi_dma.mig_blocks[7]_i_3_n_0 ),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(\axi_dma.mig_blocks[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA000000000000)) 
    \axi_dma.mig_blocks[2]_i_2 
       (.I0(mig_size[2]),
        .I1(mig_preview),
        .I2(mig_size[1]),
        .I3(mig_size[0]),
        .I4(mig_cmd_state[1]),
        .I5(fifo_has_space),
        .O(\axi_dma.mig_blocks[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hACCCAC00ACCCACCC)) 
    \axi_dma.mig_blocks[3]_i_1 
       (.I0(mig_blocks__0[3]),
        .I1(mig_blocks[3]),
        .I2(fifo_has_space),
        .I3(mig_cmd_state[1]),
        .I4(\axi_dma.mig_blocks[7]_i_3_n_0 ),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(\axi_dma.mig_blocks[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \axi_dma.mig_blocks[3]_i_2 
       (.I0(mig_size[1]),
        .I1(mig_size[0]),
        .I2(mig_size[2]),
        .I3(mig_preview),
        .I4(mig_size[3]),
        .O(mig_blocks__0[3]));
  LUT6 #(
    .INIT(64'hACCCAC00ACCCACCC)) 
    \axi_dma.mig_blocks[4]_i_1 
       (.I0(mig_blocks__0[4]),
        .I1(mig_blocks[4]),
        .I2(fifo_has_space),
        .I3(mig_cmd_state[1]),
        .I4(\axi_dma.mig_blocks[7]_i_3_n_0 ),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(\axi_dma.mig_blocks[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \axi_dma.mig_blocks[4]_i_2 
       (.I0(mig_size[2]),
        .I1(mig_size[0]),
        .I2(mig_size[1]),
        .I3(mig_size[3]),
        .I4(mig_preview),
        .I5(mig_size[4]),
        .O(mig_blocks__0[4]));
  LUT6 #(
    .INIT(64'hAEEEAEAAAEEEAEEE)) 
    \axi_dma.mig_blocks[5]_i_1 
       (.I0(\axi_dma.mig_blocks[5]_i_2_n_0 ),
        .I1(mig_blocks[5]),
        .I2(fifo_has_space),
        .I3(mig_cmd_state[1]),
        .I4(\axi_dma.mig_blocks[7]_i_3_n_0 ),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(\axi_dma.mig_blocks[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA6000000)) 
    \axi_dma.mig_blocks[5]_i_2 
       (.I0(mig_size[5]),
        .I1(mig_preview),
        .I2(\axi_dma.mig_blocks[5]_i_3_n_0 ),
        .I3(mig_cmd_state[1]),
        .I4(fifo_has_space),
        .O(\axi_dma.mig_blocks[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \axi_dma.mig_blocks[5]_i_3 
       (.I0(mig_size[3]),
        .I1(mig_size[1]),
        .I2(mig_size[0]),
        .I3(mig_size[2]),
        .I4(mig_size[4]),
        .O(\axi_dma.mig_blocks[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAAAEEEAEEE)) 
    \axi_dma.mig_blocks[6]_i_1 
       (.I0(\axi_dma.mig_blocks[6]_i_2_n_0 ),
        .I1(mig_blocks[6]),
        .I2(fifo_has_space),
        .I3(mig_cmd_state[1]),
        .I4(\axi_dma.mig_blocks[7]_i_3_n_0 ),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(\axi_dma.mig_blocks[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hA6000000)) 
    \axi_dma.mig_blocks[6]_i_2 
       (.I0(mig_size[6]),
        .I1(mig_preview),
        .I2(\axi_dma.mig_preview_i_2_n_0 ),
        .I3(mig_cmd_state[1]),
        .I4(fifo_has_space),
        .O(\axi_dma.mig_blocks[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAEEEAEAAAEEEAEEE)) 
    \axi_dma.mig_blocks[7]_i_1 
       (.I0(\axi_dma.mig_blocks[7]_i_2_n_0 ),
        .I1(mig_blocks[7]),
        .I2(fifo_has_space),
        .I3(mig_cmd_state[1]),
        .I4(\axi_dma.mig_blocks[7]_i_3_n_0 ),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(\axi_dma.mig_blocks[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAA6A000000000000)) 
    \axi_dma.mig_blocks[7]_i_2 
       (.I0(mig_size[7]),
        .I1(mig_preview),
        .I2(mig_size[6]),
        .I3(\axi_dma.mig_preview_i_2_n_0 ),
        .I4(mig_cmd_state[1]),
        .I5(fifo_has_space),
        .O(\axi_dma.mig_blocks[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \axi_dma.mig_blocks[7]_i_3 
       (.I0(\axi_dma.mig_cmd_state[0]_i_7_n_0 ),
        .I1(\axi_dma.mig_cmd_state[0]_i_11_n_0 ),
        .I2(\axi_dma.mig_cmd_state[0]_i_10_n_0 ),
        .I3(\axi_dma.mig_cmd_state[0]_i_9_n_0 ),
        .I4(\axi_dma.mig_cmd_state[0]_i_8_n_0 ),
        .O(\axi_dma.mig_blocks[7]_i_3_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[0] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[0]_i_1_n_0 ),
        .Q(mig_blocks[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[1] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[1]_i_1_n_0 ),
        .Q(mig_blocks[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[2] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[2]_i_1_n_0 ),
        .Q(mig_blocks[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[3] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[3]_i_1_n_0 ),
        .Q(mig_blocks[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[4] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[4]_i_1_n_0 ),
        .Q(mig_blocks[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[5] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[5]_i_1_n_0 ),
        .Q(mig_blocks[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[6] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[6]_i_1_n_0 ),
        .Q(mig_blocks[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_blocks_reg[7] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_blocks[7]_i_1_n_0 ),
        .Q(mig_blocks[7]),
        .R(reset));
  FDRE \axi_dma.mig_cmd_check_reg 
       (.C(clk),
        .CE(1'b1),
        .D(mig_cmd_done),
        .Q(mig_cmd_check),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEAAAAAEA00000000)) 
    \axi_dma.mig_cmd_done_i_1 
       (.I0(mig_cmd_done),
        .I1(M_AXI_STS_in_tdata[7]),
        .I2(\axi_dma.mig_cmd_done_i_2_n_0 ),
        .I3(M_AXI_STS_in_tdata[3]),
        .I4(mig_tag[3]),
        .I5(M_AXI_STS_in_tvalid),
        .O(\axi_dma.mig_cmd_done_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.mig_cmd_done_i_2 
       (.I0(mig_tag[0]),
        .I1(M_AXI_STS_in_tdata[0]),
        .I2(M_AXI_STS_in_tdata[2]),
        .I3(mig_tag[2]),
        .I4(M_AXI_STS_in_tdata[1]),
        .I5(mig_tag[1]),
        .O(\axi_dma.mig_cmd_done_i_2_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_cmd_done_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_cmd_done_i_1_n_0 ),
        .Q(mig_cmd_done),
        .R(reset));
  LUT5 #(
    .INIT(32'hDFFFDF00)) 
    \axi_dma.mig_cmd_error_i_1 
       (.I0(mig_cmd_done0),
        .I1(mig_cmd_error),
        .I2(M_AXI_STS_in_tdata[7]),
        .I3(M_AXI_STS_in_tvalid),
        .I4(mig_cmd_error),
        .O(\axi_dma.mig_cmd_error_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h90)) 
    \axi_dma.mig_cmd_error_i_2 
       (.I0(mig_tag[3]),
        .I1(M_AXI_STS_in_tdata[3]),
        .I2(\axi_dma.mig_cmd_done_i_2_n_0 ),
        .O(mig_cmd_done0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_cmd_error_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_cmd_error_i_1_n_0 ),
        .Q(mig_cmd_error),
        .R(reset));
  LUT6 #(
    .INIT(64'hEEEEFEEEEEEEEEEE)) 
    \axi_dma.mig_cmd_state[0]_i_1 
       (.I0(\axi_dma.mig_cmd_state[0]_i_2_n_0 ),
        .I1(\axi_dma.mig_cmd_state[0]_i_3_n_0 ),
        .I2(\axi_dma.mig_cmd_state[0]_i_4_n_0 ),
        .I3(\axi_dma.mig_cmd_state[0]_i_5_n_0 ),
        .I4(mig_cmd_state[1]),
        .I5(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_10 
       (.I0(mig_avail[15]),
        .I1(mig_avail[16]),
        .I2(mig_avail[17]),
        .I3(mig_avail[18]),
        .I4(mig_avail[19]),
        .I5(mig_avail[20]),
        .O(\axi_dma.mig_cmd_state[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_11 
       (.I0(mig_avail[9]),
        .I1(mig_avail[10]),
        .I2(mig_avail[11]),
        .I3(mig_avail[12]),
        .I4(mig_avail[13]),
        .I5(mig_avail[14]),
        .O(\axi_dma.mig_cmd_state[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_12 
       (.I0(fifo_space[5]),
        .I1(fifo_space[4]),
        .I2(fifo_space[7]),
        .I3(fifo_space[6]),
        .O(\axi_dma.mig_cmd_state[0]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_cmd_state[0]_i_2 
       (.I0(mig_cmd_state[0]),
        .I1(mig_cmd_check),
        .O(\axi_dma.mig_cmd_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \axi_dma.mig_cmd_state[0]_i_3 
       (.I0(mig_preview),
        .I1(fifo_has_space),
        .I2(mig_cmd_state[1]),
        .I3(mig_cmd_state[2]),
        .I4(mig_cmd_state[0]),
        .O(\axi_dma.mig_cmd_state[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_4 
       (.I0(\axi_dma.mig_cmd_state[0]_i_7_n_0 ),
        .I1(\axi_dma.mig_cmd_state[0]_i_8_n_0 ),
        .I2(\axi_dma.mig_cmd_state[0]_i_9_n_0 ),
        .I3(\axi_dma.mig_cmd_state[0]_i_10_n_0 ),
        .I4(\axi_dma.mig_cmd_state[0]_i_11_n_0 ),
        .O(\axi_dma.mig_cmd_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \axi_dma.mig_cmd_state[0]_i_5 
       (.I0(mig_cmd_state[0]),
        .I1(mig_cmd_state[2]),
        .O(\axi_dma.mig_cmd_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_6 
       (.I0(\axi_dma.mig_cmd_state[0]_i_12_n_0 ),
        .I1(fifo_space[1]),
        .I2(fifo_space[0]),
        .I3(fifo_space[3]),
        .I4(fifo_space[2]),
        .I5(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_cmd_state[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_7 
       (.I0(mig_avail[0]),
        .I1(mig_avail[7]),
        .I2(mig_avail[8]),
        .I3(mig_avail[2]),
        .I4(mig_avail[1]),
        .O(\axi_dma.mig_cmd_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_8 
       (.I0(mig_avail[21]),
        .I1(mig_avail[22]),
        .I2(mig_avail[23]),
        .I3(mig_avail[24]),
        .I4(mig_avail[25]),
        .I5(mig_avail[26]),
        .O(\axi_dma.mig_cmd_state[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \axi_dma.mig_cmd_state[0]_i_9 
       (.I0(mig_avail[4]),
        .I1(mig_avail[3]),
        .I2(mig_avail[6]),
        .I3(mig_avail[5]),
        .O(\axi_dma.mig_cmd_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFF0F00F77F000)) 
    \axi_dma.mig_cmd_state[1]_i_1 
       (.I0(fifo_has_space),
        .I1(mig_preview),
        .I2(mig_cmd_check),
        .I3(mig_cmd_state[0]),
        .I4(mig_cmd_state[1]),
        .I5(mig_cmd_state[2]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h1F)) 
    \axi_dma.mig_cmd_state[2]_i_1 
       (.I0(mig_cmd_state[1]),
        .I1(mig_cmd_state[0]),
        .I2(mig_cmd_state[2]),
        .O(\axi_dma.mig_cmd_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF08000800)) 
    \axi_dma.mig_cmd_state[2]_i_2 
       (.I0(mig_preview),
        .I1(fifo_has_space),
        .I2(mig_cmd_state[0]),
        .I3(mig_cmd_state[1]),
        .I4(mig_cmd_check),
        .I5(mig_cmd_state[2]),
        .O(p_0_in__0[2]));
  (* FSM_ENCODED_STATES = "MIG_ST_IDLE:000,MIG_ST_WAIT_HDR:001,MIG_ST_WAIT_SPACE:010,MIG_ST_WAIT_DATA:011,MIG_ST_WAIT_NEXT:100" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_cmd_state_reg[0] 
       (.C(clk),
        .CE(\axi_dma.mig_cmd_state[2]_i_1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mig_cmd_state[0]),
        .R(reset));
  (* FSM_ENCODED_STATES = "MIG_ST_IDLE:000,MIG_ST_WAIT_HDR:001,MIG_ST_WAIT_SPACE:010,MIG_ST_WAIT_DATA:011,MIG_ST_WAIT_NEXT:100" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_cmd_state_reg[1] 
       (.C(clk),
        .CE(\axi_dma.mig_cmd_state[2]_i_1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mig_cmd_state[1]),
        .R(reset));
  (* FSM_ENCODED_STATES = "MIG_ST_IDLE:000,MIG_ST_WAIT_HDR:001,MIG_ST_WAIT_SPACE:010,MIG_ST_WAIT_DATA:011,MIG_ST_WAIT_NEXT:100" *) 
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_cmd_state_reg[2] 
       (.C(clk),
        .CE(\axi_dma.mig_cmd_state[2]_i_1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mig_cmd_state[2]),
        .R(reset));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_10 
       (.I0(mig_size[7]),
        .I1(fifo_space[7]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[7]),
        .O(\axi_dma.mig_diff[7]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_11 
       (.I0(mig_size[6]),
        .I1(fifo_space[6]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[6]),
        .O(\axi_dma.mig_diff[7]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_12 
       (.I0(mig_size[5]),
        .I1(fifo_space[5]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[5]),
        .O(\axi_dma.mig_diff[7]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_13 
       (.I0(mig_size[4]),
        .I1(fifo_space[4]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[4]),
        .O(\axi_dma.mig_diff[7]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_14 
       (.I0(mig_size[3]),
        .I1(fifo_space[3]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[3]),
        .O(\axi_dma.mig_diff[7]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_15 
       (.I0(mig_size[2]),
        .I1(fifo_space[2]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[2]),
        .O(\axi_dma.mig_diff[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_16 
       (.I0(mig_size[1]),
        .I1(fifo_space[1]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[1]),
        .O(\axi_dma.mig_diff[7]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hF909)) 
    \axi_dma.mig_diff[7]_i_17 
       (.I0(mig_size[0]),
        .I1(fifo_space[0]),
        .I2(\axi_dma.fifo_has_space_i_1_n_0 ),
        .I3(mig_diff[0]),
        .O(\axi_dma.mig_diff[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \axi_dma.mig_diff[7]_i_2 
       (.I0(fifo_space[8]),
        .I1(fifo_space[9]),
        .I2(fifo_space[11]),
        .I3(fifo_space[10]),
        .I4(fifo_space[13]),
        .I5(fifo_space[12]),
        .O(\axi_dma.mig_diff[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_diff[7]_i_3 
       (.I0(mig_size[6]),
        .I1(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_diff[7]_i_4 
       (.I0(mig_size[5]),
        .I1(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_diff[7]_i_5 
       (.I0(mig_size[4]),
        .I1(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_diff[7]_i_6 
       (.I0(mig_size[3]),
        .I1(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_diff[7]_i_7 
       (.I0(mig_size[2]),
        .I1(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_diff[7]_i_8 
       (.I0(mig_size[1]),
        .I1(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_dma.mig_diff[7]_i_9 
       (.I0(mig_size[0]),
        .I1(\axi_dma.fifo_has_space_i_1_n_0 ),
        .O(\axi_dma.mig_diff[7]_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_15 ),
        .Q(mig_diff[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_14 ),
        .Q(mig_diff[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_13 ),
        .Q(mig_diff[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_12 ),
        .Q(mig_diff[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_11 ),
        .Q(mig_diff[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_10 ),
        .Q(mig_diff[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_9 ),
        .Q(mig_diff[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_diff_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_diff_reg[7]_i_1_n_8 ),
        .Q(mig_diff[7]),
        .R(1'b0));
  CARRY8 \axi_dma.mig_diff_reg[7]_i_1 
       (.CI(\axi_dma.mig_diff[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.mig_diff_reg[7]_i_1_CO_UNCONNECTED [7],\axi_dma.mig_diff_reg[7]_i_1_n_1 ,\axi_dma.mig_diff_reg[7]_i_1_n_2 ,\axi_dma.mig_diff_reg[7]_i_1_n_3 ,\axi_dma.mig_diff_reg[7]_i_1_n_4 ,\axi_dma.mig_diff_reg[7]_i_1_n_5 ,\axi_dma.mig_diff_reg[7]_i_1_n_6 ,\axi_dma.mig_diff_reg[7]_i_1_n_7 }),
        .DI({1'b0,\axi_dma.mig_diff[7]_i_3_n_0 ,\axi_dma.mig_diff[7]_i_4_n_0 ,\axi_dma.mig_diff[7]_i_5_n_0 ,\axi_dma.mig_diff[7]_i_6_n_0 ,\axi_dma.mig_diff[7]_i_7_n_0 ,\axi_dma.mig_diff[7]_i_8_n_0 ,\axi_dma.mig_diff[7]_i_9_n_0 }),
        .O({\axi_dma.mig_diff_reg[7]_i_1_n_8 ,\axi_dma.mig_diff_reg[7]_i_1_n_9 ,\axi_dma.mig_diff_reg[7]_i_1_n_10 ,\axi_dma.mig_diff_reg[7]_i_1_n_11 ,\axi_dma.mig_diff_reg[7]_i_1_n_12 ,\axi_dma.mig_diff_reg[7]_i_1_n_13 ,\axi_dma.mig_diff_reg[7]_i_1_n_14 ,\axi_dma.mig_diff_reg[7]_i_1_n_15 }),
        .S({\axi_dma.mig_diff[7]_i_10_n_0 ,\axi_dma.mig_diff[7]_i_11_n_0 ,\axi_dma.mig_diff[7]_i_12_n_0 ,\axi_dma.mig_diff[7]_i_13_n_0 ,\axi_dma.mig_diff[7]_i_14_n_0 ,\axi_dma.mig_diff[7]_i_15_n_0 ,\axi_dma.mig_diff[7]_i_16_n_0 ,\axi_dma.mig_diff[7]_i_17_n_0 }));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[0]_i_1 
       (.I0(mig_env_0[0]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[0]),
        .O(\axi_dma.mig_env_0[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[10]_i_1 
       (.I0(mig_env_0[10]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[10]),
        .O(\axi_dma.mig_env_0[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[11]_i_1 
       (.I0(mig_env_0[11]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[11]),
        .O(\axi_dma.mig_env_0[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[12]_i_1 
       (.I0(mig_env_0[12]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[12]),
        .O(\axi_dma.mig_env_0[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[13]_i_1 
       (.I0(mig_env_0[13]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[13]),
        .O(\axi_dma.mig_env_0[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[14]_i_1 
       (.I0(mig_env_0[14]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[14]),
        .O(\axi_dma.mig_env_0[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[15]_i_1 
       (.I0(mig_env_0[15]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[15]),
        .O(\axi_dma.mig_env_0[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[1]_i_1 
       (.I0(mig_env_0[1]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[1]),
        .O(\axi_dma.mig_env_0[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[2]_i_1 
       (.I0(mig_env_0[2]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[2]),
        .O(\axi_dma.mig_env_0[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[3]_i_1 
       (.I0(mig_env_0[3]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[3]),
        .O(\axi_dma.mig_env_0[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[4]_i_1 
       (.I0(mig_env_0[4]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[4]),
        .O(\axi_dma.mig_env_0[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[5]_i_1 
       (.I0(mig_env_0[5]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[5]),
        .O(\axi_dma.mig_env_0[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[6]_i_1 
       (.I0(mig_env_0[6]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[6]),
        .O(\axi_dma.mig_env_0[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[7]_i_1 
       (.I0(mig_env_0[7]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[7]),
        .O(\axi_dma.mig_env_0[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[8]_i_1 
       (.I0(mig_env_0[8]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[8]),
        .O(\axi_dma.mig_env_0[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_0[9]_i_1 
       (.I0(mig_env_0[9]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[9]),
        .O(\axi_dma.mig_env_0[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[0]_i_1_n_0 ),
        .Q(mig_env_0[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[10]_i_1_n_0 ),
        .Q(mig_env_0[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[11]_i_1_n_0 ),
        .Q(mig_env_0[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[12]_i_1_n_0 ),
        .Q(mig_env_0[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[13]_i_1_n_0 ),
        .Q(mig_env_0[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[14]_i_1_n_0 ),
        .Q(mig_env_0[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[15]_i_1_n_0 ),
        .Q(mig_env_0[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[1]_i_1_n_0 ),
        .Q(mig_env_0[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[2]_i_1_n_0 ),
        .Q(mig_env_0[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[3]_i_1_n_0 ),
        .Q(mig_env_0[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[4]_i_1_n_0 ),
        .Q(mig_env_0[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[5]_i_1_n_0 ),
        .Q(mig_env_0[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[6]_i_1_n_0 ),
        .Q(mig_env_0[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[7]_i_1_n_0 ),
        .Q(mig_env_0[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[8]_i_1_n_0 ),
        .Q(mig_env_0[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_0_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_0[9]_i_1_n_0 ),
        .Q(mig_env_0[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[0]_i_1 
       (.I0(mig_env_1[0]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[32]),
        .O(\axi_dma.mig_env_1[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[10]_i_1 
       (.I0(mig_env_1[10]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[42]),
        .O(\axi_dma.mig_env_1[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[11]_i_1 
       (.I0(mig_env_1[11]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[43]),
        .O(\axi_dma.mig_env_1[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[12]_i_1 
       (.I0(mig_env_1[12]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[44]),
        .O(\axi_dma.mig_env_1[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[13]_i_1 
       (.I0(mig_env_1[13]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[45]),
        .O(\axi_dma.mig_env_1[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[14]_i_1 
       (.I0(mig_env_1[14]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[46]),
        .O(\axi_dma.mig_env_1[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[15]_i_1 
       (.I0(mig_env_1[15]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[47]),
        .O(\axi_dma.mig_env_1[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[1]_i_1 
       (.I0(mig_env_1[1]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[33]),
        .O(\axi_dma.mig_env_1[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[2]_i_1 
       (.I0(mig_env_1[2]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[34]),
        .O(\axi_dma.mig_env_1[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[3]_i_1 
       (.I0(mig_env_1[3]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[35]),
        .O(\axi_dma.mig_env_1[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[4]_i_1 
       (.I0(mig_env_1[4]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[36]),
        .O(\axi_dma.mig_env_1[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[5]_i_1 
       (.I0(mig_env_1[5]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[37]),
        .O(\axi_dma.mig_env_1[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[6]_i_1 
       (.I0(mig_env_1[6]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[38]),
        .O(\axi_dma.mig_env_1[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[7]_i_1 
       (.I0(mig_env_1[7]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[39]),
        .O(\axi_dma.mig_env_1[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[8]_i_1 
       (.I0(mig_env_1[8]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[40]),
        .O(\axi_dma.mig_env_1[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_1[9]_i_1 
       (.I0(mig_env_1[9]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[41]),
        .O(\axi_dma.mig_env_1[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[0]_i_1_n_0 ),
        .Q(mig_env_1[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[10]_i_1_n_0 ),
        .Q(mig_env_1[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[11]_i_1_n_0 ),
        .Q(mig_env_1[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[12]_i_1_n_0 ),
        .Q(mig_env_1[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[13]_i_1_n_0 ),
        .Q(mig_env_1[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[14]_i_1_n_0 ),
        .Q(mig_env_1[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[15]_i_1_n_0 ),
        .Q(mig_env_1[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[1]_i_1_n_0 ),
        .Q(mig_env_1[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[2]_i_1_n_0 ),
        .Q(mig_env_1[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[3]_i_1_n_0 ),
        .Q(mig_env_1[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[4]_i_1_n_0 ),
        .Q(mig_env_1[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[5]_i_1_n_0 ),
        .Q(mig_env_1[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[6]_i_1_n_0 ),
        .Q(mig_env_1[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[7]_i_1_n_0 ),
        .Q(mig_env_1[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[8]_i_1_n_0 ),
        .Q(mig_env_1[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_1_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_1[9]_i_1_n_0 ),
        .Q(mig_env_1[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[0]_i_1 
       (.I0(mig_env_2[0]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[64]),
        .O(\axi_dma.mig_env_2[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[10]_i_1 
       (.I0(mig_env_2[10]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[74]),
        .O(\axi_dma.mig_env_2[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[11]_i_1 
       (.I0(mig_env_2[11]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[75]),
        .O(\axi_dma.mig_env_2[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[12]_i_1 
       (.I0(mig_env_2[12]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[76]),
        .O(\axi_dma.mig_env_2[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[13]_i_1 
       (.I0(mig_env_2[13]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[77]),
        .O(\axi_dma.mig_env_2[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[14]_i_1 
       (.I0(mig_env_2[14]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[78]),
        .O(\axi_dma.mig_env_2[14]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \axi_dma.mig_env_2[15]_i_1 
       (.I0(mig_env_2[15]),
        .I1(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_2[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[1]_i_1 
       (.I0(mig_env_2[1]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[65]),
        .O(\axi_dma.mig_env_2[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[2]_i_1 
       (.I0(mig_env_2[2]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[66]),
        .O(\axi_dma.mig_env_2[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[3]_i_1 
       (.I0(mig_env_2[3]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[67]),
        .O(\axi_dma.mig_env_2[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[4]_i_1 
       (.I0(mig_env_2[4]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[68]),
        .O(\axi_dma.mig_env_2[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[5]_i_1 
       (.I0(mig_env_2[5]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[69]),
        .O(\axi_dma.mig_env_2[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[6]_i_1 
       (.I0(mig_env_2[6]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[70]),
        .O(\axi_dma.mig_env_2[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[7]_i_1 
       (.I0(mig_env_2[7]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[71]),
        .O(\axi_dma.mig_env_2[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[8]_i_1 
       (.I0(mig_env_2[8]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[72]),
        .O(\axi_dma.mig_env_2[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_2[9]_i_1 
       (.I0(mig_env_2[9]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[73]),
        .O(\axi_dma.mig_env_2[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[0]_i_1_n_0 ),
        .Q(mig_env_2[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[10]_i_1_n_0 ),
        .Q(mig_env_2[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[11]_i_1_n_0 ),
        .Q(mig_env_2[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[12]_i_1_n_0 ),
        .Q(mig_env_2[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[13]_i_1_n_0 ),
        .Q(mig_env_2[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[14]_i_1_n_0 ),
        .Q(mig_env_2[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[15]_i_1_n_0 ),
        .Q(mig_env_2[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[1]_i_1_n_0 ),
        .Q(mig_env_2[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[2]_i_1_n_0 ),
        .Q(mig_env_2[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[3]_i_1_n_0 ),
        .Q(mig_env_2[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[4]_i_1_n_0 ),
        .Q(mig_env_2[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[5]_i_1_n_0 ),
        .Q(mig_env_2[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[6]_i_1_n_0 ),
        .Q(mig_env_2[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[7]_i_1_n_0 ),
        .Q(mig_env_2[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[8]_i_1_n_0 ),
        .Q(mig_env_2[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_2_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_2[9]_i_1_n_0 ),
        .Q(mig_env_2[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[0]_i_1 
       (.I0(mig_env_3[0]),
        .I1(M_AXI_TDATA_in[96]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[10]_i_1 
       (.I0(mig_env_3[10]),
        .I1(M_AXI_TDATA_in[106]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[11]_i_1 
       (.I0(mig_env_3[11]),
        .I1(M_AXI_TDATA_in[107]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[12]_i_1 
       (.I0(mig_env_3[12]),
        .I1(M_AXI_TDATA_in[108]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[13]_i_1 
       (.I0(mig_env_3[13]),
        .I1(M_AXI_TDATA_in[109]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[14]_i_1 
       (.I0(mig_env_3[14]),
        .I1(M_AXI_TDATA_in[110]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[15]_i_1 
       (.I0(mig_env_3[15]),
        .I1(M_AXI_TDATA_in[111]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[1]_i_1 
       (.I0(mig_env_3[1]),
        .I1(M_AXI_TDATA_in[97]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[2]_i_1 
       (.I0(mig_env_3[2]),
        .I1(M_AXI_TDATA_in[98]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[3]_i_1 
       (.I0(mig_env_3[3]),
        .I1(M_AXI_TDATA_in[99]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[4]_i_1 
       (.I0(mig_env_3[4]),
        .I1(M_AXI_TDATA_in[100]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[5]_i_1 
       (.I0(mig_env_3[5]),
        .I1(M_AXI_TDATA_in[101]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[6]_i_1 
       (.I0(mig_env_3[6]),
        .I1(M_AXI_TDATA_in[102]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[7]_i_1 
       (.I0(mig_env_3[7]),
        .I1(M_AXI_TDATA_in[103]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[8]_i_1 
       (.I0(mig_env_3[8]),
        .I1(M_AXI_TDATA_in[104]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_3[9]_i_1 
       (.I0(mig_env_3[9]),
        .I1(M_AXI_TDATA_in[105]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_3[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[0]_i_1_n_0 ),
        .Q(mig_env_3[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[10]_i_1_n_0 ),
        .Q(mig_env_3[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[11]_i_1_n_0 ),
        .Q(mig_env_3[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[12]_i_1_n_0 ),
        .Q(mig_env_3[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[13]_i_1_n_0 ),
        .Q(mig_env_3[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[14]_i_1_n_0 ),
        .Q(mig_env_3[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[15]_i_1_n_0 ),
        .Q(mig_env_3[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[1]_i_1_n_0 ),
        .Q(mig_env_3[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[2]_i_1_n_0 ),
        .Q(mig_env_3[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[3]_i_1_n_0 ),
        .Q(mig_env_3[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[4]_i_1_n_0 ),
        .Q(mig_env_3[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[5]_i_1_n_0 ),
        .Q(mig_env_3[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[6]_i_1_n_0 ),
        .Q(mig_env_3[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[7]_i_1_n_0 ),
        .Q(mig_env_3[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[8]_i_1_n_0 ),
        .Q(mig_env_3[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_3_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_3[9]_i_1_n_0 ),
        .Q(mig_env_3[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[0]_i_1 
       (.I0(mig_env_4[0]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[128]),
        .O(\axi_dma.mig_env_4[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[10]_i_1 
       (.I0(mig_env_4[10]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[138]),
        .O(\axi_dma.mig_env_4[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[11]_i_1 
       (.I0(mig_env_4[11]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[139]),
        .O(\axi_dma.mig_env_4[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[12]_i_1 
       (.I0(mig_env_4[12]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[140]),
        .O(\axi_dma.mig_env_4[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[13]_i_1 
       (.I0(mig_env_4[13]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[141]),
        .O(\axi_dma.mig_env_4[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[14]_i_1 
       (.I0(mig_env_4[14]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[142]),
        .O(\axi_dma.mig_env_4[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[15]_i_1 
       (.I0(mig_env_4[15]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[143]),
        .O(\axi_dma.mig_env_4[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[1]_i_1 
       (.I0(mig_env_4[1]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[129]),
        .O(\axi_dma.mig_env_4[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[2]_i_1 
       (.I0(mig_env_4[2]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[130]),
        .O(\axi_dma.mig_env_4[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[3]_i_1 
       (.I0(mig_env_4[3]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[131]),
        .O(\axi_dma.mig_env_4[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[4]_i_1 
       (.I0(mig_env_4[4]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[132]),
        .O(\axi_dma.mig_env_4[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[5]_i_1 
       (.I0(mig_env_4[5]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[133]),
        .O(\axi_dma.mig_env_4[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[6]_i_1 
       (.I0(mig_env_4[6]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[134]),
        .O(\axi_dma.mig_env_4[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[7]_i_1 
       (.I0(mig_env_4[7]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[135]),
        .O(\axi_dma.mig_env_4[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[8]_i_1 
       (.I0(mig_env_4[8]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[136]),
        .O(\axi_dma.mig_env_4[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_env_4[9]_i_1 
       (.I0(mig_env_4[9]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(M_AXI_TDATA_in[137]),
        .O(\axi_dma.mig_env_4[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[0]_i_1_n_0 ),
        .Q(mig_env_4[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[10]_i_1_n_0 ),
        .Q(mig_env_4[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[11]_i_1_n_0 ),
        .Q(mig_env_4[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[12]_i_1_n_0 ),
        .Q(mig_env_4[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[13]_i_1_n_0 ),
        .Q(mig_env_4[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[14]_i_1_n_0 ),
        .Q(mig_env_4[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[15]_i_1_n_0 ),
        .Q(mig_env_4[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[1]_i_1_n_0 ),
        .Q(mig_env_4[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[2]_i_1_n_0 ),
        .Q(mig_env_4[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[3]_i_1_n_0 ),
        .Q(mig_env_4[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[4]_i_1_n_0 ),
        .Q(mig_env_4[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[5]_i_1_n_0 ),
        .Q(mig_env_4[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[6]_i_1_n_0 ),
        .Q(mig_env_4[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[7]_i_1_n_0 ),
        .Q(mig_env_4[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[8]_i_1_n_0 ),
        .Q(mig_env_4[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_4_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_4[9]_i_1_n_0 ),
        .Q(mig_env_4[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[0]_i_1 
       (.I0(mig_env_5[0]),
        .I1(M_AXI_TDATA_in[160]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[10]_i_1 
       (.I0(mig_env_5[10]),
        .I1(M_AXI_TDATA_in[170]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[11]_i_1 
       (.I0(mig_env_5[11]),
        .I1(M_AXI_TDATA_in[171]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[12]_i_1 
       (.I0(mig_env_5[12]),
        .I1(M_AXI_TDATA_in[172]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[13]_i_1 
       (.I0(mig_env_5[13]),
        .I1(M_AXI_TDATA_in[173]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[14]_i_1 
       (.I0(mig_env_5[14]),
        .I1(M_AXI_TDATA_in[174]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[15]_i_1 
       (.I0(mig_env_5[15]),
        .I1(M_AXI_TDATA_in[175]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[1]_i_1 
       (.I0(mig_env_5[1]),
        .I1(M_AXI_TDATA_in[161]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[2]_i_1 
       (.I0(mig_env_5[2]),
        .I1(M_AXI_TDATA_in[162]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[3]_i_1 
       (.I0(mig_env_5[3]),
        .I1(M_AXI_TDATA_in[163]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[4]_i_1 
       (.I0(mig_env_5[4]),
        .I1(M_AXI_TDATA_in[164]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[5]_i_1 
       (.I0(mig_env_5[5]),
        .I1(M_AXI_TDATA_in[165]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[6]_i_1 
       (.I0(mig_env_5[6]),
        .I1(M_AXI_TDATA_in[166]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[7]_i_1 
       (.I0(mig_env_5[7]),
        .I1(M_AXI_TDATA_in[167]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[8]_i_1 
       (.I0(mig_env_5[8]),
        .I1(M_AXI_TDATA_in[168]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_5[9]_i_1 
       (.I0(mig_env_5[9]),
        .I1(M_AXI_TDATA_in[169]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_5[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[0]_i_1_n_0 ),
        .Q(mig_env_5[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[10]_i_1_n_0 ),
        .Q(mig_env_5[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[11]_i_1_n_0 ),
        .Q(mig_env_5[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[12]_i_1_n_0 ),
        .Q(mig_env_5[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[13]_i_1_n_0 ),
        .Q(mig_env_5[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[14]_i_1_n_0 ),
        .Q(mig_env_5[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[15]_i_1_n_0 ),
        .Q(mig_env_5[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[1]_i_1_n_0 ),
        .Q(mig_env_5[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[2]_i_1_n_0 ),
        .Q(mig_env_5[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[3]_i_1_n_0 ),
        .Q(mig_env_5[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[4]_i_1_n_0 ),
        .Q(mig_env_5[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[5]_i_1_n_0 ),
        .Q(mig_env_5[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[6]_i_1_n_0 ),
        .Q(mig_env_5[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[7]_i_1_n_0 ),
        .Q(mig_env_5[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[8]_i_1_n_0 ),
        .Q(mig_env_5[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_5_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_5[9]_i_1_n_0 ),
        .Q(mig_env_5[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[0]_i_1 
       (.I0(mig_env_6[0]),
        .I1(M_AXI_TDATA_in[192]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[10]_i_1 
       (.I0(mig_env_6[10]),
        .I1(M_AXI_TDATA_in[202]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[11]_i_1 
       (.I0(mig_env_6[11]),
        .I1(M_AXI_TDATA_in[203]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[12]_i_1 
       (.I0(mig_env_6[12]),
        .I1(M_AXI_TDATA_in[204]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[13]_i_1 
       (.I0(mig_env_6[13]),
        .I1(M_AXI_TDATA_in[205]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[14]_i_1 
       (.I0(mig_env_6[14]),
        .I1(M_AXI_TDATA_in[206]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[15]_i_1 
       (.I0(mig_env_6[15]),
        .I1(M_AXI_TDATA_in[207]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[1]_i_1 
       (.I0(mig_env_6[1]),
        .I1(M_AXI_TDATA_in[193]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[2]_i_1 
       (.I0(mig_env_6[2]),
        .I1(M_AXI_TDATA_in[194]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[3]_i_1 
       (.I0(mig_env_6[3]),
        .I1(M_AXI_TDATA_in[195]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[4]_i_1 
       (.I0(mig_env_6[4]),
        .I1(M_AXI_TDATA_in[196]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[5]_i_1 
       (.I0(mig_env_6[5]),
        .I1(M_AXI_TDATA_in[197]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[6]_i_1 
       (.I0(mig_env_6[6]),
        .I1(M_AXI_TDATA_in[198]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[7]_i_1 
       (.I0(mig_env_6[7]),
        .I1(M_AXI_TDATA_in[199]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[8]_i_1 
       (.I0(mig_env_6[8]),
        .I1(M_AXI_TDATA_in[200]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_6[9]_i_1 
       (.I0(mig_env_6[9]),
        .I1(M_AXI_TDATA_in[201]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_6[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[0]_i_1_n_0 ),
        .Q(mig_env_6[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[10]_i_1_n_0 ),
        .Q(mig_env_6[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[11]_i_1_n_0 ),
        .Q(mig_env_6[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[12]_i_1_n_0 ),
        .Q(mig_env_6[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[13]_i_1_n_0 ),
        .Q(mig_env_6[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[14]_i_1_n_0 ),
        .Q(mig_env_6[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[15]_i_1_n_0 ),
        .Q(mig_env_6[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[1]_i_1_n_0 ),
        .Q(mig_env_6[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[2]_i_1_n_0 ),
        .Q(mig_env_6[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[3]_i_1_n_0 ),
        .Q(mig_env_6[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[4]_i_1_n_0 ),
        .Q(mig_env_6[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[5]_i_1_n_0 ),
        .Q(mig_env_6[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[6]_i_1_n_0 ),
        .Q(mig_env_6[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[7]_i_1_n_0 ),
        .Q(mig_env_6[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[8]_i_1_n_0 ),
        .Q(mig_env_6[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_6_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_6[9]_i_1_n_0 ),
        .Q(mig_env_6[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[0]_i_1 
       (.I0(mig_env_7[0]),
        .I1(M_AXI_TDATA_in[224]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[10]_i_1 
       (.I0(mig_env_7[10]),
        .I1(M_AXI_TDATA_in[234]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[11]_i_1 
       (.I0(mig_env_7[11]),
        .I1(M_AXI_TDATA_in[235]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[12]_i_1 
       (.I0(mig_env_7[12]),
        .I1(M_AXI_TDATA_in[236]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[13]_i_1 
       (.I0(mig_env_7[13]),
        .I1(M_AXI_TDATA_in[237]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[14]_i_1 
       (.I0(mig_env_7[14]),
        .I1(M_AXI_TDATA_in[238]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[15]_i_1 
       (.I0(mig_env_7[15]),
        .I1(M_AXI_TDATA_in[239]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[1]_i_1 
       (.I0(mig_env_7[1]),
        .I1(M_AXI_TDATA_in[225]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[2]_i_1 
       (.I0(mig_env_7[2]),
        .I1(M_AXI_TDATA_in[226]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[3]_i_1 
       (.I0(mig_env_7[3]),
        .I1(M_AXI_TDATA_in[227]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[4]_i_1 
       (.I0(mig_env_7[4]),
        .I1(M_AXI_TDATA_in[228]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[5]_i_1 
       (.I0(mig_env_7[5]),
        .I1(M_AXI_TDATA_in[229]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[6]_i_1 
       (.I0(mig_env_7[6]),
        .I1(M_AXI_TDATA_in[230]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[7]_i_1 
       (.I0(mig_env_7[7]),
        .I1(M_AXI_TDATA_in[231]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[8]_i_1 
       (.I0(mig_env_7[8]),
        .I1(M_AXI_TDATA_in[232]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_env_7[9]_i_1 
       (.I0(mig_env_7[9]),
        .I1(M_AXI_TDATA_in[233]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_env_7[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[0]_i_1_n_0 ),
        .Q(mig_env_7[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[10]_i_1_n_0 ),
        .Q(mig_env_7[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[11]_i_1_n_0 ),
        .Q(mig_env_7[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[12]_i_1_n_0 ),
        .Q(mig_env_7[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[13]_i_1_n_0 ),
        .Q(mig_env_7[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[14]_i_1_n_0 ),
        .Q(mig_env_7[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[15]_i_1_n_0 ),
        .Q(mig_env_7[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[1]_i_1_n_0 ),
        .Q(mig_env_7[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[2]_i_1_n_0 ),
        .Q(mig_env_7[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[3]_i_1_n_0 ),
        .Q(mig_env_7[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[4]_i_1_n_0 ),
        .Q(mig_env_7[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[5]_i_1_n_0 ),
        .Q(mig_env_7[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[6]_i_1_n_0 ),
        .Q(mig_env_7[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[7]_i_1_n_0 ),
        .Q(mig_env_7[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[8]_i_1_n_0 ),
        .Q(mig_env_7[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_env_7_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_env_7[9]_i_1_n_0 ),
        .Q(mig_env_7[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[0]_i_1 
       (.I0(M_AXI_TDATA_in[96]),
        .I1(mig_hdr_angle[0]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[10]_i_1 
       (.I0(M_AXI_TDATA_in[106]),
        .I1(mig_hdr_angle[10]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[11]_i_1 
       (.I0(M_AXI_TDATA_in[107]),
        .I1(mig_hdr_angle[11]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[12]_i_1 
       (.I0(M_AXI_TDATA_in[108]),
        .I1(mig_hdr_angle[12]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[13]_i_1 
       (.I0(M_AXI_TDATA_in[109]),
        .I1(mig_hdr_angle[13]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[14]_i_1 
       (.I0(M_AXI_TDATA_in[110]),
        .I1(mig_hdr_angle[14]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[15]_i_1 
       (.I0(M_AXI_TDATA_in[111]),
        .I1(mig_hdr_angle[15]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[1]_i_1 
       (.I0(M_AXI_TDATA_in[97]),
        .I1(mig_hdr_angle[1]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[2]_i_1 
       (.I0(M_AXI_TDATA_in[98]),
        .I1(mig_hdr_angle[2]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[3]_i_1 
       (.I0(M_AXI_TDATA_in[99]),
        .I1(mig_hdr_angle[3]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[4]_i_1 
       (.I0(M_AXI_TDATA_in[100]),
        .I1(mig_hdr_angle[4]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[5]_i_1 
       (.I0(M_AXI_TDATA_in[101]),
        .I1(mig_hdr_angle[5]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[6]_i_1 
       (.I0(M_AXI_TDATA_in[102]),
        .I1(mig_hdr_angle[6]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[7]_i_1 
       (.I0(M_AXI_TDATA_in[103]),
        .I1(mig_hdr_angle[7]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[8]_i_1 
       (.I0(M_AXI_TDATA_in[104]),
        .I1(mig_hdr_angle[8]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_angle[9]_i_1 
       (.I0(M_AXI_TDATA_in[105]),
        .I1(mig_hdr_angle[9]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_angle[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[0]_i_1_n_0 ),
        .Q(mig_hdr_angle[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[10]_i_1_n_0 ),
        .Q(mig_hdr_angle[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[11]_i_1_n_0 ),
        .Q(mig_hdr_angle[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[12]_i_1_n_0 ),
        .Q(mig_hdr_angle[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[13]_i_1_n_0 ),
        .Q(mig_hdr_angle[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[14]_i_1_n_0 ),
        .Q(mig_hdr_angle[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[15]_i_1_n_0 ),
        .Q(mig_hdr_angle[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[1]_i_1_n_0 ),
        .Q(mig_hdr_angle[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[2]_i_1_n_0 ),
        .Q(mig_hdr_angle[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[3]_i_1_n_0 ),
        .Q(mig_hdr_angle[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[4]_i_1_n_0 ),
        .Q(mig_hdr_angle[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[5]_i_1_n_0 ),
        .Q(mig_hdr_angle[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[6]_i_1_n_0 ),
        .Q(mig_hdr_angle[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[7]_i_1_n_0 ),
        .Q(mig_hdr_angle[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[8]_i_1_n_0 ),
        .Q(mig_hdr_angle[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_angle_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_angle[9]_i_1_n_0 ),
        .Q(mig_hdr_angle[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[0]_i_1 
       (.I0(M_AXI_TDATA_in[64]),
        .I1(mig_hdr_blocks[0]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[1]_i_1 
       (.I0(M_AXI_TDATA_in[65]),
        .I1(mig_hdr_blocks[1]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[2]_i_1 
       (.I0(M_AXI_TDATA_in[66]),
        .I1(mig_hdr_blocks[2]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[3]_i_1 
       (.I0(M_AXI_TDATA_in[67]),
        .I1(mig_hdr_blocks[3]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[4]_i_1 
       (.I0(M_AXI_TDATA_in[68]),
        .I1(mig_hdr_blocks[4]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[5]_i_1 
       (.I0(M_AXI_TDATA_in[69]),
        .I1(mig_hdr_blocks[5]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[6]_i_1 
       (.I0(M_AXI_TDATA_in[70]),
        .I1(mig_hdr_blocks[6]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_blocks[7]_i_1 
       (.I0(M_AXI_TDATA_in[71]),
        .I1(mig_hdr_blocks[7]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_blocks[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[0]_i_1_n_0 ),
        .Q(mig_hdr_blocks[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[1]_i_1_n_0 ),
        .Q(mig_hdr_blocks[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[2]_i_1_n_0 ),
        .Q(mig_hdr_blocks[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[3]_i_1_n_0 ),
        .Q(mig_hdr_blocks[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[4]_i_1_n_0 ),
        .Q(mig_hdr_blocks[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[5]_i_1_n_0 ),
        .Q(mig_hdr_blocks[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[6]_i_1_n_0 ),
        .Q(mig_hdr_blocks[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_blocks_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_blocks[7]_i_1_n_0 ),
        .Q(mig_hdr_blocks[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[0]_i_1 
       (.I0(M_AXI_TDATA_in[112]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[0]),
        .O(\axi_dma.mig_hdr_doa_error[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[10]_i_1 
       (.I0(M_AXI_TDATA_in[122]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[10]),
        .O(\axi_dma.mig_hdr_doa_error[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[11]_i_1 
       (.I0(M_AXI_TDATA_in[123]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[11]),
        .O(\axi_dma.mig_hdr_doa_error[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[12]_i_1 
       (.I0(M_AXI_TDATA_in[124]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[12]),
        .O(\axi_dma.mig_hdr_doa_error[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[13]_i_1 
       (.I0(M_AXI_TDATA_in[125]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[13]),
        .O(\axi_dma.mig_hdr_doa_error[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[14]_i_1 
       (.I0(M_AXI_TDATA_in[126]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[14]),
        .O(\axi_dma.mig_hdr_doa_error[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[15]_i_1 
       (.I0(M_AXI_TDATA_in[127]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[15]),
        .O(\axi_dma.mig_hdr_doa_error[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[1]_i_1 
       (.I0(M_AXI_TDATA_in[113]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[1]),
        .O(\axi_dma.mig_hdr_doa_error[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[2]_i_1 
       (.I0(M_AXI_TDATA_in[114]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[2]),
        .O(\axi_dma.mig_hdr_doa_error[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[3]_i_1 
       (.I0(M_AXI_TDATA_in[115]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[3]),
        .O(\axi_dma.mig_hdr_doa_error[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[4]_i_1 
       (.I0(M_AXI_TDATA_in[116]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[4]),
        .O(\axi_dma.mig_hdr_doa_error[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[5]_i_1 
       (.I0(M_AXI_TDATA_in[117]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[5]),
        .O(\axi_dma.mig_hdr_doa_error[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[6]_i_1 
       (.I0(M_AXI_TDATA_in[118]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[6]),
        .O(\axi_dma.mig_hdr_doa_error[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[7]_i_1 
       (.I0(M_AXI_TDATA_in[119]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[7]),
        .O(\axi_dma.mig_hdr_doa_error[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[8]_i_1 
       (.I0(M_AXI_TDATA_in[120]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[8]),
        .O(\axi_dma.mig_hdr_doa_error[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_doa_error[9]_i_1 
       (.I0(M_AXI_TDATA_in[121]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_doa_error[9]),
        .O(\axi_dma.mig_hdr_doa_error[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[0]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[10]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[11]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[12]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[13]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[14]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[15]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[1]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[2]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[3]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[4]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[5]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[6]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[7]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[8]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_doa_error_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_doa_error[9]_i_1_n_0 ),
        .Q(mig_hdr_doa_error[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[0]_i_1 
       (.I0(M_AXI_TDATA_in[192]),
        .I1(mig_hdr_env_mean[0]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[10]_i_1 
       (.I0(M_AXI_TDATA_in[202]),
        .I1(mig_hdr_env_mean[10]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[11]_i_1 
       (.I0(M_AXI_TDATA_in[203]),
        .I1(mig_hdr_env_mean[11]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[12]_i_1 
       (.I0(M_AXI_TDATA_in[204]),
        .I1(mig_hdr_env_mean[12]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[13]_i_1 
       (.I0(M_AXI_TDATA_in[205]),
        .I1(mig_hdr_env_mean[13]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[14]_i_1 
       (.I0(M_AXI_TDATA_in[206]),
        .I1(mig_hdr_env_mean[14]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[15]_i_1 
       (.I0(M_AXI_TDATA_in[207]),
        .I1(mig_hdr_env_mean[15]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[1]_i_1 
       (.I0(M_AXI_TDATA_in[193]),
        .I1(mig_hdr_env_mean[1]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[2]_i_1 
       (.I0(M_AXI_TDATA_in[194]),
        .I1(mig_hdr_env_mean[2]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[3]_i_1 
       (.I0(M_AXI_TDATA_in[195]),
        .I1(mig_hdr_env_mean[3]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[4]_i_1 
       (.I0(M_AXI_TDATA_in[196]),
        .I1(mig_hdr_env_mean[4]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[5]_i_1 
       (.I0(M_AXI_TDATA_in[197]),
        .I1(mig_hdr_env_mean[5]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[6]_i_1 
       (.I0(M_AXI_TDATA_in[198]),
        .I1(mig_hdr_env_mean[6]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[7]_i_1 
       (.I0(M_AXI_TDATA_in[199]),
        .I1(mig_hdr_env_mean[7]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[8]_i_1 
       (.I0(M_AXI_TDATA_in[200]),
        .I1(mig_hdr_env_mean[8]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_env_mean[9]_i_1 
       (.I0(M_AXI_TDATA_in[201]),
        .I1(mig_hdr_env_mean[9]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_env_mean[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[0]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[10]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[11]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[12]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[13]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[14]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[15]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[1]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[2]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[3]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[4]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[5]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[6]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[7]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[8]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_mean_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_mean[9]_i_1_n_0 ),
        .Q(mig_hdr_env_mean[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[0]_i_1 
       (.I0(M_AXI_TDATA_in[208]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[0]),
        .O(\axi_dma.mig_hdr_env_std[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[10]_i_1 
       (.I0(M_AXI_TDATA_in[218]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[10]),
        .O(\axi_dma.mig_hdr_env_std[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[11]_i_1 
       (.I0(M_AXI_TDATA_in[219]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[11]),
        .O(\axi_dma.mig_hdr_env_std[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[12]_i_1 
       (.I0(M_AXI_TDATA_in[220]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[12]),
        .O(\axi_dma.mig_hdr_env_std[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[13]_i_1 
       (.I0(M_AXI_TDATA_in[221]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[13]),
        .O(\axi_dma.mig_hdr_env_std[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[14]_i_1 
       (.I0(M_AXI_TDATA_in[222]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[14]),
        .O(\axi_dma.mig_hdr_env_std[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[15]_i_1 
       (.I0(M_AXI_TDATA_in[223]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[15]),
        .O(\axi_dma.mig_hdr_env_std[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[1]_i_1 
       (.I0(M_AXI_TDATA_in[209]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[1]),
        .O(\axi_dma.mig_hdr_env_std[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[2]_i_1 
       (.I0(M_AXI_TDATA_in[210]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[2]),
        .O(\axi_dma.mig_hdr_env_std[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[3]_i_1 
       (.I0(M_AXI_TDATA_in[211]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[3]),
        .O(\axi_dma.mig_hdr_env_std[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[4]_i_1 
       (.I0(M_AXI_TDATA_in[212]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[4]),
        .O(\axi_dma.mig_hdr_env_std[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[5]_i_1 
       (.I0(M_AXI_TDATA_in[213]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[5]),
        .O(\axi_dma.mig_hdr_env_std[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[6]_i_1 
       (.I0(M_AXI_TDATA_in[214]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[6]),
        .O(\axi_dma.mig_hdr_env_std[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[7]_i_1 
       (.I0(M_AXI_TDATA_in[215]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[7]),
        .O(\axi_dma.mig_hdr_env_std[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[8]_i_1 
       (.I0(M_AXI_TDATA_in[216]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[8]),
        .O(\axi_dma.mig_hdr_env_std[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_env_std[9]_i_1 
       (.I0(M_AXI_TDATA_in[217]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_env_std[9]),
        .O(\axi_dma.mig_hdr_env_std[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[0]_i_1_n_0 ),
        .Q(mig_hdr_env_std[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[10]_i_1_n_0 ),
        .Q(mig_hdr_env_std[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[11]_i_1_n_0 ),
        .Q(mig_hdr_env_std[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[12]_i_1_n_0 ),
        .Q(mig_hdr_env_std[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[13]_i_1_n_0 ),
        .Q(mig_hdr_env_std[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[14]_i_1_n_0 ),
        .Q(mig_hdr_env_std[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[15]_i_1_n_0 ),
        .Q(mig_hdr_env_std[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[1]_i_1_n_0 ),
        .Q(mig_hdr_env_std[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[2]_i_1_n_0 ),
        .Q(mig_hdr_env_std[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[3]_i_1_n_0 ),
        .Q(mig_hdr_env_std[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[4]_i_1_n_0 ),
        .Q(mig_hdr_env_std[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[5]_i_1_n_0 ),
        .Q(mig_hdr_env_std[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[6]_i_1_n_0 ),
        .Q(mig_hdr_env_std[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[7]_i_1_n_0 ),
        .Q(mig_hdr_env_std[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[8]_i_1_n_0 ),
        .Q(mig_hdr_env_std[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_env_std_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_env_std[9]_i_1_n_0 ),
        .Q(mig_hdr_env_std[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_flags[0]_i_1 
       (.I0(M_AXI_TDATA_in[72]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_flags[0]),
        .O(\axi_dma.mig_hdr_flags[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_flags[1]_i_1 
       (.I0(M_AXI_TDATA_in[73]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_flags[1]),
        .O(\axi_dma.mig_hdr_flags[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_flags[2]_i_1 
       (.I0(M_AXI_TDATA_in[74]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_flags[2]),
        .O(\axi_dma.mig_hdr_flags[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_flags[3]_i_1 
       (.I0(M_AXI_TDATA_in[75]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_flags[3]),
        .O(\axi_dma.mig_hdr_flags[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_flags[4]_i_1 
       (.I0(M_AXI_TDATA_in[76]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_flags[4]),
        .O(\axi_dma.mig_hdr_flags[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_flags[5]_i_1 
       (.I0(M_AXI_TDATA_in[77]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_flags[5]),
        .O(\axi_dma.mig_hdr_flags[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_flags[6]_i_1 
       (.I0(M_AXI_TDATA_in[78]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_flags[6]),
        .O(\axi_dma.mig_hdr_flags[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F870)) 
    \axi_dma.mig_hdr_flags[7]_i_1 
       (.I0(M_AXI_TVALID_in),
        .I1(M_AXI_TREADY_in),
        .I2(mig_hdr_flags[7]),
        .I3(mig_hdr_flags[7]),
        .I4(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_flags[7]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_flags[0]_i_1_n_0 ),
        .Q(mig_hdr_flags[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_flags[1]_i_1_n_0 ),
        .Q(mig_hdr_flags[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_flags[2]_i_1_n_0 ),
        .Q(mig_hdr_flags[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_flags[3]_i_1_n_0 ),
        .Q(mig_hdr_flags[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_flags[4]_i_1_n_0 ),
        .Q(mig_hdr_flags[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_flags[5]_i_1_n_0 ),
        .Q(mig_hdr_flags[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_flags[6]_i_1_n_0 ),
        .Q(mig_hdr_flags[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_flags_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_hdr_flags[7]_i_1_n_0 ),
        .Q(mig_hdr_flags[7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[0]_i_1 
       (.I0(M_AXI_TDATA_in[128]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[0]),
        .O(\axi_dma.mig_hdr_freq[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[10]_i_1 
       (.I0(M_AXI_TDATA_in[138]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[10]),
        .O(\axi_dma.mig_hdr_freq[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[11]_i_1 
       (.I0(M_AXI_TDATA_in[139]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[11]),
        .O(\axi_dma.mig_hdr_freq[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[12]_i_1 
       (.I0(M_AXI_TDATA_in[140]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[12]),
        .O(\axi_dma.mig_hdr_freq[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[13]_i_1 
       (.I0(M_AXI_TDATA_in[141]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[13]),
        .O(\axi_dma.mig_hdr_freq[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[14]_i_1 
       (.I0(M_AXI_TDATA_in[142]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[14]),
        .O(\axi_dma.mig_hdr_freq[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[15]_i_1 
       (.I0(M_AXI_TDATA_in[143]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[15]),
        .O(\axi_dma.mig_hdr_freq[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[16]_i_1 
       (.I0(M_AXI_TDATA_in[144]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[16]),
        .O(\axi_dma.mig_hdr_freq[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[17]_i_1 
       (.I0(M_AXI_TDATA_in[145]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[17]),
        .O(\axi_dma.mig_hdr_freq[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[18]_i_1 
       (.I0(M_AXI_TDATA_in[146]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[18]),
        .O(\axi_dma.mig_hdr_freq[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[19]_i_1 
       (.I0(M_AXI_TDATA_in[147]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[19]),
        .O(\axi_dma.mig_hdr_freq[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[1]_i_1 
       (.I0(M_AXI_TDATA_in[129]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[1]),
        .O(\axi_dma.mig_hdr_freq[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[20]_i_1 
       (.I0(M_AXI_TDATA_in[148]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[20]),
        .O(\axi_dma.mig_hdr_freq[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[21]_i_1 
       (.I0(M_AXI_TDATA_in[149]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[21]),
        .O(\axi_dma.mig_hdr_freq[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[22]_i_1 
       (.I0(M_AXI_TDATA_in[150]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[22]),
        .O(\axi_dma.mig_hdr_freq[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[23]_i_1 
       (.I0(M_AXI_TDATA_in[151]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[23]),
        .O(\axi_dma.mig_hdr_freq[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[24]_i_1 
       (.I0(M_AXI_TDATA_in[152]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[24]),
        .O(\axi_dma.mig_hdr_freq[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[25]_i_1 
       (.I0(M_AXI_TDATA_in[153]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[25]),
        .O(\axi_dma.mig_hdr_freq[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[26]_i_1 
       (.I0(M_AXI_TDATA_in[154]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[26]),
        .O(\axi_dma.mig_hdr_freq[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[27]_i_1 
       (.I0(M_AXI_TDATA_in[155]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[27]),
        .O(\axi_dma.mig_hdr_freq[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[28]_i_1 
       (.I0(M_AXI_TDATA_in[156]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[28]),
        .O(\axi_dma.mig_hdr_freq[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[29]_i_1 
       (.I0(M_AXI_TDATA_in[157]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[29]),
        .O(\axi_dma.mig_hdr_freq[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[2]_i_1 
       (.I0(M_AXI_TDATA_in[130]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[2]),
        .O(\axi_dma.mig_hdr_freq[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[30]_i_1 
       (.I0(M_AXI_TDATA_in[158]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[30]),
        .O(\axi_dma.mig_hdr_freq[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[31]_i_1 
       (.I0(M_AXI_TDATA_in[159]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[31]),
        .O(\axi_dma.mig_hdr_freq[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[3]_i_1 
       (.I0(M_AXI_TDATA_in[131]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[3]),
        .O(\axi_dma.mig_hdr_freq[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[4]_i_1 
       (.I0(M_AXI_TDATA_in[132]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[4]),
        .O(\axi_dma.mig_hdr_freq[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[5]_i_1 
       (.I0(M_AXI_TDATA_in[133]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[5]),
        .O(\axi_dma.mig_hdr_freq[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[6]_i_1 
       (.I0(M_AXI_TDATA_in[134]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[6]),
        .O(\axi_dma.mig_hdr_freq[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[7]_i_1 
       (.I0(M_AXI_TDATA_in[135]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[7]),
        .O(\axi_dma.mig_hdr_freq[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[8]_i_1 
       (.I0(M_AXI_TDATA_in[136]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[8]),
        .O(\axi_dma.mig_hdr_freq[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq[9]_i_1 
       (.I0(M_AXI_TDATA_in[137]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq[9]),
        .O(\axi_dma.mig_hdr_freq[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[0]_i_1_n_0 ),
        .Q(mig_hdr_freq[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[10]_i_1_n_0 ),
        .Q(mig_hdr_freq[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[11]_i_1_n_0 ),
        .Q(mig_hdr_freq[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[12]_i_1_n_0 ),
        .Q(mig_hdr_freq[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[13]_i_1_n_0 ),
        .Q(mig_hdr_freq[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[14]_i_1_n_0 ),
        .Q(mig_hdr_freq[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[15]_i_1_n_0 ),
        .Q(mig_hdr_freq[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[16] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[16]_i_1_n_0 ),
        .Q(mig_hdr_freq[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[17] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[17]_i_1_n_0 ),
        .Q(mig_hdr_freq[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[18] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[18]_i_1_n_0 ),
        .Q(mig_hdr_freq[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[19] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[19]_i_1_n_0 ),
        .Q(mig_hdr_freq[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[1]_i_1_n_0 ),
        .Q(mig_hdr_freq[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[20] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[20]_i_1_n_0 ),
        .Q(mig_hdr_freq[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[21] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[21]_i_1_n_0 ),
        .Q(mig_hdr_freq[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[22] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[22]_i_1_n_0 ),
        .Q(mig_hdr_freq[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[23] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[23]_i_1_n_0 ),
        .Q(mig_hdr_freq[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[24] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[24]_i_1_n_0 ),
        .Q(mig_hdr_freq[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[25] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[25]_i_1_n_0 ),
        .Q(mig_hdr_freq[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[26] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[26]_i_1_n_0 ),
        .Q(mig_hdr_freq[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[27] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[27]_i_1_n_0 ),
        .Q(mig_hdr_freq[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[28] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[28]_i_1_n_0 ),
        .Q(mig_hdr_freq[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[29] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[29]_i_1_n_0 ),
        .Q(mig_hdr_freq[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[2]_i_1_n_0 ),
        .Q(mig_hdr_freq[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[30] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[30]_i_1_n_0 ),
        .Q(mig_hdr_freq[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[31] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[31]_i_1_n_0 ),
        .Q(mig_hdr_freq[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[3]_i_1_n_0 ),
        .Q(mig_hdr_freq[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[4]_i_1_n_0 ),
        .Q(mig_hdr_freq[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[5]_i_1_n_0 ),
        .Q(mig_hdr_freq[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[6]_i_1_n_0 ),
        .Q(mig_hdr_freq[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[7]_i_1_n_0 ),
        .Q(mig_hdr_freq[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[8]_i_1_n_0 ),
        .Q(mig_hdr_freq[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq[9]_i_1_n_0 ),
        .Q(mig_hdr_freq[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[0]_i_1 
       (.I0(M_AXI_TDATA_in[240]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[0]),
        .O(\axi_dma.mig_hdr_freq_std[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[10]_i_1 
       (.I0(M_AXI_TDATA_in[250]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[10]),
        .O(\axi_dma.mig_hdr_freq_std[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[11]_i_1 
       (.I0(M_AXI_TDATA_in[251]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[11]),
        .O(\axi_dma.mig_hdr_freq_std[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[12]_i_1 
       (.I0(M_AXI_TDATA_in[252]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[12]),
        .O(\axi_dma.mig_hdr_freq_std[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[13]_i_1 
       (.I0(M_AXI_TDATA_in[253]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[13]),
        .O(\axi_dma.mig_hdr_freq_std[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[14]_i_1 
       (.I0(M_AXI_TDATA_in[254]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[14]),
        .O(\axi_dma.mig_hdr_freq_std[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[15]_i_1 
       (.I0(M_AXI_TDATA_in[255]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[15]),
        .O(\axi_dma.mig_hdr_freq_std[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[1]_i_1 
       (.I0(M_AXI_TDATA_in[241]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[1]),
        .O(\axi_dma.mig_hdr_freq_std[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[2]_i_1 
       (.I0(M_AXI_TDATA_in[242]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[2]),
        .O(\axi_dma.mig_hdr_freq_std[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[3]_i_1 
       (.I0(M_AXI_TDATA_in[243]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[3]),
        .O(\axi_dma.mig_hdr_freq_std[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[4]_i_1 
       (.I0(M_AXI_TDATA_in[244]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[4]),
        .O(\axi_dma.mig_hdr_freq_std[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[5]_i_1 
       (.I0(M_AXI_TDATA_in[245]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[5]),
        .O(\axi_dma.mig_hdr_freq_std[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[6]_i_1 
       (.I0(M_AXI_TDATA_in[246]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[6]),
        .O(\axi_dma.mig_hdr_freq_std[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[7]_i_1 
       (.I0(M_AXI_TDATA_in[247]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[7]),
        .O(\axi_dma.mig_hdr_freq_std[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[8]_i_1 
       (.I0(M_AXI_TDATA_in[248]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[8]),
        .O(\axi_dma.mig_hdr_freq_std[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_freq_std[9]_i_1 
       (.I0(M_AXI_TDATA_in[249]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_freq_std[9]),
        .O(\axi_dma.mig_hdr_freq_std[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[0]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[10]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[11]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[12]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[13]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[14]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[15]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[1]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[2]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[3]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[4]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[5]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[6]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[7]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[8]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_freq_std_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_freq_std[9]_i_1_n_0 ),
        .Q(mig_hdr_freq_std[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[0]_i_1 
       (.I0(M_AXI_TDATA_in[160]),
        .I1(mig_hdr_max_env[0]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[10]_i_1 
       (.I0(M_AXI_TDATA_in[170]),
        .I1(mig_hdr_max_env[10]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[11]_i_1 
       (.I0(M_AXI_TDATA_in[171]),
        .I1(mig_hdr_max_env[11]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[12]_i_1 
       (.I0(M_AXI_TDATA_in[172]),
        .I1(mig_hdr_max_env[12]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[13]_i_1 
       (.I0(M_AXI_TDATA_in[173]),
        .I1(mig_hdr_max_env[13]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[14]_i_1 
       (.I0(M_AXI_TDATA_in[174]),
        .I1(mig_hdr_max_env[14]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[15]_i_1 
       (.I0(M_AXI_TDATA_in[175]),
        .I1(mig_hdr_max_env[15]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[1]_i_1 
       (.I0(M_AXI_TDATA_in[161]),
        .I1(mig_hdr_max_env[1]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[2]_i_1 
       (.I0(M_AXI_TDATA_in[162]),
        .I1(mig_hdr_max_env[2]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[3]_i_1 
       (.I0(M_AXI_TDATA_in[163]),
        .I1(mig_hdr_max_env[3]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[4]_i_1 
       (.I0(M_AXI_TDATA_in[164]),
        .I1(mig_hdr_max_env[4]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[5]_i_1 
       (.I0(M_AXI_TDATA_in[165]),
        .I1(mig_hdr_max_env[5]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[6]_i_1 
       (.I0(M_AXI_TDATA_in[166]),
        .I1(mig_hdr_max_env[6]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[7]_i_1 
       (.I0(M_AXI_TDATA_in[167]),
        .I1(mig_hdr_max_env[7]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[8]_i_1 
       (.I0(M_AXI_TDATA_in[168]),
        .I1(mig_hdr_max_env[8]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_max_env[9]_i_1 
       (.I0(M_AXI_TDATA_in[169]),
        .I1(mig_hdr_max_env[9]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_max_env[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[0]_i_1_n_0 ),
        .Q(mig_hdr_max_env[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[10]_i_1_n_0 ),
        .Q(mig_hdr_max_env[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[11]_i_1_n_0 ),
        .Q(mig_hdr_max_env[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[12]_i_1_n_0 ),
        .Q(mig_hdr_max_env[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[13]_i_1_n_0 ),
        .Q(mig_hdr_max_env[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[14]_i_1_n_0 ),
        .Q(mig_hdr_max_env[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[15]_i_1_n_0 ),
        .Q(mig_hdr_max_env[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[1]_i_1_n_0 ),
        .Q(mig_hdr_max_env[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[2]_i_1_n_0 ),
        .Q(mig_hdr_max_env[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[3]_i_1_n_0 ),
        .Q(mig_hdr_max_env[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[4]_i_1_n_0 ),
        .Q(mig_hdr_max_env[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[5]_i_1_n_0 ),
        .Q(mig_hdr_max_env[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[6]_i_1_n_0 ),
        .Q(mig_hdr_max_env[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[7]_i_1_n_0 ),
        .Q(mig_hdr_max_env[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[8]_i_1_n_0 ),
        .Q(mig_hdr_max_env[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_env_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_env[9]_i_1_n_0 ),
        .Q(mig_hdr_max_env[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[0]_i_1 
       (.I0(M_AXI_TDATA_in[176]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[0]),
        .O(\axi_dma.mig_hdr_max_pos[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[10]_i_1 
       (.I0(M_AXI_TDATA_in[186]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[10]),
        .O(\axi_dma.mig_hdr_max_pos[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[11]_i_1 
       (.I0(M_AXI_TDATA_in[187]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[11]),
        .O(\axi_dma.mig_hdr_max_pos[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[12]_i_1 
       (.I0(M_AXI_TDATA_in[188]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[12]),
        .O(\axi_dma.mig_hdr_max_pos[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[13]_i_1 
       (.I0(M_AXI_TDATA_in[189]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[13]),
        .O(\axi_dma.mig_hdr_max_pos[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[14]_i_1 
       (.I0(M_AXI_TDATA_in[190]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[14]),
        .O(\axi_dma.mig_hdr_max_pos[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[15]_i_1 
       (.I0(M_AXI_TDATA_in[191]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[15]),
        .O(\axi_dma.mig_hdr_max_pos[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[1]_i_1 
       (.I0(M_AXI_TDATA_in[177]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[1]),
        .O(\axi_dma.mig_hdr_max_pos[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[2]_i_1 
       (.I0(M_AXI_TDATA_in[178]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[2]),
        .O(\axi_dma.mig_hdr_max_pos[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[3]_i_1 
       (.I0(M_AXI_TDATA_in[179]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[3]),
        .O(\axi_dma.mig_hdr_max_pos[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[4]_i_1 
       (.I0(M_AXI_TDATA_in[180]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[4]),
        .O(\axi_dma.mig_hdr_max_pos[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[5]_i_1 
       (.I0(M_AXI_TDATA_in[181]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[5]),
        .O(\axi_dma.mig_hdr_max_pos[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[6]_i_1 
       (.I0(M_AXI_TDATA_in[182]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[6]),
        .O(\axi_dma.mig_hdr_max_pos[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[7]_i_1 
       (.I0(M_AXI_TDATA_in[183]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[7]),
        .O(\axi_dma.mig_hdr_max_pos[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[8]_i_1 
       (.I0(M_AXI_TDATA_in[184]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[8]),
        .O(\axi_dma.mig_hdr_max_pos[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_max_pos[9]_i_1 
       (.I0(M_AXI_TDATA_in[185]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_max_pos[9]),
        .O(\axi_dma.mig_hdr_max_pos[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[0]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[10]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[11]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[12]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[13]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[14]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[15]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[1]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[2]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[3]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[4]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[5]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[6]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[7]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[8]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_max_pos_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_max_pos[9]_i_1_n_0 ),
        .Q(mig_hdr_max_pos[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[0]_i_1 
       (.I0(M_AXI_TDATA_in[224]),
        .I1(mig_hdr_phase_std[0]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[10]_i_1 
       (.I0(M_AXI_TDATA_in[234]),
        .I1(mig_hdr_phase_std[10]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[11]_i_1 
       (.I0(M_AXI_TDATA_in[235]),
        .I1(mig_hdr_phase_std[11]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[12]_i_1 
       (.I0(M_AXI_TDATA_in[236]),
        .I1(mig_hdr_phase_std[12]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[13]_i_1 
       (.I0(M_AXI_TDATA_in[237]),
        .I1(mig_hdr_phase_std[13]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[14]_i_1 
       (.I0(M_AXI_TDATA_in[238]),
        .I1(mig_hdr_phase_std[14]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[15]_i_1 
       (.I0(M_AXI_TDATA_in[239]),
        .I1(mig_hdr_phase_std[15]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[1]_i_1 
       (.I0(M_AXI_TDATA_in[225]),
        .I1(mig_hdr_phase_std[1]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[2]_i_1 
       (.I0(M_AXI_TDATA_in[226]),
        .I1(mig_hdr_phase_std[2]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[3]_i_1 
       (.I0(M_AXI_TDATA_in[227]),
        .I1(mig_hdr_phase_std[3]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[4]_i_1 
       (.I0(M_AXI_TDATA_in[228]),
        .I1(mig_hdr_phase_std[4]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[5]_i_1 
       (.I0(M_AXI_TDATA_in[229]),
        .I1(mig_hdr_phase_std[5]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[6]_i_1 
       (.I0(M_AXI_TDATA_in[230]),
        .I1(mig_hdr_phase_std[6]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[7]_i_1 
       (.I0(M_AXI_TDATA_in[231]),
        .I1(mig_hdr_phase_std[7]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[8]_i_1 
       (.I0(M_AXI_TDATA_in[232]),
        .I1(mig_hdr_phase_std[8]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hAC)) 
    \axi_dma.mig_hdr_phase_std[9]_i_1 
       (.I0(M_AXI_TDATA_in[233]),
        .I1(mig_hdr_phase_std[9]),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_hdr_phase_std[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[0]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[10]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[11]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[12]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[13]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[14]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[15]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[1]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[2]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[3]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[4]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[5]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[6]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[7]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[8]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_phase_std_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_phase_std[9]_i_1_n_0 ),
        .Q(mig_hdr_phase_std[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[0]_i_1 
       (.I0(M_AXI_TDATA_in[0]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[0]),
        .O(\axi_dma.mig_hdr_sample[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[10]_i_1 
       (.I0(M_AXI_TDATA_in[10]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[10]),
        .O(\axi_dma.mig_hdr_sample[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[11]_i_1 
       (.I0(M_AXI_TDATA_in[11]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[11]),
        .O(\axi_dma.mig_hdr_sample[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[12]_i_1 
       (.I0(M_AXI_TDATA_in[12]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[12]),
        .O(\axi_dma.mig_hdr_sample[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[13]_i_1 
       (.I0(M_AXI_TDATA_in[13]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[13]),
        .O(\axi_dma.mig_hdr_sample[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[14]_i_1 
       (.I0(M_AXI_TDATA_in[14]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[14]),
        .O(\axi_dma.mig_hdr_sample[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[15]_i_1 
       (.I0(M_AXI_TDATA_in[15]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[15]),
        .O(\axi_dma.mig_hdr_sample[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[16]_i_1 
       (.I0(M_AXI_TDATA_in[16]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[16]),
        .O(\axi_dma.mig_hdr_sample[16]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[17]_i_1 
       (.I0(M_AXI_TDATA_in[17]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[17]),
        .O(\axi_dma.mig_hdr_sample[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[18]_i_1 
       (.I0(M_AXI_TDATA_in[18]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[18]),
        .O(\axi_dma.mig_hdr_sample[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[19]_i_1 
       (.I0(M_AXI_TDATA_in[19]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[19]),
        .O(\axi_dma.mig_hdr_sample[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[1]_i_1 
       (.I0(M_AXI_TDATA_in[1]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[1]),
        .O(\axi_dma.mig_hdr_sample[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[20]_i_1 
       (.I0(M_AXI_TDATA_in[20]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[20]),
        .O(\axi_dma.mig_hdr_sample[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[21]_i_1 
       (.I0(M_AXI_TDATA_in[21]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[21]),
        .O(\axi_dma.mig_hdr_sample[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[22]_i_1 
       (.I0(M_AXI_TDATA_in[22]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[22]),
        .O(\axi_dma.mig_hdr_sample[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[23]_i_1 
       (.I0(M_AXI_TDATA_in[23]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[23]),
        .O(\axi_dma.mig_hdr_sample[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[24]_i_1 
       (.I0(M_AXI_TDATA_in[24]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[24]),
        .O(\axi_dma.mig_hdr_sample[24]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[25]_i_1 
       (.I0(M_AXI_TDATA_in[25]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[25]),
        .O(\axi_dma.mig_hdr_sample[25]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[26]_i_1 
       (.I0(M_AXI_TDATA_in[26]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[26]),
        .O(\axi_dma.mig_hdr_sample[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[27]_i_1 
       (.I0(M_AXI_TDATA_in[27]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[27]),
        .O(\axi_dma.mig_hdr_sample[27]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[28]_i_1 
       (.I0(M_AXI_TDATA_in[28]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[28]),
        .O(\axi_dma.mig_hdr_sample[28]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[29]_i_1 
       (.I0(M_AXI_TDATA_in[29]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[29]),
        .O(\axi_dma.mig_hdr_sample[29]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[2]_i_1 
       (.I0(M_AXI_TDATA_in[2]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[2]),
        .O(\axi_dma.mig_hdr_sample[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[30]_i_1 
       (.I0(M_AXI_TDATA_in[30]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[30]),
        .O(\axi_dma.mig_hdr_sample[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[31]_i_1 
       (.I0(M_AXI_TDATA_in[31]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[31]),
        .O(\axi_dma.mig_hdr_sample[31]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[32]_i_1 
       (.I0(M_AXI_TDATA_in[32]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[32]),
        .O(\axi_dma.mig_hdr_sample[32]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[33]_i_1 
       (.I0(M_AXI_TDATA_in[33]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[33]),
        .O(\axi_dma.mig_hdr_sample[33]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[34]_i_1 
       (.I0(M_AXI_TDATA_in[34]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[34]),
        .O(\axi_dma.mig_hdr_sample[34]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[35]_i_1 
       (.I0(M_AXI_TDATA_in[35]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[35]),
        .O(\axi_dma.mig_hdr_sample[35]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[36]_i_1 
       (.I0(M_AXI_TDATA_in[36]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[36]),
        .O(\axi_dma.mig_hdr_sample[36]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[37]_i_1 
       (.I0(M_AXI_TDATA_in[37]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[37]),
        .O(\axi_dma.mig_hdr_sample[37]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[38]_i_1 
       (.I0(M_AXI_TDATA_in[38]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[38]),
        .O(\axi_dma.mig_hdr_sample[38]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[39]_i_1 
       (.I0(M_AXI_TDATA_in[39]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[39]),
        .O(\axi_dma.mig_hdr_sample[39]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[3]_i_1 
       (.I0(M_AXI_TDATA_in[3]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[3]),
        .O(\axi_dma.mig_hdr_sample[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[40]_i_1 
       (.I0(M_AXI_TDATA_in[40]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[40]),
        .O(\axi_dma.mig_hdr_sample[40]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[41]_i_1 
       (.I0(M_AXI_TDATA_in[41]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[41]),
        .O(\axi_dma.mig_hdr_sample[41]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[42]_i_1 
       (.I0(M_AXI_TDATA_in[42]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[42]),
        .O(\axi_dma.mig_hdr_sample[42]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[43]_i_1 
       (.I0(M_AXI_TDATA_in[43]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[43]),
        .O(\axi_dma.mig_hdr_sample[43]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[44]_i_1 
       (.I0(M_AXI_TDATA_in[44]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[44]),
        .O(\axi_dma.mig_hdr_sample[44]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[45]_i_1 
       (.I0(M_AXI_TDATA_in[45]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[45]),
        .O(\axi_dma.mig_hdr_sample[45]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[46]_i_1 
       (.I0(M_AXI_TDATA_in[46]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[46]),
        .O(\axi_dma.mig_hdr_sample[46]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[47]_i_1 
       (.I0(M_AXI_TDATA_in[47]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[47]),
        .O(\axi_dma.mig_hdr_sample[47]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[48]_i_1 
       (.I0(M_AXI_TDATA_in[48]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[48]),
        .O(\axi_dma.mig_hdr_sample[48]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[49]_i_1 
       (.I0(M_AXI_TDATA_in[49]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[49]),
        .O(\axi_dma.mig_hdr_sample[49]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[4]_i_1 
       (.I0(M_AXI_TDATA_in[4]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[4]),
        .O(\axi_dma.mig_hdr_sample[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[50]_i_1 
       (.I0(M_AXI_TDATA_in[50]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[50]),
        .O(\axi_dma.mig_hdr_sample[50]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[51]_i_1 
       (.I0(M_AXI_TDATA_in[51]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[51]),
        .O(\axi_dma.mig_hdr_sample[51]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[52]_i_1 
       (.I0(M_AXI_TDATA_in[52]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[52]),
        .O(\axi_dma.mig_hdr_sample[52]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[53]_i_1 
       (.I0(M_AXI_TDATA_in[53]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[53]),
        .O(\axi_dma.mig_hdr_sample[53]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[54]_i_1 
       (.I0(M_AXI_TDATA_in[54]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[54]),
        .O(\axi_dma.mig_hdr_sample[54]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[55]_i_1 
       (.I0(M_AXI_TDATA_in[55]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[55]),
        .O(\axi_dma.mig_hdr_sample[55]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[56]_i_1 
       (.I0(M_AXI_TDATA_in[56]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[56]),
        .O(\axi_dma.mig_hdr_sample[56]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[57]_i_1 
       (.I0(M_AXI_TDATA_in[57]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[57]),
        .O(\axi_dma.mig_hdr_sample[57]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[58]_i_1 
       (.I0(M_AXI_TDATA_in[58]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[58]),
        .O(\axi_dma.mig_hdr_sample[58]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[59]_i_1 
       (.I0(M_AXI_TDATA_in[59]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[59]),
        .O(\axi_dma.mig_hdr_sample[59]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[5]_i_1 
       (.I0(M_AXI_TDATA_in[5]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[5]),
        .O(\axi_dma.mig_hdr_sample[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[60]_i_1 
       (.I0(M_AXI_TDATA_in[60]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[60]),
        .O(\axi_dma.mig_hdr_sample[60]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[61]_i_1 
       (.I0(M_AXI_TDATA_in[61]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[61]),
        .O(\axi_dma.mig_hdr_sample[61]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[62]_i_1 
       (.I0(M_AXI_TDATA_in[62]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[62]),
        .O(\axi_dma.mig_hdr_sample[62]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[63]_i_1 
       (.I0(M_AXI_TDATA_in[63]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[63]),
        .O(\axi_dma.mig_hdr_sample[63]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[6]_i_1 
       (.I0(M_AXI_TDATA_in[6]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[6]),
        .O(\axi_dma.mig_hdr_sample[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[7]_i_1 
       (.I0(M_AXI_TDATA_in[7]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[7]),
        .O(\axi_dma.mig_hdr_sample[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[8]_i_1 
       (.I0(M_AXI_TDATA_in[8]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[8]),
        .O(\axi_dma.mig_hdr_sample[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_sample[9]_i_1 
       (.I0(M_AXI_TDATA_in[9]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_sample[9]),
        .O(\axi_dma.mig_hdr_sample[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[0]_i_1_n_0 ),
        .Q(mig_hdr_sample[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[10]_i_1_n_0 ),
        .Q(mig_hdr_sample[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[11]_i_1_n_0 ),
        .Q(mig_hdr_sample[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[12]_i_1_n_0 ),
        .Q(mig_hdr_sample[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[13]_i_1_n_0 ),
        .Q(mig_hdr_sample[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[14]_i_1_n_0 ),
        .Q(mig_hdr_sample[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[15]_i_1_n_0 ),
        .Q(mig_hdr_sample[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[16] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[16]_i_1_n_0 ),
        .Q(mig_hdr_sample[16]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[17] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[17]_i_1_n_0 ),
        .Q(mig_hdr_sample[17]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[18] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[18]_i_1_n_0 ),
        .Q(mig_hdr_sample[18]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[19] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[19]_i_1_n_0 ),
        .Q(mig_hdr_sample[19]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[1]_i_1_n_0 ),
        .Q(mig_hdr_sample[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[20] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[20]_i_1_n_0 ),
        .Q(mig_hdr_sample[20]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[21] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[21]_i_1_n_0 ),
        .Q(mig_hdr_sample[21]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[22] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[22]_i_1_n_0 ),
        .Q(mig_hdr_sample[22]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[23] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[23]_i_1_n_0 ),
        .Q(mig_hdr_sample[23]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[24] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[24]_i_1_n_0 ),
        .Q(mig_hdr_sample[24]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[25] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[25]_i_1_n_0 ),
        .Q(mig_hdr_sample[25]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[26] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[26]_i_1_n_0 ),
        .Q(mig_hdr_sample[26]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[27] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[27]_i_1_n_0 ),
        .Q(mig_hdr_sample[27]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[28] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[28]_i_1_n_0 ),
        .Q(mig_hdr_sample[28]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[29] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[29]_i_1_n_0 ),
        .Q(mig_hdr_sample[29]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[2]_i_1_n_0 ),
        .Q(mig_hdr_sample[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[30] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[30]_i_1_n_0 ),
        .Q(mig_hdr_sample[30]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[31] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[31]_i_1_n_0 ),
        .Q(mig_hdr_sample[31]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[32] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[32]_i_1_n_0 ),
        .Q(mig_hdr_sample[32]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[33] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[33]_i_1_n_0 ),
        .Q(mig_hdr_sample[33]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[34] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[34]_i_1_n_0 ),
        .Q(mig_hdr_sample[34]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[35] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[35]_i_1_n_0 ),
        .Q(mig_hdr_sample[35]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[36] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[36]_i_1_n_0 ),
        .Q(mig_hdr_sample[36]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[37] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[37]_i_1_n_0 ),
        .Q(mig_hdr_sample[37]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[38] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[38]_i_1_n_0 ),
        .Q(mig_hdr_sample[38]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[39] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[39]_i_1_n_0 ),
        .Q(mig_hdr_sample[39]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[3]_i_1_n_0 ),
        .Q(mig_hdr_sample[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[40] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[40]_i_1_n_0 ),
        .Q(mig_hdr_sample[40]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[41] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[41]_i_1_n_0 ),
        .Q(mig_hdr_sample[41]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[42] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[42]_i_1_n_0 ),
        .Q(mig_hdr_sample[42]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[43] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[43]_i_1_n_0 ),
        .Q(mig_hdr_sample[43]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[44] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[44]_i_1_n_0 ),
        .Q(mig_hdr_sample[44]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[45] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[45]_i_1_n_0 ),
        .Q(mig_hdr_sample[45]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[46] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[46]_i_1_n_0 ),
        .Q(mig_hdr_sample[46]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[47] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[47]_i_1_n_0 ),
        .Q(mig_hdr_sample[47]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[48] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[48]_i_1_n_0 ),
        .Q(mig_hdr_sample[48]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[49] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[49]_i_1_n_0 ),
        .Q(mig_hdr_sample[49]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[4]_i_1_n_0 ),
        .Q(mig_hdr_sample[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[50] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[50]_i_1_n_0 ),
        .Q(mig_hdr_sample[50]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[51] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[51]_i_1_n_0 ),
        .Q(mig_hdr_sample[51]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[52] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[52]_i_1_n_0 ),
        .Q(mig_hdr_sample[52]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[53] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[53]_i_1_n_0 ),
        .Q(mig_hdr_sample[53]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[54] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[54]_i_1_n_0 ),
        .Q(mig_hdr_sample[54]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[55] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[55]_i_1_n_0 ),
        .Q(mig_hdr_sample[55]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[56] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[56]_i_1_n_0 ),
        .Q(mig_hdr_sample[56]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[57] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[57]_i_1_n_0 ),
        .Q(mig_hdr_sample[57]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[58] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[58]_i_1_n_0 ),
        .Q(mig_hdr_sample[58]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[59] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[59]_i_1_n_0 ),
        .Q(mig_hdr_sample[59]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[5]_i_1_n_0 ),
        .Q(mig_hdr_sample[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[60] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[60]_i_1_n_0 ),
        .Q(mig_hdr_sample[60]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[61] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[61]_i_1_n_0 ),
        .Q(mig_hdr_sample[61]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[62] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[62]_i_1_n_0 ),
        .Q(mig_hdr_sample[62]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[63] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[63]_i_1_n_0 ),
        .Q(mig_hdr_sample[63]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[6]_i_1_n_0 ),
        .Q(mig_hdr_sample[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[7]_i_1_n_0 ),
        .Q(mig_hdr_sample[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[8]_i_1_n_0 ),
        .Q(mig_hdr_sample[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_sample_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_sample[9]_i_1_n_0 ),
        .Q(mig_hdr_sample[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[0]_i_1 
       (.I0(M_AXI_TDATA_in[80]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[0]),
        .O(\axi_dma.mig_hdr_size[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[10]_i_1 
       (.I0(M_AXI_TDATA_in[90]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[10]),
        .O(\axi_dma.mig_hdr_size[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[11]_i_1 
       (.I0(M_AXI_TDATA_in[91]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[11]),
        .O(\axi_dma.mig_hdr_size[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[12]_i_1 
       (.I0(M_AXI_TDATA_in[92]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[12]),
        .O(\axi_dma.mig_hdr_size[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[13]_i_1 
       (.I0(M_AXI_TDATA_in[93]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[13]),
        .O(\axi_dma.mig_hdr_size[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[14]_i_1 
       (.I0(M_AXI_TDATA_in[94]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[14]),
        .O(\axi_dma.mig_hdr_size[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[15]_i_1 
       (.I0(M_AXI_TDATA_in[95]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[15]),
        .O(\axi_dma.mig_hdr_size[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[1]_i_1 
       (.I0(M_AXI_TDATA_in[81]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[1]),
        .O(\axi_dma.mig_hdr_size[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[2]_i_1 
       (.I0(M_AXI_TDATA_in[82]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[2]),
        .O(\axi_dma.mig_hdr_size[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[3]_i_1 
       (.I0(M_AXI_TDATA_in[83]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[3]),
        .O(\axi_dma.mig_hdr_size[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[4]_i_1 
       (.I0(M_AXI_TDATA_in[84]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[4]),
        .O(\axi_dma.mig_hdr_size[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[5]_i_1 
       (.I0(M_AXI_TDATA_in[85]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[5]),
        .O(\axi_dma.mig_hdr_size[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[6]_i_1 
       (.I0(M_AXI_TDATA_in[86]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[6]),
        .O(\axi_dma.mig_hdr_size[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[7]_i_1 
       (.I0(M_AXI_TDATA_in[87]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[7]),
        .O(\axi_dma.mig_hdr_size[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[8]_i_1 
       (.I0(M_AXI_TDATA_in[88]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[8]),
        .O(\axi_dma.mig_hdr_size[8]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_hdr_size[9]_i_1 
       (.I0(M_AXI_TDATA_in[89]),
        .I1(M_AXI_TDATA_in[79]),
        .I2(mig_hdr_size[9]),
        .O(\axi_dma.mig_hdr_size[9]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[0] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[0]_i_1_n_0 ),
        .Q(mig_hdr_size[0]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[10] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[10]_i_1_n_0 ),
        .Q(mig_hdr_size[10]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[11] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[11]_i_1_n_0 ),
        .Q(mig_hdr_size[11]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[12] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[12]_i_1_n_0 ),
        .Q(mig_hdr_size[12]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[13] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[13]_i_1_n_0 ),
        .Q(mig_hdr_size[13]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[14] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[14]_i_1_n_0 ),
        .Q(mig_hdr_size[14]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[15] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[15]_i_1_n_0 ),
        .Q(mig_hdr_size[15]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[1] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[1]_i_1_n_0 ),
        .Q(mig_hdr_size[1]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[2] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[2]_i_1_n_0 ),
        .Q(mig_hdr_size[2]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[3] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[3]_i_1_n_0 ),
        .Q(mig_hdr_size[3]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[4] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[4]_i_1_n_0 ),
        .Q(mig_hdr_size[4]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[5] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[5]_i_1_n_0 ),
        .Q(mig_hdr_size[5]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[6] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[6]_i_1_n_0 ),
        .Q(mig_hdr_size[6]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[7] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[7]_i_1_n_0 ),
        .Q(mig_hdr_size[7]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[8] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[8]_i_1_n_0 ),
        .Q(mig_hdr_size[8]),
        .R(1'b0));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_hdr_size_reg[9] 
       (.C(clk),
        .CE(p_7_in),
        .D(\axi_dma.mig_hdr_size[9]_i_1_n_0 ),
        .Q(mig_hdr_size[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h00BF)) 
    \axi_dma.mig_preview_i_1 
       (.I0(\axi_dma.mig_preview_i_2_n_0 ),
        .I1(mig_size[6]),
        .I2(mig_size[7]),
        .I3(data0),
        .O(\axi_dma.mig_preview_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_dma.mig_preview_i_10 
       (.I0(mig_avail[9]),
        .I1(mig_avail[10]),
        .I2(mig_avail[11]),
        .O(\axi_dma.mig_preview_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h41000041)) 
    \axi_dma.mig_preview_i_11 
       (.I0(mig_avail[8]),
        .I1(mig_avail[7]),
        .I2(mig_size[7]),
        .I3(mig_size[6]),
        .I4(mig_avail[6]),
        .O(\axi_dma.mig_preview_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.mig_preview_i_12 
       (.I0(mig_avail[5]),
        .I1(mig_size[5]),
        .I2(mig_avail[4]),
        .I3(mig_size[4]),
        .I4(mig_size[3]),
        .I5(mig_avail[3]),
        .O(\axi_dma.mig_preview_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \axi_dma.mig_preview_i_13 
       (.I0(mig_avail[2]),
        .I1(mig_size[2]),
        .I2(mig_avail[1]),
        .I3(mig_size[1]),
        .I4(mig_size[0]),
        .I5(mig_avail[0]),
        .O(\axi_dma.mig_preview_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \axi_dma.mig_preview_i_2 
       (.I0(mig_size[4]),
        .I1(mig_size[2]),
        .I2(mig_size[0]),
        .I3(mig_size[1]),
        .I4(mig_size[3]),
        .I5(mig_size[5]),
        .O(\axi_dma.mig_preview_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_dma.mig_preview_i_5 
       (.I0(mig_avail[24]),
        .I1(mig_avail[25]),
        .I2(mig_avail[26]),
        .O(\axi_dma.mig_preview_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_dma.mig_preview_i_6 
       (.I0(mig_avail[21]),
        .I1(mig_avail[22]),
        .I2(mig_avail[23]),
        .O(\axi_dma.mig_preview_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_dma.mig_preview_i_7 
       (.I0(mig_avail[18]),
        .I1(mig_avail[19]),
        .I2(mig_avail[20]),
        .O(\axi_dma.mig_preview_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_dma.mig_preview_i_8 
       (.I0(mig_avail[15]),
        .I1(mig_avail[16]),
        .I2(mig_avail[17]),
        .O(\axi_dma.mig_preview_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \axi_dma.mig_preview_i_9 
       (.I0(mig_avail[12]),
        .I1(mig_avail[13]),
        .I2(mig_avail[14]),
        .O(\axi_dma.mig_preview_i_9_n_0 ));
  (* KEEP = "yes" *) 
  FDRE \axi_dma.mig_preview_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.mig_preview_i_1_n_0 ),
        .Q(mig_preview),
        .R(1'b0));
  CARRY8 \axi_dma.mig_preview_reg_i_3 
       (.CI(\axi_dma.mig_preview_reg_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.mig_preview_reg_i_3_CO_UNCONNECTED [7:1],data0}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_axi_dma.mig_preview_reg_i_3_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_dma.mig_preview_i_5_n_0 }));
  CARRY8 \axi_dma.mig_preview_reg_i_4 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_preview_reg_i_4_n_0 ,\axi_dma.mig_preview_reg_i_4_n_1 ,\axi_dma.mig_preview_reg_i_4_n_2 ,\axi_dma.mig_preview_reg_i_4_n_3 ,\axi_dma.mig_preview_reg_i_4_n_4 ,\axi_dma.mig_preview_reg_i_4_n_5 ,\axi_dma.mig_preview_reg_i_4_n_6 ,\axi_dma.mig_preview_reg_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_axi_dma.mig_preview_reg_i_4_O_UNCONNECTED [7:0]),
        .S({\axi_dma.mig_preview_i_6_n_0 ,\axi_dma.mig_preview_i_7_n_0 ,\axi_dma.mig_preview_i_8_n_0 ,\axi_dma.mig_preview_i_9_n_0 ,\axi_dma.mig_preview_i_10_n_0 ,\axi_dma.mig_preview_i_11_n_0 ,\axi_dma.mig_preview_i_12_n_0 ,\axi_dma.mig_preview_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_dma.mig_rd_ptr[0]_i_1 
       (.I0(mig_adr[0]),
        .I1(mig_cmd_state[1]),
        .O(\axi_dma.mig_rd_ptr[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[10]_i_1 
       (.I0(mig_rd_ptr0[10]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[10]),
        .O(\axi_dma.mig_rd_ptr[10]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[11]_i_1 
       (.I0(mig_rd_ptr0[11]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[11]),
        .O(\axi_dma.mig_rd_ptr[11]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[12]_i_1 
       (.I0(mig_rd_ptr0[12]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[12]),
        .O(\axi_dma.mig_rd_ptr[12]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[13]_i_1 
       (.I0(mig_rd_ptr0[13]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[13]),
        .O(\axi_dma.mig_rd_ptr[13]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[14]_i_1 
       (.I0(mig_rd_ptr0[14]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[14]),
        .O(\axi_dma.mig_rd_ptr[14]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[15]_i_1 
       (.I0(mig_rd_ptr0[15]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[15]),
        .O(\axi_dma.mig_rd_ptr[15]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[16]_i_1 
       (.I0(mig_rd_ptr0[16]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[16]),
        .O(\axi_dma.mig_rd_ptr[16]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_10 
       (.I0(mig_adr[9]),
        .O(\axi_dma.mig_rd_ptr[16]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_3 
       (.I0(mig_adr[16]),
        .O(\axi_dma.mig_rd_ptr[16]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_4 
       (.I0(mig_adr[15]),
        .O(\axi_dma.mig_rd_ptr[16]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_5 
       (.I0(mig_adr[14]),
        .O(\axi_dma.mig_rd_ptr[16]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_6 
       (.I0(mig_adr[13]),
        .O(\axi_dma.mig_rd_ptr[16]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_7 
       (.I0(mig_adr[12]),
        .O(\axi_dma.mig_rd_ptr[16]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_8 
       (.I0(mig_adr[11]),
        .O(\axi_dma.mig_rd_ptr[16]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[16]_i_9 
       (.I0(mig_adr[10]),
        .O(\axi_dma.mig_rd_ptr[16]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[17]_i_1 
       (.I0(mig_rd_ptr0[17]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[17]),
        .O(\axi_dma.mig_rd_ptr[17]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[18]_i_1 
       (.I0(mig_rd_ptr0[18]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[18]),
        .O(\axi_dma.mig_rd_ptr[18]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[19]_i_1 
       (.I0(mig_rd_ptr0[19]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[19]),
        .O(\axi_dma.mig_rd_ptr[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[1]_i_1 
       (.I0(mig_rd_ptr0[1]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[1]),
        .O(\axi_dma.mig_rd_ptr[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[20]_i_1 
       (.I0(mig_rd_ptr0[20]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[20]),
        .O(\axi_dma.mig_rd_ptr[20]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[21]_i_1 
       (.I0(mig_rd_ptr0[21]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[21]),
        .O(\axi_dma.mig_rd_ptr[21]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[22]_i_1 
       (.I0(mig_rd_ptr0[22]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[22]),
        .O(\axi_dma.mig_rd_ptr[22]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[23]_i_1 
       (.I0(mig_rd_ptr0[23]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[23]),
        .O(\axi_dma.mig_rd_ptr[23]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[24]_i_1 
       (.I0(mig_rd_ptr0[24]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[24]),
        .O(\axi_dma.mig_rd_ptr[24]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_10 
       (.I0(mig_adr[17]),
        .O(\axi_dma.mig_rd_ptr[24]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_3 
       (.I0(mig_adr[24]),
        .O(\axi_dma.mig_rd_ptr[24]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_4 
       (.I0(mig_adr[23]),
        .O(\axi_dma.mig_rd_ptr[24]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_5 
       (.I0(mig_adr[22]),
        .O(\axi_dma.mig_rd_ptr[24]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_6 
       (.I0(mig_adr[21]),
        .O(\axi_dma.mig_rd_ptr[24]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_7 
       (.I0(mig_adr[20]),
        .O(\axi_dma.mig_rd_ptr[24]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_8 
       (.I0(mig_adr[19]),
        .O(\axi_dma.mig_rd_ptr[24]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[24]_i_9 
       (.I0(mig_adr[18]),
        .O(\axi_dma.mig_rd_ptr[24]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[25]_i_1 
       (.I0(mig_rd_ptr0[25]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[25]),
        .O(\axi_dma.mig_rd_ptr[25]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \axi_dma.mig_rd_ptr[26]_i_1 
       (.I0(mig_cmd_state[0]),
        .I1(mig_cmd_state[2]),
        .O(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[26]_i_2 
       (.I0(mig_rd_ptr0[26]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[26]),
        .O(\axi_dma.mig_rd_ptr[26]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[26]_i_4 
       (.I0(mig_adr[26]),
        .O(\axi_dma.mig_rd_ptr[26]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[26]_i_5 
       (.I0(mig_adr[25]),
        .O(\axi_dma.mig_rd_ptr[26]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[2]_i_1 
       (.I0(mig_rd_ptr0[2]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[2]),
        .O(\axi_dma.mig_rd_ptr[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[3]_i_1 
       (.I0(mig_rd_ptr0[3]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[3]),
        .O(\axi_dma.mig_rd_ptr[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[4]_i_1 
       (.I0(mig_rd_ptr0[4]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[4]),
        .O(\axi_dma.mig_rd_ptr[4]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[5]_i_1 
       (.I0(mig_rd_ptr0[5]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[5]),
        .O(\axi_dma.mig_rd_ptr[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[6]_i_1 
       (.I0(mig_rd_ptr0[6]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[6]),
        .O(\axi_dma.mig_rd_ptr[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[7]_i_1 
       (.I0(mig_rd_ptr0[7]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[7]),
        .O(\axi_dma.mig_rd_ptr[7]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[8]_i_1 
       (.I0(mig_rd_ptr0[8]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[8]),
        .O(\axi_dma.mig_rd_ptr[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_10 
       (.I0(mig_adr[1]),
        .O(\axi_dma.mig_rd_ptr[8]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_3 
       (.I0(mig_adr[8]),
        .O(\axi_dma.mig_rd_ptr[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_4 
       (.I0(mig_adr[7]),
        .O(\axi_dma.mig_rd_ptr[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_5 
       (.I0(mig_adr[6]),
        .O(\axi_dma.mig_rd_ptr[8]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_6 
       (.I0(mig_adr[5]),
        .O(\axi_dma.mig_rd_ptr[8]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_7 
       (.I0(mig_adr[4]),
        .O(\axi_dma.mig_rd_ptr[8]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_8 
       (.I0(mig_adr[3]),
        .O(\axi_dma.mig_rd_ptr[8]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_rd_ptr[8]_i_9 
       (.I0(mig_adr[2]),
        .O(\axi_dma.mig_rd_ptr[8]_i_9_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \axi_dma.mig_rd_ptr[9]_i_1 
       (.I0(mig_rd_ptr0[9]),
        .I1(mig_cmd_state[1]),
        .I2(mig_adr[9]),
        .O(\axi_dma.mig_rd_ptr[9]_i_1_n_0 ));
  FDRE \axi_dma.mig_rd_ptr_reg[0] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[0]_i_1_n_0 ),
        .Q(mig_rd_ptr[0]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[10] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[10]_i_1_n_0 ),
        .Q(mig_rd_ptr[10]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[11] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[11]_i_1_n_0 ),
        .Q(mig_rd_ptr[11]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[12] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[12]_i_1_n_0 ),
        .Q(mig_rd_ptr[12]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[13] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[13]_i_1_n_0 ),
        .Q(mig_rd_ptr[13]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[14] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[14]_i_1_n_0 ),
        .Q(mig_rd_ptr[14]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[15] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[15]_i_1_n_0 ),
        .Q(mig_rd_ptr[15]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[16] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[16]_i_1_n_0 ),
        .Q(mig_rd_ptr[16]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_rd_ptr_reg[16]_i_2 
       (.CI(\axi_dma.mig_rd_ptr_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_rd_ptr_reg[16]_i_2_n_0 ,\axi_dma.mig_rd_ptr_reg[16]_i_2_n_1 ,\axi_dma.mig_rd_ptr_reg[16]_i_2_n_2 ,\axi_dma.mig_rd_ptr_reg[16]_i_2_n_3 ,\axi_dma.mig_rd_ptr_reg[16]_i_2_n_4 ,\axi_dma.mig_rd_ptr_reg[16]_i_2_n_5 ,\axi_dma.mig_rd_ptr_reg[16]_i_2_n_6 ,\axi_dma.mig_rd_ptr_reg[16]_i_2_n_7 }),
        .DI(mig_adr[16:9]),
        .O(mig_rd_ptr0[16:9]),
        .S({\axi_dma.mig_rd_ptr[16]_i_3_n_0 ,\axi_dma.mig_rd_ptr[16]_i_4_n_0 ,\axi_dma.mig_rd_ptr[16]_i_5_n_0 ,\axi_dma.mig_rd_ptr[16]_i_6_n_0 ,\axi_dma.mig_rd_ptr[16]_i_7_n_0 ,\axi_dma.mig_rd_ptr[16]_i_8_n_0 ,\axi_dma.mig_rd_ptr[16]_i_9_n_0 ,\axi_dma.mig_rd_ptr[16]_i_10_n_0 }));
  FDRE \axi_dma.mig_rd_ptr_reg[17] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[17]_i_1_n_0 ),
        .Q(mig_rd_ptr[17]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[18] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[18]_i_1_n_0 ),
        .Q(mig_rd_ptr[18]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[19] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[19]_i_1_n_0 ),
        .Q(mig_rd_ptr[19]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[1] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[1]_i_1_n_0 ),
        .Q(mig_rd_ptr[1]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[20] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[20]_i_1_n_0 ),
        .Q(mig_rd_ptr[20]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[21] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[21]_i_1_n_0 ),
        .Q(mig_rd_ptr[21]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[22] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[22]_i_1_n_0 ),
        .Q(mig_rd_ptr[22]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[23] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[23]_i_1_n_0 ),
        .Q(mig_rd_ptr[23]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[24] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[24]_i_1_n_0 ),
        .Q(mig_rd_ptr[24]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_rd_ptr_reg[24]_i_2 
       (.CI(\axi_dma.mig_rd_ptr_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_rd_ptr_reg[24]_i_2_n_0 ,\axi_dma.mig_rd_ptr_reg[24]_i_2_n_1 ,\axi_dma.mig_rd_ptr_reg[24]_i_2_n_2 ,\axi_dma.mig_rd_ptr_reg[24]_i_2_n_3 ,\axi_dma.mig_rd_ptr_reg[24]_i_2_n_4 ,\axi_dma.mig_rd_ptr_reg[24]_i_2_n_5 ,\axi_dma.mig_rd_ptr_reg[24]_i_2_n_6 ,\axi_dma.mig_rd_ptr_reg[24]_i_2_n_7 }),
        .DI(mig_adr[24:17]),
        .O(mig_rd_ptr0[24:17]),
        .S({\axi_dma.mig_rd_ptr[24]_i_3_n_0 ,\axi_dma.mig_rd_ptr[24]_i_4_n_0 ,\axi_dma.mig_rd_ptr[24]_i_5_n_0 ,\axi_dma.mig_rd_ptr[24]_i_6_n_0 ,\axi_dma.mig_rd_ptr[24]_i_7_n_0 ,\axi_dma.mig_rd_ptr[24]_i_8_n_0 ,\axi_dma.mig_rd_ptr[24]_i_9_n_0 ,\axi_dma.mig_rd_ptr[24]_i_10_n_0 }));
  FDRE \axi_dma.mig_rd_ptr_reg[25] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[25]_i_1_n_0 ),
        .Q(mig_rd_ptr[25]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[26] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[26]_i_2_n_0 ),
        .Q(mig_rd_ptr[26]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_rd_ptr_reg[26]_i_3 
       (.CI(\axi_dma.mig_rd_ptr_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_axi_dma.mig_rd_ptr_reg[26]_i_3_CO_UNCONNECTED [7:1],\axi_dma.mig_rd_ptr_reg[26]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,mig_adr[25]}),
        .O({\NLW_axi_dma.mig_rd_ptr_reg[26]_i_3_O_UNCONNECTED [7:2],mig_rd_ptr0[26:25]}),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\axi_dma.mig_rd_ptr[26]_i_4_n_0 ,\axi_dma.mig_rd_ptr[26]_i_5_n_0 }));
  FDRE \axi_dma.mig_rd_ptr_reg[2] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[2]_i_1_n_0 ),
        .Q(mig_rd_ptr[2]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[3] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[3]_i_1_n_0 ),
        .Q(mig_rd_ptr[3]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[4] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[4]_i_1_n_0 ),
        .Q(mig_rd_ptr[4]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[5] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[5]_i_1_n_0 ),
        .Q(mig_rd_ptr[5]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[6] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[6]_i_1_n_0 ),
        .Q(mig_rd_ptr[6]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[7] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[7]_i_1_n_0 ),
        .Q(mig_rd_ptr[7]),
        .R(reset));
  FDRE \axi_dma.mig_rd_ptr_reg[8] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[8]_i_1_n_0 ),
        .Q(mig_rd_ptr[8]),
        .R(reset));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \axi_dma.mig_rd_ptr_reg[8]_i_2 
       (.CI(mig_adr[0]),
        .CI_TOP(1'b0),
        .CO({\axi_dma.mig_rd_ptr_reg[8]_i_2_n_0 ,\axi_dma.mig_rd_ptr_reg[8]_i_2_n_1 ,\axi_dma.mig_rd_ptr_reg[8]_i_2_n_2 ,\axi_dma.mig_rd_ptr_reg[8]_i_2_n_3 ,\axi_dma.mig_rd_ptr_reg[8]_i_2_n_4 ,\axi_dma.mig_rd_ptr_reg[8]_i_2_n_5 ,\axi_dma.mig_rd_ptr_reg[8]_i_2_n_6 ,\axi_dma.mig_rd_ptr_reg[8]_i_2_n_7 }),
        .DI(mig_adr[8:1]),
        .O(mig_rd_ptr0[8:1]),
        .S({\axi_dma.mig_rd_ptr[8]_i_3_n_0 ,\axi_dma.mig_rd_ptr[8]_i_4_n_0 ,\axi_dma.mig_rd_ptr[8]_i_5_n_0 ,\axi_dma.mig_rd_ptr[8]_i_6_n_0 ,\axi_dma.mig_rd_ptr[8]_i_7_n_0 ,\axi_dma.mig_rd_ptr[8]_i_8_n_0 ,\axi_dma.mig_rd_ptr[8]_i_9_n_0 ,\axi_dma.mig_rd_ptr[8]_i_10_n_0 }));
  FDRE \axi_dma.mig_rd_ptr_reg[9] 
       (.C(clk),
        .CE(\axi_dma.mig_rd_ptr[26]_i_1_n_0 ),
        .D(\axi_dma.mig_rd_ptr[9]_i_1_n_0 ),
        .Q(mig_rd_ptr[9]),
        .R(reset));
  LUT3 #(
    .INIT(8'h80)) 
    \axi_dma.mig_size[7]_i_1 
       (.I0(M_AXI_TVALID_in),
        .I1(M_AXI_TREADY_in),
        .I2(M_AXI_TDATA_in[79]),
        .O(\axi_dma.mig_size_reg0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[0] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[64]),
        .Q(mig_size[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[1] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[65]),
        .Q(mig_size[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[2] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[66]),
        .Q(mig_size[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[3] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[67]),
        .Q(mig_size[3]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[4] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[68]),
        .Q(mig_size[4]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[5] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[69]),
        .Q(mig_size[5]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[6] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[70]),
        .Q(mig_size[6]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_size_reg[7] 
       (.C(clk),
        .CE(\axi_dma.mig_size_reg0 ),
        .D(M_AXI_TDATA_in[71]),
        .Q(mig_size[7]),
        .R(reset));
  LUT6 #(
    .INIT(64'h00000A0C00000A00)) 
    \axi_dma.mig_start_cmd_i_1 
       (.I0(fifo_has_space),
        .I1(\axi_dma.mig_cmd_state[0]_i_6_n_0 ),
        .I2(mig_cmd_state[0]),
        .I3(mig_cmd_state[1]),
        .I4(mig_cmd_state[2]),
        .I5(\axi_dma.mig_cmd_state[0]_i_4_n_0 ),
        .O(\axi_dma.mig_start_cmd_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_start_cmd_reg 
       (.C(clk),
        .CE(\axi_dma.mig_cmd_state[2]_i_1_n_0 ),
        .D(\axi_dma.mig_start_cmd_i_1_n_0 ),
        .Q(mig_start_cmd),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.mig_tag[0]_i_1 
       (.I0(mig_tag[0]),
        .O(\axi_dma.mig_tag[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \axi_dma.mig_tag[1]_i_1 
       (.I0(mig_tag[0]),
        .I1(mig_tag[1]),
        .O(\axi_dma.mig_tag[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \axi_dma.mig_tag[2]_i_1 
       (.I0(mig_tag[0]),
        .I1(mig_tag[1]),
        .I2(mig_tag[2]),
        .O(\axi_dma.mig_tag[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7F80)) 
    \axi_dma.mig_tag[3]_i_1 
       (.I0(mig_tag[1]),
        .I1(mig_tag[0]),
        .I2(mig_tag[2]),
        .I3(mig_tag[3]),
        .O(\axi_dma.mig_tag[3]_i_1_n_0 ));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_tag_reg[0] 
       (.C(clk),
        .CE(mig_cmd_done),
        .D(\axi_dma.mig_tag[0]_i_1_n_0 ),
        .Q(mig_tag[0]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_tag_reg[1] 
       (.C(clk),
        .CE(mig_cmd_done),
        .D(\axi_dma.mig_tag[1]_i_1_n_0 ),
        .Q(mig_tag[1]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_tag_reg[2] 
       (.C(clk),
        .CE(mig_cmd_done),
        .D(\axi_dma.mig_tag[2]_i_1_n_0 ),
        .Q(mig_tag[2]),
        .R(reset));
  (* KEEP = "yes" *) 
  (* mark_debug = "yes" *) 
  FDRE \axi_dma.mig_tag_reg[3] 
       (.C(clk),
        .CE(mig_cmd_done),
        .D(\axi_dma.mig_tag[3]_i_1_n_0 ),
        .Q(mig_tag[3]),
        .R(reset));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_dma.reset_i_1 
       (.I0(resetn),
        .O(\axi_dma.reset_i_1_n_0 ));
  FDRE \axi_dma.reset_reg 
       (.C(clk),
        .CE(1'b1),
        .D(\axi_dma.reset_i_1_n_0 ),
        .Q(reset),
        .R(1'b0));
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
        .din(fifo_in_data),
        .dout(M_AXI_TDATA_out),
        .empty(NLW_fifo_i_empty_UNCONNECTED),
        .full(fifo_full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_fifo_i_overflow_UNCONNECTED),
        .prog_empty(NLW_fifo_i_prog_empty_UNCONNECTED),
        .prog_full(NLW_fifo_i_prog_full_UNCONNECTED),
        .rd_data_count(NLW_fifo_i_rd_data_count_UNCONNECTED[0]),
        .rd_en(1'b0),
        .rd_rst_busy(NLW_fifo_i_rd_rst_busy_UNCONNECTED),
        .rst(reset),
        .sbiterr(NLW_fifo_i_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .underflow(NLW_fifo_i_underflow_UNCONNECTED),
        .wr_ack(NLW_fifo_i_wr_ack_UNCONNECTED),
        .wr_clk(clk),
        .wr_data_count(NLW_fifo_i_wr_data_count_UNCONNECTED[0]),
        .wr_en(fifo_wr_en),
        .wr_rst_busy(NLW_fifo_i_wr_rst_busy_UNCONNECTED));
  (* CHECK_LICENSE_TYPE = "ila_7,ila,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "ila,Vivado 2025.1" *) 
  ps_axi_dma_1_0_ila_7 ila_i
       (.clk(clk),
        .probe0(fifo_count),
        .probe1(fifo_space),
        .probe10(mig_diff),
        .probe11(mig_avail),
        .probe12(mig_preview),
        .probe13(fifo_has_space),
        .probe14(mig_hdr_sample),
        .probe15(mig_hdr_blocks),
        .probe16(mig_hdr_flags),
        .probe17(mig_hdr_size),
        .probe18(mig_hdr_freq),
        .probe19(mig_hdr_angle),
        .probe2(mig_cmd_state),
        .probe20(mig_hdr_doa_error),
        .probe21(mig_hdr_max_env),
        .probe22(mig_hdr_max_pos),
        .probe23(mig_hdr_env_mean),
        .probe24(mig_hdr_env_std),
        .probe25(mig_hdr_phase_std),
        .probe26(mig_hdr_freq_std),
        .probe27(mig_env_0),
        .probe28(mig_env_1),
        .probe29(mig_env_2),
        .probe3(mig_adr),
        .probe30(mig_env_3),
        .probe31(mig_env_4),
        .probe32(mig_env_5),
        .probe33(mig_env_6),
        .probe34(mig_env_7),
        .probe4(mig_start_cmd),
        .probe5(mig_cmd_done),
        .probe6(mig_cmd_error),
        .probe7(mig_blocks),
        .probe8(mig_tag),
        .probe9(mig_size));
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
    probe33,
    probe34);
  (* syn_isclock = "1" *) input clk;
  input [13:0]probe0;
  input [13:0]probe1;
  input [2:0]probe2;
  input [26:0]probe3;
  input [0:0]probe4;
  input [0:0]probe5;
  input [0:0]probe6;
  input [7:0]probe7;
  input [3:0]probe8;
  input [7:0]probe9;
  input [7:0]probe10;
  input [26:0]probe11;
  input [0:0]probe12;
  input [0:0]probe13;
  input [63:0]probe14;
  input [7:0]probe15;
  input [7:0]probe16;
  input [15:0]probe17;
  input [31:0]probe18;
  input [15:0]probe19;
  input [15:0]probe20;
  input [15:0]probe21;
  input [15:0]probe22;
  input [15:0]probe23;
  input [15:0]probe24;
  input [15:0]probe25;
  input [15:0]probe26;
  input [15:0]probe27;
  input [15:0]probe28;
  input [15:0]probe29;
  input [15:0]probe30;
  input [15:0]probe31;
  input [15:0]probe32;
  input [15:0]probe33;
  input [15:0]probe34;


endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_dma_1_0_xpm_counter_updn__parameterized0
   (ram_full_i0,
    leaving_empty0,
    Q,
    ram_wr_en_pf,
    \count_value_i_reg[0]_0 ,
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg ,
    ram_empty_i,
    \count_value_i_reg[2]_0 ,
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
  input ram_empty_i;
  input [1:0]\count_value_i_reg[2]_0 ;
  input [13:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 ;
  input [13:0]\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 ;
  input [0:0]\count_value_i_reg[13]_0 ;
  input wr_clk;

  wire [13:0]Q;
  wire \count_value_i[0]_i_1__1_n_0 ;
  wire \count_value_i[10]_i_1__1_n_0 ;
  wire \count_value_i[11]_i_1__1_n_0 ;
  wire \count_value_i[12]_i_1__1_n_0 ;
  wire \count_value_i[12]_i_2_n_0 ;
  wire \count_value_i[13]_i_1__1_n_0 ;
  wire \count_value_i[13]_i_2__1_n_0 ;
  wire \count_value_i[1]_i_1__1_n_0 ;
  wire \count_value_i[2]_i_1__1_n_0 ;
  wire \count_value_i[3]_i_1__1_n_0 ;
  wire \count_value_i[4]_i_1__1_n_0 ;
  wire \count_value_i[5]_i_1__1_n_0 ;
  wire \count_value_i[6]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_1__1_n_0 ;
  wire \count_value_i[7]_i_2_n_0 ;
  wire \count_value_i[8]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_1__1_n_0 ;
  wire \count_value_i[9]_i_2__1_n_0 ;
  wire \count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[13]_0 ;
  wire [1:0]\count_value_i_reg[2]_0 ;
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
  wire wr_clk;

  LUT3 #(
    .INIT(8'h4B)) 
    \count_value_i[0]_i_1__1 
       (.I0(\count_value_i_reg[2]_0 [0]),
        .I1(\count_value_i_reg[2]_0 [1]),
        .I2(Q[0]),
        .O(\count_value_i[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[10]_i_1__1 
       (.I0(Q[8]),
        .I1(\count_value_i[12]_i_2_n_0 ),
        .I2(Q[9]),
        .I3(Q[10]),
        .O(\count_value_i[10]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[11]_i_1__1 
       (.I0(Q[9]),
        .I1(\count_value_i[12]_i_2_n_0 ),
        .I2(Q[8]),
        .I3(Q[10]),
        .I4(Q[11]),
        .O(\count_value_i[11]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[12]_i_1__1 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(\count_value_i[12]_i_2_n_0 ),
        .I3(Q[9]),
        .I4(Q[11]),
        .I5(Q[12]),
        .O(\count_value_i[12]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[12]_i_2 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\count_value_i[7]_i_2_n_0 ),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\count_value_i[12]_i_2_n_0 ));
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
  LUT4 #(
    .INIT(16'h2FD0)) 
    \count_value_i[1]_i_1__1 
       (.I0(\count_value_i_reg[2]_0 [1]),
        .I1(\count_value_i_reg[2]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \count_value_i[2]_i_1__1 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[2]_0 [0]),
        .I2(\count_value_i_reg[2]_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
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
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__1 
       (.I0(Q[3]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__1 
       (.I0(Q[4]),
        .I1(\count_value_i[7]_i_2_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[7]_i_1__1 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[7]_i_2_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\count_value_i[7]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \count_value_i[7]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[2]_0 [0]),
        .I4(\count_value_i_reg[2]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[7]_i_2_n_0 ));
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
    \count_value_i_reg[13]_0 ,
    Q,
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
  output [13:0]\count_value_i_reg[13]_0 ;
  input [1:0]Q;
  input leaving_empty0;
  input ram_wr_en_pf;
  input ram_empty_i;
  input wr_en;
  input \count_value_i_reg[5]_0 ;
  input [0:0]\count_value_i_reg[0]_0 ;
  input rst_d1;
  input [13:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  input wr_clk;

  wire [1:0]Q;
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
  wire [13:0]\count_value_i_reg[13]_0 ;
  wire \count_value_i_reg[5]_0 ;
  wire [13:0]\gen_pntr_flags_cc.ram_empty_i_i_2_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ;
  wire \gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ;
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
       (.I0(\count_value_i_reg[13]_0 [0]),
        .O(\count_value_i[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[10]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [8]),
        .I1(\count_value_i[11]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[13]_0 [7]),
        .I3(\count_value_i_reg[13]_0 [9]),
        .I4(\count_value_i_reg[13]_0 [10]),
        .O(\count_value_i[10]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[11]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [9]),
        .I1(\count_value_i_reg[13]_0 [7]),
        .I2(\count_value_i[11]_i_2__0_n_0 ),
        .I3(\count_value_i_reg[13]_0 [8]),
        .I4(\count_value_i_reg[13]_0 [10]),
        .I5(\count_value_i_reg[13]_0 [11]),
        .O(\count_value_i[11]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[11]_i_2__0 
       (.I0(\count_value_i_reg[13]_0 [6]),
        .I1(\count_value_i_reg[13]_0 [4]),
        .I2(\count_value_i_reg[13]_0 [2]),
        .I3(\count_value_i[6]_i_2__0_n_0 ),
        .I4(\count_value_i_reg[13]_0 [3]),
        .I5(\count_value_i_reg[13]_0 [5]),
        .O(\count_value_i[11]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[12]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [10]),
        .I1(\count_value_i[13]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[13]_0 [11]),
        .I3(\count_value_i_reg[13]_0 [12]),
        .O(\count_value_i[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[13]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [11]),
        .I1(\count_value_i[13]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[13]_0 [10]),
        .I3(\count_value_i_reg[13]_0 [12]),
        .I4(\count_value_i_reg[13]_0 [13]),
        .O(\count_value_i[13]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[13]_i_2__0 
       (.I0(\count_value_i_reg[13]_0 [9]),
        .I1(\count_value_i_reg[13]_0 [7]),
        .I2(\count_value_i_reg[13]_0 [5]),
        .I3(\count_value_i[9]_i_2__0_n_0 ),
        .I4(\count_value_i_reg[13]_0 [6]),
        .I5(\count_value_i_reg[13]_0 [8]),
        .O(\count_value_i[13]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1 
       (.I0(\count_value_i_reg[13]_0 [0]),
        .I1(\count_value_i_reg[13]_0 [1]),
        .O(\count_value_i[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1 
       (.I0(\count_value_i_reg[13]_0 [0]),
        .I1(\count_value_i_reg[13]_0 [1]),
        .I2(\count_value_i_reg[13]_0 [2]),
        .O(\count_value_i[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1 
       (.I0(\count_value_i_reg[13]_0 [1]),
        .I1(\count_value_i_reg[13]_0 [0]),
        .I2(\count_value_i_reg[13]_0 [2]),
        .I3(\count_value_i_reg[13]_0 [3]),
        .O(\count_value_i[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1 
       (.I0(\count_value_i_reg[13]_0 [2]),
        .I1(\count_value_i_reg[13]_0 [0]),
        .I2(\count_value_i_reg[13]_0 [1]),
        .I3(\count_value_i_reg[13]_0 [3]),
        .I4(\count_value_i_reg[13]_0 [4]),
        .O(\count_value_i[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[5]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [3]),
        .I1(\count_value_i[6]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[13]_0 [2]),
        .I3(\count_value_i_reg[13]_0 [4]),
        .I4(\count_value_i_reg[13]_0 [5]),
        .O(\count_value_i[5]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[6]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [4]),
        .I1(\count_value_i_reg[13]_0 [2]),
        .I2(\count_value_i[6]_i_2__0_n_0 ),
        .I3(\count_value_i_reg[13]_0 [3]),
        .I4(\count_value_i_reg[13]_0 [5]),
        .I5(\count_value_i_reg[13]_0 [6]),
        .O(\count_value_i[6]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \count_value_i[6]_i_2__0 
       (.I0(\count_value_i_reg[13]_0 [1]),
        .I1(wr_en),
        .I2(\count_value_i_reg[5]_0 ),
        .I3(\count_value_i_reg[0]_0 ),
        .I4(rst_d1),
        .I5(\count_value_i_reg[13]_0 [0]),
        .O(\count_value_i[6]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [5]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[13]_0 [6]),
        .I3(\count_value_i_reg[13]_0 [7]),
        .O(\count_value_i[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[8]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [6]),
        .I1(\count_value_i[9]_i_2__0_n_0 ),
        .I2(\count_value_i_reg[13]_0 [5]),
        .I3(\count_value_i_reg[13]_0 [7]),
        .I4(\count_value_i_reg[13]_0 [8]),
        .O(\count_value_i[8]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[9]_i_1__0 
       (.I0(\count_value_i_reg[13]_0 [7]),
        .I1(\count_value_i_reg[13]_0 [5]),
        .I2(\count_value_i[9]_i_2__0_n_0 ),
        .I3(\count_value_i_reg[13]_0 [6]),
        .I4(\count_value_i_reg[13]_0 [8]),
        .I5(\count_value_i_reg[13]_0 [9]),
        .O(\count_value_i[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[9]_i_2__0 
       (.I0(\count_value_i_reg[13]_0 [4]),
        .I1(\count_value_i_reg[13]_0 [2]),
        .I2(\count_value_i_reg[13]_0 [0]),
        .I3(ram_wr_en_pf),
        .I4(\count_value_i_reg[13]_0 [1]),
        .I5(\count_value_i_reg[13]_0 [3]),
        .O(\count_value_i[9]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[0] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[0]_i_1_n_0 ),
        .Q(\count_value_i_reg[13]_0 [0]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[10] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[10]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [10]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[11] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[11]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [11]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[12] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[12]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [12]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[13] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[13]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [13]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[1] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[1]_i_1_n_0 ),
        .Q(\count_value_i_reg[13]_0 [1]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[2] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[2]_i_1_n_0 ),
        .Q(\count_value_i_reg[13]_0 [2]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[3] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[3]_i_1_n_0 ),
        .Q(\count_value_i_reg[13]_0 [3]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[4] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[4]_i_1_n_0 ),
        .Q(\count_value_i_reg[13]_0 [4]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[5] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[5]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [5]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[6] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[6]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [6]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[7] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[7]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [7]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[8] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[8]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [8]),
        .R(\count_value_i_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_value_i_reg[9] 
       (.C(wr_clk),
        .CE(ram_wr_en_pf),
        .D(\count_value_i[9]_i_1__0_n_0 ),
        .Q(\count_value_i_reg[13]_0 [9]),
        .R(\count_value_i_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFF0000B0B0)) 
    \gen_pntr_flags_cc.ram_empty_i_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(going_empty1),
        .I3(leaving_empty0),
        .I4(ram_wr_en_pf),
        .I5(ram_empty_i),
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
       (.I0(\count_value_i_reg[13]_0 [6]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [6]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [8]),
        .I3(\count_value_i_reg[13]_0 [8]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [7]),
        .I5(\count_value_i_reg[13]_0 [7]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6FF6)) 
    \gen_pntr_flags_cc.ram_empty_i_i_4 
       (.I0(\count_value_i_reg[13]_0 [12]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [12]),
        .I2(\count_value_i_reg[13]_0 [13]),
        .I3(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [13]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_5 
       (.I0(\count_value_i_reg[13]_0 [3]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [3]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [5]),
        .I3(\count_value_i_reg[13]_0 [5]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [4]),
        .I5(\count_value_i_reg[13]_0 [4]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_6 
       (.I0(\count_value_i_reg[13]_0 [0]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [0]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [2]),
        .I3(\count_value_i_reg[13]_0 [2]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [1]),
        .I5(\count_value_i_reg[13]_0 [1]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    \gen_pntr_flags_cc.ram_empty_i_i_7 
       (.I0(\count_value_i_reg[13]_0 [9]),
        .I1(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [9]),
        .I2(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [11]),
        .I3(\count_value_i_reg[13]_0 [11]),
        .I4(\gen_pntr_flags_cc.ram_empty_i_i_2_0 [10]),
        .I5(\count_value_i_reg[13]_0 [10]),
        .O(\gen_pntr_flags_cc.ram_empty_i_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "xpm_counter_updn" *) 
module ps_axi_dma_1_0_xpm_counter_updn__parameterized1
   (Q,
    \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ,
    ram_empty_i,
    \count_value_i_reg[0]_0 ,
    \count_value_i_reg[1]_0 ,
    wr_clk);
  output [13:0]Q;
  output \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  input ram_empty_i;
  input [1:0]\count_value_i_reg[0]_0 ;
  input [0:0]\count_value_i_reg[1]_0 ;
  input wr_clk;

  wire \FSM_sequential_gen_fwft.curr_fwft_state_reg[1] ;
  wire [13:0]Q;
  wire \count_value_i[0]_i_1__2_n_0 ;
  wire \count_value_i[10]_i_1__2_n_0 ;
  wire \count_value_i[11]_i_1__2_n_0 ;
  wire \count_value_i[12]_i_1__2_n_0 ;
  wire \count_value_i[12]_i_2__0_n_0 ;
  wire \count_value_i[13]_i_1__2_n_0 ;
  wire \count_value_i[13]_i_2__2_n_0 ;
  wire \count_value_i[1]_i_1__2_n_0 ;
  wire \count_value_i[2]_i_1__2_n_0 ;
  wire \count_value_i[3]_i_1__2_n_0 ;
  wire \count_value_i[4]_i_1__2_n_0 ;
  wire \count_value_i[5]_i_1__2_n_0 ;
  wire \count_value_i[6]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_1__2_n_0 ;
  wire \count_value_i[7]_i_2__0_n_0 ;
  wire \count_value_i[8]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_1__2_n_0 ;
  wire \count_value_i[9]_i_2__2_n_0 ;
  wire [1:0]\count_value_i_reg[0]_0 ;
  wire [0:0]\count_value_i_reg[1]_0 ;
  wire ram_empty_i;
  wire wr_clk;

  LUT3 #(
    .INIT(8'h4B)) 
    \count_value_i[0]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [0]),
        .I1(\count_value_i_reg[0]_0 [1]),
        .I2(Q[0]),
        .O(\count_value_i[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[10]_i_1__2 
       (.I0(Q[8]),
        .I1(\count_value_i[12]_i_2__0_n_0 ),
        .I2(Q[9]),
        .I3(Q[10]),
        .O(\count_value_i[10]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[11]_i_1__2 
       (.I0(Q[9]),
        .I1(\count_value_i[12]_i_2__0_n_0 ),
        .I2(Q[8]),
        .I3(Q[10]),
        .I4(Q[11]),
        .O(\count_value_i[11]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[12]_i_1__2 
       (.I0(Q[10]),
        .I1(Q[8]),
        .I2(\count_value_i[12]_i_2__0_n_0 ),
        .I3(Q[9]),
        .I4(Q[11]),
        .I5(Q[12]),
        .O(\count_value_i[12]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \count_value_i[12]_i_2__0 
       (.I0(Q[7]),
        .I1(Q[5]),
        .I2(Q[3]),
        .I3(\count_value_i[7]_i_2__0_n_0 ),
        .I4(Q[4]),
        .I5(Q[6]),
        .O(\count_value_i[12]_i_2__0_n_0 ));
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
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h2FD0)) 
    \count_value_i[1]_i_1__2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\count_value_i[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h75FF8A00)) 
    \count_value_i[2]_i_1__2 
       (.I0(Q[0]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(\count_value_i_reg[0]_0 [1]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(\count_value_i[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[4]_i_1__2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count_value_i[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[5]_i_1__2 
       (.I0(Q[3]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[4]),
        .I3(Q[5]),
        .O(\count_value_i[5]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count_value_i[6]_i_1__2 
       (.I0(Q[4]),
        .I1(\count_value_i[7]_i_2__0_n_0 ),
        .I2(Q[3]),
        .I3(Q[5]),
        .I4(Q[6]),
        .O(\count_value_i[6]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count_value_i[7]_i_1__2 
       (.I0(Q[5]),
        .I1(Q[3]),
        .I2(\count_value_i[7]_i_2__0_n_0 ),
        .I3(Q[4]),
        .I4(Q[6]),
        .I5(Q[7]),
        .O(\count_value_i[7]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h0800080800000000)) 
    \count_value_i[7]_i_2__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(ram_empty_i),
        .I3(\count_value_i_reg[0]_0 [0]),
        .I4(\count_value_i_reg[0]_0 [1]),
        .I5(Q[1]),
        .O(\count_value_i[7]_i_2__0_n_0 ));
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
  LUT3 #(
    .INIT(8'h0D)) 
    \gen_sdpram.xpm_memory_base_inst_i_2 
       (.I0(\count_value_i_reg[0]_0 [1]),
        .I1(\count_value_i_reg[0]_0 [0]),
        .I2(ram_empty_i),
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
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[12]_i_1 
       (.I0(Q[10]),
        .I1(\count_value_i[13]_i_2_n_0 ),
        .I2(Q[11]),
        .I3(Q[12]),
        .O(\count_value_i[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count_value_i[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count_value_i[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count_value_i[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count_value_i[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[3]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count_value_i[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count_value_i[7]_i_1 
       (.I0(Q[5]),
        .I1(\count_value_i[9]_i_2_n_0 ),
        .I2(Q[6]),
        .I3(Q[7]),
        .O(\count_value_i[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
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
  wire full;
  wire \gen_sdpram.xpm_memory_base_inst_i_3_n_0 ;
  wire leaving_empty0;
  wire [1:0]next_fwft_state__0;
  wire ram_empty_i;
  wire ram_empty_i0;
  wire ram_full_i0;
  wire ram_wr_en_pf;
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
  assign empty = \<const0> ;
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
  LUT3 #(
    .INIT(8'hA1)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[0]_i_1 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .I2(ram_empty_i),
        .O(next_fwft_state__0[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_gen_fwft.curr_fwft_state[1]_i_1 
       (.I0(curr_fwft_state[1]),
        .I1(curr_fwft_state[0]),
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
  FDRE #(
    .INIT(1'b0)) 
    \gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg 
       (.C(wr_clk),
        .CE(1'b1),
        .D(ram_full_i0),
        .Q(full),
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
        .regceb(\gen_sdpram.xpm_memory_base_inst_i_3_n_0 ),
        .rsta(1'b0),
        .rstb(xpm_fifo_rst_inst_n_1),
        .sbiterra(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterra_UNCONNECTED ),
        .sbiterrb(\NLW_gen_sdpram.xpm_memory_base_inst_sbiterrb_UNCONNECTED ),
        .sleep(sleep),
        .wea(ram_wr_en_pf),
        .web(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_sdpram.xpm_memory_base_inst_i_3 
       (.I0(curr_fwft_state[0]),
        .I1(curr_fwft_state[1]),
        .O(\gen_sdpram.xpm_memory_base_inst_i_3_n_0 ));
  ps_axi_dma_1_0_xpm_counter_updn__parameterized0 rdp_inst
       (.Q(rd_pntr_ext),
        .\count_value_i_reg[0]_0 (rdpp1_inst_n_14),
        .\count_value_i_reg[13]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[2]_0 (curr_fwft_state),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_2_0 ({wrpp1_inst_n_0,wrpp1_inst_n_1,wrpp1_inst_n_2,wrpp1_inst_n_3,wrpp1_inst_n_4,wrpp1_inst_n_5,wrpp1_inst_n_6,wrpp1_inst_n_7,wrpp1_inst_n_8,wrpp1_inst_n_9,wrpp1_inst_n_10,wrpp1_inst_n_11,wrpp1_inst_n_12,wrpp1_inst_n_13}),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_i_3_0 (wr_pntr_ext),
        .\gen_pntr_flags_cc.ngen_full_rst_val.ram_full_i_reg (full),
        .leaving_empty0(leaving_empty0),
        .ram_empty_i(ram_empty_i),
        .ram_full_i0(ram_full_i0),
        .ram_wr_en_pf(ram_wr_en_pf),
        .wr_clk(wr_clk));
  ps_axi_dma_1_0_xpm_counter_updn__parameterized1 rdpp1_inst
       (.\FSM_sequential_gen_fwft.curr_fwft_state_reg[1] (rdpp1_inst_n_14),
        .Q({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10,rdpp1_inst_n_11,rdpp1_inst_n_12,rdpp1_inst_n_13}),
        .\count_value_i_reg[0]_0 (curr_fwft_state),
        .\count_value_i_reg[1]_0 (xpm_fifo_rst_inst_n_1),
        .ram_empty_i(ram_empty_i),
        .wr_clk(wr_clk));
  ps_axi_dma_1_0_xpm_fifo_reg_bit rst_d1_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk));
  ps_axi_dma_1_0_xpm_counter_updn__parameterized0_0 wrp_inst
       (.Q(curr_fwft_state),
        .\count_value_i_reg[0]_0 (xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[13]_0 (wr_pntr_ext),
        .\count_value_i_reg[5]_0 (full),
        .\gen_pntr_flags_cc.ram_empty_i_i_2_0 ({rdpp1_inst_n_0,rdpp1_inst_n_1,rdpp1_inst_n_2,rdpp1_inst_n_3,rdpp1_inst_n_4,rdpp1_inst_n_5,rdpp1_inst_n_6,rdpp1_inst_n_7,rdpp1_inst_n_8,rdpp1_inst_n_9,rdpp1_inst_n_10,rdpp1_inst_n_11,rdpp1_inst_n_12,rdpp1_inst_n_13}),
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
        .\count_value_i_reg[5]_0 (full),
        .ram_wr_en_pf(ram_wr_en_pf),
        .rst_d1(rst_d1),
        .wr_clk(wr_clk),
        .wr_en(wr_en));
  ps_axi_dma_1_0_xpm_fifo_rst xpm_fifo_rst_inst
       (.Q(xpm_fifo_rst_inst_n_1),
        .\count_value_i_reg[13] (full),
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
  wire full;
  wire rst;
  wire sleep;
  wire wr_clk;
  wire wr_en;
  wire NLW_xpm_fifo_base_inst_almost_empty_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_almost_full_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_data_valid_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_dbiterr_UNCONNECTED;
  wire NLW_xpm_fifo_base_inst_empty_UNCONNECTED;
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
  assign empty = \<const0> ;
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
        .empty(NLW_xpm_fifo_base_inst_empty_UNCONNECTED),
        .full(full),
        .full_n(NLW_xpm_fifo_base_inst_full_n_UNCONNECTED),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .overflow(NLW_xpm_fifo_base_inst_overflow_UNCONNECTED),
        .prog_empty(NLW_xpm_fifo_base_inst_prog_empty_UNCONNECTED),
        .prog_full(NLW_xpm_fifo_base_inst_prog_full_UNCONNECTED),
        .rd_clk(1'b0),
        .rd_data_count(NLW_xpm_fifo_base_inst_rd_data_count_UNCONNECTED[0]),
        .rd_en(1'b0),
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
