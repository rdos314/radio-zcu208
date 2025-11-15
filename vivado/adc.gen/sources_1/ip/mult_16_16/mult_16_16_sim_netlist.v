// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sat Nov 15 14:02:28 2025
// Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/radio-zcu208/vivado/adc.gen/sources_1/ip/mult_16_16/mult_16_16_sim_netlist.v
// Design      : mult_16_16
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu48dr-fsvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_16_16,mult_gen_v12_0_23,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_23,Vivado 2025.1" *) 
(* NotValidForBitStream *)
module mult_16_16
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_mode = "slave clk_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_mode = "slave a_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_mode = "slave b_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_mode = "master p_intf" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [47:0]NLW_U0_PCASC_EXT_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "3" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "0" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "zynquplus" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_16_16_mult_gen_v12_0_23 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .PCASC_EXT(NLW_U0_PCASC_EXT_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
a8oy5VKhI9r6ZPDsrDu70hiHV6+ii4ww2JaV5MUqlt96iDVy6O5zHUCC5McNgSuoSwwCPdCh3NfR
NZtBCQSLG0WwcosxcrJiFr1T2gfnuZ9DZ8tsCPFlUYSkK9TqrpuhK1VynSR2mJDUl5kbI+XeznL9
/CbZbbtSog8A2vpipn8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o311wzstkCi2Xm0gL322QWGmUhRTX44GhP9CVjsruJH5GZBvfa3cm86OmVjiGEpHioogBxsR0NDd
XR9RNFQCg7MrCcuUCqcDwg3nc06Zvy69ApHslAaAJfq3je7ho9JqFhs1hHvtjlbaglmDuWWFWGQc
Bgysjzhh3ru5Ii7iHoGjO0IlMu9zs+L/elCRBBBn1w0+QTXbhYQ46WB9RyOj/PGV0imZWjRTabjV
fhxz4+rcJEAXvKASzSR0NIh+s0wrMWXaFVAQI3k1kuIp+s8OlrsfDAMBLTI/Cq9tgDOVZU8mMZTO
iWoFmmk8pGf1aV+oDOp+FzQGxy+Qcq6K0Bj61A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YJ83ZUBaPDw2/wturr4+wRIqi4laFrwEhGoGQ5BRbuqYVi2X6+ISa2PNsgxB3ARgzDg8nfQNPtTM
PxT2Tg54UyByzAtZtMXN0v5YjxO/vjUFuk5fcskLYRi1zY2CvQYEJAaqfZndV/hvS52LyaMEfkFC
qkLPntD4nsxuEOWR60U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bf70+ZpglOMDV70X+xuN4nRPXfVUkSD67DJnuxYBU6BsEPWcIsKXYgb9RI/ipBHJIcS5yMR5ay4y
ZGUkpXF+VPjaNXTMFQtZ1K5mRMAV+JArWtTEriEcaLERTsJDeyd1Z4zDdjYpzxG6Z/Zz/ztR6NaS
DXPNkKDCuWXgoJuaTg85GgRlSZApN/Vz7Nv1VpBlKW8RaeWWPsl6V/rBQd0p3r8ABmazkNszJyh/
a/Su2bs7i+4OC4ukaxri7kHCPF84cPWArUBZQMvbfhPrio7YX4Dez8ldc4zmFSAwboVFno/moixD
/ffMy9k08hZ5r0inf4IqvyUqwJCF9Becd6RX7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t0Ly2SOPXG6TCNJmq3H1TpmFnVRhv9HxO3kBWy9oUObB5mmxIMwH4PVecLk2fGShC4taYGDp/0aY
0si1i/ejKKGrqyyGb/N6vx1JLs41Bu7iCTta1xo+4dbj/F2PireXic+68Jto7/kB5nZuUUbPr+t1
XUmV4vv6ttLMYChOaIau7ny0aK2gEX5WVUPZ16h17dlWdlRPDvH+mgudXa6P8dmQnJxg31t6wIjC
zSzt7OAwLFjEUTLsI1YB1ruB9BhEm0/OF/srCIQRKr1tQ/WOFTsRZEf6dblVTmJHun0E1Z1Vh+cF
2Up7FSrGzExIyH2zWQJovu4NqQpUZ5Vjf9Fjqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hJSML2FqcV98cUylkT1L5mHMuOLICQ4g+hlj2HavieYMseOK/g7SxNWmH7qEphzStwrOZQFMzDtD
1Vj1aF0JKpb4PBKJJzHZno9WZDpafcG5qIrY28RJ+CR8mZXTbgQVr2MxRUw7gbya4Hp6xeZAdEnq
6fFaKMN9dWeYzikVZe+5yRYREhZz9d8qnsnvvnvQHkeJETtLiM6B4Sr0hgsHS8c9+Aa7ia2UmIhh
zBvRSlghkTCQ5cJLnL8xgPU6BPDNj9ZjMUofD1+hKfZfIaKZrWraiXgKs9SjrJAfs+GEIY9yXPoD
WVQVvdkFdjNY66o/EOnV7dqw6ONHGFRgE2/DTA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYickIpiuxmseA8hr32NIz+PQH5YL3u7uoihU3kCjGsvwbbVRibk3qUmfOq9SbEshOFLrK5X0BTq
8GfHccDg1r/f3v2KGiQuvPe2+ATRd7TaeIr0e/tveJAg6wBQ5MMLCYc0cZ0iux1JaECuVSbCj0bd
pZxf8m1J/Bcgco+JI3qHNqh0uRXRY6K3uyDmOIL2cpgPbx191SyuIKtL9L3ray4QFZfxPmHYJWSj
BZPwXShcJFZX29uWHQFhfzvxV2bqiS0Nz4zhd2ABCLFr2iQ5ZhbpmzpNVMPrA8V1idxVj0eEmgpq
PorgSpLZ/EmMRvNPhUhTla7L8gkjJn8CQJ+NEw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
fAQn311nBu08DuuB0R4ieuk9vtdguq7CpXeo0sHmor7YAb3d1vkwMpX+W9baRf19NFZZ7e1SAP1F
fTmg3llJ2sBIV6fyHdZ+hSOU4b0ZFJQWKlOSIAJtqJAGSLmmMXWkAoMKMaaUvXp2GF6wsgiWkjl1
JNAnVYRBQ8AHqRW6PrnluqSpRtTejfk/sB+RZukTSfKQltkUKOb0022ozakCkpGSeEUd3hnycn9q
ThFWMHNg/eW1lHKgfXIVBIujW6b7LN1+g9UMt0VZ2fPXl3AYmeJ1HOHU0W7sXDxYQMAQQNKzjExn
3sIWEqqopjcUfDNIvU30CG3dLKU+N3FHqB7RlxbhCZL1ezwKR9dz51hLS6rYQgRkgJhrgSbvfuJ4
UVN77y+HZA6DSo1GSnNJAR1nbioPV9OQ9bcgYhPW6VywV9ol9pdoa4gyoiVBScD2I/eiM6CB3I+8
wDaR5NT2PbMvxoco4gWfY0YlwoAXHCVrIW6pnXb+5TOex4mxMUQ0x/en

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IEjnv73YQXRAkCIEYUr9W/mAjZNVmIpdev/N/sb1oZY2hb/ju2aA2Z20+M+pkJl+6nOQbGe1MYuz
zxVqt33HW4VglAaDUONi3dVlB8u02Hsxvnh5/OHQcEFY9x/e5ztwxK1eRXZPm/d+0zVyJ6gwoMoE
06tLSQsLFc6lLMYdT8GLPcx12l+fRnCavi4TdwVXmRz9JXNyxkRl4etYfDiQ6b/xjYRs7Pt2thIv
5aToHduM1mSg3cyHnHLWsqaAsHsWdGnunKoMwG+3GkevK+9ja7sQp29foyEKH1c/9PuZYtaWE5bi
LlP8eh0QsevIeaAiRzyZ9OP/MoUkwRABhD+xMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UD8GrSfmICSJ1lNXY+pPzOHUnx3TQOAxMB9U29uGc6H9NB5gnp8cO29pHZK74mATlCW0nJQarmiX
S3isy2zGtfy59l9GotJHsnwYJV6lmXKLw5K/RuvPlgIDlmh+Nlv8d91OmOQCBKKZTqH9004P7eVX
DVx/GN7xQPkrPBH61QqH9NLrj83xdr8+7AVHNAx40vRqNTCoKIp3dNX7WLu/2dPPi6c/WhMo22lv
efTeM4tFElsgjIFjIibSY4uF6wFamWljzCEL6UVWyMPwldGELitCYgZeHKFDjxC9TvBhzfE1q5Eq
glo/0KlCLsigiPyAhTCiKvxftfz+CksVkaeZfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h96XoyciCvz7a4XWTvv+YGkr0w4RAzd7A+zidHXAmAT4WKxC2cAmwZ3sK6PcDssPJK4TM5ccz16y
mP0si6/vfKq9brstNhibi9bAU7g/fpqrUdd5IWtcP85S1fWwjqpKNsNvlD/1yga395E0JGtTomHu
/SAgmnZLgp/AifzqmbO6RDMIT1wDJFWJY7gidPkT/jCiit2g4Orf+XBF1yysQUBlolMhA5ug1uMw
yhUnPqnaH0DrOX0sJh2AuzdB7FRRKTz0Ow0SwQn9sgRXNJlGEclyyut7Qlu3cuOxwKy+bP4i6DFV
t9yU8XYvX7EbKAA+xgspCIwc3jhQ5DnWQeaFPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 5728)
`pragma protect data_block
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
gB2FIxsgIQimVgVCfISMgCAGNztxV3g9wI1Rgg==
`pragma protect end_protected
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2025.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
a8oy5VKhI9r6ZPDsrDu70hiHV6+ii4ww2JaV5MUqlt96iDVy6O5zHUCC5McNgSuoSwwCPdCh3NfR
NZtBCQSLG0WwcosxcrJiFr1T2gfnuZ9DZ8tsCPFlUYSkK9TqrpuhK1VynSR2mJDUl5kbI+XeznL9
/CbZbbtSog8A2vpipn8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
o311wzstkCi2Xm0gL322QWGmUhRTX44GhP9CVjsruJH5GZBvfa3cm86OmVjiGEpHioogBxsR0NDd
XR9RNFQCg7MrCcuUCqcDwg3nc06Zvy69ApHslAaAJfq3je7ho9JqFhs1hHvtjlbaglmDuWWFWGQc
Bgysjzhh3ru5Ii7iHoGjO0IlMu9zs+L/elCRBBBn1w0+QTXbhYQ46WB9RyOj/PGV0imZWjRTabjV
fhxz4+rcJEAXvKASzSR0NIh+s0wrMWXaFVAQI3k1kuIp+s8OlrsfDAMBLTI/Cq9tgDOVZU8mMZTO
iWoFmmk8pGf1aV+oDOp+FzQGxy+Qcq6K0Bj61A==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YJ83ZUBaPDw2/wturr4+wRIqi4laFrwEhGoGQ5BRbuqYVi2X6+ISa2PNsgxB3ARgzDg8nfQNPtTM
PxT2Tg54UyByzAtZtMXN0v5YjxO/vjUFuk5fcskLYRi1zY2CvQYEJAaqfZndV/hvS52LyaMEfkFC
qkLPntD4nsxuEOWR60U=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bf70+ZpglOMDV70X+xuN4nRPXfVUkSD67DJnuxYBU6BsEPWcIsKXYgb9RI/ipBHJIcS5yMR5ay4y
ZGUkpXF+VPjaNXTMFQtZ1K5mRMAV+JArWtTEriEcaLERTsJDeyd1Z4zDdjYpzxG6Z/Zz/ztR6NaS
DXPNkKDCuWXgoJuaTg85GgRlSZApN/Vz7Nv1VpBlKW8RaeWWPsl6V/rBQd0p3r8ABmazkNszJyh/
a/Su2bs7i+4OC4ukaxri7kHCPF84cPWArUBZQMvbfhPrio7YX4Dez8ldc4zmFSAwboVFno/moixD
/ffMy9k08hZ5r0inf4IqvyUqwJCF9Becd6RX7g==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
t0Ly2SOPXG6TCNJmq3H1TpmFnVRhv9HxO3kBWy9oUObB5mmxIMwH4PVecLk2fGShC4taYGDp/0aY
0si1i/ejKKGrqyyGb/N6vx1JLs41Bu7iCTta1xo+4dbj/F2PireXic+68Jto7/kB5nZuUUbPr+t1
XUmV4vv6ttLMYChOaIau7ny0aK2gEX5WVUPZ16h17dlWdlRPDvH+mgudXa6P8dmQnJxg31t6wIjC
zSzt7OAwLFjEUTLsI1YB1ruB9BhEm0/OF/srCIQRKr1tQ/WOFTsRZEf6dblVTmJHun0E1Z1Vh+cF
2Up7FSrGzExIyH2zWQJovu4NqQpUZ5Vjf9Fjqw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2025.1-2029.x", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
hJSML2FqcV98cUylkT1L5mHMuOLICQ4g+hlj2HavieYMseOK/g7SxNWmH7qEphzStwrOZQFMzDtD
1Vj1aF0JKpb4PBKJJzHZno9WZDpafcG5qIrY28RJ+CR8mZXTbgQVr2MxRUw7gbya4Hp6xeZAdEnq
6fFaKMN9dWeYzikVZe+5yRYREhZz9d8qnsnvvnvQHkeJETtLiM6B4Sr0hgsHS8c9+Aa7ia2UmIhh
zBvRSlghkTCQ5cJLnL8xgPU6BPDNj9ZjMUofD1+hKfZfIaKZrWraiXgKs9SjrJAfs+GEIY9yXPoD
WVQVvdkFdjNY66o/EOnV7dqw6ONHGFRgE2/DTA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
LYickIpiuxmseA8hr32NIz+PQH5YL3u7uoihU3kCjGsvwbbVRibk3qUmfOq9SbEshOFLrK5X0BTq
8GfHccDg1r/f3v2KGiQuvPe2+ATRd7TaeIr0e/tveJAg6wBQ5MMLCYc0cZ0iux1JaECuVSbCj0bd
pZxf8m1J/Bcgco+JI3qHNqh0uRXRY6K3uyDmOIL2cpgPbx191SyuIKtL9L3ray4QFZfxPmHYJWSj
BZPwXShcJFZX29uWHQFhfzvxV2bqiS0Nz4zhd2ABCLFr2iQ5ZhbpmzpNVMPrA8V1idxVj0eEmgpq
PorgSpLZ/EmMRvNPhUhTla7L8gkjJn8CQJ+NEw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
fAQn311nBu08DuuB0R4ieuk9vtdguq7CpXeo0sHmor7YAb3d1vkwMpX+W9baRf19NFZZ7e1SAP1F
fTmg3llJ2sBIV6fyHdZ+hSOU4b0ZFJQWKlOSIAJtqJAGSLmmMXWkAoMKMaaUvXp2GF6wsgiWkjl1
JNAnVYRBQ8AHqRW6PrnluqSpRtTejfk/sB+RZukTSfKQltkUKOb0022ozakCkpGSeEUd3hnycn9q
ThFWMHNg/eW1lHKgfXIVBIujW6b7LN1+g9UMt0VZ2fPXl3AYmeJ1HOHU0W7sXDxYQMAQQNKzjExn
3sIWEqqopjcUfDNIvU30CG3dLKU+N3FHqB7RlxbhCZL1ezwKR9dz51hLS6rYQgRkgJhrgSbvfuJ4
UVN77y+HZA6DSo1GSnNJAR1nbioPV9OQ9bcgYhPW6VywV9ol9pdoa4gyoiVBScD2I/eiM6CB3I+8
wDaR5NT2PbMvxoco4gWfY0YlwoAXHCVrIW6pnXb+5TOex4mxMUQ0x/en

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IEjnv73YQXRAkCIEYUr9W/mAjZNVmIpdev/N/sb1oZY2hb/ju2aA2Z20+M+pkJl+6nOQbGe1MYuz
zxVqt33HW4VglAaDUONi3dVlB8u02Hsxvnh5/OHQcEFY9x/e5ztwxK1eRXZPm/d+0zVyJ6gwoMoE
06tLSQsLFc6lLMYdT8GLPcx12l+fRnCavi4TdwVXmRz9JXNyxkRl4etYfDiQ6b/xjYRs7Pt2thIv
5aToHduM1mSg3cyHnHLWsqaAsHsWdGnunKoMwG+3GkevK+9ja7sQp29foyEKH1c/9PuZYtaWE5bi
LlP8eh0QsevIeaAiRzyZ9OP/MoUkwRABhD+xMg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UD8GrSfmICSJ1lNXY+pPzOHUnx3TQOAxMB9U29uGc6H9NB5gnp8cO29pHZK74mATlCW0nJQarmiX
S3isy2zGtfy59l9GotJHsnwYJV6lmXKLw5K/RuvPlgIDlmh+Nlv8d91OmOQCBKKZTqH9004P7eVX
DVx/GN7xQPkrPBH61QqH9NLrj83xdr8+7AVHNAx40vRqNTCoKIp3dNX7WLu/2dPPi6c/WhMo22lv
efTeM4tFElsgjIFjIibSY4uF6wFamWljzCEL6UVWyMPwldGELitCYgZeHKFDjxC9TvBhzfE1q5Eq
glo/0KlCLsigiPyAhTCiKvxftfz+CksVkaeZfQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
h96XoyciCvz7a4XWTvv+YGkr0w4RAzd7A+zidHXAmAT4WKxC2cAmwZ3sK6PcDssPJK4TM5ccz16y
mP0si6/vfKq9brstNhibi9bAU7g/fpqrUdd5IWtcP85S1fWwjqpKNsNvlD/1yga395E0JGtTomHu
/SAgmnZLgp/AifzqmbO6RDMIT1wDJFWJY7gidPkT/jCiit2g4Orf+XBF1yysQUBlolMhA5ug1uMw
yhUnPqnaH0DrOX0sJh2AuzdB7FRRKTz0Ow0SwQn9sgRXNJlGEclyyut7Qlu3cuOxwKy+bP4i6DFV
t9yU8XYvX7EbKAA+xgspCIwc3jhQ5DnWQeaFPQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 9776)
`pragma protect data_block
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
Icx04sA/3DVOrxXhjZoO/oTDx1ldmo0eXKv9Ows=
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
