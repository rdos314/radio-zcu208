// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Thu Nov 20 20:22:04 2025
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
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
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
