// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Mar 15 13:16:15 2026
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_axi_bram_ctrl_0_bram_0/ps_axi_bram_ctrl_0_bram_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58128)
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
