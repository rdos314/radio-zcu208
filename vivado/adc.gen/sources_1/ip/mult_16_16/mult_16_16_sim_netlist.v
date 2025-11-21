// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Nov 21 23:03:11 2025
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
JwO2kTWoWG8TGM4F5816pqFfYdztHmPQUz+4ig==
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
RT2LTURWkkl1IEUaNxD0cdPt47HuwaN4jYaaf00=
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
