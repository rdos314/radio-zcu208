// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Nov 19 21:37:47 2025
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
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_mode = "slave BRAM_PORTA" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_ADDRESS_MODE BYTE_ADDRESS, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
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

  wire [10:0]addra;
  wire [10:0]addrb;
  wire clka;
  wire [31:0]dina;
  wire [31:0]dinb;
  wire [31:0]douta;
  wire [31:0]doutb;
  wire ena;
  wire [3:0]wea;
  wire [3:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
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
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     7.734465 mW" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
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
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 51168)
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
