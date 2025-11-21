// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Nov 21 23:05:03 2025
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
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 58352)
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
