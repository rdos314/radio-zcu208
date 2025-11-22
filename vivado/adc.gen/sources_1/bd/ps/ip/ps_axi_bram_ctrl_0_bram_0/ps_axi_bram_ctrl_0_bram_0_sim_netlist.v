// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov 22 00:02:46 2025
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
