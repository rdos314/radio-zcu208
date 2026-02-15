// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Fri Feb 13 16:35:53 2026
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
F6FcVAU4dCXoMgmridTcnc0wMnjwSTKfkI0X2Zq+lvyV6tq+D2HzeYWazpNCXgVC0oEmwi2/Mryr
sfbPW2533JjU0EsjGUO5Yi2xbTjsCl1jH9dvC/LhS7RwdnTrwYJeLzQDgF0/ICebZPP8f0WeJybR
9uIPrjCGZpBv1W3o+ymmwBLR+OqjW0Jw+icc0H8uTnNBoNMNBgZlJE+wkm0Il57reQciQ50alEPv
BLn4HmI7GbphgKD1ba78nJ75EWvsO43zfsljj0NOFFimoDyVWV/3OrIx88icgOWkEomSrKOZ9Rm/
SdbUhyshR3HnukntHzexScLJ5TJhi1K8lj5eMwzbkqAdFhAJPKfUhzK2v4jkAoDkl2y4hacvmNyz
NVb9RZrm9vniwOReieOKzHuW+XxZx+MRanNuGEH+QJPOSgQJDXVYp2BUfcXIu8QUAsNaXDQlsu/e
Wc+I33g+wy2OgEuAkGpP+cI+BaSZGGrHBvaSvxFq2QOXZAnwSTELOzm1lmeFpIs5SAhYSqD1G8RA
2/M3iTMbFJgKbIEvSR4auKwns9ENR1OHgCbwJ5M2LWMO1J1S5K7PuCDZ8NwE1+Rbx3PJULcxezFy
PRpEJQ05O0fe2GAVQvMQW68HohqWED6bj+t2nfxaur2uKxYY+C5yplUQAcbB5KjiknBs9wdgJ/y+
i9ijc3lTM+UHu8OIjFZufjAWwaxUbqHYz1nUKE0IgfWr38aI3CII0H13mcPjRIKhUpKXUvBloTuk
AGKYg08DFfLSzkZyw7upWMdDfL7nthkQdxHczh9iFpVyWYlA1HRWMzL8fMPe4PBJgmnAULnj8qSU
1yOrB9Mmq6kwloEJv4tmLlU6fe5kwnqwBkwNTVQnoYSZp+MyRXRag22DUQI7kKC8PEDMi/Sl47sp
6visK0mkEbRLXP7oA3+Fl9JfwtwqOGYDK342oxURU1zplmqKlP/czSyDHhoIeJ56cOSFK/fqolcg
yvUqooHvK7dOESSfGlBjI0RmAkT1wBZYJ/Z4vhyp4Nsru2CgMmAzwebTodh+ijwXJqaj+x/qIH28
weCRGY29cg/jv6o7MSXKEMJ0DvcR7Qtld5rS9ARAfYi82Fu/fkUnWqBUk6RrbXdiHGz08Aw0nYVu
pOWxsebS9f6S8OgdI+9KTz7lFge3IZ5QdqGMMr71is5/aw2XFyCpvT3hZvN+H0slcjWce0nISawh
9RdMIijtPcDc2hUSGqCIstalCarL50zikZAj3paEDVU/3rpb4OmmPXVfX/0ane2huiJguPGWNT2P
6bAHeaXHJnCbWnVps6i3BbnjSLeKvsL/zHUzjWcFGzmmvlfb2Vli8yw4C+40bp5loe/U9LoMCVCo
1CcivqWlnn2pSilDMJqyXuo/fblHkUR2Z6SqljnlC7StnBlEcxoZwXQXpqTqRk2FUMEx+RTYhVV3
5swRi0/yCezSksDFbUXTivH8vJbWwFDERl/1XT7dsaNbFyVHo6QG7HbDMu1epGpyDgLRxPdw/Dah
jo4X7B/KjWpmxHFWEDW6aNsyA0WiFXBM4FMlWAFknF34rvTF3vswY3/gNyc+9Qj5BDr/cjkfmnvw
JJv4SjbRsevTFpP4CTpOoVKpiWrIYexAmaA6yzJCZ7kOPkz3tZxsCub/mWo6cAlOXEz5V29reaTk
0lsED68ksIYd5g6LIX9fPWSDYjNeebw3TwIGcerXRY3WuLl46//tRrO/vIdshBel15qbHMkJRjtg
3vf1M6ZK0M35wwzbTU1e9jSk5SD6K7rvLPjWS6AjkZoQJfjzpfajseX8znc6mcffnD6s+/81L2kh
OSc34PNcI7S9QT0/ogytbobZB+II/3OrLAON7P7Xu11VUo8wyKwxtth2p6G7fAf7ZOqOhgSq6LK0
1aXkt2YtPQ5Gi9VPYDg6n9WFRhkTBKvq1eJb9CjCunAhewYwlUQsK75vNPCHhfoyxb0RCeHOaDkd
4ldWB97Zlxvy+aEus1kH01ibUixnCKIg/CtAh4zG6nbcQydbiPvdP8ma95NXuN5sC7tz84lR5zPn
LFN6ZjV9R9sTOgcpW1O0Xos55n1lPngloVJNxDqBfKz6Lfi4ah7l6Cdcgiwjo32iZVBDk3xprHCi
y4nxja4gMXuWjAHG7zuYl3P+xxiGbcztDr4XwjcDAaP+/O9ZUySpSC2HOzf10E4uY7E1dOaL8uW9
HI4M7Ydv0RCeNVlxS3gve4FrbZo6jjUSfudIkloPjgc//TlgxW8XZnxBa2TvgP8qcfTGP10AaaqT
89dH0i6W3pWWRn5qVi1XXAJINJZ2+bpMgYKq+45Igphi678W95JfSlFRSVGsDN9pf4JBphrDP7ls
sgzBKAO4ybhzFbPclaW0VOnOH3dKRl6KsDlztyD2dgVWRvfE3pO9LsH5k4XMcPmqlfJyYn8CtAsH
N8GgV+GOqa8u7tmSM4T+d7w2E6TULodfhhHhGE8pwrm8KmKsoaa+iMDugChWtedaeL1dDk0/CZFS
3gSKl6dqFVBT9LWQ4/dWVp4RrMA0ZN141wSHgawJLCGTWBmMRYS7DlFYpS2DcBU3RJSfFZxhapB+
GjKTLY5uMYSAFp244QZRBabl/lIy4RTy7EK/e8fci2r2pJh8elGaaGdy7aSjgzT0A28S95GMteX0
r9ighSdMI3atOWVL4X7rcT+eAbhEYSqulo6/9tETIY4Mr1jotq5IuBMJGoCy1ycTXc5F9GcYshcP
ixD/KNvXi7y1XSG2/hA1McyLdfOjrjFW9LgfbR3xWY3qrLxHLATQDS6+xEIOEOpQbHVsPjQOs/LQ
q/HPGHBS7H2ih8ja1fZiQIAxN/qPlLM61+Osv11JDhfx9pCx1yTRXNOyW6S450ve9RPjbHoWFkT7
EqZcjP1MlzAs+3HwdEo3fMA80P1wrkVY1PZCbM8JSNRwMU1kQ+feK0Xx/YbEHyNaTldtccFQ8j9z
TrOzTsfZAYt1KBS+GP8xwouPpfH8eACpH/U7ktG+QLMOgResUjjw+HNFP+LaXvlU5OzdTg0J3//X
pF/C+aszP3NNt/0QCMcSjiopVCg+3S2KqwwsEEGUpFD/uREX9c1BSWk3iQnGCYAu83Vw/EeafXb6
Qf2hChNCueNDcnbOCDBT+xNt99ZGqmoxoCA8Z1a9MBqBEGmQiuy1roVaEMl0zVgU/DZvN4R1gHUh
SfXBzXQdYAABXYFPu4ILo/YItLGFPbAmzzL26788Jj16KxvwUX+b/VqP39PqL3vMli1gqNOZqnE+
7XvNaZmnuxT7YdFoT45AlnGuW8S51h2BtmCqtVu1cTSs5K7TY5IJuhBsvXasNRnbfB5IfmhrWOjR
mxYpT3OmLYH+FIol8L++L39II92VpJ7hWrZdin8sRmhTxa/Hmw7GCSCav4jo3GiDP3uVLgVtoFeA
a0/2md6dgeCwE15BO72nLbe593Rq9vOPVB9pPtGqsdNHgIaGMCilpjYIErVmA9/8bPpl+Ygiqbrw
XzAPtDl0yJzJAxlrcos5wIf6U63kuS/LYWj9NYRvTjzw8IGGTtw2oIUtVHQM1x8YxcqhgVkzrFd/
z0gzVTNxTh7s5C0HBMdCDFDASLdZZHTroVTKuK5gt06IoVxUb6+wbi7LxpyjSxG5K8HFAPSbTBWE
Genji2kwCO4nGzeVkSQLAKVE5R3cgixK/0mmRAUWXSRdFV6BY6XJoiJ7QAZR/n9izpuy0wULIw9e
/fnACEnEvoZerT1I+nLOFfOsa5rAgV6XoJ2HZkBR0gVFuncBQs2+hsNzb72f7iYrI/88+Bd1Vk8P
58lTc/2pYOxMgMxDomXMjyY1ISNm5mobTweyZB94h7jpYzUtWH+LgvuEV3Mo4mP1goXG6MtCK9ht
u5d1FLWIJISylnD587YcokWei5zCt/4WH6FOE9TGKInaxrCVg8csL6hdCNOAvuOrjQFnvZu9XudR
X0dswUOAbfqcRn8aB29909SNZmGCh83v/xNzP9yvjB6pAYnE8rAYxCu2hGznhxmRsSO7M1HR2ctu
CPAeMjn6pfJUjXaRQSaC6mOekrHKAecPVQp9z/wsHljzGtqQJ1LPXTmlDgG1Nk88M0yGIJJpoyGq
ZaiF1/TZ8RnxDhfNySvomP1CSjqoTt+fZdxcrYwfrtqMW0wm+OHDRbkuJuVjTTQ4PIFLE1TdeHhZ
/OX328YLZxdBJhVaXJiv5D2kf6SKqo7ZCCjj7bh5S/QtW8Uv2gpDt8DdPtZYRYLhvu0tPieq5pKx
mb8mW5Wt4eAN5cTAYlHoBBMyTZ1uPRkC9KpIHSU5vNJsD7KlN1TdfwMTFW1j/3b6vpywbpe+S3/P
/ezQF7lBMORSinixi4SAzRaFFVRRc8A3dwBRxS1UxlDdcLEdjcAAc9hHHFAJznrWb1FmentoZSTF
Y4GHNk0euZ3ZOEmWr+G/QrynQB/8b684/OqU9fRRKOettR9QaXS8BDkD6dlWcP3NnVoumqP93L6d
u0pEkdsOu+iaj0zoSOzIT7Ms9ms2lkhcVq0/BXvsJGmN6nOFk+tkAH8Wa0+lRZd3MxymzfyO3tVz
u5HHZyAdZbZggAw8YvmLMkr+4EKitglFtqdFLb4FO1c7hp0eMhvgO2cLEzDxbZ53PEOExX4hWWD4
ThynG46t11/p7cZ2vpCMoh3wpfLgXX/cWzJIru2rNqWm7T4/SRSDQSh9N5jEELEi9x748+EUvsvG
0Uy2jWCl+BlBtDwIASp13Xajjn+4iM8GQ6PvJmxefV//Rxxl2PA1eI7cwBzRMJoIUKQ3MkXoavyw
BRErq28wnU6y6cymlj4BN9CxuYoiR7VnL+UcljIvgpkJs0YRr5Ww8p26/xLI6gQhaxzbSLkL0HKr
hA89HkcEp0J5dmZ2vY/abd1gAJEvT6ZWpQGLeo8jLl2FVhfE++8F4LWC6dN3PPuSquo/xyhy3Viq
WGXeRnFhB7T1Ty3eAcx+ODZjOzeKP7s3WoOyT9FuO2Mj1mfPoR1Jz537Nt1frv+NlDsXjpLH2WvS
M2iIYZft+dybPR9VLHQukArXjDpjheGYp7NBkc2e8Eo7kedj+Qe9gw9eLM7xlxHDHzcucTWplQGS
spvr8dp2iukilUFrH/etWWdlamcEUMiYJeOXPBgga+iirM00YKZaxI/mIYQycJTuM1xqxLrRFqjf
NFwh4k+Cv1Rf5plp2wng724PhYVIPOYtHwKnMjI5UatIqqobiOcyAUdDTdzztTrB2W9InMU5dXEx
eq+au8zw2MSY9PBtcu/3c3nu2UPmKNcPGdMexIExCOXPaL/pF/K1wIedR7Xk3uM7BEF0ghJvHg0U
OV9a2RS6Vxm4/Qy3o9uqRRudCjsV+jrlhtrZ/wbw4Is1ZY8lgffkRD8528CblySZflDrY3090F1a
AQddNRIO/oCyOP+s++wBW/zF1sB1BfuByRp05PlAr0hoFeZGtGxwXOxKHMWVD+tHWm+8i42ffkgp
DTsN0rbD0YOWrvRKz712FWPUQYlbREaw47cJa61ngMGgUPh+vtTib/hirE6SzCk93/QS7WLf0tQj
yXb9fZMfxu9L7NuQcJYPys+NLKscW7zG/HNfz2NVw7a8T2gaMixVUItHCviCUr+TFPnklV1rXGeQ
wgCUKxt43KMAQ+NgEELNbGffjLufcvAxL+68uNhVAmajGwDNodrCD+GyZ0P8fIF21Y8D+DBrk1pL
HUw8+60DpTm7H5wazXHQNw0bzcbSyYMQzif2MZjHU1tZFpzsl7Atiu0JdtVO1XxHvgV6S0/eSakY
yquIw2SYh73wmOj5mDjkm6iVH57Jn/4u9Jm/CgsdhyTePlZ++KOORCppdGv98WM16cWyhgXxjKe6
Ni9Df9Tej2ULrcYPwIaJBfTDBdEBuqxxb5X2nNxUPaY+C/fR3yTcP8PO3vlzO11pj9WXVPOTYgW/
STJ3Z6B151mRPmo2kydkbDwf9TsHXbk2Wbve8X5i08JjHlifSmlvOxfY6GLUL1YokumedR52Xtep
9x2h4r5Ld6bQv8vNRSD1k8NXZ72WnL7F5Zm5jQd0gurF5p8eVTvDG3iV/xYn0F7qIVlT5vP/Jaqw
yPi1hUfR9HNjcpFsAxCxV9GP83BiFyFFQCg8GbPcGbVM13f9IqIC3xE4BWTSY9XWOlFYvIkKHR0h
MeZrgvK6E3nGe9mm0C0tNWy0YEUM3I0kTNZhdnfBTAuG/JgSyWuJ/6XVkPoErY0ao0fRWGvTmeuC
ijbGd70hxaqVAjkq+GIS8x16BIFMAKli3xQ+8npkkRlfQ2qIiLRciwYFqYkuSxu4ar9yWfYKNeOZ
Cpj9n1+a1VEWHlIcCIUlZTYcbhqKKwvQpY07FuY2VxS0u7XENGbOiodQYLUz0pX5xKme0IxHDT8z
tSwpDCerO2gkAsHXJbupxq+pcmLEtado5UWEf5jO29piNWJpt1kGMlobrTA9s0IAzgftNPrY8FJA
Kz+KRxpH/nSlns9be95VJn3z9aOp1DV2brGp/eUmGOIbG7yngGglEe2oKsz82WCC8RsY/rhxbqfi
oeahAAj/Xqh0Uvieqr9qmG8/hUGjPgXnGr3eNx889RZhc+u/CUYMh01oi7oSBOvoloSFwAu1uq/d
dJXuj6TjiA7orPuoKilsQmeY3Krt0f1TW4i1+VkpMMOtzVN8uxJn+tZYMZC/5/qwzhjrigELaUNO
IsY4bImp0kWr9bmmmW5GOocGLyK7mfJuEBPvbqu7uFIyhHbG1dV8nHnuadvu+RAJemuOS+HlNXoS
CchLaVjsYtWH8YfVLMy74F9pMzdLu9UxM97LSBC0LOZN0KY631JXiBxytPlQyYyqdg/BE4K95P+J
hDoDvgmyD/kDjnZqEqmxvw/9ZPnSvhgu7HV2u0t7WBe9pZnLWsoXWWmnb9o3Hnv4O/2rtqWMF09r
eTyrwSy3EL0U+mlc/o3zx6WmjuHIJ2fQI3eoKn8xLnGXkoLYOF5nBLqJ++38/rL95Eff4Wysxuqh
rAW8WwRK9etMjEEf9PsRdsuZ1T2O4M4eMpiMpGz8Cj6rMrO+/iJhEO6/mWNoAaBnq/mY/qUbaQHg
NisbbZl8tWTdP6Mbbkju4ZKvGLCz5iWyqlHkxd58PM5hCpOOfBInA6WtRMHUdP7/1cjN9sQdTrtj
UN7YzdiLjUpcsnXl4fYR15PkPkZl1q9hJNHCKnEkFkhcVR4+dk4xdjO9LpVjCaQwXFAuzgl9iihL
qoQqaz8qGj3Ll6l4RIrL4kgy73htq/AgCMnSHO97JAEVvw73eTpW4Q105tAIhthWd+9WOdSJ3tp3
/Cn6QgIue5dinI9kQVtGhsCl5EZ1q8F6DHneCjcnJz4gq8TtYGsOIphX2CraAqdBkvA/YiXznaih
PeyX9MRhUM6GiYSqeSxieidu0sGpextLDkP/8WsMoPngCwaN0XwO4K2Pn+CSI0xuhKozo2NjvdcJ
AZHozKBzaOUFOtzw5S/rsVnpamaJxy1BzrrAvMJT20Rg05YNo5NbZjcIgFo9lEUlsxN+75JaR9aR
q1RDPkk/z9wwOVV05K4c5jM8L/g2DEtuLfZYUE9yJI5+ii0uO4E+LqQzNOKt5HK6ivzJd+cM84Jb
BtOzPF+5oeh6g85LZXFe+zjDwaG4bn8X7+NsvA==
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
5Md+IOT4U05BmF1jkcym7YOnUasp20SHpYVU4sc=
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
