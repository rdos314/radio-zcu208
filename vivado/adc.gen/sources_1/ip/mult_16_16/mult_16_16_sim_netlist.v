// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Wed Nov 19 21:35:06 2025
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
xjnFFe38fCCgaabhWQLx5NxNr2kceH42/B5yJg==
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
NuXUMNfXNFWVvyFvRCCdQ6pLEFRZoDi5k1VeOKo=
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
