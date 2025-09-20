-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu May 22 09:10:06 2025
-- Host        : xcosswbld25 running 64-bit Ubuntu 22.04.2 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top rfdc_ex_util_vector_logic_cal_freeze_1_01_0 -prefix
--               rfdc_ex_util_vector_logic_cal_freeze_1_01_0_ rfdc_ex_util_vector_logic_cal_freeze_0_01_0_sim_netlist.vhdl
-- Design      : rfdc_ex_util_vector_logic_cal_freeze_0_01_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rfdc_ex_util_vector_logic_cal_freeze_1_01_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rfdc_ex_util_vector_logic_cal_freeze_1_01_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rfdc_ex_util_vector_logic_cal_freeze_1_01_0 : entity is "rfdc_ex_util_vector_logic_cal_freeze_0_01_0,util_vector_logic_v2_0_5_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rfdc_ex_util_vector_logic_cal_freeze_1_01_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rfdc_ex_util_vector_logic_cal_freeze_1_01_0 : entity is "util_vector_logic_v2_0_5_util_vector_logic,Vivado 2025.1";
end rfdc_ex_util_vector_logic_cal_freeze_1_01_0;

architecture STRUCTURE of rfdc_ex_util_vector_logic_cal_freeze_1_01_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
