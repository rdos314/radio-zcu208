// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov 22 00:02:45 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top ps_axi_bram_ctrl_0_bram_0 -prefix
//               ps_axi_bram_ctrl_0_bram_0_ ps_axi_bram_ctrl_0_bram_0_sim_netlist.v
// Design      : ps_axi_bram_ctrl_0_bram_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ps_axi_bram_ctrl_0_bram_0,blk_mem_gen_v8_4_11,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_11,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module ps_axi_bram_ctrl_0_bram_0
   (clka,
    rsta,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb,
    rsta_busy,
    rstb_busy);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA RST" *) input rsta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [10:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_mode = "slave BRAM_PORTB" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [3:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [10:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [31:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [31:0]doutb;
  output rsta_busy;
  output rstb_busy;

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire rsta;
  wire rsta_busy;
  wire rstb_busy;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [10:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [10:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "11" *) 
  (* C_ADDRB_WIDTH = "11" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "2" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.734465 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "1" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "2048" *) 
  (* C_READ_DEPTH_B = "2048" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "2048" *) 
  (* C_WRITE_DEPTH_B = "2048" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  ps_axi_bram_ctrl_0_bram_0_blk_mem_gen_v8_4_11 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[10:0]),
        .regcea(1'b1),
        .regceb(1'b1),
        .rsta(rsta),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(rstb_busy),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[10:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
gydSV72FvW4hnoyUt6yZFJHfJqjRQWPUfYIuDKP0fpjrPOkLRbJGBr4Z9msYTvoIHRlYtXJ2YMY0
d1TIQb+FK4gKsTRru9wr397OxuFBsTRf4e+ZjpYZEdsnqYWcgMSzhN4yhPvO06GyZO15y/LKBxa8
3OKwxVlOLYXhv+sxdXg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
WHB6Zbfa5Qi47krP9T4L8UnPOlr881dWx7UcYaZfNGIQQM0gadcoXbhucIpRaUuyOKxv6yhKveRN
h0l+N9+KX6rbZ6+TRhP9JAMuPhlpI7T42QtRv5zx9+m3ct5S0NMszbFaK8zeTAYra5BGP7BHmtkr
MpKfLK5sFyaTE/A7ACtAace9MwFTHDZdl9uUs4aY6KJlm6GaypKduiqkNugukJp5vlFPX/ZapJqG
KMtMhI6grhcuYb1FJrwRZ4jW7hs9HxddSdGLzsZ0HsBcO/qaCPTst+ZA0YIQfd5ULlFmPqq39FfO
p1P+2hEH2n+LycbMj5cn4Dxfqv2R8eucM78R3w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
SmAzQA1VEuJXtJi5vXa2Jg7YvRqAJs6PX9HTZ1YqrJw4VfonBW3726gJ81BjlizpMkcf/Uk5sFIK
aPedVhEs4xCIZylz7gXYDshtytOA/pXUID2qV9nXr8qfI+FydSADUF3ScYDZmlkclFqlZrGq6DQ7
da3lJAzt2h/iR+cczrA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iAph5JWb/chMQpLPX1UoLjQDxN5l2I8McM/k2xN5wRht7HXoE6F5yV8luDjn3zkI6vnfUYo7BaI1
mogRRx+R3XcwxvhHr+lngh4+/YLVex1TFncl+kiUMAsu3M/FjFSiqGMVMdKTNLDqr35DuZJVyuiF
lTwXob/KkbQDJiJjBEoxbt+968rKRKRyJGcqIjm4mqRBdqMcgo3HOJFG74SFsWAQrxvXfBhdLSG3
OfoLfls9XDojBjp7G83k0h82g1eeWgBfydm/OcX9o48Pst93NvI4ua8WShZL8MCvRWYqWZrrjrWi
cfUjXAF5SDACjq1/OU6arz/Idz6/a7AP/jmexw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BY49GZBxBT/gjZDPyaSWlti/sctckoR7jK6NuWdhnF9tiyNfVU7BqjjwxSnyMi0Uucv1BKHXC18h
8hQbFWnNtrq71ilURotXux7sssHlVJ2i1CsJWU18DOcBWxm2ai89uwvxDJh3TJkBJixB5KPvsDhL
lWOjTvZWPoR+Ixy+Tzo+U5Vx7z7SOakRwTrn3u7+c3vmCEBphE+HKeJExhBAoOEd0SXK5iwXaByW
D7Wb7zq6NNUmnCyaJ2BG9kGxLVsf+md7SlocuaFsYyaRZhwPyTucxIlz1tLYwcytKzx0ovoax3no
nYgzlzP/F0/PDWk9BqXgr/tuclc4EZYX0cf4ng==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qGnCvL35qO7cbUEKCL50yDv1UvezcqBz601zctKop1954QlcjemzZWZHg1zJ00nJaToNdH2S8AKX
n8hNJvbQ+x5HEGL5DoSU9m5qjXd8xxocnZ0yzuZX/dGCT8kDn3gWJR2Gz13pT+w2LQUno1fX+MsC
ehgwvjBBT6GeYjdxHi+aybQUP9AblSxX/z3vh857SGCPohEWvghOgORCHAe45YD+ZWnL62FLxMM2
c+Ozq/Au/Q4q1Yzlzcfv8Mnsvg7OqOeEamQHbuYOfdkJUuYqOwsskEWW348u7FXtsf8m7P3pZyyz
IWyTDAW4igGguMPLHfbtK/twZx8ScJQmOKzglg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hz+6K8+wh5/fukU4ZWNDXGsq6hreSVCSPP67nA6kUz9Vpjy4TtTnOrrl1BWY0ivEC7Ldyw8VI60A
VO/WPlt409LdAZdMZGsEZ1JuTZ0m9LPcgu9CPCyoMECctmd8LHE+otY6etTmYABB9syY61rk2hrv
RgbcyT/HCK9TzWxSm+XMqvx2nvagCLkMDPh/JZv51fj2zcKaBPnxsz8rnDipaeo0fEyVRC3Y1F/V
U3RmXojBjIumPHSJkQ537dENJEIA0Ra65u8EM/+ItUn1bcryLcIbKy1xGadrHmHdHRUoRcAodO2C
B48bNVeL0VnGg8P9ACIB04lMNzn5p6A1tPOb4Q==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
YDpb+UeT0rJ543Q8wCo2xSS3gpVAT+JoStgBlV5IMjJoUOWkiOPn691FGChmDi3BTq5NxC73KHHR
1galACCjeTGq6cv+0Zc2Ocm1oobdrnSPHp7TMDr5Zle8FX6WywJCiGdoWBODggZSlbOASIK/PVfY
cZM2z60M6RSvzsi3TnYHiKYHpju8THVoSgRd6r31GcbiSy9TjjARERXan0OVc79jGuAg90mmDEEq
91eqmn6NZ9yLI2fgBjFUZbtFCpmJ8WGxOL1h39niWnRK3ZXnk8jcpnZUlxLbYTPO0Z3vVr1zrvcn
RVQloU0OLqg7M95zSs7NtX5Vzvb6jGbMehWV+WMMyxWmxL2XOwsAwPSeX2dI2r77pioY7X6VzH7f
/JxMAnq9udra3WGPsUkD1G0CvPkCC3zdxjpVaflY37ztX9UONhKtzMQa8lJc1IL8GhXRY3R9Lg2c
HIeXSGkpNNuFDqKT6Khe/6Casq+SjFJq+IH9IUtz6RUZTkbFb0Xhgm2P

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q+63zFEYw/LeMgxa7g8g79GGvSyIKDKD8RvvC4DHDQuGObf6n9OGZX4e17v/E/+EDEwUhsWQHFDI
Lp/aH+6fNRmhu9BEWVjxq2WRrQSl4eQjfIaSOXu2dlYh3JjRJwiUp4LteVh8RFAf5t5sRQO4dRIK
x+h28yliSgibaWEAv5FaJQ1EFbNwmgedAaSYjgf2A3afBUcBh5Uy9VHbW/zRzdhhJdsVNBjZYcFy
CVLOcf1toCRp8J4U5FlnFMOzFegUbdXFQhq2VmIhPRxWjrfTk6iR4BcMEN9UMij/5IHRAeBdksyD
CqEKsyFxosbI5KVMRZ1Ln75Zipn0JdsGekHkxg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DPUa5DLPYRWvbPnX0U412yoWvvvHyuq43DrYmDJGTK0cR5U4U6th8icYgizC1/hUAEzt19kM/hVa
zZh7bXSWACYLpcfhPY8dRTVGDZVjpbkraw0ceBryLP7jc6Jt5JdNw88tZtZpprCB7nQ25lUL82Hf
WTwL1ZqgGIvtfHhxO0JF5L5ES5giedwQ6u5ffXG3UB6ELcpQD1NvpW5lAz4mfXyvVDCAPZN581TF
tlAy79iKbPKlJ2zFn1BS2cuRIHHe2JRxwPo+0n5VD5CXVgg+lCYxTnCxI8CdyFaTumbs4IfAKwVI
wSN/btbwDUhW9hAHWHIRo+BpdJ4qeGcTDPKtsA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mf5hcf6JE6yLm0jNCQnHMVmogjLlPz6re0FwG67yvOJ3FuEorru0emIeAKEwgOoxjUYNWvcM7QAH
/UEeB2EIdjLl6glPAUda0HjtaCU2rdncVdM8k6DSMBggc4yo18Qx5F+1TD/RoBgoo0jNkMdDy6wJ
JHjqlN+R01z3yYIMQ9f2z6ZaYncbBYEp4+YAb7g1D7CSMxP5cFRpQznRpYp0JwqJfT9CHzlKgdab
8B288NxeLM66iYodiTS+GSRGLGtDWXpz9yeiuiPe6kJxae2GJyHIMSfluO/0Slc3m24DQNdbojf8
jdc0G2UnrDe5mCUTfYiDmpOWTUJOdYo0FK0N2g==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 57840)
`pragma protect data_block
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
`pragma protect end_protected
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
