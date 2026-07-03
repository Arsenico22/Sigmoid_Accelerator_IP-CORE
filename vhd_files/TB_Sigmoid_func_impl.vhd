-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
-- Date        : Mon May 11 17:07:46 2026
-- Host        : PHANTOM running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               D:/Documenti/Unical/TESI/Progetto_Sigmoide_HW/Optimized/Progetto_V2/Progetto_Baseline_V1.sim/sim_1/impl/func/xsim/TB_Sigmoid_func_impl.vhd
-- Design      : TOP_Design
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tsbv484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Activation_ROM is
  port (
    valid_out : out STD_LOGIC;
    \data_out_reg[11]_0\ : out STD_LOGIC_VECTOR ( 11 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    clk_IBUF_BUFG : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Activation_ROM;

architecture STRUCTURE of Activation_ROM is
  signal addr_reg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal data_pipe : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \data_pipe[0]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[0]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[0]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[0]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[10]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe[10]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe[11]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe[11]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe[1]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[1]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[1]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[1]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[2]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[2]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[2]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[2]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[3]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[3]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[3]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[3]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[4]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[4]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[4]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[4]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[5]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[5]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[5]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[5]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[6]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[6]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[6]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[6]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[7]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe[7]_i_5_n_0\ : STD_LOGIC;
  signal \data_pipe[7]_i_6_n_0\ : STD_LOGIC;
  signal \data_pipe[7]_i_7_n_0\ : STD_LOGIC;
  signal \data_pipe[8]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe[8]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe[8]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe[9]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe[9]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe[9]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe[9]_i_4_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \data_pipe_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal v_pipe : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \data_pipe[1]_i_7\ : label is 144;
  attribute RAM_STYLE : string;
  attribute RAM_STYLE of \data_pipe_reg[0]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[10]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[11]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[1]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[2]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[3]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[4]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[5]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[6]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[7]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[8]\ : label is "distributed";
  attribute RAM_STYLE of \data_pipe_reg[9]\ : label is "distributed";
begin
\addr_reg_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(0),
      Q => addr_reg(0),
      R => '0'
    );
\addr_reg_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(1),
      Q => addr_reg(1),
      R => '0'
    );
\addr_reg_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(2),
      Q => addr_reg(2),
      R => '0'
    );
\addr_reg_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(3),
      Q => addr_reg(3),
      R => '0'
    );
\addr_reg_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(4),
      Q => addr_reg(4),
      R => '0'
    );
\addr_reg_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(5),
      Q => addr_reg(5),
      R => '0'
    );
\addr_reg_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(6),
      Q => addr_reg(6),
      R => '0'
    );
\addr_reg_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => Q(7),
      Q => addr_reg(7),
      R => '0'
    );
\data_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(0),
      Q => \data_out_reg[11]_0\(0),
      R => '0'
    );
\data_out_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(10),
      Q => \data_out_reg[11]_0\(10),
      R => '0'
    );
\data_out_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(11),
      Q => \data_out_reg[11]_0\(11),
      R => '0'
    );
\data_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(1),
      Q => \data_out_reg[11]_0\(1),
      R => '0'
    );
\data_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(2),
      Q => \data_out_reg[11]_0\(2),
      R => '0'
    );
\data_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(3),
      Q => \data_out_reg[11]_0\(3),
      R => '0'
    );
\data_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(4),
      Q => \data_out_reg[11]_0\(4),
      R => '0'
    );
\data_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(5),
      Q => \data_out_reg[11]_0\(5),
      R => '0'
    );
\data_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(6),
      Q => \data_out_reg[11]_0\(6),
      R => '0'
    );
\data_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(7),
      Q => \data_out_reg[11]_0\(7),
      R => '0'
    );
\data_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(8),
      Q => \data_out_reg[11]_0\(8),
      R => '0'
    );
\data_out_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => data_pipe(9),
      Q => \data_out_reg[11]_0\(9),
      R => '0'
    );
\data_pipe[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D59FFFE00000000"
    )
        port map (
      I0 => addr_reg(2),
      I1 => addr_reg(3),
      I2 => addr_reg(1),
      I3 => addr_reg(0),
      I4 => addr_reg(4),
      I5 => addr_reg(5),
      O => \data_pipe[0]_i_4_n_0\
    );
\data_pipe[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A69F53FFC9BF9DE6"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(0),
      I3 => addr_reg(2),
      I4 => addr_reg(1),
      I5 => addr_reg(3),
      O => \data_pipe[0]_i_5_n_0\
    );
\data_pipe[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0111B6F213135E1B"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(3),
      I5 => addr_reg(1),
      O => \data_pipe[0]_i_6_n_0\
    );
\data_pipe[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7CCCCCCCFFFFFFFF"
    )
        port map (
      I0 => addr_reg(0),
      I1 => addr_reg(5),
      I2 => addr_reg(2),
      I3 => addr_reg(1),
      I4 => addr_reg(3),
      I5 => addr_reg(4),
      O => \data_pipe[0]_i_7_n_0\
    );
\data_pipe[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF00000000"
    )
        port map (
      I0 => addr_reg(6),
      I1 => addr_reg(4),
      I2 => \data_pipe[10]_i_2_n_0\,
      I3 => addr_reg(2),
      I4 => addr_reg(5),
      I5 => addr_reg(7),
      O => \data_pipe[10]_i_1_n_0\
    );
\data_pipe[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => addr_reg(1),
      I1 => addr_reg(3),
      I2 => addr_reg(0),
      O => \data_pipe[10]_i_2_n_0\
    );
\data_pipe[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => addr_reg(6),
      I1 => addr_reg(4),
      I2 => \data_pipe[11]_i_2_n_0\,
      I3 => addr_reg(2),
      I4 => addr_reg(5),
      I5 => addr_reg(7),
      O => \data_pipe[11]_i_1_n_0\
    );
\data_pipe[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => addr_reg(3),
      I1 => addr_reg(1),
      I2 => addr_reg(0),
      O => \data_pipe[11]_i_2_n_0\
    );
\data_pipe[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"942CAEEABF1F1F94"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(1),
      I5 => addr_reg(3),
      O => \data_pipe[1]_i_4_n_0\
    );
\data_pipe[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003F255048F68EF1"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(3),
      I5 => addr_reg(1),
      O => \data_pipe[1]_i_5_n_0\
    );
\data_pipe[1]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"812A93754CB72AC5"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(3),
      I5 => addr_reg(1),
      O => \data_pipe[1]_i_6_n_0\
    );
\data_pipe[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71753D280406295B"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(3),
      I5 => addr_reg(1),
      O => \data_pipe[1]_i_7_n_0\
    );
\data_pipe[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5E807FF502D500AA"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(0),
      I2 => addr_reg(1),
      I3 => addr_reg(2),
      I4 => addr_reg(4),
      I5 => addr_reg(3),
      O => \data_pipe[2]_i_4_n_0\
    );
\data_pipe[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC33FB4D5F850BFA"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(1),
      I5 => addr_reg(3),
      O => \data_pipe[2]_i_5_n_0\
    );
\data_pipe[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E0154B2B2CDC719"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(1),
      I4 => addr_reg(0),
      I5 => addr_reg(3),
      O => \data_pipe[2]_i_6_n_0\
    );
\data_pipe[2]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6673663100DD05CE"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(0),
      I3 => addr_reg(2),
      I4 => addr_reg(1),
      I5 => addr_reg(3),
      O => \data_pipe[2]_i_7_n_0\
    );
\data_pipe[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"70E8EAA67DD5D5DE"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(1),
      I5 => addr_reg(3),
      O => \data_pipe[3]_i_4_n_0\
    );
\data_pipe[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5A934CCB92CD97E"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(1),
      I5 => addr_reg(3),
      O => \data_pipe[3]_i_5_n_0\
    );
\data_pipe[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F6E2021FCD9B64E0"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(1),
      I3 => addr_reg(2),
      I4 => addr_reg(0),
      I5 => addr_reg(3),
      O => \data_pipe[3]_i_6_n_0\
    );
\data_pipe[3]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B12C707B606B426"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(3),
      I4 => addr_reg(0),
      I5 => addr_reg(1),
      O => \data_pipe[3]_i_7_n_0\
    );
\data_pipe[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FD5CD7571993888A"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(2),
      I2 => addr_reg(1),
      I3 => addr_reg(0),
      I4 => addr_reg(4),
      I5 => addr_reg(3),
      O => \data_pipe[4]_i_4_n_0\
    );
\data_pipe[4]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8438E60BD73BB65"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(3),
      I5 => addr_reg(1),
      O => \data_pipe[4]_i_5_n_0\
    );
\data_pipe[4]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"541B7DD51F5E2228"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(2),
      I2 => addr_reg(1),
      I3 => addr_reg(3),
      I4 => addr_reg(4),
      I5 => addr_reg(0),
      O => \data_pipe[4]_i_6_n_0\
    );
\data_pipe[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4EFACAFAB4B1B1C3"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(1),
      I4 => addr_reg(0),
      I5 => addr_reg(3),
      O => \data_pipe[4]_i_7_n_0\
    );
\data_pipe[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99113BBB1133FFF4"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(0),
      I3 => addr_reg(1),
      I4 => addr_reg(3),
      I5 => addr_reg(2),
      O => \data_pipe[5]_i_4_n_0\
    );
\data_pipe[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCBF98F803416307"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(3),
      I5 => addr_reg(1),
      O => \data_pipe[5]_i_5_n_0\
    );
\data_pipe[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"227255DF6D8C8AA2"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(2),
      I2 => addr_reg(0),
      I3 => addr_reg(3),
      I4 => addr_reg(4),
      I5 => addr_reg(1),
      O => \data_pipe[5]_i_6_n_0\
    );
\data_pipe[5]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1237223612362274"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(3),
      I4 => addr_reg(1),
      I5 => addr_reg(0),
      O => \data_pipe[5]_i_7_n_0\
    );
\data_pipe[6]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF8F000030F0F0"
    )
        port map (
      I0 => addr_reg(0),
      I1 => addr_reg(1),
      I2 => addr_reg(5),
      I3 => addr_reg(2),
      I4 => addr_reg(3),
      I5 => addr_reg(4),
      O => \data_pipe[6]_i_4_n_0\
    );
\data_pipe[6]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B7B4C2A2B4F4A1A5"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(4),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(3),
      I5 => addr_reg(1),
      O => \data_pipe[6]_i_5_n_0\
    );
\data_pipe[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4D6C7575A0B0A28A"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(1),
      I2 => addr_reg(3),
      I3 => addr_reg(0),
      I4 => addr_reg(4),
      I5 => addr_reg(2),
      O => \data_pipe[6]_i_6_n_0\
    );
\data_pipe[6]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAADD55ABFF0000"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(1),
      I2 => addr_reg(0),
      I3 => addr_reg(2),
      I4 => addr_reg(4),
      I5 => addr_reg(3),
      O => \data_pipe[6]_i_7_n_0\
    );
\data_pipe[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEAA0000"
    )
        port map (
      I0 => addr_reg(4),
      I1 => addr_reg(2),
      I2 => addr_reg(1),
      I3 => addr_reg(3),
      I4 => addr_reg(5),
      O => \data_pipe[7]_i_4_n_0\
    );
\data_pipe[7]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AABA5850FAFA5045"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(0),
      I2 => addr_reg(4),
      I3 => addr_reg(1),
      I4 => addr_reg(3),
      I5 => addr_reg(2),
      O => \data_pipe[7]_i_5_n_0\
    );
\data_pipe[7]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"777EDD55AAAA0222"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(2),
      I2 => addr_reg(0),
      I3 => addr_reg(1),
      I4 => addr_reg(4),
      I5 => addr_reg(3),
      O => \data_pipe[7]_i_6_n_0\
    );
\data_pipe[7]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EFEFEEEAAAAAAAA"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(3),
      I2 => addr_reg(2),
      I3 => addr_reg(0),
      I4 => addr_reg(1),
      I5 => addr_reg(4),
      O => \data_pipe[7]_i_7_n_0\
    );
\data_pipe[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \data_pipe[9]_i_2_n_0\,
      I1 => \data_pipe[8]_i_2_n_0\,
      I2 => addr_reg(7),
      I3 => \data_pipe[8]_i_3_n_0\,
      I4 => addr_reg(6),
      O => \data_pipe[8]_i_1_n_0\
    );
\data_pipe[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A800FFFF00150000"
    )
        port map (
      I0 => addr_reg(3),
      I1 => addr_reg(0),
      I2 => addr_reg(1),
      I3 => addr_reg(2),
      I4 => addr_reg(5),
      I5 => addr_reg(4),
      O => \data_pipe[8]_i_2_n_0\
    );
\data_pipe[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A5F5B5F5F5F5F5F0"
    )
        port map (
      I0 => addr_reg(5),
      I1 => addr_reg(0),
      I2 => addr_reg(4),
      I3 => addr_reg(3),
      I4 => addr_reg(1),
      I5 => addr_reg(2),
      O => \data_pipe[8]_i_3_n_0\
    );
\data_pipe[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0C0C0"
    )
        port map (
      I0 => \data_pipe[9]_i_2_n_0\,
      I1 => \data_pipe[9]_i_3_n_0\,
      I2 => addr_reg(7),
      I3 => \data_pipe[9]_i_4_n_0\,
      I4 => addr_reg(6),
      O => \data_pipe[9]_i_1_n_0\
    );
\data_pipe[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => addr_reg(4),
      I1 => addr_reg(0),
      I2 => addr_reg(3),
      I3 => addr_reg(1),
      I4 => addr_reg(2),
      I5 => addr_reg(5),
      O => \data_pipe[9]_i_2_n_0\
    );
\data_pipe[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEEE00000000"
    )
        port map (
      I0 => addr_reg(4),
      I1 => addr_reg(3),
      I2 => addr_reg(0),
      I3 => addr_reg(1),
      I4 => addr_reg(2),
      I5 => addr_reg(5),
      O => \data_pipe[9]_i_3_n_0\
    );
\data_pipe[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF88800000"
    )
        port map (
      I0 => addr_reg(4),
      I1 => addr_reg(3),
      I2 => addr_reg(1),
      I3 => addr_reg(0),
      I4 => addr_reg(2),
      I5 => addr_reg(5),
      O => \data_pipe[9]_i_4_n_0\
    );
\data_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[0]_i_1_n_0\,
      Q => data_pipe(0),
      R => '0'
    );
\data_pipe_reg[0]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[0]_i_2_n_0\,
      I1 => \data_pipe_reg[0]_i_3_n_0\,
      O => \data_pipe_reg[0]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[0]_i_4_n_0\,
      I1 => \data_pipe[0]_i_5_n_0\,
      O => \data_pipe_reg[0]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[0]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[0]_i_6_n_0\,
      I1 => \data_pipe[0]_i_7_n_0\,
      O => \data_pipe_reg[0]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe[10]_i_1_n_0\,
      Q => data_pipe(10),
      R => '0'
    );
\data_pipe_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe[11]_i_1_n_0\,
      Q => data_pipe(11),
      R => '0'
    );
\data_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[1]_i_1_n_0\,
      Q => data_pipe(1),
      R => '0'
    );
\data_pipe_reg[1]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[1]_i_2_n_0\,
      I1 => \data_pipe_reg[1]_i_3_n_0\,
      O => \data_pipe_reg[1]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[1]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[1]_i_4_n_0\,
      I1 => \data_pipe[1]_i_5_n_0\,
      O => \data_pipe_reg[1]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[1]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[1]_i_6_n_0\,
      I1 => \data_pipe[1]_i_7_n_0\,
      O => \data_pipe_reg[1]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[2]_i_1_n_0\,
      Q => data_pipe(2),
      R => '0'
    );
\data_pipe_reg[2]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[2]_i_2_n_0\,
      I1 => \data_pipe_reg[2]_i_3_n_0\,
      O => \data_pipe_reg[2]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[2]_i_4_n_0\,
      I1 => \data_pipe[2]_i_5_n_0\,
      O => \data_pipe_reg[2]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[2]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[2]_i_6_n_0\,
      I1 => \data_pipe[2]_i_7_n_0\,
      O => \data_pipe_reg[2]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[3]_i_1_n_0\,
      Q => data_pipe(3),
      R => '0'
    );
\data_pipe_reg[3]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[3]_i_2_n_0\,
      I1 => \data_pipe_reg[3]_i_3_n_0\,
      O => \data_pipe_reg[3]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[3]_i_4_n_0\,
      I1 => \data_pipe[3]_i_5_n_0\,
      O => \data_pipe_reg[3]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[3]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[3]_i_6_n_0\,
      I1 => \data_pipe[3]_i_7_n_0\,
      O => \data_pipe_reg[3]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[4]_i_1_n_0\,
      Q => data_pipe(4),
      R => '0'
    );
\data_pipe_reg[4]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[4]_i_2_n_0\,
      I1 => \data_pipe_reg[4]_i_3_n_0\,
      O => \data_pipe_reg[4]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[4]_i_4_n_0\,
      I1 => \data_pipe[4]_i_5_n_0\,
      O => \data_pipe_reg[4]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[4]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[4]_i_6_n_0\,
      I1 => \data_pipe[4]_i_7_n_0\,
      O => \data_pipe_reg[4]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[5]_i_1_n_0\,
      Q => data_pipe(5),
      R => '0'
    );
\data_pipe_reg[5]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[5]_i_2_n_0\,
      I1 => \data_pipe_reg[5]_i_3_n_0\,
      O => \data_pipe_reg[5]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[5]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[5]_i_4_n_0\,
      I1 => \data_pipe[5]_i_5_n_0\,
      O => \data_pipe_reg[5]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[5]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[5]_i_6_n_0\,
      I1 => \data_pipe[5]_i_7_n_0\,
      O => \data_pipe_reg[5]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[6]_i_1_n_0\,
      Q => data_pipe(6),
      R => '0'
    );
\data_pipe_reg[6]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[6]_i_2_n_0\,
      I1 => \data_pipe_reg[6]_i_3_n_0\,
      O => \data_pipe_reg[6]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[6]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[6]_i_4_n_0\,
      I1 => \data_pipe[6]_i_5_n_0\,
      O => \data_pipe_reg[6]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[6]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[6]_i_6_n_0\,
      I1 => \data_pipe[6]_i_7_n_0\,
      O => \data_pipe_reg[6]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe_reg[7]_i_1_n_0\,
      Q => data_pipe(7),
      R => '0'
    );
\data_pipe_reg[7]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \data_pipe_reg[7]_i_2_n_0\,
      I1 => \data_pipe_reg[7]_i_3_n_0\,
      O => \data_pipe_reg[7]_i_1_n_0\,
      S => addr_reg(7)
    );
\data_pipe_reg[7]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[7]_i_4_n_0\,
      I1 => \data_pipe[7]_i_5_n_0\,
      O => \data_pipe_reg[7]_i_2_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[7]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \data_pipe[7]_i_6_n_0\,
      I1 => \data_pipe[7]_i_7_n_0\,
      O => \data_pipe_reg[7]_i_3_n_0\,
      S => addr_reg(6)
    );
\data_pipe_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe[8]_i_1_n_0\,
      Q => data_pipe(8),
      R => '0'
    );
\data_pipe_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => \data_pipe[9]_i_1_n_0\,
      Q => data_pipe(9),
      R => '0'
    );
\v_pipe_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => D(0),
      Q => v_pipe(0),
      R => SR(0)
    );
\v_pipe_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => v_pipe(0),
      Q => v_pipe(1),
      R => SR(0)
    );
valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => v_pipe(1),
      Q => valid_out,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Pre_Processing is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    \addr_out_reg[7]_0\ : out STD_LOGIC_VECTOR ( 7 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    valid_out_reg_0 : in STD_LOGIC;
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
end Pre_Processing;

architecture STRUCTURE of Pre_Processing is
  signal p_0_in : STD_LOGIC_VECTOR ( 7 to 7 );
begin
\addr_out[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(7),
      O => p_0_in(7)
    );
\addr_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => \addr_out_reg[7]_0\(0),
      R => SR(0)
    );
\addr_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q(1),
      Q => \addr_out_reg[7]_0\(1),
      R => SR(0)
    );
\addr_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q(2),
      Q => \addr_out_reg[7]_0\(2),
      R => SR(0)
    );
\addr_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q(3),
      Q => \addr_out_reg[7]_0\(3),
      R => SR(0)
    );
\addr_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q(4),
      Q => \addr_out_reg[7]_0\(4),
      R => SR(0)
    );
\addr_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q(5),
      Q => \addr_out_reg[7]_0\(5),
      R => SR(0)
    );
\addr_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => Q(6),
      Q => \addr_out_reg[7]_0\(6),
      R => SR(0)
    );
\addr_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => p_0_in(7),
      Q => \addr_out_reg[7]_0\(7),
      R => SR(0)
    );
valid_out_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => valid_out_reg_0,
      Q => D(0),
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity TOP_Design is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    valid_in : in STD_LOGIC;
    input_data : in STD_LOGIC_VECTOR ( 15 downto 0 );
    valid_out : out STD_LOGIC;
    output_data : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of TOP_Design : entity is true;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_AIE_NETLIST_VIEW\ of TOP_Design : entity is std.standard.true;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ : boolean;
  attribute \DesignAttr:ENABLE_NOC_NETLIST_VIEW\ of TOP_Design : entity is std.standard.true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of TOP_Design : entity is "c80e9356";
end TOP_Design;

architecture STRUCTURE of TOP_Design is
  signal PP_n_0 : STD_LOGIC;
  signal addr_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal clk_IBUF : STD_LOGIC;
  signal clk_IBUF_BUFG : STD_LOGIC;
  signal input_data_IBUF : STD_LOGIC_VECTOR ( 13 downto 6 );
  signal output_data_OBUF : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal reg_input_data : STD_LOGIC_VECTOR ( 13 downto 6 );
  signal reg_valid_in_reg_n_0 : STD_LOGIC;
  signal reset_IBUF : STD_LOGIC;
  signal valid_in_IBUF : STD_LOGIC;
  signal valid_out_OBUF : STD_LOGIC;
begin
MEM: entity work.Activation_ROM
     port map (
      D(0) => PP_n_0,
      Q(7 downto 0) => addr_out(7 downto 0),
      SR(0) => reset_IBUF,
      clk_IBUF_BUFG => clk_IBUF_BUFG,
      \data_out_reg[11]_0\(11 downto 0) => output_data_OBUF(11 downto 0),
      valid_out => valid_out_OBUF
    );
PP: entity work.Pre_Processing
     port map (
      D(0) => PP_n_0,
      Q(7 downto 0) => reg_input_data(13 downto 6),
      SR(0) => reset_IBUF,
      \addr_out_reg[7]_0\(7 downto 0) => addr_out(7 downto 0),
      clk => clk_IBUF_BUFG,
      valid_out_reg_0 => reg_valid_in_reg_n_0
    );
clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => clk_IBUF,
      O => clk_IBUF_BUFG
    );
clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => clk,
      O => clk_IBUF
    );
\input_data_IBUF[10]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(10),
      O => input_data_IBUF(10)
    );
\input_data_IBUF[11]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(11),
      O => input_data_IBUF(11)
    );
\input_data_IBUF[12]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(12),
      O => input_data_IBUF(12)
    );
\input_data_IBUF[13]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(13),
      O => input_data_IBUF(13)
    );
\input_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(6),
      O => input_data_IBUF(6)
    );
\input_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(7),
      O => input_data_IBUF(7)
    );
\input_data_IBUF[8]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(8),
      O => input_data_IBUF(8)
    );
\input_data_IBUF[9]_inst\: unisim.vcomponents.IBUF
     port map (
      I => input_data(9),
      O => input_data_IBUF(9)
    );
\output_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(0),
      O => output_data(0)
    );
\output_data_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(10),
      O => output_data(10)
    );
\output_data_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(11),
      O => output_data(11)
    );
\output_data_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output_data(12)
    );
\output_data_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output_data(13)
    );
\output_data_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output_data(14)
    );
\output_data_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => output_data(15)
    );
\output_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(1),
      O => output_data(1)
    );
\output_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(2),
      O => output_data(2)
    );
\output_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(3),
      O => output_data(3)
    );
\output_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(4),
      O => output_data(4)
    );
\output_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(5),
      O => output_data(5)
    );
\output_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(6),
      O => output_data(6)
    );
\output_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(7),
      O => output_data(7)
    );
\output_data_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(8),
      O => output_data(8)
    );
\output_data_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => output_data_OBUF(9),
      O => output_data(9)
    );
\reg_input_data_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(10),
      Q => reg_input_data(10),
      R => reset_IBUF
    );
\reg_input_data_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(11),
      Q => reg_input_data(11),
      R => reset_IBUF
    );
\reg_input_data_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(12),
      Q => reg_input_data(12),
      R => reset_IBUF
    );
\reg_input_data_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(13),
      Q => reg_input_data(13),
      R => reset_IBUF
    );
\reg_input_data_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(6),
      Q => reg_input_data(6),
      R => reset_IBUF
    );
\reg_input_data_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(7),
      Q => reg_input_data(7),
      R => reset_IBUF
    );
\reg_input_data_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(8),
      Q => reg_input_data(8),
      R => reset_IBUF
    );
\reg_input_data_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => input_data_IBUF(9),
      Q => reg_input_data(9),
      R => reset_IBUF
    );
reg_valid_in_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_IBUF_BUFG,
      CE => '1',
      D => valid_in_IBUF,
      Q => reg_valid_in_reg_n_0,
      R => reset_IBUF
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
valid_in_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => valid_in,
      O => valid_in_IBUF
    );
valid_out_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => valid_out_OBUF,
      O => valid_out
    );
end STRUCTURE;
