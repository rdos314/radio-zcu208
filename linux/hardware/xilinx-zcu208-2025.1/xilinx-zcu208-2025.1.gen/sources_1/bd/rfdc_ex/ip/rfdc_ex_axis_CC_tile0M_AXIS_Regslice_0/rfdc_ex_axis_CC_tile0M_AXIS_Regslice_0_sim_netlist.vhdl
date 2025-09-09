-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:23:08 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /scratch/rfrefdesigns_2025.1_0522_1_ZCU208/trunk/HW/48_trdPllOnddr_dacddr_adcmts_ex/rfip_ex/rfip_ex.gen/sources_1/bd/rfdc_ex/ip/rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0/rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_sim_netlist.vhdl
-- Design      : rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axisc_register_slice is
  port (
    m_axis_tlast : out STD_LOGIC;
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    s_axis_tlast : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tvalid : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axisc_register_slice : entity is "axis_register_slice_v1_1_35_axisc_register_slice";
end rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axisc_register_slice;

architecture STRUCTURE of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axisc_register_slice is
begin
\NO_READY.m_valid_r_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_axis_tvalid,
      Q => m_axis_tvalid,
      R => '0'
    );
\NO_READY.storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(0),
      Q => m_axis_tdata(0),
      R => '0'
    );
\NO_READY.storage_data1_reg[100]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(100),
      Q => m_axis_tdata(100),
      R => '0'
    );
\NO_READY.storage_data1_reg[101]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(101),
      Q => m_axis_tdata(101),
      R => '0'
    );
\NO_READY.storage_data1_reg[102]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(102),
      Q => m_axis_tdata(102),
      R => '0'
    );
\NO_READY.storage_data1_reg[103]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(103),
      Q => m_axis_tdata(103),
      R => '0'
    );
\NO_READY.storage_data1_reg[104]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(104),
      Q => m_axis_tdata(104),
      R => '0'
    );
\NO_READY.storage_data1_reg[105]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(105),
      Q => m_axis_tdata(105),
      R => '0'
    );
\NO_READY.storage_data1_reg[106]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(106),
      Q => m_axis_tdata(106),
      R => '0'
    );
\NO_READY.storage_data1_reg[107]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(107),
      Q => m_axis_tdata(107),
      R => '0'
    );
\NO_READY.storage_data1_reg[108]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(108),
      Q => m_axis_tdata(108),
      R => '0'
    );
\NO_READY.storage_data1_reg[109]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(109),
      Q => m_axis_tdata(109),
      R => '0'
    );
\NO_READY.storage_data1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(10),
      Q => m_axis_tdata(10),
      R => '0'
    );
\NO_READY.storage_data1_reg[110]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(110),
      Q => m_axis_tdata(110),
      R => '0'
    );
\NO_READY.storage_data1_reg[111]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(111),
      Q => m_axis_tdata(111),
      R => '0'
    );
\NO_READY.storage_data1_reg[112]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(112),
      Q => m_axis_tdata(112),
      R => '0'
    );
\NO_READY.storage_data1_reg[113]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(113),
      Q => m_axis_tdata(113),
      R => '0'
    );
\NO_READY.storage_data1_reg[114]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(114),
      Q => m_axis_tdata(114),
      R => '0'
    );
\NO_READY.storage_data1_reg[115]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(115),
      Q => m_axis_tdata(115),
      R => '0'
    );
\NO_READY.storage_data1_reg[116]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(116),
      Q => m_axis_tdata(116),
      R => '0'
    );
\NO_READY.storage_data1_reg[117]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(117),
      Q => m_axis_tdata(117),
      R => '0'
    );
\NO_READY.storage_data1_reg[118]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(118),
      Q => m_axis_tdata(118),
      R => '0'
    );
\NO_READY.storage_data1_reg[119]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(119),
      Q => m_axis_tdata(119),
      R => '0'
    );
\NO_READY.storage_data1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(11),
      Q => m_axis_tdata(11),
      R => '0'
    );
\NO_READY.storage_data1_reg[120]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(120),
      Q => m_axis_tdata(120),
      R => '0'
    );
\NO_READY.storage_data1_reg[121]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(121),
      Q => m_axis_tdata(121),
      R => '0'
    );
\NO_READY.storage_data1_reg[122]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(122),
      Q => m_axis_tdata(122),
      R => '0'
    );
\NO_READY.storage_data1_reg[123]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(123),
      Q => m_axis_tdata(123),
      R => '0'
    );
\NO_READY.storage_data1_reg[124]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(124),
      Q => m_axis_tdata(124),
      R => '0'
    );
\NO_READY.storage_data1_reg[125]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(125),
      Q => m_axis_tdata(125),
      R => '0'
    );
\NO_READY.storage_data1_reg[126]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(126),
      Q => m_axis_tdata(126),
      R => '0'
    );
\NO_READY.storage_data1_reg[127]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(127),
      Q => m_axis_tdata(127),
      R => '0'
    );
\NO_READY.storage_data1_reg[128]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(128),
      Q => m_axis_tdata(128),
      R => '0'
    );
\NO_READY.storage_data1_reg[129]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(129),
      Q => m_axis_tdata(129),
      R => '0'
    );
\NO_READY.storage_data1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(12),
      Q => m_axis_tdata(12),
      R => '0'
    );
\NO_READY.storage_data1_reg[130]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(130),
      Q => m_axis_tdata(130),
      R => '0'
    );
\NO_READY.storage_data1_reg[131]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(131),
      Q => m_axis_tdata(131),
      R => '0'
    );
\NO_READY.storage_data1_reg[132]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(132),
      Q => m_axis_tdata(132),
      R => '0'
    );
\NO_READY.storage_data1_reg[133]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(133),
      Q => m_axis_tdata(133),
      R => '0'
    );
\NO_READY.storage_data1_reg[134]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(134),
      Q => m_axis_tdata(134),
      R => '0'
    );
\NO_READY.storage_data1_reg[135]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(135),
      Q => m_axis_tdata(135),
      R => '0'
    );
\NO_READY.storage_data1_reg[136]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(136),
      Q => m_axis_tdata(136),
      R => '0'
    );
\NO_READY.storage_data1_reg[137]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(137),
      Q => m_axis_tdata(137),
      R => '0'
    );
\NO_READY.storage_data1_reg[138]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(138),
      Q => m_axis_tdata(138),
      R => '0'
    );
\NO_READY.storage_data1_reg[139]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(139),
      Q => m_axis_tdata(139),
      R => '0'
    );
\NO_READY.storage_data1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(13),
      Q => m_axis_tdata(13),
      R => '0'
    );
\NO_READY.storage_data1_reg[140]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(140),
      Q => m_axis_tdata(140),
      R => '0'
    );
\NO_READY.storage_data1_reg[141]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(141),
      Q => m_axis_tdata(141),
      R => '0'
    );
\NO_READY.storage_data1_reg[142]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(142),
      Q => m_axis_tdata(142),
      R => '0'
    );
\NO_READY.storage_data1_reg[143]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(143),
      Q => m_axis_tdata(143),
      R => '0'
    );
\NO_READY.storage_data1_reg[144]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(144),
      Q => m_axis_tdata(144),
      R => '0'
    );
\NO_READY.storage_data1_reg[145]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(145),
      Q => m_axis_tdata(145),
      R => '0'
    );
\NO_READY.storage_data1_reg[146]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(146),
      Q => m_axis_tdata(146),
      R => '0'
    );
\NO_READY.storage_data1_reg[147]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(147),
      Q => m_axis_tdata(147),
      R => '0'
    );
\NO_READY.storage_data1_reg[148]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(148),
      Q => m_axis_tdata(148),
      R => '0'
    );
\NO_READY.storage_data1_reg[149]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(149),
      Q => m_axis_tdata(149),
      R => '0'
    );
\NO_READY.storage_data1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(14),
      Q => m_axis_tdata(14),
      R => '0'
    );
\NO_READY.storage_data1_reg[150]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(150),
      Q => m_axis_tdata(150),
      R => '0'
    );
\NO_READY.storage_data1_reg[151]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(151),
      Q => m_axis_tdata(151),
      R => '0'
    );
\NO_READY.storage_data1_reg[152]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(152),
      Q => m_axis_tdata(152),
      R => '0'
    );
\NO_READY.storage_data1_reg[153]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(153),
      Q => m_axis_tdata(153),
      R => '0'
    );
\NO_READY.storage_data1_reg[154]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(154),
      Q => m_axis_tdata(154),
      R => '0'
    );
\NO_READY.storage_data1_reg[155]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(155),
      Q => m_axis_tdata(155),
      R => '0'
    );
\NO_READY.storage_data1_reg[156]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(156),
      Q => m_axis_tdata(156),
      R => '0'
    );
\NO_READY.storage_data1_reg[157]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(157),
      Q => m_axis_tdata(157),
      R => '0'
    );
\NO_READY.storage_data1_reg[158]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(158),
      Q => m_axis_tdata(158),
      R => '0'
    );
\NO_READY.storage_data1_reg[159]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(159),
      Q => m_axis_tdata(159),
      R => '0'
    );
\NO_READY.storage_data1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(15),
      Q => m_axis_tdata(15),
      R => '0'
    );
\NO_READY.storage_data1_reg[160]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(160),
      Q => m_axis_tdata(160),
      R => '0'
    );
\NO_READY.storage_data1_reg[161]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(161),
      Q => m_axis_tdata(161),
      R => '0'
    );
\NO_READY.storage_data1_reg[162]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(162),
      Q => m_axis_tdata(162),
      R => '0'
    );
\NO_READY.storage_data1_reg[163]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(163),
      Q => m_axis_tdata(163),
      R => '0'
    );
\NO_READY.storage_data1_reg[164]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(164),
      Q => m_axis_tdata(164),
      R => '0'
    );
\NO_READY.storage_data1_reg[165]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(165),
      Q => m_axis_tdata(165),
      R => '0'
    );
\NO_READY.storage_data1_reg[166]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(166),
      Q => m_axis_tdata(166),
      R => '0'
    );
\NO_READY.storage_data1_reg[167]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(167),
      Q => m_axis_tdata(167),
      R => '0'
    );
\NO_READY.storage_data1_reg[168]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(168),
      Q => m_axis_tdata(168),
      R => '0'
    );
\NO_READY.storage_data1_reg[169]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(169),
      Q => m_axis_tdata(169),
      R => '0'
    );
\NO_READY.storage_data1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(16),
      Q => m_axis_tdata(16),
      R => '0'
    );
\NO_READY.storage_data1_reg[170]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(170),
      Q => m_axis_tdata(170),
      R => '0'
    );
\NO_READY.storage_data1_reg[171]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(171),
      Q => m_axis_tdata(171),
      R => '0'
    );
\NO_READY.storage_data1_reg[172]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(172),
      Q => m_axis_tdata(172),
      R => '0'
    );
\NO_READY.storage_data1_reg[173]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(173),
      Q => m_axis_tdata(173),
      R => '0'
    );
\NO_READY.storage_data1_reg[174]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(174),
      Q => m_axis_tdata(174),
      R => '0'
    );
\NO_READY.storage_data1_reg[175]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(175),
      Q => m_axis_tdata(175),
      R => '0'
    );
\NO_READY.storage_data1_reg[176]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(176),
      Q => m_axis_tdata(176),
      R => '0'
    );
\NO_READY.storage_data1_reg[177]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(177),
      Q => m_axis_tdata(177),
      R => '0'
    );
\NO_READY.storage_data1_reg[178]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(178),
      Q => m_axis_tdata(178),
      R => '0'
    );
\NO_READY.storage_data1_reg[179]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(179),
      Q => m_axis_tdata(179),
      R => '0'
    );
\NO_READY.storage_data1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(17),
      Q => m_axis_tdata(17),
      R => '0'
    );
\NO_READY.storage_data1_reg[180]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(180),
      Q => m_axis_tdata(180),
      R => '0'
    );
\NO_READY.storage_data1_reg[181]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(181),
      Q => m_axis_tdata(181),
      R => '0'
    );
\NO_READY.storage_data1_reg[182]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(182),
      Q => m_axis_tdata(182),
      R => '0'
    );
\NO_READY.storage_data1_reg[183]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(183),
      Q => m_axis_tdata(183),
      R => '0'
    );
\NO_READY.storage_data1_reg[184]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(184),
      Q => m_axis_tdata(184),
      R => '0'
    );
\NO_READY.storage_data1_reg[185]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(185),
      Q => m_axis_tdata(185),
      R => '0'
    );
\NO_READY.storage_data1_reg[186]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(186),
      Q => m_axis_tdata(186),
      R => '0'
    );
\NO_READY.storage_data1_reg[187]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(187),
      Q => m_axis_tdata(187),
      R => '0'
    );
\NO_READY.storage_data1_reg[188]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(188),
      Q => m_axis_tdata(188),
      R => '0'
    );
\NO_READY.storage_data1_reg[189]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(189),
      Q => m_axis_tdata(189),
      R => '0'
    );
\NO_READY.storage_data1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(18),
      Q => m_axis_tdata(18),
      R => '0'
    );
\NO_READY.storage_data1_reg[190]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(190),
      Q => m_axis_tdata(190),
      R => '0'
    );
\NO_READY.storage_data1_reg[191]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(191),
      Q => m_axis_tdata(191),
      R => '0'
    );
\NO_READY.storage_data1_reg[192]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(192),
      Q => m_axis_tdata(192),
      R => '0'
    );
\NO_READY.storage_data1_reg[193]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(193),
      Q => m_axis_tdata(193),
      R => '0'
    );
\NO_READY.storage_data1_reg[194]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(194),
      Q => m_axis_tdata(194),
      R => '0'
    );
\NO_READY.storage_data1_reg[195]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(195),
      Q => m_axis_tdata(195),
      R => '0'
    );
\NO_READY.storage_data1_reg[196]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(196),
      Q => m_axis_tdata(196),
      R => '0'
    );
\NO_READY.storage_data1_reg[197]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(197),
      Q => m_axis_tdata(197),
      R => '0'
    );
\NO_READY.storage_data1_reg[198]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(198),
      Q => m_axis_tdata(198),
      R => '0'
    );
\NO_READY.storage_data1_reg[199]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(199),
      Q => m_axis_tdata(199),
      R => '0'
    );
\NO_READY.storage_data1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(19),
      Q => m_axis_tdata(19),
      R => '0'
    );
\NO_READY.storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(1),
      Q => m_axis_tdata(1),
      R => '0'
    );
\NO_READY.storage_data1_reg[200]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(200),
      Q => m_axis_tdata(200),
      R => '0'
    );
\NO_READY.storage_data1_reg[201]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(201),
      Q => m_axis_tdata(201),
      R => '0'
    );
\NO_READY.storage_data1_reg[202]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(202),
      Q => m_axis_tdata(202),
      R => '0'
    );
\NO_READY.storage_data1_reg[203]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(203),
      Q => m_axis_tdata(203),
      R => '0'
    );
\NO_READY.storage_data1_reg[204]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(204),
      Q => m_axis_tdata(204),
      R => '0'
    );
\NO_READY.storage_data1_reg[205]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(205),
      Q => m_axis_tdata(205),
      R => '0'
    );
\NO_READY.storage_data1_reg[206]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(206),
      Q => m_axis_tdata(206),
      R => '0'
    );
\NO_READY.storage_data1_reg[207]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(207),
      Q => m_axis_tdata(207),
      R => '0'
    );
\NO_READY.storage_data1_reg[208]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(208),
      Q => m_axis_tdata(208),
      R => '0'
    );
\NO_READY.storage_data1_reg[209]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(209),
      Q => m_axis_tdata(209),
      R => '0'
    );
\NO_READY.storage_data1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(20),
      Q => m_axis_tdata(20),
      R => '0'
    );
\NO_READY.storage_data1_reg[210]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(210),
      Q => m_axis_tdata(210),
      R => '0'
    );
\NO_READY.storage_data1_reg[211]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(211),
      Q => m_axis_tdata(211),
      R => '0'
    );
\NO_READY.storage_data1_reg[212]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(212),
      Q => m_axis_tdata(212),
      R => '0'
    );
\NO_READY.storage_data1_reg[213]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(213),
      Q => m_axis_tdata(213),
      R => '0'
    );
\NO_READY.storage_data1_reg[214]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(214),
      Q => m_axis_tdata(214),
      R => '0'
    );
\NO_READY.storage_data1_reg[215]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(215),
      Q => m_axis_tdata(215),
      R => '0'
    );
\NO_READY.storage_data1_reg[216]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(216),
      Q => m_axis_tdata(216),
      R => '0'
    );
\NO_READY.storage_data1_reg[217]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(217),
      Q => m_axis_tdata(217),
      R => '0'
    );
\NO_READY.storage_data1_reg[218]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(218),
      Q => m_axis_tdata(218),
      R => '0'
    );
\NO_READY.storage_data1_reg[219]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(219),
      Q => m_axis_tdata(219),
      R => '0'
    );
\NO_READY.storage_data1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(21),
      Q => m_axis_tdata(21),
      R => '0'
    );
\NO_READY.storage_data1_reg[220]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(220),
      Q => m_axis_tdata(220),
      R => '0'
    );
\NO_READY.storage_data1_reg[221]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(221),
      Q => m_axis_tdata(221),
      R => '0'
    );
\NO_READY.storage_data1_reg[222]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(222),
      Q => m_axis_tdata(222),
      R => '0'
    );
\NO_READY.storage_data1_reg[223]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(223),
      Q => m_axis_tdata(223),
      R => '0'
    );
\NO_READY.storage_data1_reg[224]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(224),
      Q => m_axis_tdata(224),
      R => '0'
    );
\NO_READY.storage_data1_reg[225]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(225),
      Q => m_axis_tdata(225),
      R => '0'
    );
\NO_READY.storage_data1_reg[226]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(226),
      Q => m_axis_tdata(226),
      R => '0'
    );
\NO_READY.storage_data1_reg[227]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(227),
      Q => m_axis_tdata(227),
      R => '0'
    );
\NO_READY.storage_data1_reg[228]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(228),
      Q => m_axis_tdata(228),
      R => '0'
    );
\NO_READY.storage_data1_reg[229]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(229),
      Q => m_axis_tdata(229),
      R => '0'
    );
\NO_READY.storage_data1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(22),
      Q => m_axis_tdata(22),
      R => '0'
    );
\NO_READY.storage_data1_reg[230]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(230),
      Q => m_axis_tdata(230),
      R => '0'
    );
\NO_READY.storage_data1_reg[231]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(231),
      Q => m_axis_tdata(231),
      R => '0'
    );
\NO_READY.storage_data1_reg[232]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(232),
      Q => m_axis_tdata(232),
      R => '0'
    );
\NO_READY.storage_data1_reg[233]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(233),
      Q => m_axis_tdata(233),
      R => '0'
    );
\NO_READY.storage_data1_reg[234]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(234),
      Q => m_axis_tdata(234),
      R => '0'
    );
\NO_READY.storage_data1_reg[235]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(235),
      Q => m_axis_tdata(235),
      R => '0'
    );
\NO_READY.storage_data1_reg[236]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(236),
      Q => m_axis_tdata(236),
      R => '0'
    );
\NO_READY.storage_data1_reg[237]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(237),
      Q => m_axis_tdata(237),
      R => '0'
    );
\NO_READY.storage_data1_reg[238]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(238),
      Q => m_axis_tdata(238),
      R => '0'
    );
\NO_READY.storage_data1_reg[239]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(239),
      Q => m_axis_tdata(239),
      R => '0'
    );
\NO_READY.storage_data1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(23),
      Q => m_axis_tdata(23),
      R => '0'
    );
\NO_READY.storage_data1_reg[240]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(240),
      Q => m_axis_tdata(240),
      R => '0'
    );
\NO_READY.storage_data1_reg[241]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(241),
      Q => m_axis_tdata(241),
      R => '0'
    );
\NO_READY.storage_data1_reg[242]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(242),
      Q => m_axis_tdata(242),
      R => '0'
    );
\NO_READY.storage_data1_reg[243]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(243),
      Q => m_axis_tdata(243),
      R => '0'
    );
\NO_READY.storage_data1_reg[244]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(244),
      Q => m_axis_tdata(244),
      R => '0'
    );
\NO_READY.storage_data1_reg[245]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(245),
      Q => m_axis_tdata(245),
      R => '0'
    );
\NO_READY.storage_data1_reg[246]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(246),
      Q => m_axis_tdata(246),
      R => '0'
    );
\NO_READY.storage_data1_reg[247]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(247),
      Q => m_axis_tdata(247),
      R => '0'
    );
\NO_READY.storage_data1_reg[248]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(248),
      Q => m_axis_tdata(248),
      R => '0'
    );
\NO_READY.storage_data1_reg[249]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(249),
      Q => m_axis_tdata(249),
      R => '0'
    );
\NO_READY.storage_data1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(24),
      Q => m_axis_tdata(24),
      R => '0'
    );
\NO_READY.storage_data1_reg[250]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(250),
      Q => m_axis_tdata(250),
      R => '0'
    );
\NO_READY.storage_data1_reg[251]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(251),
      Q => m_axis_tdata(251),
      R => '0'
    );
\NO_READY.storage_data1_reg[252]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(252),
      Q => m_axis_tdata(252),
      R => '0'
    );
\NO_READY.storage_data1_reg[253]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(253),
      Q => m_axis_tdata(253),
      R => '0'
    );
\NO_READY.storage_data1_reg[254]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(254),
      Q => m_axis_tdata(254),
      R => '0'
    );
\NO_READY.storage_data1_reg[255]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(255),
      Q => m_axis_tdata(255),
      R => '0'
    );
\NO_READY.storage_data1_reg[256]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(0),
      Q => m_axis_tkeep(0),
      R => '0'
    );
\NO_READY.storage_data1_reg[257]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(1),
      Q => m_axis_tkeep(1),
      R => '0'
    );
\NO_READY.storage_data1_reg[258]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(2),
      Q => m_axis_tkeep(2),
      R => '0'
    );
\NO_READY.storage_data1_reg[259]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(3),
      Q => m_axis_tkeep(3),
      R => '0'
    );
\NO_READY.storage_data1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(25),
      Q => m_axis_tdata(25),
      R => '0'
    );
\NO_READY.storage_data1_reg[260]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(4),
      Q => m_axis_tkeep(4),
      R => '0'
    );
\NO_READY.storage_data1_reg[261]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(5),
      Q => m_axis_tkeep(5),
      R => '0'
    );
\NO_READY.storage_data1_reg[262]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(6),
      Q => m_axis_tkeep(6),
      R => '0'
    );
\NO_READY.storage_data1_reg[263]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(7),
      Q => m_axis_tkeep(7),
      R => '0'
    );
\NO_READY.storage_data1_reg[264]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(8),
      Q => m_axis_tkeep(8),
      R => '0'
    );
\NO_READY.storage_data1_reg[265]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(9),
      Q => m_axis_tkeep(9),
      R => '0'
    );
\NO_READY.storage_data1_reg[266]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(10),
      Q => m_axis_tkeep(10),
      R => '0'
    );
\NO_READY.storage_data1_reg[267]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(11),
      Q => m_axis_tkeep(11),
      R => '0'
    );
\NO_READY.storage_data1_reg[268]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(12),
      Q => m_axis_tkeep(12),
      R => '0'
    );
\NO_READY.storage_data1_reg[269]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(13),
      Q => m_axis_tkeep(13),
      R => '0'
    );
\NO_READY.storage_data1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(26),
      Q => m_axis_tdata(26),
      R => '0'
    );
\NO_READY.storage_data1_reg[270]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(14),
      Q => m_axis_tkeep(14),
      R => '0'
    );
\NO_READY.storage_data1_reg[271]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(15),
      Q => m_axis_tkeep(15),
      R => '0'
    );
\NO_READY.storage_data1_reg[272]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(16),
      Q => m_axis_tkeep(16),
      R => '0'
    );
\NO_READY.storage_data1_reg[273]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(17),
      Q => m_axis_tkeep(17),
      R => '0'
    );
\NO_READY.storage_data1_reg[274]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(18),
      Q => m_axis_tkeep(18),
      R => '0'
    );
\NO_READY.storage_data1_reg[275]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(19),
      Q => m_axis_tkeep(19),
      R => '0'
    );
\NO_READY.storage_data1_reg[276]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(20),
      Q => m_axis_tkeep(20),
      R => '0'
    );
\NO_READY.storage_data1_reg[277]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(21),
      Q => m_axis_tkeep(21),
      R => '0'
    );
\NO_READY.storage_data1_reg[278]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(22),
      Q => m_axis_tkeep(22),
      R => '0'
    );
\NO_READY.storage_data1_reg[279]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(23),
      Q => m_axis_tkeep(23),
      R => '0'
    );
\NO_READY.storage_data1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(27),
      Q => m_axis_tdata(27),
      R => '0'
    );
\NO_READY.storage_data1_reg[280]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(24),
      Q => m_axis_tkeep(24),
      R => '0'
    );
\NO_READY.storage_data1_reg[281]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(25),
      Q => m_axis_tkeep(25),
      R => '0'
    );
\NO_READY.storage_data1_reg[282]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(26),
      Q => m_axis_tkeep(26),
      R => '0'
    );
\NO_READY.storage_data1_reg[283]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(27),
      Q => m_axis_tkeep(27),
      R => '0'
    );
\NO_READY.storage_data1_reg[284]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(28),
      Q => m_axis_tkeep(28),
      R => '0'
    );
\NO_READY.storage_data1_reg[285]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(29),
      Q => m_axis_tkeep(29),
      R => '0'
    );
\NO_READY.storage_data1_reg[286]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(30),
      Q => m_axis_tkeep(30),
      R => '0'
    );
\NO_READY.storage_data1_reg[287]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tkeep(31),
      Q => m_axis_tkeep(31),
      R => '0'
    );
\NO_READY.storage_data1_reg[288]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tlast,
      Q => m_axis_tlast,
      R => '0'
    );
\NO_READY.storage_data1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(28),
      Q => m_axis_tdata(28),
      R => '0'
    );
\NO_READY.storage_data1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(29),
      Q => m_axis_tdata(29),
      R => '0'
    );
\NO_READY.storage_data1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(2),
      Q => m_axis_tdata(2),
      R => '0'
    );
\NO_READY.storage_data1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(30),
      Q => m_axis_tdata(30),
      R => '0'
    );
\NO_READY.storage_data1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(31),
      Q => m_axis_tdata(31),
      R => '0'
    );
\NO_READY.storage_data1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(32),
      Q => m_axis_tdata(32),
      R => '0'
    );
\NO_READY.storage_data1_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(33),
      Q => m_axis_tdata(33),
      R => '0'
    );
\NO_READY.storage_data1_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(34),
      Q => m_axis_tdata(34),
      R => '0'
    );
\NO_READY.storage_data1_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(35),
      Q => m_axis_tdata(35),
      R => '0'
    );
\NO_READY.storage_data1_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(36),
      Q => m_axis_tdata(36),
      R => '0'
    );
\NO_READY.storage_data1_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(37),
      Q => m_axis_tdata(37),
      R => '0'
    );
\NO_READY.storage_data1_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(38),
      Q => m_axis_tdata(38),
      R => '0'
    );
\NO_READY.storage_data1_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(39),
      Q => m_axis_tdata(39),
      R => '0'
    );
\NO_READY.storage_data1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(3),
      Q => m_axis_tdata(3),
      R => '0'
    );
\NO_READY.storage_data1_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(40),
      Q => m_axis_tdata(40),
      R => '0'
    );
\NO_READY.storage_data1_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(41),
      Q => m_axis_tdata(41),
      R => '0'
    );
\NO_READY.storage_data1_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(42),
      Q => m_axis_tdata(42),
      R => '0'
    );
\NO_READY.storage_data1_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(43),
      Q => m_axis_tdata(43),
      R => '0'
    );
\NO_READY.storage_data1_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(44),
      Q => m_axis_tdata(44),
      R => '0'
    );
\NO_READY.storage_data1_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(45),
      Q => m_axis_tdata(45),
      R => '0'
    );
\NO_READY.storage_data1_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(46),
      Q => m_axis_tdata(46),
      R => '0'
    );
\NO_READY.storage_data1_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(47),
      Q => m_axis_tdata(47),
      R => '0'
    );
\NO_READY.storage_data1_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(48),
      Q => m_axis_tdata(48),
      R => '0'
    );
\NO_READY.storage_data1_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(49),
      Q => m_axis_tdata(49),
      R => '0'
    );
\NO_READY.storage_data1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(4),
      Q => m_axis_tdata(4),
      R => '0'
    );
\NO_READY.storage_data1_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(50),
      Q => m_axis_tdata(50),
      R => '0'
    );
\NO_READY.storage_data1_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(51),
      Q => m_axis_tdata(51),
      R => '0'
    );
\NO_READY.storage_data1_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(52),
      Q => m_axis_tdata(52),
      R => '0'
    );
\NO_READY.storage_data1_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(53),
      Q => m_axis_tdata(53),
      R => '0'
    );
\NO_READY.storage_data1_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(54),
      Q => m_axis_tdata(54),
      R => '0'
    );
\NO_READY.storage_data1_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(55),
      Q => m_axis_tdata(55),
      R => '0'
    );
\NO_READY.storage_data1_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(56),
      Q => m_axis_tdata(56),
      R => '0'
    );
\NO_READY.storage_data1_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(57),
      Q => m_axis_tdata(57),
      R => '0'
    );
\NO_READY.storage_data1_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(58),
      Q => m_axis_tdata(58),
      R => '0'
    );
\NO_READY.storage_data1_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(59),
      Q => m_axis_tdata(59),
      R => '0'
    );
\NO_READY.storage_data1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(5),
      Q => m_axis_tdata(5),
      R => '0'
    );
\NO_READY.storage_data1_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(60),
      Q => m_axis_tdata(60),
      R => '0'
    );
\NO_READY.storage_data1_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(61),
      Q => m_axis_tdata(61),
      R => '0'
    );
\NO_READY.storage_data1_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(62),
      Q => m_axis_tdata(62),
      R => '0'
    );
\NO_READY.storage_data1_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(63),
      Q => m_axis_tdata(63),
      R => '0'
    );
\NO_READY.storage_data1_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(64),
      Q => m_axis_tdata(64),
      R => '0'
    );
\NO_READY.storage_data1_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(65),
      Q => m_axis_tdata(65),
      R => '0'
    );
\NO_READY.storage_data1_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(66),
      Q => m_axis_tdata(66),
      R => '0'
    );
\NO_READY.storage_data1_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(67),
      Q => m_axis_tdata(67),
      R => '0'
    );
\NO_READY.storage_data1_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(68),
      Q => m_axis_tdata(68),
      R => '0'
    );
\NO_READY.storage_data1_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(69),
      Q => m_axis_tdata(69),
      R => '0'
    );
\NO_READY.storage_data1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(6),
      Q => m_axis_tdata(6),
      R => '0'
    );
\NO_READY.storage_data1_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(70),
      Q => m_axis_tdata(70),
      R => '0'
    );
\NO_READY.storage_data1_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(71),
      Q => m_axis_tdata(71),
      R => '0'
    );
\NO_READY.storage_data1_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(72),
      Q => m_axis_tdata(72),
      R => '0'
    );
\NO_READY.storage_data1_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(73),
      Q => m_axis_tdata(73),
      R => '0'
    );
\NO_READY.storage_data1_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(74),
      Q => m_axis_tdata(74),
      R => '0'
    );
\NO_READY.storage_data1_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(75),
      Q => m_axis_tdata(75),
      R => '0'
    );
\NO_READY.storage_data1_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(76),
      Q => m_axis_tdata(76),
      R => '0'
    );
\NO_READY.storage_data1_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(77),
      Q => m_axis_tdata(77),
      R => '0'
    );
\NO_READY.storage_data1_reg[78]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(78),
      Q => m_axis_tdata(78),
      R => '0'
    );
\NO_READY.storage_data1_reg[79]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(79),
      Q => m_axis_tdata(79),
      R => '0'
    );
\NO_READY.storage_data1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(7),
      Q => m_axis_tdata(7),
      R => '0'
    );
\NO_READY.storage_data1_reg[80]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(80),
      Q => m_axis_tdata(80),
      R => '0'
    );
\NO_READY.storage_data1_reg[81]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(81),
      Q => m_axis_tdata(81),
      R => '0'
    );
\NO_READY.storage_data1_reg[82]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(82),
      Q => m_axis_tdata(82),
      R => '0'
    );
\NO_READY.storage_data1_reg[83]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(83),
      Q => m_axis_tdata(83),
      R => '0'
    );
\NO_READY.storage_data1_reg[84]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(84),
      Q => m_axis_tdata(84),
      R => '0'
    );
\NO_READY.storage_data1_reg[85]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(85),
      Q => m_axis_tdata(85),
      R => '0'
    );
\NO_READY.storage_data1_reg[86]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(86),
      Q => m_axis_tdata(86),
      R => '0'
    );
\NO_READY.storage_data1_reg[87]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(87),
      Q => m_axis_tdata(87),
      R => '0'
    );
\NO_READY.storage_data1_reg[88]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(88),
      Q => m_axis_tdata(88),
      R => '0'
    );
\NO_READY.storage_data1_reg[89]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(89),
      Q => m_axis_tdata(89),
      R => '0'
    );
\NO_READY.storage_data1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(8),
      Q => m_axis_tdata(8),
      R => '0'
    );
\NO_READY.storage_data1_reg[90]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(90),
      Q => m_axis_tdata(90),
      R => '0'
    );
\NO_READY.storage_data1_reg[91]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(91),
      Q => m_axis_tdata(91),
      R => '0'
    );
\NO_READY.storage_data1_reg[92]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(92),
      Q => m_axis_tdata(92),
      R => '0'
    );
\NO_READY.storage_data1_reg[93]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(93),
      Q => m_axis_tdata(93),
      R => '0'
    );
\NO_READY.storage_data1_reg[94]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(94),
      Q => m_axis_tdata(94),
      R => '0'
    );
\NO_READY.storage_data1_reg[95]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(95),
      Q => m_axis_tdata(95),
      R => '0'
    );
\NO_READY.storage_data1_reg[96]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(96),
      Q => m_axis_tdata(96),
      R => '0'
    );
\NO_READY.storage_data1_reg[97]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(97),
      Q => m_axis_tdata(97),
      R => '0'
    );
\NO_READY.storage_data1_reg[98]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(98),
      Q => m_axis_tdata(98),
      R => '0'
    );
\NO_READY.storage_data1_reg[99]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(99),
      Q => m_axis_tdata(99),
      R => '0'
    );
\NO_READY.storage_data1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => s_axis_tdata(9),
      Q => m_axis_tdata(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice is
  port (
    aclk : in STD_LOGIC;
    aclk2x : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    aclken : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tstrb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    s_axis_tid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tdest : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axis_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tstrb : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC;
    m_axis_tid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tdest : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axis_tuser : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 26;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 256;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is "zynquplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 0;
  attribute C_PIPELINES_MASTER : integer;
  attribute C_PIPELINES_MASTER of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 0;
  attribute C_PIPELINES_MIDDLE : integer;
  attribute C_PIPELINES_MIDDLE of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 0;
  attribute C_PIPELINES_SLAVE : integer;
  attribute C_PIPELINES_SLAVE of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 0;
  attribute C_REG_CONFIG : integer;
  attribute C_REG_CONFIG of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 10;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 1;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is "axis_register_slice_v1_1_35_axis_register_slice";
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice : entity is 289;
end rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice;

architecture STRUCTURE of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice is
  signal \<const0>\ : STD_LOGIC;
begin
  m_axis_tdest(0) <= \<const0>\;
  m_axis_tid(0) <= \<const0>\;
  m_axis_tstrb(31) <= \<const0>\;
  m_axis_tstrb(30) <= \<const0>\;
  m_axis_tstrb(29) <= \<const0>\;
  m_axis_tstrb(28) <= \<const0>\;
  m_axis_tstrb(27) <= \<const0>\;
  m_axis_tstrb(26) <= \<const0>\;
  m_axis_tstrb(25) <= \<const0>\;
  m_axis_tstrb(24) <= \<const0>\;
  m_axis_tstrb(23) <= \<const0>\;
  m_axis_tstrb(22) <= \<const0>\;
  m_axis_tstrb(21) <= \<const0>\;
  m_axis_tstrb(20) <= \<const0>\;
  m_axis_tstrb(19) <= \<const0>\;
  m_axis_tstrb(18) <= \<const0>\;
  m_axis_tstrb(17) <= \<const0>\;
  m_axis_tstrb(16) <= \<const0>\;
  m_axis_tstrb(15) <= \<const0>\;
  m_axis_tstrb(14) <= \<const0>\;
  m_axis_tstrb(13) <= \<const0>\;
  m_axis_tstrb(12) <= \<const0>\;
  m_axis_tstrb(11) <= \<const0>\;
  m_axis_tstrb(10) <= \<const0>\;
  m_axis_tstrb(9) <= \<const0>\;
  m_axis_tstrb(8) <= \<const0>\;
  m_axis_tstrb(7) <= \<const0>\;
  m_axis_tstrb(6) <= \<const0>\;
  m_axis_tstrb(5) <= \<const0>\;
  m_axis_tstrb(4) <= \<const0>\;
  m_axis_tstrb(3) <= \<const0>\;
  m_axis_tstrb(2) <= \<const0>\;
  m_axis_tstrb(1) <= \<const0>\;
  m_axis_tstrb(0) <= \<const0>\;
  m_axis_tuser(0) <= \<const0>\;
  s_axis_tready <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
axisc_register_slice_0: entity work.rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axisc_register_slice
     port map (
      aclk => aclk,
      m_axis_tdata(255 downto 0) => m_axis_tdata(255 downto 0),
      m_axis_tkeep(31 downto 0) => m_axis_tkeep(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(255 downto 0) => s_axis_tdata(255 downto 0),
      s_axis_tkeep(31 downto 0) => s_axis_tkeep(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tkeep : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axis_tlast : in STD_LOGIC;
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 255 downto 0 );
    m_axis_tkeep : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0 : entity is "rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0,axis_register_slice_v1_1_35_axis_register_slice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0 : entity is "axis_register_slice_v1_1_35_axis_register_slice,Vivado 2025.1";
end rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0;

architecture STRUCTURE of rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0 is
  signal NLW_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXIS_SIGNAL_SET : integer;
  attribute C_AXIS_SIGNAL_SET of inst : label is 26;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of inst : label is 256;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of inst : label is 1;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of inst : label is 1;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynquplus";
  attribute C_NUM_SLR_CROSSINGS : integer;
  attribute C_NUM_SLR_CROSSINGS of inst : label is 0;
  attribute C_PIPELINES_MASTER : integer;
  attribute C_PIPELINES_MASTER of inst : label is 0;
  attribute C_PIPELINES_MIDDLE : integer;
  attribute C_PIPELINES_MIDDLE of inst : label is 0;
  attribute C_PIPELINES_SLAVE : integer;
  attribute C_PIPELINES_SLAVE of inst : label is 0;
  attribute C_REG_CONFIG : integer;
  attribute C_REG_CONFIG of inst : label is 10;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute G_INDX_SS_TDATA : integer;
  attribute G_INDX_SS_TDATA of inst : label is 1;
  attribute G_INDX_SS_TDEST : integer;
  attribute G_INDX_SS_TDEST of inst : label is 6;
  attribute G_INDX_SS_TID : integer;
  attribute G_INDX_SS_TID of inst : label is 5;
  attribute G_INDX_SS_TKEEP : integer;
  attribute G_INDX_SS_TKEEP of inst : label is 3;
  attribute G_INDX_SS_TLAST : integer;
  attribute G_INDX_SS_TLAST of inst : label is 4;
  attribute G_INDX_SS_TREADY : integer;
  attribute G_INDX_SS_TREADY of inst : label is 0;
  attribute G_INDX_SS_TSTRB : integer;
  attribute G_INDX_SS_TSTRB of inst : label is 2;
  attribute G_INDX_SS_TUSER : integer;
  attribute G_INDX_SS_TUSER of inst : label is 7;
  attribute G_MASK_SS_TDATA : integer;
  attribute G_MASK_SS_TDATA of inst : label is 2;
  attribute G_MASK_SS_TDEST : integer;
  attribute G_MASK_SS_TDEST of inst : label is 64;
  attribute G_MASK_SS_TID : integer;
  attribute G_MASK_SS_TID of inst : label is 32;
  attribute G_MASK_SS_TKEEP : integer;
  attribute G_MASK_SS_TKEEP of inst : label is 8;
  attribute G_MASK_SS_TLAST : integer;
  attribute G_MASK_SS_TLAST of inst : label is 16;
  attribute G_MASK_SS_TREADY : integer;
  attribute G_MASK_SS_TREADY of inst : label is 1;
  attribute G_MASK_SS_TSTRB : integer;
  attribute G_MASK_SS_TSTRB of inst : label is 4;
  attribute G_MASK_SS_TUSER : integer;
  attribute G_MASK_SS_TUSER of inst : label is 128;
  attribute G_TASK_SEVERITY_ERR : integer;
  attribute G_TASK_SEVERITY_ERR of inst : label is 2;
  attribute G_TASK_SEVERITY_INFO : integer;
  attribute G_TASK_SEVERITY_INFO of inst : label is 0;
  attribute G_TASK_SEVERITY_WARNING : integer;
  attribute G_TASK_SEVERITY_WARNING of inst : label is 1;
  attribute P_TPAYLOAD_WIDTH : integer;
  attribute P_TPAYLOAD_WIDTH of inst : label is 289;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 245760000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS TLAST";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS TVALID";
  attribute X_INTERFACE_MODE of m_axis_tvalid : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tvalid : signal is "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 245760000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tlast : signal is "xilinx.com:interface:axis:1.0 S_AXIS TLAST";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_MODE of s_axis_tvalid : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tvalid : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 245760000, PHASE 0.0, CLK_DOMAIN rfdc_ex_rfip_0_clk_dac0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS TDATA";
  attribute X_INTERFACE_INFO of m_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 M_AXIS TKEEP";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_INFO of s_axis_tkeep : signal is "xilinx.com:interface:axis:1.0 S_AXIS TKEEP";
begin
inst: entity work.rfdc_ex_axis_CC_tile0M_AXIS_Regslice_0_axis_register_slice_v1_1_35_axis_register_slice
     port map (
      aclk => aclk,
      aclk2x => '0',
      aclken => '1',
      aresetn => '0',
      m_axis_tdata(255 downto 0) => m_axis_tdata(255 downto 0),
      m_axis_tdest(0) => NLW_inst_m_axis_tdest_UNCONNECTED(0),
      m_axis_tid(0) => NLW_inst_m_axis_tid_UNCONNECTED(0),
      m_axis_tkeep(31 downto 0) => m_axis_tkeep(31 downto 0),
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => '1',
      m_axis_tstrb(31 downto 0) => NLW_inst_m_axis_tstrb_UNCONNECTED(31 downto 0),
      m_axis_tuser(0) => NLW_inst_m_axis_tuser_UNCONNECTED(0),
      m_axis_tvalid => m_axis_tvalid,
      s_axis_tdata(255 downto 0) => s_axis_tdata(255 downto 0),
      s_axis_tdest(0) => '0',
      s_axis_tid(0) => '0',
      s_axis_tkeep(31 downto 0) => s_axis_tkeep(31 downto 0),
      s_axis_tlast => s_axis_tlast,
      s_axis_tready => NLW_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(31 downto 0) => B"11111111111111111111111111111111",
      s_axis_tuser(0) => '0',
      s_axis_tvalid => s_axis_tvalid
    );
end STRUCTURE;
