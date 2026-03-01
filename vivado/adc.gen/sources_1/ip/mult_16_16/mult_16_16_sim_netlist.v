// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Sun Mar  1 01:00:18 2026
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
g34yExBDcJRMZzHkp6BMKm2GE14L8fiKcpsXFQ==
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
wEAsMZ8LCyXIw67JlmOTj+p3jGt2Vc1abWOgvsI=
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
