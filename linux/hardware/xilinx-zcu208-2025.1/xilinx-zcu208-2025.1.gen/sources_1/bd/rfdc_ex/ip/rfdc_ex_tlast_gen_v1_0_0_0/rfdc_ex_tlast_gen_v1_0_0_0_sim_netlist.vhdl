-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:26:59 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_tlast_gen_v1_0_0_0/rfdc_ex_tlast_gen_v1_0_0_0_sim_netlist.vhdl
-- Design      : rfdc_ex_tlast_gen_v1_0_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0_S00_AXI is
  port (
    axi_awready_reg_0 : out STD_LOGIC;
    axi_wready_reg_0 : out STD_LOGIC;
    axi_arready_reg_0 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    in0 : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0_S00_AXI : entity is "tlast_gen_v1_0_S00_AXI";
end rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0_S00_AXI;

architecture STRUCTURE of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0_S00_AXI is
  signal \^q\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal axi_arready0 : STD_LOGIC;
  signal \^axi_arready_reg_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal \^axi_awready_reg_0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^axi_wready_reg_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 7 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0_update_i_1_n_0 : STD_LOGIC;
  signal slv_reg0_update_i_2_n_0 : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_2\ : label is "soft_lutpair0";
begin
  Q(31 downto 0) <= \^q\(31 downto 0);
  axi_arready_reg_0 <= \^axi_arready_reg_0\;
  axi_awready_reg_0 <= \^axi_awready_reg_0\;
  axi_wready_reg_0 <= \^axi_wready_reg_0\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rvalid <= \^s00_axi_rvalid\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(0),
      Q => axi_araddr(2),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_arready0,
      D => s00_axi_araddr(1),
      Q => axi_araddr(3),
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^axi_arready_reg_0\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^axi_arready_reg_0\,
      R => p_0_in
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(0),
      Q => p_0_in_0(0),
      R => p_0_in
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => axi_awready0,
      D => s00_axi_awaddr(1),
      Q => p_0_in_0(1),
      R => p_0_in
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => \^axi_awready_reg_0\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^axi_awready_reg_0\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_awready_reg_0\,
      I3 => \^axi_wready_reg_0\,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \^q\(0),
      I2 => slv_reg3(0),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(10),
      I1 => \^q\(10),
      I2 => slv_reg3(10),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(11),
      I1 => \^q\(11),
      I2 => slv_reg3(11),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(12),
      I1 => \^q\(12),
      I2 => slv_reg3(12),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(13),
      I1 => \^q\(13),
      I2 => slv_reg3(13),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(14),
      I1 => \^q\(14),
      I2 => slv_reg3(14),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(15),
      I1 => \^q\(15),
      I2 => slv_reg3(15),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(16),
      I1 => \^q\(16),
      I2 => slv_reg3(16),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(17),
      I1 => \^q\(17),
      I2 => slv_reg3(17),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(18),
      I1 => \^q\(18),
      I2 => slv_reg3(18),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(19),
      I1 => \^q\(19),
      I2 => slv_reg3(19),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(1),
      I1 => \^q\(1),
      I2 => slv_reg3(1),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(20),
      I1 => \^q\(20),
      I2 => slv_reg3(20),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(21),
      I1 => \^q\(21),
      I2 => slv_reg3(21),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(22),
      I1 => \^q\(22),
      I2 => slv_reg3(22),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(23),
      I1 => \^q\(23),
      I2 => slv_reg3(23),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(24),
      I1 => \^q\(24),
      I2 => slv_reg3(24),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(25),
      I1 => \^q\(25),
      I2 => slv_reg3(25),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(26),
      I1 => \^q\(26),
      I2 => slv_reg3(26),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(27),
      I1 => \^q\(27),
      I2 => slv_reg3(27),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(28),
      I1 => \^q\(28),
      I2 => slv_reg3(28),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(29),
      I1 => \^q\(29),
      I2 => slv_reg3(29),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(2),
      I1 => \^q\(2),
      I2 => slv_reg3(2),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(30),
      I1 => \^q\(30),
      I2 => slv_reg3(30),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(31),
      I1 => \^q\(31),
      I2 => slv_reg3(31),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(3),
      I1 => \^q\(3),
      I2 => slv_reg3(3),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(4),
      I1 => \^q\(4),
      I2 => slv_reg3(4),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(5),
      I1 => \^q\(5),
      I2 => slv_reg3(5),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(6),
      I1 => \^q\(6),
      I2 => slv_reg3(6),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(7),
      I1 => \^q\(7),
      I2 => slv_reg3(7),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(8),
      I1 => \^q\(8),
      I2 => slv_reg3(8),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0AAFFCCF0AA00CC"
    )
        port map (
      I0 => slv_reg1(9),
      I1 => \^q\(9),
      I2 => slv_reg3(9),
      I3 => axi_araddr(3),
      I4 => axi_araddr(2),
      I5 => slv_reg2(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s00_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s00_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s00_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s00_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s00_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s00_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s00_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s00_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s00_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s00_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s00_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s00_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s00_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s00_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s00_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s00_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s00_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s00_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s00_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s00_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s00_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s00_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s00_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s00_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s00_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s00_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s00_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s00_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s00_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s00_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s00_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s00_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^axi_arready_reg_0\,
      I1 => s00_axi_arvalid,
      I2 => \^s00_axi_rvalid\,
      I3 => s00_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => s00_axi_wvalid,
      I2 => \^axi_wready_reg_0\,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^axi_wready_reg_0\,
      R => p_0_in
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^axi_wready_reg_0\,
      I1 => \^axi_awready_reg_0\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => p_0_in_0(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(7)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(0),
      Q => \^q\(0),
      R => p_0_in
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => \^q\(10),
      R => p_0_in
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => \^q\(11),
      R => p_0_in
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => \^q\(12),
      R => p_0_in
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => \^q\(13),
      R => p_0_in
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => \^q\(14),
      R => p_0_in
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => \^q\(15),
      R => p_0_in
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => \^q\(16),
      R => p_0_in
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => \^q\(17),
      R => p_0_in
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => \^q\(18),
      R => p_0_in
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => \^q\(19),
      R => p_0_in
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(1),
      Q => \^q\(1),
      R => p_0_in
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => \^q\(20),
      R => p_0_in
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => \^q\(21),
      R => p_0_in
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => \^q\(22),
      R => p_0_in
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => \^q\(23),
      R => p_0_in
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => \^q\(24),
      R => p_0_in
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => \^q\(25),
      R => p_0_in
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => \^q\(26),
      R => p_0_in
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => \^q\(27),
      R => p_0_in
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => \^q\(28),
      R => p_0_in
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => \^q\(29),
      R => p_0_in
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(2),
      Q => \^q\(2),
      R => p_0_in
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => \^q\(30),
      R => p_0_in
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => \^q\(31),
      R => p_0_in
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(3),
      Q => \^q\(3),
      R => p_0_in
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(4),
      Q => \^q\(4),
      R => p_0_in
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(5),
      Q => \^q\(5),
      R => p_0_in
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(6),
      Q => \^q\(6),
      R => p_0_in
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(7),
      D => s00_axi_wdata(7),
      Q => \^q\(7),
      R => p_0_in
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => \^q\(8),
      R => p_0_in
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => \^q\(9),
      R => p_0_in
    );
slv_reg0_update_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => slv_reg0_update_i_2_n_0,
      I1 => \^axi_wready_reg_0\,
      I2 => \^axi_awready_reg_0\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_wvalid,
      I5 => s00_axi_aresetn,
      O => slv_reg0_update_i_1_n_0
    );
slv_reg0_update_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FFFE"
    )
        port map (
      I0 => s00_axi_wstrb(2),
      I1 => s00_axi_wstrb(0),
      I2 => s00_axi_wstrb(1),
      I3 => s00_axi_wstrb(3),
      I4 => p_0_in_0(0),
      I5 => p_0_in_0(1),
      O => slv_reg0_update_i_2_n_0
    );
slv_reg0_update_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => slv_reg0_update_i_1_n_0,
      Q => in0,
      R => '0'
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => p_0_in
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => p_0_in
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => p_0_in
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => p_0_in
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => p_0_in
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => p_0_in
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => p_0_in
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => p_0_in
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => p_0_in
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => p_0_in
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => p_0_in
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => p_0_in
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => p_0_in
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => p_0_in
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => p_0_in
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => p_0_in
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => p_0_in
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => p_0_in
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => p_0_in
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => p_0_in
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => p_0_in
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => p_0_in
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => p_0_in
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => p_0_in
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => p_0_in
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => p_0_in
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => p_0_in
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => p_0_in
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => p_0_in
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => p_0_in
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => p_0_in
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => p_0_in
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in_0(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in_0(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in_0(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in_0(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in_0(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => p_0_in
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => p_0_in
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => p_0_in
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => p_0_in
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => p_0_in
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => p_0_in
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => p_0_in
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => p_0_in
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => p_0_in
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => p_0_in
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => p_0_in
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => p_0_in
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => p_0_in
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => p_0_in
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => p_0_in
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => p_0_in
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => p_0_in
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => p_0_in
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => p_0_in
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => p_0_in
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => p_0_in
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => p_0_in
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => p_0_in
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => p_0_in
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => p_0_in
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => p_0_in
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => p_0_in
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => p_0_in
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => p_0_in
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => p_0_in
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => p_0_in
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => p_0_in
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in_0(0),
      I3 => p_0_in_0(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => p_0_in
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => p_0_in
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => p_0_in
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => p_0_in
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => p_0_in
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => p_0_in
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => p_0_in
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => p_0_in
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => p_0_in
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => p_0_in
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => p_0_in
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => p_0_in
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => p_0_in
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => p_0_in
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => p_0_in
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => p_0_in
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => p_0_in
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => p_0_in
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => p_0_in
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => p_0_in
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => p_0_in
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => p_0_in
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => p_0_in
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => p_0_in
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => p_0_in
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => p_0_in
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => p_0_in
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => p_0_in
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => p_0_in
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => p_0_in
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => p_0_in
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => p_0_in
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s00_axi_rvalid\,
      I2 => \^axi_arready_reg_0\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 is
  port (
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 : entity is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 : entity is 32;
  attribute C_S_AXIS_TDATA_BYTES : integer;
  attribute C_S_AXIS_TDATA_BYTES of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 : entity is 64;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 : entity is 512;
  attribute C_S_AXIS_TKEEP_WIDTH : integer;
  attribute C_S_AXIS_TKEEP_WIDTH of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 : entity is 64;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 : entity is "tlast_gen_v1_0";
end rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0;

architecture STRUCTURE of rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tlast\ : STD_LOGIC;
  signal m_axis_tlast1 : STD_LOGIC;
  signal m_axis_tlast2 : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal m_axis_tlast_i_10_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_11_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_12_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_13_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_14_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_15_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_16_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_17_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_18_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_19_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_20_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_21_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_22_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_23_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_24_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_25_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_26_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_27_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_28_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_29_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_30_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_31_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_32_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_37_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_38_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_39_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_40_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_41_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_42_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_43_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_44_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_45_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_46_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_47_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_48_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_49_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_50_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_51_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_52_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_53_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_54_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_55_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_56_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_57_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_58_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_59_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_5_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_60_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_61_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_6_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_7_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_8_n_0 : STD_LOGIC;
  signal m_axis_tlast_i_9_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_i_2_n_2 : STD_LOGIC;
  signal m_axis_tlast_reg_i_2_n_3 : STD_LOGIC;
  signal m_axis_tlast_reg_i_2_n_4 : STD_LOGIC;
  signal m_axis_tlast_reg_i_2_n_5 : STD_LOGIC;
  signal m_axis_tlast_reg_i_2_n_6 : STD_LOGIC;
  signal m_axis_tlast_reg_i_2_n_7 : STD_LOGIC;
  signal m_axis_tlast_reg_i_33_n_7 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_1 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_2 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_3 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_4 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_5 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_6 : STD_LOGIC;
  signal m_axis_tlast_reg_i_34_n_7 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_1 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_2 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_3 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_4 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_5 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_6 : STD_LOGIC;
  signal m_axis_tlast_reg_i_35_n_7 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_1 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_2 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_3 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_4 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_5 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_6 : STD_LOGIC;
  signal m_axis_tlast_reg_i_36_n_7 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_1 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_2 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_3 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_4 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_5 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_6 : STD_LOGIC;
  signal m_axis_tlast_reg_i_3_n_7 : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^s_axis_tkeep\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  signal tdata_byte_count : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \tdata_byte_count_int[13]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[13]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[13]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[13]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[13]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[13]_i_7_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[13]_i_8_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[13]_i_9_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_7_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_8_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[21]_i_9_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[29]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[29]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[29]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_10_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_11_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_1_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_3_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_4_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_5_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_6_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_7_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_8_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int[6]_i_9_n_0\ : STD_LOGIC;
  signal tdata_byte_count_int_reg : STD_LOGIC_VECTOR ( 31 downto 6 );
  signal \tdata_byte_count_int_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_1\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_10\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_11\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_12\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_13\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_14\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_15\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_2\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_3\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_4\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_5\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_6\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_7\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_8\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[13]_i_1_n_9\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_1\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_10\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_11\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_12\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_13\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_14\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_15\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_2\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_3\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_4\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_5\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_6\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_7\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_8\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[21]_i_1_n_9\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[29]_i_1_n_13\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[29]_i_1_n_14\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[29]_i_1_n_15\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[29]_i_1_n_6\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[29]_i_1_n_7\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_1\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_10\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_11\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_12\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_13\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_14\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_2\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_3\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_4\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_5\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_6\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_7\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_8\ : STD_LOGIC;
  signal \tdata_byte_count_int_reg[6]_i_2_n_9\ : STD_LOGIC;
  signal tdata_byte_count_meta : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg : string;
  attribute async_reg of tdata_byte_count_meta : signal is "true";
  signal tdata_byte_count_sync : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute async_reg of tdata_byte_count_sync : signal is "true";
  signal tdata_byte_count_sync_d1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tdata_byte_count_update : STD_LOGIC;
  signal tdata_byte_count_update_meta : STD_LOGIC;
  attribute async_reg of tdata_byte_count_update_meta : signal is "true";
  signal tdata_byte_count_update_sync : STD_LOGIC;
  attribute async_reg of tdata_byte_count_update_sync : signal is "true";
  signal tdata_byte_count_update_sync_d1 : STD_LOGIC;
  signal tdata_byte_count_update_sync_re : STD_LOGIC;
  signal tdata_byte_count_update_sync_re0 : STD_LOGIC;
  signal NLW_m_axis_tlast_reg_i_2_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 to 7 );
  signal NLW_m_axis_tlast_reg_i_2_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_m_axis_tlast_reg_i_3_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_m_axis_tlast_reg_i_33_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal NLW_m_axis_tlast_reg_i_33_O_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_tdata_byte_count_int_reg[29]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \NLW_tdata_byte_count_int_reg[29]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 3 );
  signal \NLW_tdata_byte_count_int_reg[6]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of m_axis_tlast_reg_i_2 : label is 11;
  attribute COMPARATOR_THRESHOLD of m_axis_tlast_reg_i_3 : label is 11;
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of m_axis_tlast_reg_i_33 : label is 35;
  attribute ADDER_THRESHOLD of m_axis_tlast_reg_i_34 : label is 35;
  attribute ADDER_THRESHOLD of m_axis_tlast_reg_i_35 : label is 35;
  attribute ADDER_THRESHOLD of m_axis_tlast_reg_i_36 : label is 35;
  attribute ADDER_THRESHOLD of \tdata_byte_count_int_reg[13]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tdata_byte_count_int_reg[21]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tdata_byte_count_int_reg[29]_i_1\ : label is 16;
  attribute ADDER_THRESHOLD of \tdata_byte_count_int_reg[6]_i_2\ : label is 16;
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \tdata_byte_count_meta_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[10]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[11]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[12]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[13]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[14]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[15]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[16]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[17]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[18]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[19]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[1]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[20]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[21]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[22]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[23]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[24]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[25]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[26]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[27]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[28]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[29]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[2]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[30]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[31]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[3]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[4]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[5]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[6]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[7]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[8]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_meta_reg[9]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_meta_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[0]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[0]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[10]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[10]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[11]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[11]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[12]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[12]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[13]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[13]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[14]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[14]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[15]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[15]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[16]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[16]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[17]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[17]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[18]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[18]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[19]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[19]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[1]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[1]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[20]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[20]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[21]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[21]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[22]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[22]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[23]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[23]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[24]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[24]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[25]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[25]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[26]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[26]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[27]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[27]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[28]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[28]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[29]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[29]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[2]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[2]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[30]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[30]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[31]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[31]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[3]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[3]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[4]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[4]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[5]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[5]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[6]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[6]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[7]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[7]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[8]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[8]\ : label is "yes";
  attribute ASYNC_REG_boolean of \tdata_byte_count_sync_reg[9]\ : label is std.standard.true;
  attribute KEEP of \tdata_byte_count_sync_reg[9]\ : label is "yes";
  attribute ASYNC_REG_boolean of tdata_byte_count_update_meta_reg : label is std.standard.true;
  attribute KEEP of tdata_byte_count_update_meta_reg : label is "yes";
  attribute ASYNC_REG_boolean of tdata_byte_count_update_sync_reg : label is std.standard.true;
  attribute KEEP of tdata_byte_count_update_sync_reg : label is "yes";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(511 downto 0) <= s_axis_tdata(511 downto 0);
  \^s_axis_tkeep\(63 downto 0) <= s_axis_tkeep(63 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(511 downto 0) <= \^s_axis_tdata\(511 downto 0);
  m_axis_tkeep(63 downto 0) <= \^s_axis_tkeep\(63 downto 0);
  m_axis_tlast <= \^m_axis_tlast\;
  m_axis_tvalid <= \^s_axis_tvalid\;
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
  s_axis_tready <= \^m_axis_tready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
m_axis_tlast_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2CCC"
    )
        port map (
      I0 => m_axis_tlast1,
      I1 => \^m_axis_tlast\,
      I2 => \^s_axis_tvalid\,
      I3 => \^m_axis_tready\,
      O => m_axis_tlast_i_1_n_0
    );
m_axis_tlast_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(18),
      I1 => m_axis_tlast2(18),
      I2 => m_axis_tlast2(19),
      I3 => tdata_byte_count_int_reg(19),
      O => m_axis_tlast_i_10_n_0
    );
m_axis_tlast_i_11: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(30),
      I1 => m_axis_tlast2(30),
      I2 => tdata_byte_count_int_reg(31),
      I3 => m_axis_tlast2(31),
      O => m_axis_tlast_i_11_n_0
    );
m_axis_tlast_i_12: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(28),
      I1 => m_axis_tlast2(28),
      I2 => tdata_byte_count_int_reg(29),
      I3 => m_axis_tlast2(29),
      O => m_axis_tlast_i_12_n_0
    );
m_axis_tlast_i_13: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(26),
      I1 => m_axis_tlast2(26),
      I2 => tdata_byte_count_int_reg(27),
      I3 => m_axis_tlast2(27),
      O => m_axis_tlast_i_13_n_0
    );
m_axis_tlast_i_14: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(24),
      I1 => m_axis_tlast2(24),
      I2 => tdata_byte_count_int_reg(25),
      I3 => m_axis_tlast2(25),
      O => m_axis_tlast_i_14_n_0
    );
m_axis_tlast_i_15: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(22),
      I1 => m_axis_tlast2(22),
      I2 => tdata_byte_count_int_reg(23),
      I3 => m_axis_tlast2(23),
      O => m_axis_tlast_i_15_n_0
    );
m_axis_tlast_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(20),
      I1 => m_axis_tlast2(20),
      I2 => tdata_byte_count_int_reg(21),
      I3 => m_axis_tlast2(21),
      O => m_axis_tlast_i_16_n_0
    );
m_axis_tlast_i_17: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(18),
      I1 => m_axis_tlast2(18),
      I2 => tdata_byte_count_int_reg(19),
      I3 => m_axis_tlast2(19),
      O => m_axis_tlast_i_17_n_0
    );
m_axis_tlast_i_18: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(0),
      I1 => tdata_byte_count_sync_d1(1),
      O => m_axis_tlast_i_18_n_0
    );
m_axis_tlast_i_19: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(16),
      I1 => m_axis_tlast2(16),
      I2 => m_axis_tlast2(17),
      I3 => tdata_byte_count_int_reg(17),
      O => m_axis_tlast_i_19_n_0
    );
m_axis_tlast_i_20: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(14),
      I1 => m_axis_tlast2(14),
      I2 => m_axis_tlast2(15),
      I3 => tdata_byte_count_int_reg(15),
      O => m_axis_tlast_i_20_n_0
    );
m_axis_tlast_i_21: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(12),
      I1 => m_axis_tlast2(12),
      I2 => m_axis_tlast2(13),
      I3 => tdata_byte_count_int_reg(13),
      O => m_axis_tlast_i_21_n_0
    );
m_axis_tlast_i_22: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(10),
      I1 => m_axis_tlast2(10),
      I2 => m_axis_tlast2(11),
      I3 => tdata_byte_count_int_reg(11),
      O => m_axis_tlast_i_22_n_0
    );
m_axis_tlast_i_23: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(8),
      I1 => m_axis_tlast2(8),
      I2 => m_axis_tlast2(9),
      I3 => tdata_byte_count_int_reg(9),
      O => m_axis_tlast_i_23_n_0
    );
m_axis_tlast_i_24: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(6),
      I1 => m_axis_tlast2(6),
      I2 => m_axis_tlast2(7),
      I3 => tdata_byte_count_int_reg(7),
      O => m_axis_tlast_i_24_n_0
    );
m_axis_tlast_i_25: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(16),
      I1 => m_axis_tlast2(16),
      I2 => tdata_byte_count_int_reg(17),
      I3 => m_axis_tlast2(17),
      O => m_axis_tlast_i_25_n_0
    );
m_axis_tlast_i_26: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(14),
      I1 => m_axis_tlast2(14),
      I2 => tdata_byte_count_int_reg(15),
      I3 => m_axis_tlast2(15),
      O => m_axis_tlast_i_26_n_0
    );
m_axis_tlast_i_27: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(12),
      I1 => m_axis_tlast2(12),
      I2 => tdata_byte_count_int_reg(13),
      I3 => m_axis_tlast2(13),
      O => m_axis_tlast_i_27_n_0
    );
m_axis_tlast_i_28: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(10),
      I1 => m_axis_tlast2(10),
      I2 => tdata_byte_count_int_reg(11),
      I3 => m_axis_tlast2(11),
      O => m_axis_tlast_i_28_n_0
    );
m_axis_tlast_i_29: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(8),
      I1 => m_axis_tlast2(8),
      I2 => tdata_byte_count_int_reg(9),
      I3 => m_axis_tlast2(9),
      O => m_axis_tlast_i_29_n_0
    );
m_axis_tlast_i_30: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => tdata_byte_count_int_reg(6),
      I1 => m_axis_tlast2(6),
      I2 => tdata_byte_count_int_reg(7),
      I3 => m_axis_tlast2(7),
      O => m_axis_tlast_i_30_n_0
    );
m_axis_tlast_i_31: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(4),
      I1 => tdata_byte_count_sync_d1(5),
      O => m_axis_tlast_i_31_n_0
    );
m_axis_tlast_i_32: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(2),
      I1 => tdata_byte_count_sync_d1(3),
      O => m_axis_tlast_i_32_n_0
    );
m_axis_tlast_i_37: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(31),
      O => m_axis_tlast_i_37_n_0
    );
m_axis_tlast_i_38: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(30),
      O => m_axis_tlast_i_38_n_0
    );
m_axis_tlast_i_39: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(29),
      O => m_axis_tlast_i_39_n_0
    );
m_axis_tlast_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(30),
      I1 => m_axis_tlast2(30),
      I2 => m_axis_tlast2(31),
      I3 => tdata_byte_count_int_reg(31),
      O => m_axis_tlast_i_4_n_0
    );
m_axis_tlast_i_40: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(28),
      O => m_axis_tlast_i_40_n_0
    );
m_axis_tlast_i_41: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(27),
      O => m_axis_tlast_i_41_n_0
    );
m_axis_tlast_i_42: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(26),
      O => m_axis_tlast_i_42_n_0
    );
m_axis_tlast_i_43: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(25),
      O => m_axis_tlast_i_43_n_0
    );
m_axis_tlast_i_44: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(24),
      O => m_axis_tlast_i_44_n_0
    );
m_axis_tlast_i_45: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(23),
      O => m_axis_tlast_i_45_n_0
    );
m_axis_tlast_i_46: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(22),
      O => m_axis_tlast_i_46_n_0
    );
m_axis_tlast_i_47: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(21),
      O => m_axis_tlast_i_47_n_0
    );
m_axis_tlast_i_48: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(20),
      O => m_axis_tlast_i_48_n_0
    );
m_axis_tlast_i_49: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(19),
      O => m_axis_tlast_i_49_n_0
    );
m_axis_tlast_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(28),
      I1 => m_axis_tlast2(28),
      I2 => m_axis_tlast2(29),
      I3 => tdata_byte_count_int_reg(29),
      O => m_axis_tlast_i_5_n_0
    );
m_axis_tlast_i_50: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(18),
      O => m_axis_tlast_i_50_n_0
    );
m_axis_tlast_i_51: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(17),
      O => m_axis_tlast_i_51_n_0
    );
m_axis_tlast_i_52: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(16),
      O => m_axis_tlast_i_52_n_0
    );
m_axis_tlast_i_53: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(15),
      O => m_axis_tlast_i_53_n_0
    );
m_axis_tlast_i_54: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(14),
      O => m_axis_tlast_i_54_n_0
    );
m_axis_tlast_i_55: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(13),
      O => m_axis_tlast_i_55_n_0
    );
m_axis_tlast_i_56: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(12),
      O => m_axis_tlast_i_56_n_0
    );
m_axis_tlast_i_57: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(11),
      O => m_axis_tlast_i_57_n_0
    );
m_axis_tlast_i_58: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(10),
      O => m_axis_tlast_i_58_n_0
    );
m_axis_tlast_i_59: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(9),
      O => m_axis_tlast_i_59_n_0
    );
m_axis_tlast_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(26),
      I1 => m_axis_tlast2(26),
      I2 => m_axis_tlast2(27),
      I3 => tdata_byte_count_int_reg(27),
      O => m_axis_tlast_i_6_n_0
    );
m_axis_tlast_i_60: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(8),
      O => m_axis_tlast_i_60_n_0
    );
m_axis_tlast_i_61: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => tdata_byte_count_sync_d1(7),
      O => m_axis_tlast_i_61_n_0
    );
m_axis_tlast_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(24),
      I1 => m_axis_tlast2(24),
      I2 => m_axis_tlast2(25),
      I3 => tdata_byte_count_int_reg(25),
      O => m_axis_tlast_i_7_n_0
    );
m_axis_tlast_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(22),
      I1 => m_axis_tlast2(22),
      I2 => m_axis_tlast2(23),
      I3 => tdata_byte_count_int_reg(23),
      O => m_axis_tlast_i_8_n_0
    );
m_axis_tlast_i_9: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2F02"
    )
        port map (
      I0 => tdata_byte_count_int_reg(20),
      I1 => m_axis_tlast2(20),
      I2 => m_axis_tlast2(21),
      I3 => tdata_byte_count_int_reg(21),
      O => m_axis_tlast_i_9_n_0
    );
m_axis_tlast_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_axis_tlast_i_1_n_0,
      Q => \^m_axis_tlast\,
      R => '0'
    );
m_axis_tlast_reg_i_2: unisim.vcomponents.CARRY8
     port map (
      CI => m_axis_tlast_reg_i_3_n_0,
      CI_TOP => '0',
      CO(7) => NLW_m_axis_tlast_reg_i_2_CO_UNCONNECTED(7),
      CO(6) => m_axis_tlast1,
      CO(5) => m_axis_tlast_reg_i_2_n_2,
      CO(4) => m_axis_tlast_reg_i_2_n_3,
      CO(3) => m_axis_tlast_reg_i_2_n_4,
      CO(2) => m_axis_tlast_reg_i_2_n_5,
      CO(1) => m_axis_tlast_reg_i_2_n_6,
      CO(0) => m_axis_tlast_reg_i_2_n_7,
      DI(7) => '0',
      DI(6) => m_axis_tlast_i_4_n_0,
      DI(5) => m_axis_tlast_i_5_n_0,
      DI(4) => m_axis_tlast_i_6_n_0,
      DI(3) => m_axis_tlast_i_7_n_0,
      DI(2) => m_axis_tlast_i_8_n_0,
      DI(1) => m_axis_tlast_i_9_n_0,
      DI(0) => m_axis_tlast_i_10_n_0,
      O(7 downto 0) => NLW_m_axis_tlast_reg_i_2_O_UNCONNECTED(7 downto 0),
      S(7) => '0',
      S(6) => m_axis_tlast_i_11_n_0,
      S(5) => m_axis_tlast_i_12_n_0,
      S(4) => m_axis_tlast_i_13_n_0,
      S(3) => m_axis_tlast_i_14_n_0,
      S(2) => m_axis_tlast_i_15_n_0,
      S(1) => m_axis_tlast_i_16_n_0,
      S(0) => m_axis_tlast_i_17_n_0
    );
m_axis_tlast_reg_i_3: unisim.vcomponents.CARRY8
     port map (
      CI => m_axis_tlast_i_18_n_0,
      CI_TOP => '0',
      CO(7) => m_axis_tlast_reg_i_3_n_0,
      CO(6) => m_axis_tlast_reg_i_3_n_1,
      CO(5) => m_axis_tlast_reg_i_3_n_2,
      CO(4) => m_axis_tlast_reg_i_3_n_3,
      CO(3) => m_axis_tlast_reg_i_3_n_4,
      CO(2) => m_axis_tlast_reg_i_3_n_5,
      CO(1) => m_axis_tlast_reg_i_3_n_6,
      CO(0) => m_axis_tlast_reg_i_3_n_7,
      DI(7) => m_axis_tlast_i_19_n_0,
      DI(6) => m_axis_tlast_i_20_n_0,
      DI(5) => m_axis_tlast_i_21_n_0,
      DI(4) => m_axis_tlast_i_22_n_0,
      DI(3) => m_axis_tlast_i_23_n_0,
      DI(2) => m_axis_tlast_i_24_n_0,
      DI(1 downto 0) => B"00",
      O(7 downto 0) => NLW_m_axis_tlast_reg_i_3_O_UNCONNECTED(7 downto 0),
      S(7) => m_axis_tlast_i_25_n_0,
      S(6) => m_axis_tlast_i_26_n_0,
      S(5) => m_axis_tlast_i_27_n_0,
      S(4) => m_axis_tlast_i_28_n_0,
      S(3) => m_axis_tlast_i_29_n_0,
      S(2) => m_axis_tlast_i_30_n_0,
      S(1) => m_axis_tlast_i_31_n_0,
      S(0) => m_axis_tlast_i_32_n_0
    );
m_axis_tlast_reg_i_33: unisim.vcomponents.CARRY8
     port map (
      CI => m_axis_tlast_reg_i_34_n_0,
      CI_TOP => '0',
      CO(7 downto 1) => NLW_m_axis_tlast_reg_i_33_CO_UNCONNECTED(7 downto 1),
      CO(0) => m_axis_tlast_reg_i_33_n_7,
      DI(7 downto 1) => B"0000000",
      DI(0) => tdata_byte_count_sync_d1(30),
      O(7 downto 2) => NLW_m_axis_tlast_reg_i_33_O_UNCONNECTED(7 downto 2),
      O(1 downto 0) => m_axis_tlast2(31 downto 30),
      S(7 downto 2) => B"000000",
      S(1) => m_axis_tlast_i_37_n_0,
      S(0) => m_axis_tlast_i_38_n_0
    );
m_axis_tlast_reg_i_34: unisim.vcomponents.CARRY8
     port map (
      CI => m_axis_tlast_reg_i_35_n_0,
      CI_TOP => '0',
      CO(7) => m_axis_tlast_reg_i_34_n_0,
      CO(6) => m_axis_tlast_reg_i_34_n_1,
      CO(5) => m_axis_tlast_reg_i_34_n_2,
      CO(4) => m_axis_tlast_reg_i_34_n_3,
      CO(3) => m_axis_tlast_reg_i_34_n_4,
      CO(2) => m_axis_tlast_reg_i_34_n_5,
      CO(1) => m_axis_tlast_reg_i_34_n_6,
      CO(0) => m_axis_tlast_reg_i_34_n_7,
      DI(7 downto 0) => tdata_byte_count_sync_d1(29 downto 22),
      O(7 downto 0) => m_axis_tlast2(29 downto 22),
      S(7) => m_axis_tlast_i_39_n_0,
      S(6) => m_axis_tlast_i_40_n_0,
      S(5) => m_axis_tlast_i_41_n_0,
      S(4) => m_axis_tlast_i_42_n_0,
      S(3) => m_axis_tlast_i_43_n_0,
      S(2) => m_axis_tlast_i_44_n_0,
      S(1) => m_axis_tlast_i_45_n_0,
      S(0) => m_axis_tlast_i_46_n_0
    );
m_axis_tlast_reg_i_35: unisim.vcomponents.CARRY8
     port map (
      CI => m_axis_tlast_reg_i_36_n_0,
      CI_TOP => '0',
      CO(7) => m_axis_tlast_reg_i_35_n_0,
      CO(6) => m_axis_tlast_reg_i_35_n_1,
      CO(5) => m_axis_tlast_reg_i_35_n_2,
      CO(4) => m_axis_tlast_reg_i_35_n_3,
      CO(3) => m_axis_tlast_reg_i_35_n_4,
      CO(2) => m_axis_tlast_reg_i_35_n_5,
      CO(1) => m_axis_tlast_reg_i_35_n_6,
      CO(0) => m_axis_tlast_reg_i_35_n_7,
      DI(7 downto 0) => tdata_byte_count_sync_d1(21 downto 14),
      O(7 downto 0) => m_axis_tlast2(21 downto 14),
      S(7) => m_axis_tlast_i_47_n_0,
      S(6) => m_axis_tlast_i_48_n_0,
      S(5) => m_axis_tlast_i_49_n_0,
      S(4) => m_axis_tlast_i_50_n_0,
      S(3) => m_axis_tlast_i_51_n_0,
      S(2) => m_axis_tlast_i_52_n_0,
      S(1) => m_axis_tlast_i_53_n_0,
      S(0) => m_axis_tlast_i_54_n_0
    );
m_axis_tlast_reg_i_36: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => m_axis_tlast_reg_i_36_n_0,
      CO(6) => m_axis_tlast_reg_i_36_n_1,
      CO(5) => m_axis_tlast_reg_i_36_n_2,
      CO(4) => m_axis_tlast_reg_i_36_n_3,
      CO(3) => m_axis_tlast_reg_i_36_n_4,
      CO(2) => m_axis_tlast_reg_i_36_n_5,
      CO(1) => m_axis_tlast_reg_i_36_n_6,
      CO(0) => m_axis_tlast_reg_i_36_n_7,
      DI(7 downto 1) => tdata_byte_count_sync_d1(13 downto 7),
      DI(0) => '0',
      O(7 downto 0) => m_axis_tlast2(13 downto 6),
      S(7) => m_axis_tlast_i_55_n_0,
      S(6) => m_axis_tlast_i_56_n_0,
      S(5) => m_axis_tlast_i_57_n_0,
      S(4) => m_axis_tlast_i_58_n_0,
      S(3) => m_axis_tlast_i_59_n_0,
      S(2) => m_axis_tlast_i_60_n_0,
      S(1) => m_axis_tlast_i_61_n_0,
      S(0) => tdata_byte_count_sync_d1(6)
    );
\tdata_byte_count_int[13]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(20),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_2_n_0\
    );
\tdata_byte_count_int[13]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(19),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_3_n_0\
    );
\tdata_byte_count_int[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(18),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_4_n_0\
    );
\tdata_byte_count_int[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(17),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_5_n_0\
    );
\tdata_byte_count_int[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(16),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_6_n_0\
    );
\tdata_byte_count_int[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(15),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_7_n_0\
    );
\tdata_byte_count_int[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(14),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_8_n_0\
    );
\tdata_byte_count_int[13]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(13),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[13]_i_9_n_0\
    );
\tdata_byte_count_int[21]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(28),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_2_n_0\
    );
\tdata_byte_count_int[21]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(27),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_3_n_0\
    );
\tdata_byte_count_int[21]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(26),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_4_n_0\
    );
\tdata_byte_count_int[21]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(25),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_5_n_0\
    );
\tdata_byte_count_int[21]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(24),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_6_n_0\
    );
\tdata_byte_count_int[21]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(23),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_7_n_0\
    );
\tdata_byte_count_int[21]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(22),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_8_n_0\
    );
\tdata_byte_count_int[21]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(21),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[21]_i_9_n_0\
    );
\tdata_byte_count_int[29]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(31),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[29]_i_2_n_0\
    );
\tdata_byte_count_int[29]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(30),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[29]_i_3_n_0\
    );
\tdata_byte_count_int[29]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(29),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[29]_i_4_n_0\
    );
\tdata_byte_count_int[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => tdata_byte_count_update_sync_re,
      I1 => \^m_axis_tready\,
      I2 => \^s_axis_tvalid\,
      O => \tdata_byte_count_int[6]_i_1_n_0\
    );
\tdata_byte_count_int[6]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(7),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_10_n_0\
    );
\tdata_byte_count_int[6]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01111111"
    )
        port map (
      I0 => tdata_byte_count_int_reg(6),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_11_n_0\
    );
\tdata_byte_count_int[6]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => arstn,
      O => \tdata_byte_count_int[6]_i_3_n_0\
    );
\tdata_byte_count_int[6]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(6),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_4_n_0\
    );
\tdata_byte_count_int[6]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(12),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_5_n_0\
    );
\tdata_byte_count_int[6]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(11),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_6_n_0\
    );
\tdata_byte_count_int[6]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(10),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_7_n_0\
    );
\tdata_byte_count_int[6]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(9),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_8_n_0\
    );
\tdata_byte_count_int[6]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02222222"
    )
        port map (
      I0 => tdata_byte_count_int_reg(8),
      I1 => tdata_byte_count_update_sync_re,
      I2 => \^m_axis_tready\,
      I3 => \^s_axis_tvalid\,
      I4 => \^m_axis_tlast\,
      O => \tdata_byte_count_int[6]_i_9_n_0\
    );
\tdata_byte_count_int_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[6]_i_2_n_10\,
      Q => tdata_byte_count_int_reg(10)
    );
\tdata_byte_count_int_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[6]_i_2_n_9\,
      Q => tdata_byte_count_int_reg(11)
    );
\tdata_byte_count_int_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[6]_i_2_n_8\,
      Q => tdata_byte_count_int_reg(12)
    );
\tdata_byte_count_int_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_15\,
      Q => tdata_byte_count_int_reg(13)
    );
\tdata_byte_count_int_reg[13]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tdata_byte_count_int_reg[6]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \tdata_byte_count_int_reg[13]_i_1_n_0\,
      CO(6) => \tdata_byte_count_int_reg[13]_i_1_n_1\,
      CO(5) => \tdata_byte_count_int_reg[13]_i_1_n_2\,
      CO(4) => \tdata_byte_count_int_reg[13]_i_1_n_3\,
      CO(3) => \tdata_byte_count_int_reg[13]_i_1_n_4\,
      CO(2) => \tdata_byte_count_int_reg[13]_i_1_n_5\,
      CO(1) => \tdata_byte_count_int_reg[13]_i_1_n_6\,
      CO(0) => \tdata_byte_count_int_reg[13]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tdata_byte_count_int_reg[13]_i_1_n_8\,
      O(6) => \tdata_byte_count_int_reg[13]_i_1_n_9\,
      O(5) => \tdata_byte_count_int_reg[13]_i_1_n_10\,
      O(4) => \tdata_byte_count_int_reg[13]_i_1_n_11\,
      O(3) => \tdata_byte_count_int_reg[13]_i_1_n_12\,
      O(2) => \tdata_byte_count_int_reg[13]_i_1_n_13\,
      O(1) => \tdata_byte_count_int_reg[13]_i_1_n_14\,
      O(0) => \tdata_byte_count_int_reg[13]_i_1_n_15\,
      S(7) => \tdata_byte_count_int[13]_i_2_n_0\,
      S(6) => \tdata_byte_count_int[13]_i_3_n_0\,
      S(5) => \tdata_byte_count_int[13]_i_4_n_0\,
      S(4) => \tdata_byte_count_int[13]_i_5_n_0\,
      S(3) => \tdata_byte_count_int[13]_i_6_n_0\,
      S(2) => \tdata_byte_count_int[13]_i_7_n_0\,
      S(1) => \tdata_byte_count_int[13]_i_8_n_0\,
      S(0) => \tdata_byte_count_int[13]_i_9_n_0\
    );
\tdata_byte_count_int_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_14\,
      Q => tdata_byte_count_int_reg(14)
    );
\tdata_byte_count_int_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_13\,
      Q => tdata_byte_count_int_reg(15)
    );
\tdata_byte_count_int_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_12\,
      Q => tdata_byte_count_int_reg(16)
    );
\tdata_byte_count_int_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_11\,
      Q => tdata_byte_count_int_reg(17)
    );
\tdata_byte_count_int_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_10\,
      Q => tdata_byte_count_int_reg(18)
    );
\tdata_byte_count_int_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_9\,
      Q => tdata_byte_count_int_reg(19)
    );
\tdata_byte_count_int_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[13]_i_1_n_8\,
      Q => tdata_byte_count_int_reg(20)
    );
\tdata_byte_count_int_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_15\,
      Q => tdata_byte_count_int_reg(21)
    );
\tdata_byte_count_int_reg[21]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tdata_byte_count_int_reg[13]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \tdata_byte_count_int_reg[21]_i_1_n_0\,
      CO(6) => \tdata_byte_count_int_reg[21]_i_1_n_1\,
      CO(5) => \tdata_byte_count_int_reg[21]_i_1_n_2\,
      CO(4) => \tdata_byte_count_int_reg[21]_i_1_n_3\,
      CO(3) => \tdata_byte_count_int_reg[21]_i_1_n_4\,
      CO(2) => \tdata_byte_count_int_reg[21]_i_1_n_5\,
      CO(1) => \tdata_byte_count_int_reg[21]_i_1_n_6\,
      CO(0) => \tdata_byte_count_int_reg[21]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \tdata_byte_count_int_reg[21]_i_1_n_8\,
      O(6) => \tdata_byte_count_int_reg[21]_i_1_n_9\,
      O(5) => \tdata_byte_count_int_reg[21]_i_1_n_10\,
      O(4) => \tdata_byte_count_int_reg[21]_i_1_n_11\,
      O(3) => \tdata_byte_count_int_reg[21]_i_1_n_12\,
      O(2) => \tdata_byte_count_int_reg[21]_i_1_n_13\,
      O(1) => \tdata_byte_count_int_reg[21]_i_1_n_14\,
      O(0) => \tdata_byte_count_int_reg[21]_i_1_n_15\,
      S(7) => \tdata_byte_count_int[21]_i_2_n_0\,
      S(6) => \tdata_byte_count_int[21]_i_3_n_0\,
      S(5) => \tdata_byte_count_int[21]_i_4_n_0\,
      S(4) => \tdata_byte_count_int[21]_i_5_n_0\,
      S(3) => \tdata_byte_count_int[21]_i_6_n_0\,
      S(2) => \tdata_byte_count_int[21]_i_7_n_0\,
      S(1) => \tdata_byte_count_int[21]_i_8_n_0\,
      S(0) => \tdata_byte_count_int[21]_i_9_n_0\
    );
\tdata_byte_count_int_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_14\,
      Q => tdata_byte_count_int_reg(22)
    );
\tdata_byte_count_int_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_13\,
      Q => tdata_byte_count_int_reg(23)
    );
\tdata_byte_count_int_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_12\,
      Q => tdata_byte_count_int_reg(24)
    );
\tdata_byte_count_int_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_11\,
      Q => tdata_byte_count_int_reg(25)
    );
\tdata_byte_count_int_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_10\,
      Q => tdata_byte_count_int_reg(26)
    );
\tdata_byte_count_int_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_9\,
      Q => tdata_byte_count_int_reg(27)
    );
\tdata_byte_count_int_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[21]_i_1_n_8\,
      Q => tdata_byte_count_int_reg(28)
    );
\tdata_byte_count_int_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[29]_i_1_n_15\,
      Q => tdata_byte_count_int_reg(29)
    );
\tdata_byte_count_int_reg[29]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \tdata_byte_count_int_reg[21]_i_1_n_0\,
      CI_TOP => '0',
      CO(7 downto 2) => \NLW_tdata_byte_count_int_reg[29]_i_1_CO_UNCONNECTED\(7 downto 2),
      CO(1) => \tdata_byte_count_int_reg[29]_i_1_n_6\,
      CO(0) => \tdata_byte_count_int_reg[29]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 3) => \NLW_tdata_byte_count_int_reg[29]_i_1_O_UNCONNECTED\(7 downto 3),
      O(2) => \tdata_byte_count_int_reg[29]_i_1_n_13\,
      O(1) => \tdata_byte_count_int_reg[29]_i_1_n_14\,
      O(0) => \tdata_byte_count_int_reg[29]_i_1_n_15\,
      S(7 downto 3) => B"00000",
      S(2) => \tdata_byte_count_int[29]_i_2_n_0\,
      S(1) => \tdata_byte_count_int[29]_i_3_n_0\,
      S(0) => \tdata_byte_count_int[29]_i_4_n_0\
    );
\tdata_byte_count_int_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[29]_i_1_n_14\,
      Q => tdata_byte_count_int_reg(30)
    );
\tdata_byte_count_int_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[29]_i_1_n_13\,
      Q => tdata_byte_count_int_reg(31)
    );
\tdata_byte_count_int_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[6]_i_2_n_14\,
      Q => tdata_byte_count_int_reg(6)
    );
\tdata_byte_count_int_reg[6]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \tdata_byte_count_int_reg[6]_i_2_n_0\,
      CO(6) => \tdata_byte_count_int_reg[6]_i_2_n_1\,
      CO(5) => \tdata_byte_count_int_reg[6]_i_2_n_2\,
      CO(4) => \tdata_byte_count_int_reg[6]_i_2_n_3\,
      CO(3) => \tdata_byte_count_int_reg[6]_i_2_n_4\,
      CO(2) => \tdata_byte_count_int_reg[6]_i_2_n_5\,
      CO(1) => \tdata_byte_count_int_reg[6]_i_2_n_6\,
      CO(0) => \tdata_byte_count_int_reg[6]_i_2_n_7\,
      DI(7 downto 2) => B"000000",
      DI(1) => \tdata_byte_count_int[6]_i_4_n_0\,
      DI(0) => '0',
      O(7) => \tdata_byte_count_int_reg[6]_i_2_n_8\,
      O(6) => \tdata_byte_count_int_reg[6]_i_2_n_9\,
      O(5) => \tdata_byte_count_int_reg[6]_i_2_n_10\,
      O(4) => \tdata_byte_count_int_reg[6]_i_2_n_11\,
      O(3) => \tdata_byte_count_int_reg[6]_i_2_n_12\,
      O(2) => \tdata_byte_count_int_reg[6]_i_2_n_13\,
      O(1) => \tdata_byte_count_int_reg[6]_i_2_n_14\,
      O(0) => \NLW_tdata_byte_count_int_reg[6]_i_2_O_UNCONNECTED\(0),
      S(7) => \tdata_byte_count_int[6]_i_5_n_0\,
      S(6) => \tdata_byte_count_int[6]_i_6_n_0\,
      S(5) => \tdata_byte_count_int[6]_i_7_n_0\,
      S(4) => \tdata_byte_count_int[6]_i_8_n_0\,
      S(3) => \tdata_byte_count_int[6]_i_9_n_0\,
      S(2) => \tdata_byte_count_int[6]_i_10_n_0\,
      S(1) => \tdata_byte_count_int[6]_i_11_n_0\,
      S(0) => '0'
    );
\tdata_byte_count_int_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[6]_i_2_n_13\,
      Q => tdata_byte_count_int_reg(7)
    );
\tdata_byte_count_int_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[6]_i_2_n_12\,
      Q => tdata_byte_count_int_reg(8)
    );
\tdata_byte_count_int_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \tdata_byte_count_int[6]_i_1_n_0\,
      CLR => \tdata_byte_count_int[6]_i_3_n_0\,
      D => \tdata_byte_count_int_reg[6]_i_2_n_11\,
      Q => tdata_byte_count_int_reg(9)
    );
\tdata_byte_count_meta_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(0),
      Q => tdata_byte_count_meta(0),
      R => '0'
    );
\tdata_byte_count_meta_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(10),
      Q => tdata_byte_count_meta(10),
      R => '0'
    );
\tdata_byte_count_meta_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(11),
      Q => tdata_byte_count_meta(11),
      R => '0'
    );
\tdata_byte_count_meta_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(12),
      Q => tdata_byte_count_meta(12),
      R => '0'
    );
\tdata_byte_count_meta_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(13),
      Q => tdata_byte_count_meta(13),
      R => '0'
    );
\tdata_byte_count_meta_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(14),
      Q => tdata_byte_count_meta(14),
      R => '0'
    );
\tdata_byte_count_meta_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(15),
      Q => tdata_byte_count_meta(15),
      R => '0'
    );
\tdata_byte_count_meta_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(16),
      Q => tdata_byte_count_meta(16),
      R => '0'
    );
\tdata_byte_count_meta_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(17),
      Q => tdata_byte_count_meta(17),
      R => '0'
    );
\tdata_byte_count_meta_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(18),
      Q => tdata_byte_count_meta(18),
      R => '0'
    );
\tdata_byte_count_meta_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(19),
      Q => tdata_byte_count_meta(19),
      R => '0'
    );
\tdata_byte_count_meta_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(1),
      Q => tdata_byte_count_meta(1),
      R => '0'
    );
\tdata_byte_count_meta_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(20),
      Q => tdata_byte_count_meta(20),
      R => '0'
    );
\tdata_byte_count_meta_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(21),
      Q => tdata_byte_count_meta(21),
      R => '0'
    );
\tdata_byte_count_meta_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(22),
      Q => tdata_byte_count_meta(22),
      R => '0'
    );
\tdata_byte_count_meta_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(23),
      Q => tdata_byte_count_meta(23),
      R => '0'
    );
\tdata_byte_count_meta_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(24),
      Q => tdata_byte_count_meta(24),
      R => '0'
    );
\tdata_byte_count_meta_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(25),
      Q => tdata_byte_count_meta(25),
      R => '0'
    );
\tdata_byte_count_meta_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(26),
      Q => tdata_byte_count_meta(26),
      R => '0'
    );
\tdata_byte_count_meta_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(27),
      Q => tdata_byte_count_meta(27),
      R => '0'
    );
\tdata_byte_count_meta_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(28),
      Q => tdata_byte_count_meta(28),
      R => '0'
    );
\tdata_byte_count_meta_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(29),
      Q => tdata_byte_count_meta(29),
      R => '0'
    );
\tdata_byte_count_meta_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(2),
      Q => tdata_byte_count_meta(2),
      R => '0'
    );
\tdata_byte_count_meta_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(30),
      Q => tdata_byte_count_meta(30),
      R => '0'
    );
\tdata_byte_count_meta_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(31),
      Q => tdata_byte_count_meta(31),
      R => '0'
    );
\tdata_byte_count_meta_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(3),
      Q => tdata_byte_count_meta(3),
      R => '0'
    );
\tdata_byte_count_meta_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(4),
      Q => tdata_byte_count_meta(4),
      R => '0'
    );
\tdata_byte_count_meta_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(5),
      Q => tdata_byte_count_meta(5),
      R => '0'
    );
\tdata_byte_count_meta_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(6),
      Q => tdata_byte_count_meta(6),
      R => '0'
    );
\tdata_byte_count_meta_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(7),
      Q => tdata_byte_count_meta(7),
      R => '0'
    );
\tdata_byte_count_meta_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(8),
      Q => tdata_byte_count_meta(8),
      R => '0'
    );
\tdata_byte_count_meta_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count(9),
      Q => tdata_byte_count_meta(9),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(0),
      Q => tdata_byte_count_sync_d1(0),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(10),
      Q => tdata_byte_count_sync_d1(10),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(11),
      Q => tdata_byte_count_sync_d1(11),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(12),
      Q => tdata_byte_count_sync_d1(12),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(13),
      Q => tdata_byte_count_sync_d1(13),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(14),
      Q => tdata_byte_count_sync_d1(14),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(15),
      Q => tdata_byte_count_sync_d1(15),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(16),
      Q => tdata_byte_count_sync_d1(16),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(17),
      Q => tdata_byte_count_sync_d1(17),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(18),
      Q => tdata_byte_count_sync_d1(18),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(19),
      Q => tdata_byte_count_sync_d1(19),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(1),
      Q => tdata_byte_count_sync_d1(1),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(20),
      Q => tdata_byte_count_sync_d1(20),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(21),
      Q => tdata_byte_count_sync_d1(21),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(22),
      Q => tdata_byte_count_sync_d1(22),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(23),
      Q => tdata_byte_count_sync_d1(23),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(24),
      Q => tdata_byte_count_sync_d1(24),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(25),
      Q => tdata_byte_count_sync_d1(25),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(26),
      Q => tdata_byte_count_sync_d1(26),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(27),
      Q => tdata_byte_count_sync_d1(27),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(28),
      Q => tdata_byte_count_sync_d1(28),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(29),
      Q => tdata_byte_count_sync_d1(29),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(2),
      Q => tdata_byte_count_sync_d1(2),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(30),
      Q => tdata_byte_count_sync_d1(30),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(31),
      Q => tdata_byte_count_sync_d1(31),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(3),
      Q => tdata_byte_count_sync_d1(3),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(4),
      Q => tdata_byte_count_sync_d1(4),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(5),
      Q => tdata_byte_count_sync_d1(5),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(6),
      Q => tdata_byte_count_sync_d1(6),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(7),
      Q => tdata_byte_count_sync_d1(7),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(8),
      Q => tdata_byte_count_sync_d1(8),
      R => '0'
    );
\tdata_byte_count_sync_d1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => tdata_byte_count_update_sync_re,
      D => tdata_byte_count_sync(9),
      Q => tdata_byte_count_sync_d1(9),
      R => '0'
    );
\tdata_byte_count_sync_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(0),
      Q => tdata_byte_count_sync(0),
      R => '0'
    );
\tdata_byte_count_sync_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(10),
      Q => tdata_byte_count_sync(10),
      R => '0'
    );
\tdata_byte_count_sync_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(11),
      Q => tdata_byte_count_sync(11),
      R => '0'
    );
\tdata_byte_count_sync_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(12),
      Q => tdata_byte_count_sync(12),
      R => '0'
    );
\tdata_byte_count_sync_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(13),
      Q => tdata_byte_count_sync(13),
      R => '0'
    );
\tdata_byte_count_sync_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(14),
      Q => tdata_byte_count_sync(14),
      R => '0'
    );
\tdata_byte_count_sync_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(15),
      Q => tdata_byte_count_sync(15),
      R => '0'
    );
\tdata_byte_count_sync_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(16),
      Q => tdata_byte_count_sync(16),
      R => '0'
    );
\tdata_byte_count_sync_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(17),
      Q => tdata_byte_count_sync(17),
      R => '0'
    );
\tdata_byte_count_sync_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(18),
      Q => tdata_byte_count_sync(18),
      R => '0'
    );
\tdata_byte_count_sync_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(19),
      Q => tdata_byte_count_sync(19),
      R => '0'
    );
\tdata_byte_count_sync_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(1),
      Q => tdata_byte_count_sync(1),
      R => '0'
    );
\tdata_byte_count_sync_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(20),
      Q => tdata_byte_count_sync(20),
      R => '0'
    );
\tdata_byte_count_sync_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(21),
      Q => tdata_byte_count_sync(21),
      R => '0'
    );
\tdata_byte_count_sync_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(22),
      Q => tdata_byte_count_sync(22),
      R => '0'
    );
\tdata_byte_count_sync_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(23),
      Q => tdata_byte_count_sync(23),
      R => '0'
    );
\tdata_byte_count_sync_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(24),
      Q => tdata_byte_count_sync(24),
      R => '0'
    );
\tdata_byte_count_sync_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(25),
      Q => tdata_byte_count_sync(25),
      R => '0'
    );
\tdata_byte_count_sync_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(26),
      Q => tdata_byte_count_sync(26),
      R => '0'
    );
\tdata_byte_count_sync_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(27),
      Q => tdata_byte_count_sync(27),
      R => '0'
    );
\tdata_byte_count_sync_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(28),
      Q => tdata_byte_count_sync(28),
      R => '0'
    );
\tdata_byte_count_sync_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(29),
      Q => tdata_byte_count_sync(29),
      R => '0'
    );
\tdata_byte_count_sync_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(2),
      Q => tdata_byte_count_sync(2),
      R => '0'
    );
\tdata_byte_count_sync_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(30),
      Q => tdata_byte_count_sync(30),
      R => '0'
    );
\tdata_byte_count_sync_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(31),
      Q => tdata_byte_count_sync(31),
      R => '0'
    );
\tdata_byte_count_sync_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(3),
      Q => tdata_byte_count_sync(3),
      R => '0'
    );
\tdata_byte_count_sync_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(4),
      Q => tdata_byte_count_sync(4),
      R => '0'
    );
\tdata_byte_count_sync_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(5),
      Q => tdata_byte_count_sync(5),
      R => '0'
    );
\tdata_byte_count_sync_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(6),
      Q => tdata_byte_count_sync(6),
      R => '0'
    );
\tdata_byte_count_sync_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(7),
      Q => tdata_byte_count_sync(7),
      R => '0'
    );
\tdata_byte_count_sync_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(8),
      Q => tdata_byte_count_sync(8),
      R => '0'
    );
\tdata_byte_count_sync_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_meta(9),
      Q => tdata_byte_count_sync(9),
      R => '0'
    );
tdata_byte_count_update_meta_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_update,
      Q => tdata_byte_count_update_meta,
      R => '0'
    );
tdata_byte_count_update_sync_d1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_update_sync,
      Q => tdata_byte_count_update_sync_d1,
      R => '0'
    );
tdata_byte_count_update_sync_re_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => tdata_byte_count_update_sync,
      I1 => tdata_byte_count_update_sync_d1,
      O => tdata_byte_count_update_sync_re0
    );
tdata_byte_count_update_sync_re_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_update_sync_re0,
      Q => tdata_byte_count_update_sync_re,
      R => '0'
    );
tdata_byte_count_update_sync_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => tdata_byte_count_update_meta,
      Q => tdata_byte_count_update_sync,
      R => '0'
    );
tlast_gen_v1_0_S00_AXI_inst: entity work.rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0_S00_AXI
     port map (
      Q(31 downto 0) => tdata_byte_count(31 downto 0),
      axi_arready_reg_0 => s00_axi_arready,
      axi_awready_reg_0 => s00_axi_awready,
      axi_wready_reg_0 => s00_axi_wready,
      in0 => tdata_byte_count_update,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_tlast_gen_v1_0_0_0 is
  port (
    s_axis_tready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 63 downto 0 );
    aclk : in STD_LOGIC;
    arstn : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rfdc_ex_tlast_gen_v1_0_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rfdc_ex_tlast_gen_v1_0_0_0 : entity is "rfdc_ex_tlast_gen_v1_0_0_0,tlast_gen_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_tlast_gen_v1_0_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rfdc_ex_tlast_gen_v1_0_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rfdc_ex_tlast_gen_v1_0_0_0 : entity is "tlast_gen_v1_0,Vivado 2025.1";
end rfdc_ex_tlast_gen_v1_0_0_0;

architecture STRUCTURE of rfdc_ex_tlast_gen_v1_0_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_inst_s00_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_inst_s00_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_S00_AXI_ADDR_WIDTH : integer;
  attribute C_S00_AXI_ADDR_WIDTH of inst : label is 4;
  attribute C_S00_AXI_DATA_WIDTH : integer;
  attribute C_S00_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXIS_TDATA_BYTES : integer;
  attribute C_S_AXIS_TDATA_BYTES of inst : label is 64;
  attribute C_S_AXIS_TDATA_WIDTH : integer;
  attribute C_S_AXIS_TDATA_WIDTH of inst : label is 512;
  attribute C_S_AXIS_TKEEP_WIDTH : integer;
  attribute C_S_AXIS_TKEEP_WIDTH of inst : label is 64;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET arstn, FREQ_HZ 333250000, FREQ_TOLERANCE_HZ 0, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of arstn : signal is "xilinx.com:signal:reset:1.0 arstn RST";
  attribute X_INTERFACE_MODE of arstn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of arstn : signal is "XIL_INTERFACENAME arstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_MODE of m_axis_tlast : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s00_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s00_axi_aclk CLK";
  attribute X_INTERFACE_MODE of s00_axi_aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aclk : signal is "XIL_INTERFACENAME s00_axi_aclk, ASSOCIATED_RESET s00_axi_aresetn, ASSOCIATED_BUSIF s00_axi, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s00_axi_aresetn RST";
  attribute X_INTERFACE_MODE of s00_axi_aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_aresetn : signal is "XIL_INTERFACENAME s00_axi_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARREADY";
  attribute X_INTERFACE_INFO of s00_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARVALID";
  attribute X_INTERFACE_INFO of s00_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWREADY";
  attribute X_INTERFACE_INFO of s00_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWVALID";
  attribute X_INTERFACE_INFO of s00_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s00_axi BREADY";
  attribute X_INTERFACE_INFO of s00_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi BVALID";
  attribute X_INTERFACE_INFO of s00_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s00_axi RREADY";
  attribute X_INTERFACE_INFO of s00_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi RVALID";
  attribute X_INTERFACE_INFO of s00_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s00_axi WREADY";
  attribute X_INTERFACE_INFO of s00_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s00_axi WVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_MODE of s_axis_tready : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 0, FREQ_HZ 333250000, PHASE 0.00, CLK_DOMAIN rfdc_ex_ddr4_adc_0_c0_ddr4_ui_clk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 m_axis TKEEP";
  attribute X_INTERFACE_INFO of s00_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARADDR";
  attribute X_INTERFACE_INFO of s00_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi ARPROT";
  attribute X_INTERFACE_INFO of s00_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWADDR";
  attribute X_INTERFACE_MODE of s00_axi_awaddr : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axi_awaddr : signal is "XIL_INTERFACENAME s00_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 99999001, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN rfdc_ex_zynq_ps_0_pl_clk0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 s00_axi AWPROT";
  attribute X_INTERFACE_INFO of s00_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi BRESP";
  attribute X_INTERFACE_INFO of s00_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi RDATA";
  attribute X_INTERFACE_INFO of s00_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s00_axi RRESP";
  attribute X_INTERFACE_INFO of s00_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s00_axi WDATA";
  attribute X_INTERFACE_INFO of s00_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s00_axi WSTRB";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 s_axis TKEEP";
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.rfdc_ex_tlast_gen_v1_0_0_0_tlast_gen_v1_0
     port map (
      aclk => aclk,
      arstn => arstn,
      m_axis_tdata(511 downto 0) => m_axis_tdata(511 downto 0),
      m_axis_tkeep(63 downto 0) => m_axis_tkeep(63 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => m_axis_tready,
      m_axis_tvalid => m_axis_tvalid,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(3 downto 2) => s00_axi_araddr(3 downto 2),
      s00_axi_araddr(1 downto 0) => B"00",
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arprot(2 downto 0) => B"000",
      s00_axi_arready => s00_axi_arready,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(3 downto 2) => s00_axi_awaddr(3 downto 2),
      s00_axi_awaddr(1 downto 0) => B"00",
      s00_axi_awprot(2 downto 0) => B"000",
      s00_axi_awready => s00_axi_awready,
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bresp(1 downto 0) => NLW_inst_s00_axi_bresp_UNCONNECTED(1 downto 0),
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rresp(1 downto 0) => NLW_inst_s00_axi_rresp_UNCONNECTED(1 downto 0),
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wready => s00_axi_wready,
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      s_axis_tdata(511 downto 0) => s_axis_tdata(511 downto 0),
      s_axis_tkeep(63 downto 0) => s_axis_tkeep(63 downto 0),
      s_axis_tready => s_axis_tready,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
