-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
-- Date        : Fri Nov 21 23:06:05 2025
-- Host        : DESKTOP-SA3FM6F running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/radio-zcu208/vivado/adc.gen/sources_1/bd/ps/ip/ps_comp_low_0_0/ps_comp_low_0_0_sim_netlist.vhdl
-- Design      : ps_comp_low_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu48dr-fsvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_low_0_0_comp_low is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    active : in STD_LOGIC;
    fifo : in STD_LOGIC_VECTOR ( 195 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of ps_comp_low_0_0_comp_low : entity is "comp_low";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of ps_comp_low_0_0_comp_low : entity is "soft";
end ps_comp_low_0_0_comp_low;

architecture STRUCTURE of ps_comp_low_0_0_comp_low is
  component ps_comp_low_0_0_ila_3 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  end component ps_comp_low_0_0_ila_3;
  component ps_comp_low_0_0_ila_3_HD1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe2 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe3 : in STD_LOGIC_VECTOR ( 13 downto 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe5 : in STD_LOGIC_VECTOR ( 27 downto 0 )
  );
  end component ps_comp_low_0_0_ila_3_HD1;
  signal E0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of E0 : signal is std.standard.true;
  signal E1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E1 : signal is std.standard.true;
  signal E2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E2 : signal is std.standard.true;
  signal E3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of E3 : signal is std.standard.true;
  signal N0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N0 : signal is std.standard.true;
  signal N1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N1 : signal is std.standard.true;
  signal N2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N2 : signal is std.standard.true;
  signal N3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of N3 : signal is std.standard.true;
  signal W0 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W0 : signal is std.standard.true;
  signal W1 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W1 : signal is std.standard.true;
  signal W2 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W2 : signal is std.standard.true;
  signal W3 : STD_LOGIC_VECTOR ( 13 downto 0 );
  attribute MARK_DEBUG of W3 : signal is std.standard.true;
  signal counter : STD_LOGIC_VECTOR ( 27 downto 0 );
  attribute MARK_DEBUG of counter : signal is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \composite.E0_reg[0]\ : label is "yes";
  attribute mark_debug_string : string;
  attribute mark_debug_string of \composite.E0_reg[0]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[10]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[11]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[12]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[13]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[1]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[2]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[3]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[4]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[5]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[6]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[7]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[8]\ : label is "yes";
  attribute KEEP of \composite.E0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.E0_reg[9]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[0]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[10]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[11]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[12]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[13]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[1]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[2]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[3]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[4]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[5]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[6]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[7]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[8]\ : label is "yes";
  attribute KEEP of \composite.E1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.E1_reg[9]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[0]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[10]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[11]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[12]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[13]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[1]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[2]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[3]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[4]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[5]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[6]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[7]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[8]\ : label is "yes";
  attribute KEEP of \composite.E2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.E2_reg[9]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[0]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[10]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[11]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[12]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[13]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[1]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[2]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[3]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[4]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[5]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[6]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[7]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[8]\ : label is "yes";
  attribute KEEP of \composite.E3_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.E3_reg[9]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[0]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[10]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[11]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[12]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[13]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[1]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[2]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[3]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[4]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[5]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[6]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[7]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[8]\ : label is "yes";
  attribute KEEP of \composite.N0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.N0_reg[9]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[0]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[10]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[11]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[12]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[13]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[1]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[2]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[3]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[4]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[5]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[6]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[7]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[8]\ : label is "yes";
  attribute KEEP of \composite.N1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.N1_reg[9]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[0]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[10]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[11]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[12]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[13]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[1]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[2]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[3]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[4]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[5]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[6]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[7]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[8]\ : label is "yes";
  attribute KEEP of \composite.N2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.N2_reg[9]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[0]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[10]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[11]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[12]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[13]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[1]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[2]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[3]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[4]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[5]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[6]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[7]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[8]\ : label is "yes";
  attribute KEEP of \composite.N3_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.N3_reg[9]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[0]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[10]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[11]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[12]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[13]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[1]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[2]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[3]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[4]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[5]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[6]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[7]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[8]\ : label is "yes";
  attribute KEEP of \composite.W0_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.W0_reg[9]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[0]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[10]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[11]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[12]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[13]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[1]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[2]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[3]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[4]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[5]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[6]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[7]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[8]\ : label is "yes";
  attribute KEEP of \composite.W1_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.W1_reg[9]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[0]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[10]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[11]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[12]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[13]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[1]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[2]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[3]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[4]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[5]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[6]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[7]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[8]\ : label is "yes";
  attribute KEEP of \composite.W2_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.W2_reg[9]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[0]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[10]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[11]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[12]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[13]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[1]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[2]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[3]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[4]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[5]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[6]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[7]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[8]\ : label is "yes";
  attribute KEEP of \composite.W3_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.W3_reg[9]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[0]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[0]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[10]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[10]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[11]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[11]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[12]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[12]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[13]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[13]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[14]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[14]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[15]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[15]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[16]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[16]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[17]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[17]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[18]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[18]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[19]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[19]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[1]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[1]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[20]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[20]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[21]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[21]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[22]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[22]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[23]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[23]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[24]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[24]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[25]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[25]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[26]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[26]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[27]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[27]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[2]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[2]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[3]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[3]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[4]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[4]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[5]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[5]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[6]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[6]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[7]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[7]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[8]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[8]\ : label is "yes";
  attribute KEEP of \composite.counter_reg[9]\ : label is "yes";
  attribute mark_debug_string of \composite.counter_reg[9]\ : label is "yes";
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ila_E : label is "ila_3,ila,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ila_E : label is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ila_E : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_N : label is "ila_3,ila,{}";
  attribute DowngradeIPIdentifiedWarnings of ila_N : label is "yes";
  attribute X_CORE_INFO of ila_N : label is "ila,Vivado 2025.1";
  attribute CHECK_LICENSE_TYPE of ila_W : label is "ila_3,ila,{}";
  attribute DowngradeIPIdentifiedWarnings of ila_W : label is "yes";
  attribute X_CORE_INFO of ila_W : label is "ila,Vivado 2025.1";
begin
\composite.E0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(84),
      Q => E0(0),
      R => '0'
    );
\composite.E0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(94),
      Q => E0(10),
      R => '0'
    );
\composite.E0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(95),
      Q => E0(11),
      R => '0'
    );
\composite.E0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(96),
      Q => E0(12),
      R => '0'
    );
\composite.E0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(97),
      Q => E0(13),
      R => '0'
    );
\composite.E0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(85),
      Q => E0(1),
      R => '0'
    );
\composite.E0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(86),
      Q => E0(2),
      R => '0'
    );
\composite.E0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(87),
      Q => E0(3),
      R => '0'
    );
\composite.E0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(88),
      Q => E0(4),
      R => '0'
    );
\composite.E0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(89),
      Q => E0(5),
      R => '0'
    );
\composite.E0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(90),
      Q => E0(6),
      R => '0'
    );
\composite.E0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(91),
      Q => E0(7),
      R => '0'
    );
\composite.E0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(92),
      Q => E0(8),
      R => '0'
    );
\composite.E0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(93),
      Q => E0(9),
      R => '0'
    );
\composite.E1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(98),
      Q => E1(0),
      R => '0'
    );
\composite.E1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(108),
      Q => E1(10),
      R => '0'
    );
\composite.E1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(109),
      Q => E1(11),
      R => '0'
    );
\composite.E1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(110),
      Q => E1(12),
      R => '0'
    );
\composite.E1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(111),
      Q => E1(13),
      R => '0'
    );
\composite.E1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(99),
      Q => E1(1),
      R => '0'
    );
\composite.E1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(100),
      Q => E1(2),
      R => '0'
    );
\composite.E1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(101),
      Q => E1(3),
      R => '0'
    );
\composite.E1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(102),
      Q => E1(4),
      R => '0'
    );
\composite.E1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(103),
      Q => E1(5),
      R => '0'
    );
\composite.E1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(104),
      Q => E1(6),
      R => '0'
    );
\composite.E1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(105),
      Q => E1(7),
      R => '0'
    );
\composite.E1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(106),
      Q => E1(8),
      R => '0'
    );
\composite.E1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(107),
      Q => E1(9),
      R => '0'
    );
\composite.E2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(112),
      Q => E2(0),
      R => '0'
    );
\composite.E2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(122),
      Q => E2(10),
      R => '0'
    );
\composite.E2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(123),
      Q => E2(11),
      R => '0'
    );
\composite.E2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(124),
      Q => E2(12),
      R => '0'
    );
\composite.E2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(125),
      Q => E2(13),
      R => '0'
    );
\composite.E2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(113),
      Q => E2(1),
      R => '0'
    );
\composite.E2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(114),
      Q => E2(2),
      R => '0'
    );
\composite.E2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(115),
      Q => E2(3),
      R => '0'
    );
\composite.E2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(116),
      Q => E2(4),
      R => '0'
    );
\composite.E2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(117),
      Q => E2(5),
      R => '0'
    );
\composite.E2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(118),
      Q => E2(6),
      R => '0'
    );
\composite.E2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(119),
      Q => E2(7),
      R => '0'
    );
\composite.E2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(120),
      Q => E2(8),
      R => '0'
    );
\composite.E2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(121),
      Q => E2(9),
      R => '0'
    );
\composite.E3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(126),
      Q => E3(0),
      R => '0'
    );
\composite.E3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(136),
      Q => E3(10),
      R => '0'
    );
\composite.E3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(137),
      Q => E3(11),
      R => '0'
    );
\composite.E3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(138),
      Q => E3(12),
      R => '0'
    );
\composite.E3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(139),
      Q => E3(13),
      R => '0'
    );
\composite.E3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(127),
      Q => E3(1),
      R => '0'
    );
\composite.E3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(128),
      Q => E3(2),
      R => '0'
    );
\composite.E3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(129),
      Q => E3(3),
      R => '0'
    );
\composite.E3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(130),
      Q => E3(4),
      R => '0'
    );
\composite.E3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(131),
      Q => E3(5),
      R => '0'
    );
\composite.E3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(132),
      Q => E3(6),
      R => '0'
    );
\composite.E3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(133),
      Q => E3(7),
      R => '0'
    );
\composite.E3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(134),
      Q => E3(8),
      R => '0'
    );
\composite.E3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(135),
      Q => E3(9),
      R => '0'
    );
\composite.N0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(28),
      Q => N0(0),
      R => '0'
    );
\composite.N0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(38),
      Q => N0(10),
      R => '0'
    );
\composite.N0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(39),
      Q => N0(11),
      R => '0'
    );
\composite.N0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(40),
      Q => N0(12),
      R => '0'
    );
\composite.N0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(41),
      Q => N0(13),
      R => '0'
    );
\composite.N0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(29),
      Q => N0(1),
      R => '0'
    );
\composite.N0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(30),
      Q => N0(2),
      R => '0'
    );
\composite.N0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(31),
      Q => N0(3),
      R => '0'
    );
\composite.N0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(32),
      Q => N0(4),
      R => '0'
    );
\composite.N0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(33),
      Q => N0(5),
      R => '0'
    );
\composite.N0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(34),
      Q => N0(6),
      R => '0'
    );
\composite.N0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(35),
      Q => N0(7),
      R => '0'
    );
\composite.N0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(36),
      Q => N0(8),
      R => '0'
    );
\composite.N0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(37),
      Q => N0(9),
      R => '0'
    );
\composite.N1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(42),
      Q => N1(0),
      R => '0'
    );
\composite.N1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(52),
      Q => N1(10),
      R => '0'
    );
\composite.N1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(53),
      Q => N1(11),
      R => '0'
    );
\composite.N1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(54),
      Q => N1(12),
      R => '0'
    );
\composite.N1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(55),
      Q => N1(13),
      R => '0'
    );
\composite.N1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(43),
      Q => N1(1),
      R => '0'
    );
\composite.N1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(44),
      Q => N1(2),
      R => '0'
    );
\composite.N1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(45),
      Q => N1(3),
      R => '0'
    );
\composite.N1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(46),
      Q => N1(4),
      R => '0'
    );
\composite.N1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(47),
      Q => N1(5),
      R => '0'
    );
\composite.N1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(48),
      Q => N1(6),
      R => '0'
    );
\composite.N1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(49),
      Q => N1(7),
      R => '0'
    );
\composite.N1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(50),
      Q => N1(8),
      R => '0'
    );
\composite.N1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(51),
      Q => N1(9),
      R => '0'
    );
\composite.N2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(56),
      Q => N2(0),
      R => '0'
    );
\composite.N2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(66),
      Q => N2(10),
      R => '0'
    );
\composite.N2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(67),
      Q => N2(11),
      R => '0'
    );
\composite.N2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(68),
      Q => N2(12),
      R => '0'
    );
\composite.N2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(69),
      Q => N2(13),
      R => '0'
    );
\composite.N2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(57),
      Q => N2(1),
      R => '0'
    );
\composite.N2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(58),
      Q => N2(2),
      R => '0'
    );
\composite.N2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(59),
      Q => N2(3),
      R => '0'
    );
\composite.N2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(60),
      Q => N2(4),
      R => '0'
    );
\composite.N2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(61),
      Q => N2(5),
      R => '0'
    );
\composite.N2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(62),
      Q => N2(6),
      R => '0'
    );
\composite.N2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(63),
      Q => N2(7),
      R => '0'
    );
\composite.N2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(64),
      Q => N2(8),
      R => '0'
    );
\composite.N2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(65),
      Q => N2(9),
      R => '0'
    );
\composite.N3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(70),
      Q => N3(0),
      R => '0'
    );
\composite.N3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(80),
      Q => N3(10),
      R => '0'
    );
\composite.N3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(81),
      Q => N3(11),
      R => '0'
    );
\composite.N3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(82),
      Q => N3(12),
      R => '0'
    );
\composite.N3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(83),
      Q => N3(13),
      R => '0'
    );
\composite.N3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(71),
      Q => N3(1),
      R => '0'
    );
\composite.N3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(72),
      Q => N3(2),
      R => '0'
    );
\composite.N3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(73),
      Q => N3(3),
      R => '0'
    );
\composite.N3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(74),
      Q => N3(4),
      R => '0'
    );
\composite.N3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(75),
      Q => N3(5),
      R => '0'
    );
\composite.N3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(76),
      Q => N3(6),
      R => '0'
    );
\composite.N3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(77),
      Q => N3(7),
      R => '0'
    );
\composite.N3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(78),
      Q => N3(8),
      R => '0'
    );
\composite.N3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(79),
      Q => N3(9),
      R => '0'
    );
\composite.W0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(140),
      Q => W0(0),
      R => '0'
    );
\composite.W0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(150),
      Q => W0(10),
      R => '0'
    );
\composite.W0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(151),
      Q => W0(11),
      R => '0'
    );
\composite.W0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(152),
      Q => W0(12),
      R => '0'
    );
\composite.W0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(153),
      Q => W0(13),
      R => '0'
    );
\composite.W0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(141),
      Q => W0(1),
      R => '0'
    );
\composite.W0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(142),
      Q => W0(2),
      R => '0'
    );
\composite.W0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(143),
      Q => W0(3),
      R => '0'
    );
\composite.W0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(144),
      Q => W0(4),
      R => '0'
    );
\composite.W0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(145),
      Q => W0(5),
      R => '0'
    );
\composite.W0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(146),
      Q => W0(6),
      R => '0'
    );
\composite.W0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(147),
      Q => W0(7),
      R => '0'
    );
\composite.W0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(148),
      Q => W0(8),
      R => '0'
    );
\composite.W0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(149),
      Q => W0(9),
      R => '0'
    );
\composite.W1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(154),
      Q => W1(0),
      R => '0'
    );
\composite.W1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(164),
      Q => W1(10),
      R => '0'
    );
\composite.W1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(165),
      Q => W1(11),
      R => '0'
    );
\composite.W1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(166),
      Q => W1(12),
      R => '0'
    );
\composite.W1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(167),
      Q => W1(13),
      R => '0'
    );
\composite.W1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(155),
      Q => W1(1),
      R => '0'
    );
\composite.W1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(156),
      Q => W1(2),
      R => '0'
    );
\composite.W1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(157),
      Q => W1(3),
      R => '0'
    );
\composite.W1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(158),
      Q => W1(4),
      R => '0'
    );
\composite.W1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(159),
      Q => W1(5),
      R => '0'
    );
\composite.W1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(160),
      Q => W1(6),
      R => '0'
    );
\composite.W1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(161),
      Q => W1(7),
      R => '0'
    );
\composite.W1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(162),
      Q => W1(8),
      R => '0'
    );
\composite.W1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(163),
      Q => W1(9),
      R => '0'
    );
\composite.W2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(168),
      Q => W2(0),
      R => '0'
    );
\composite.W2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(178),
      Q => W2(10),
      R => '0'
    );
\composite.W2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(179),
      Q => W2(11),
      R => '0'
    );
\composite.W2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(180),
      Q => W2(12),
      R => '0'
    );
\composite.W2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(181),
      Q => W2(13),
      R => '0'
    );
\composite.W2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(169),
      Q => W2(1),
      R => '0'
    );
\composite.W2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(170),
      Q => W2(2),
      R => '0'
    );
\composite.W2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(171),
      Q => W2(3),
      R => '0'
    );
\composite.W2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(172),
      Q => W2(4),
      R => '0'
    );
\composite.W2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(173),
      Q => W2(5),
      R => '0'
    );
\composite.W2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(174),
      Q => W2(6),
      R => '0'
    );
\composite.W2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(175),
      Q => W2(7),
      R => '0'
    );
\composite.W2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(176),
      Q => W2(8),
      R => '0'
    );
\composite.W2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(177),
      Q => W2(9),
      R => '0'
    );
\composite.W3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(182),
      Q => W3(0),
      R => '0'
    );
\composite.W3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(192),
      Q => W3(10),
      R => '0'
    );
\composite.W3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(193),
      Q => W3(11),
      R => '0'
    );
\composite.W3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(194),
      Q => W3(12),
      R => '0'
    );
\composite.W3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(195),
      Q => W3(13),
      R => '0'
    );
\composite.W3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(183),
      Q => W3(1),
      R => '0'
    );
\composite.W3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(184),
      Q => W3(2),
      R => '0'
    );
\composite.W3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(185),
      Q => W3(3),
      R => '0'
    );
\composite.W3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(186),
      Q => W3(4),
      R => '0'
    );
\composite.W3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(187),
      Q => W3(5),
      R => '0'
    );
\composite.W3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(188),
      Q => W3(6),
      R => '0'
    );
\composite.W3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(189),
      Q => W3(7),
      R => '0'
    );
\composite.W3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(190),
      Q => W3(8),
      R => '0'
    );
\composite.W3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(191),
      Q => W3(9),
      R => '0'
    );
\composite.counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(0),
      Q => counter(0),
      R => '0'
    );
\composite.counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(10),
      Q => counter(10),
      R => '0'
    );
\composite.counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(11),
      Q => counter(11),
      R => '0'
    );
\composite.counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(12),
      Q => counter(12),
      R => '0'
    );
\composite.counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(13),
      Q => counter(13),
      R => '0'
    );
\composite.counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(14),
      Q => counter(14),
      R => '0'
    );
\composite.counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(15),
      Q => counter(15),
      R => '0'
    );
\composite.counter_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(16),
      Q => counter(16),
      R => '0'
    );
\composite.counter_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(17),
      Q => counter(17),
      R => '0'
    );
\composite.counter_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(18),
      Q => counter(18),
      R => '0'
    );
\composite.counter_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(19),
      Q => counter(19),
      R => '0'
    );
\composite.counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(1),
      Q => counter(1),
      R => '0'
    );
\composite.counter_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(20),
      Q => counter(20),
      R => '0'
    );
\composite.counter_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(21),
      Q => counter(21),
      R => '0'
    );
\composite.counter_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(22),
      Q => counter(22),
      R => '0'
    );
\composite.counter_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(23),
      Q => counter(23),
      R => '0'
    );
\composite.counter_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(24),
      Q => counter(24),
      R => '0'
    );
\composite.counter_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(25),
      Q => counter(25),
      R => '0'
    );
\composite.counter_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(26),
      Q => counter(26),
      R => '0'
    );
\composite.counter_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(27),
      Q => counter(27),
      R => '0'
    );
\composite.counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(2),
      Q => counter(2),
      R => '0'
    );
\composite.counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(3),
      Q => counter(3),
      R => '0'
    );
\composite.counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(4),
      Q => counter(4),
      R => '0'
    );
\composite.counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(5),
      Q => counter(5),
      R => '0'
    );
\composite.counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(6),
      Q => counter(6),
      R => '0'
    );
\composite.counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(7),
      Q => counter(7),
      R => '0'
    );
\composite.counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(8),
      Q => counter(8),
      R => '0'
    );
\composite.counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => active,
      D => fifo(9),
      Q => counter(9),
      R => '0'
    );
ila_E: component ps_comp_low_0_0_ila_3
     port map (
      clk => clk,
      probe0(13 downto 0) => E0(13 downto 0),
      probe1(13 downto 0) => E1(13 downto 0),
      probe2(13 downto 0) => E2(13 downto 0),
      probe3(13 downto 0) => E3(13 downto 0),
      probe4(0) => active,
      probe5(27 downto 0) => counter(27 downto 0)
    );
ila_N: component ps_comp_low_0_0_ila_3
     port map (
      clk => clk,
      probe0(13 downto 0) => N0(13 downto 0),
      probe1(13 downto 0) => N1(13 downto 0),
      probe2(13 downto 0) => N2(13 downto 0),
      probe3(13 downto 0) => N3(13 downto 0),
      probe4(0) => active,
      probe5(27 downto 0) => counter(27 downto 0)
    );
ila_W: component ps_comp_low_0_0_ila_3_HD1
     port map (
      clk => clk,
      probe0(13 downto 0) => W0(13 downto 0),
      probe1(13 downto 0) => W1(13 downto 0),
      probe2(13 downto 0) => W2(13 downto 0),
      probe3(13 downto 0) => W3(13 downto 0),
      probe4(0) => active,
      probe5(27 downto 0) => counter(27 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity ps_comp_low_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    active : in STD_LOGIC;
    fifo : in STD_LOGIC_VECTOR ( 195 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of ps_comp_low_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of ps_comp_low_0_0 : entity is "ps_comp_low_0_0,comp_low,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of ps_comp_low_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of ps_comp_low_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of ps_comp_low_0_0 : entity is "comp_low,Vivado 2025.1";
end ps_comp_low_0_0;

architecture STRUCTURE of ps_comp_low_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 500000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN ps_mts_0_0_comp0_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_MODE of reset : signal is "slave";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.ps_comp_low_0_0_comp_low
     port map (
      active => active,
      clk => clk,
      fifo(195 downto 0) => fifo(195 downto 0),
      reset => '0'
    );
end STRUCTURE;
