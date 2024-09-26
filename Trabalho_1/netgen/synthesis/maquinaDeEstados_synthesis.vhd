--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: maquinaDeEstados_synthesis.vhd
-- /___/   /\     Timestamp: Tue Sep 24 14:42:03 2024
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm maquinaDeEstados -w -dir netgen/synthesis -ofmt vhdl -sim maquinaDeEstados.ngc maquinaDeEstados_synthesis.vhd 
-- Device	: xc3s700an-4-fgg484
-- Input file	: maquinaDeEstados.ngc
-- Output file	: /home/sd/Downloads/Trabalho_1/netgen/synthesis/maquinaDeEstados_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: maquinaDeEstados
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity maquinaDeEstados is
  port (
    CLK : in STD_LOGIC := 'X'; 
    rst : in STD_LOGIC := 'X'; 
    ButtonE : in STD_LOGIC := 'X'; 
    ButtonN : in STD_LOGIC := 'X'; 
    ButtonS : in STD_LOGIC := 'X'; 
    Outesquerda : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    OutDireita : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    input_vector : in STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end maquinaDeEstados;

architecture Structure of maquinaDeEstados is
  signal A_and0000 : STD_LOGIC; 
  signal B_and0000 : STD_LOGIC; 
  signal ButtonE_IBUF_11 : STD_LOGIC; 
  signal ButtonN_IBUF_13 : STD_LOGIC; 
  signal ButtonS_IBUF_15 : STD_LOGIC; 
  signal CLK_BUFGP_17 : STD_LOGIC; 
  signal DIFF_DIFF_COUT_FA1 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_10_rt_103 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_11_rt_105 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_12_rt_107 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_13_rt_109 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_14_rt_111 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_15_rt_113 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_16_rt_115 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_17_rt_117 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_18_rt_119 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_19_rt_121 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_1_rt_123 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_20_rt_125 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_21_rt_127 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_22_rt_129 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_23_rt_131 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_24_rt_133 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_25_rt_135 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_2_rt_137 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_3_rt_139 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_4_rt_141 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_5_rt_143 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_6_rt_145 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_7_rt_147 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_8_rt_149 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_cy_9_rt_151 : STD_LOGIC; 
  signal Madd_Contador_addsub0000_xor_26_rt_153 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_cy_0_rt_155 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_cy_4_rt_160 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_cy_7_rt_164 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_cy_9_rt_167 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_lut_1_Q_168 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_lut_2_Q_169 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_lut_3_Q : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_lut_5_Q : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_lut_6_Q_172 : STD_LOGIC; 
  signal Mcompar_verifica_cmp_lt0000_lut_8_Q : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N101 : STD_LOGIC; 
  signal N103 : STD_LOGIC; 
  signal N105 : STD_LOGIC; 
  signal N107 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N12 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N137 : STD_LOGIC; 
  signal N139 : STD_LOGIC; 
  signal N141 : STD_LOGIC; 
  signal N142 : STD_LOGIC; 
  signal N144 : STD_LOGIC; 
  signal N145 : STD_LOGIC; 
  signal N147 : STD_LOGIC; 
  signal N151 : STD_LOGIC; 
  signal N152 : STD_LOGIC; 
  signal N154 : STD_LOGIC; 
  signal N155 : STD_LOGIC; 
  signal N157 : STD_LOGIC; 
  signal N158 : STD_LOGIC; 
  signal N160 : STD_LOGIC; 
  signal N165 : STD_LOGIC; 
  signal N167 : STD_LOGIC; 
  signal N169 : STD_LOGIC; 
  signal N171 : STD_LOGIC; 
  signal N173 : STD_LOGIC; 
  signal N175 : STD_LOGIC; 
  signal N177 : STD_LOGIC; 
  signal N178 : STD_LOGIC; 
  signal N179 : STD_LOGIC; 
  signal N180 : STD_LOGIC; 
  signal N181 : STD_LOGIC; 
  signal N182 : STD_LOGIC; 
  signal N183 : STD_LOGIC; 
  signal N184 : STD_LOGIC; 
  signal N185 : STD_LOGIC; 
  signal N186 : STD_LOGIC; 
  signal N190 : STD_LOGIC; 
  signal N191 : STD_LOGIC; 
  signal N193 : STD_LOGIC; 
  signal N197 : STD_LOGIC; 
  signal N199 : STD_LOGIC; 
  signal N201 : STD_LOGIC; 
  signal N203 : STD_LOGIC; 
  signal N207 : STD_LOGIC; 
  signal N209 : STD_LOGIC; 
  signal N211 : STD_LOGIC; 
  signal N213 : STD_LOGIC; 
  signal N214 : STD_LOGIC; 
  signal N215 : STD_LOGIC; 
  signal N216 : STD_LOGIC; 
  signal N217 : STD_LOGIC; 
  signal N218 : STD_LOGIC; 
  signal N219 : STD_LOGIC; 
  signal N220 : STD_LOGIC; 
  signal N221 : STD_LOGIC; 
  signal N222 : STD_LOGIC; 
  signal N223 : STD_LOGIC; 
  signal N224 : STD_LOGIC; 
  signal N225 : STD_LOGIC; 
  signal N226 : STD_LOGIC; 
  signal N227 : STD_LOGIC; 
  signal N228 : STD_LOGIC; 
  signal N229 : STD_LOGIC; 
  signal N23 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N25 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N47 : STD_LOGIC; 
  signal N49 : STD_LOGIC; 
  signal N51 : STD_LOGIC; 
  signal N53 : STD_LOGIC; 
  signal N55 : STD_LOGIC; 
  signal N57 : STD_LOGIC; 
  signal N59 : STD_LOGIC; 
  signal N61 : STD_LOGIC; 
  signal N63 : STD_LOGIC; 
  signal N65 : STD_LOGIC; 
  signal N67 : STD_LOGIC; 
  signal N69 : STD_LOGIC; 
  signal N71 : STD_LOGIC; 
  signal N73 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N79 : STD_LOGIC; 
  signal N81 : STD_LOGIC; 
  signal N83 : STD_LOGIC; 
  signal N85 : STD_LOGIC; 
  signal N87 : STD_LOGIC; 
  signal N89 : STD_LOGIC; 
  signal N9 : STD_LOGIC; 
  signal N91_276 : STD_LOGIC; 
  signal N93 : STD_LOGIC; 
  signal N97 : STD_LOGIC; 
  signal N99 : STD_LOGIC; 
  signal OutDireita_0_284 : STD_LOGIC; 
  signal OutDireita_0_mux0000 : STD_LOGIC; 
  signal OutDireita_0_mux000010_286 : STD_LOGIC; 
  signal OutDireita_0_mux0000104_287 : STD_LOGIC; 
  signal OutDireita_0_mux0000130_288 : STD_LOGIC; 
  signal OutDireita_0_mux000029_289 : STD_LOGIC; 
  signal OutDireita_0_mux000039_290 : STD_LOGIC; 
  signal OutDireita_0_mux000057_291 : STD_LOGIC; 
  signal OutDireita_0_mux000062_292 : STD_LOGIC; 
  signal OutDireita_0_mux000073_293 : STD_LOGIC; 
  signal OutDireita_0_mux000079_294 : STD_LOGIC; 
  signal OutDireita_0_not0001 : STD_LOGIC; 
  signal OutDireita_1_296 : STD_LOGIC; 
  signal OutDireita_1_mux0000 : STD_LOGIC; 
  signal OutDireita_1_mux0000141_298 : STD_LOGIC; 
  signal OutDireita_1_mux000016_299 : STD_LOGIC; 
  signal OutDireita_1_mux0000184_300 : STD_LOGIC; 
  signal OutDireita_1_mux00002 : STD_LOGIC; 
  signal OutDireita_1_mux0000220_302 : STD_LOGIC; 
  signal OutDireita_1_mux000026_303 : STD_LOGIC; 
  signal OutDireita_1_mux0000268_304 : STD_LOGIC; 
  signal OutDireita_1_mux0000280_305 : STD_LOGIC; 
  signal OutDireita_1_mux0000292_306 : STD_LOGIC; 
  signal OutDireita_1_mux0000314_307 : STD_LOGIC; 
  signal OutDireita_1_mux0000344_308 : STD_LOGIC; 
  signal OutDireita_1_mux000058_309 : STD_LOGIC; 
  signal OutDireita_1_mux000091_310 : STD_LOGIC; 
  signal OutDireita_2_311 : STD_LOGIC; 
  signal OutDireita_2_mux0000 : STD_LOGIC; 
  signal OutDireita_2_mux000010_313 : STD_LOGIC; 
  signal OutDireita_2_mux0000104_314 : STD_LOGIC; 
  signal OutDireita_2_mux0000199_315 : STD_LOGIC; 
  signal OutDireita_2_mux0000215_316 : STD_LOGIC; 
  signal OutDireita_2_mux000029_317 : STD_LOGIC; 
  signal OutDireita_2_mux000087 : STD_LOGIC; 
  signal OutDireita_3_319 : STD_LOGIC; 
  signal OutDireita_3_mux0000 : STD_LOGIC; 
  signal OutDireita_3_mux000010_321 : STD_LOGIC; 
  signal OutDireita_3_mux0000158_322 : STD_LOGIC; 
  signal OutDireita_3_mux0000185_323 : STD_LOGIC; 
  signal OutDireita_3_mux0000222_324 : STD_LOGIC; 
  signal OutDireita_3_mux0000262_325 : STD_LOGIC; 
  signal OutDireita_3_mux000029_326 : STD_LOGIC; 
  signal OutDireita_3_mux000045_327 : STD_LOGIC; 
  signal OutDireita_3_mux000047_328 : STD_LOGIC; 
  signal OutDireita_3_mux000068_329 : STD_LOGIC; 
  signal OutDireita_3_mux000099_330 : STD_LOGIC; 
  signal Outesquerda_0_335 : STD_LOGIC; 
  signal Outesquerda_1_336 : STD_LOGIC; 
  signal Outesquerda_2_337 : STD_LOGIC; 
  signal Outesquerda_3_338 : STD_LOGIC; 
  signal Outesquerda_and0001 : STD_LOGIC; 
  signal Outesquerda_cmp_eq0000 : STD_LOGIC; 
  signal Outesquerda_cmp_eq0001 : STD_LOGIC; 
  signal Outesquerda_mux0000_0_13_343 : STD_LOGIC; 
  signal Outesquerda_mux0000_0_2_344 : STD_LOGIC; 
  signal Outesquerda_mux0000_0_32_345 : STD_LOGIC; 
  signal Outesquerda_mux0000_1_10_347 : STD_LOGIC; 
  signal Outesquerda_mux0000_1_32_348 : STD_LOGIC; 
  signal Outesquerda_mux0000_2_18_350 : STD_LOGIC; 
  signal Outesquerda_mux0000_2_5_351 : STD_LOGIC; 
  signal Outesquerda_not0001 : STD_LOGIC; 
  signal Outesquerda_or0001 : STD_LOGIC; 
  signal SUM_COUT_FA1 : STD_LOGIC; 
  signal SUM_COUT_FA2 : STD_LOGIC; 
  signal SUM_FA2_halfSum : STD_LOGIC; 
  signal SUM_FA3_halfSum : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd1_359 : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd1_In : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd1_1_361 : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd2_362 : STD_LOGIC; 
  signal Selecionador_Fases_FSM_FFd2_In : STD_LOGIC; 
  signal Selecionador_Fases_cmp_eq0001 : STD_LOGIC; 
  signal Selecionador_Fases_not0001 : STD_LOGIC; 
  signal Selecionador_Fases_not00011_366 : STD_LOGIC; 
  signal Selecionador_Fases_not00012_367 : STD_LOGIC; 
  signal ULA_Op_Code_and0001 : STD_LOGIC; 
  signal ULA_Op_Code_mux0000_0_2_374 : STD_LOGIC; 
  signal ULA_Op_Code_mux0000_0_30_375 : STD_LOGIC; 
  signal ULA_Op_Code_mux0000_1_12_377 : STD_LOGIC; 
  signal ULA_Op_Code_mux0000_1_16_378 : STD_LOGIC; 
  signal ULA_Op_Code_mux0000_1_29_379 : STD_LOGIC; 
  signal ULA_Op_Code_mux0000_1_42_380 : STD_LOGIC; 
  signal borrow_diff : STD_LOGIC; 
  signal input_vector_0_IBUF_388 : STD_LOGIC; 
  signal input_vector_1_IBUF_389 : STD_LOGIC; 
  signal input_vector_2_IBUF_390 : STD_LOGIC; 
  signal input_vector_3_IBUF_391 : STD_LOGIC; 
  signal overflow_diff : STD_LOGIC; 
  signal overflow_soma : STD_LOGIC; 
  signal rst_IBUF_395 : STD_LOGIC; 
  signal verifica_FSM_FFd1_396 : STD_LOGIC; 
  signal verifica_FSM_FFd1_In_397 : STD_LOGIC; 
  signal verifica_FSM_FFd2_398 : STD_LOGIC; 
  signal verifica_FSM_FFd2_In_399 : STD_LOGIC; 
  signal verifica_FSM_FFd3_400 : STD_LOGIC; 
  signal verifica_FSM_FFd3_In_401 : STD_LOGIC; 
  signal A : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal B : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal Contador : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Contador_addsub0000 : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal Contador_mux0001 : STD_LOGIC_VECTOR ( 26 downto 0 ); 
  signal DIF : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal Madd_Contador_addsub0000_cy : STD_LOGIC_VECTOR ( 25 downto 0 ); 
  signal Madd_Contador_addsub0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal Mcompar_verifica_cmp_lt0000_cy : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal Outesquerda_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ULA_Op_Code : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal ULA_Op_Code_mux0000 : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  Outesquerda_0 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => Outesquerda_not0001,
      CLR => rst_IBUF_395,
      D => Outesquerda_mux0000(0),
      Q => Outesquerda_0_335
    );
  Outesquerda_1 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => Outesquerda_not0001,
      CLR => rst_IBUF_395,
      D => Outesquerda_mux0000(1),
      Q => Outesquerda_1_336
    );
  Outesquerda_2 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => Outesquerda_not0001,
      CLR => rst_IBUF_395,
      D => Outesquerda_mux0000(2),
      Q => Outesquerda_2_337
    );
  Outesquerda_3 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => Outesquerda_not0001,
      CLR => rst_IBUF_395,
      D => Outesquerda_mux0000(3),
      Q => Outesquerda_3_338
    );
  OutDireita_0 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => OutDireita_0_not0001,
      CLR => rst_IBUF_395,
      D => OutDireita_0_mux0000,
      Q => OutDireita_0_284
    );
  OutDireita_1 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => OutDireita_0_not0001,
      CLR => rst_IBUF_395,
      D => OutDireita_1_mux0000,
      Q => OutDireita_1_296
    );
  OutDireita_2 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => OutDireita_0_not0001,
      CLR => rst_IBUF_395,
      D => OutDireita_2_mux0000,
      Q => OutDireita_2_311
    );
  OutDireita_3 : FDCE
    port map (
      C => CLK_BUFGP_17,
      CE => OutDireita_0_not0001,
      CLR => rst_IBUF_395,
      D => OutDireita_3_mux0000,
      Q => OutDireita_3_319
    );
  A_0 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => input_vector_0_IBUF_388,
      Q => A(0)
    );
  A_1 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => input_vector_1_IBUF_389,
      Q => A(1)
    );
  A_2 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => input_vector_2_IBUF_390,
      Q => A(2)
    );
  A_3 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => A_and0000,
      D => input_vector_3_IBUF_391,
      Q => A(3)
    );
  B_0 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => input_vector_0_IBUF_388,
      Q => B(0)
    );
  B_1 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => input_vector_1_IBUF_389,
      Q => B(1)
    );
  B_2 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => input_vector_2_IBUF_390,
      Q => B(2)
    );
  B_3 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => B_and0000,
      D => input_vector_3_IBUF_391,
      Q => B(3)
    );
  ULA_Op_Code_0 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => ULA_Op_Code_and0001,
      D => ULA_Op_Code_mux0000(0),
      Q => ULA_Op_Code(0)
    );
  ULA_Op_Code_1 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => ULA_Op_Code_and0001,
      D => ULA_Op_Code_mux0000(1),
      Q => ULA_Op_Code(1)
    );
  ULA_Op_Code_2 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => ULA_Op_Code_and0001,
      D => ULA_Op_Code_mux0000(2),
      Q => ULA_Op_Code(2)
    );
  ULA_Op_Code_3 : FDE
    port map (
      C => CLK_BUFGP_17,
      CE => ULA_Op_Code_and0001,
      D => ULA_Op_Code_mux0000(3),
      Q => ULA_Op_Code(3)
    );
  Contador_0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(0),
      Q => Contador(0)
    );
  Contador_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(1),
      Q => Contador(1)
    );
  Contador_2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(2),
      Q => Contador(2)
    );
  Contador_3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(3),
      Q => Contador(3)
    );
  Contador_4 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(4),
      Q => Contador(4)
    );
  Contador_5 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(5),
      Q => Contador(5)
    );
  Contador_6 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(6),
      Q => Contador(6)
    );
  Contador_7 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(7),
      Q => Contador(7)
    );
  Contador_8 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(8),
      Q => Contador(8)
    );
  Contador_9 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(9),
      Q => Contador(9)
    );
  Contador_10 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(10),
      Q => Contador(10)
    );
  Contador_11 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(11),
      Q => Contador(11)
    );
  Contador_12 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(12),
      Q => Contador(12)
    );
  Contador_13 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(13),
      Q => Contador(13)
    );
  Contador_14 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(14),
      Q => Contador(14)
    );
  Contador_15 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(15),
      Q => Contador(15)
    );
  Contador_16 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(16),
      Q => Contador(16)
    );
  Contador_17 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(17),
      Q => Contador(17)
    );
  Contador_18 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(18),
      Q => Contador(18)
    );
  Contador_19 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(19),
      Q => Contador(19)
    );
  Contador_20 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(20),
      Q => Contador(20)
    );
  Contador_21 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(21),
      Q => Contador(21)
    );
  Contador_22 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(22),
      Q => Contador(22)
    );
  Contador_23 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(23),
      Q => Contador(23)
    );
  Contador_24 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(24),
      Q => Contador(24)
    );
  Contador_25 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(25),
      Q => Contador(25)
    );
  Contador_26 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => Contador_mux0001(26),
      Q => Contador(26)
    );
  Madd_Contador_addsub0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => Madd_Contador_addsub0000_lut(0),
      O => Madd_Contador_addsub0000_cy(0)
    );
  Madd_Contador_addsub0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => Madd_Contador_addsub0000_lut(0),
      O => Contador_addsub0000(0)
    );
  Madd_Contador_addsub0000_cy_1_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(0),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_1_rt_123,
      O => Madd_Contador_addsub0000_cy(1)
    );
  Madd_Contador_addsub0000_xor_1_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(0),
      LI => Madd_Contador_addsub0000_cy_1_rt_123,
      O => Contador_addsub0000(1)
    );
  Madd_Contador_addsub0000_cy_2_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(1),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_2_rt_137,
      O => Madd_Contador_addsub0000_cy(2)
    );
  Madd_Contador_addsub0000_xor_2_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(1),
      LI => Madd_Contador_addsub0000_cy_2_rt_137,
      O => Contador_addsub0000(2)
    );
  Madd_Contador_addsub0000_cy_3_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(2),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_3_rt_139,
      O => Madd_Contador_addsub0000_cy(3)
    );
  Madd_Contador_addsub0000_xor_3_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(2),
      LI => Madd_Contador_addsub0000_cy_3_rt_139,
      O => Contador_addsub0000(3)
    );
  Madd_Contador_addsub0000_cy_4_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(3),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_4_rt_141,
      O => Madd_Contador_addsub0000_cy(4)
    );
  Madd_Contador_addsub0000_xor_4_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(3),
      LI => Madd_Contador_addsub0000_cy_4_rt_141,
      O => Contador_addsub0000(4)
    );
  Madd_Contador_addsub0000_cy_5_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(4),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_5_rt_143,
      O => Madd_Contador_addsub0000_cy(5)
    );
  Madd_Contador_addsub0000_xor_5_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(4),
      LI => Madd_Contador_addsub0000_cy_5_rt_143,
      O => Contador_addsub0000(5)
    );
  Madd_Contador_addsub0000_cy_6_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(5),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_6_rt_145,
      O => Madd_Contador_addsub0000_cy(6)
    );
  Madd_Contador_addsub0000_xor_6_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(5),
      LI => Madd_Contador_addsub0000_cy_6_rt_145,
      O => Contador_addsub0000(6)
    );
  Madd_Contador_addsub0000_cy_7_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(6),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_7_rt_147,
      O => Madd_Contador_addsub0000_cy(7)
    );
  Madd_Contador_addsub0000_xor_7_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(6),
      LI => Madd_Contador_addsub0000_cy_7_rt_147,
      O => Contador_addsub0000(7)
    );
  Madd_Contador_addsub0000_cy_8_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(7),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_8_rt_149,
      O => Madd_Contador_addsub0000_cy(8)
    );
  Madd_Contador_addsub0000_xor_8_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(7),
      LI => Madd_Contador_addsub0000_cy_8_rt_149,
      O => Contador_addsub0000(8)
    );
  Madd_Contador_addsub0000_cy_9_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(8),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_9_rt_151,
      O => Madd_Contador_addsub0000_cy(9)
    );
  Madd_Contador_addsub0000_xor_9_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(8),
      LI => Madd_Contador_addsub0000_cy_9_rt_151,
      O => Contador_addsub0000(9)
    );
  Madd_Contador_addsub0000_cy_10_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(9),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_10_rt_103,
      O => Madd_Contador_addsub0000_cy(10)
    );
  Madd_Contador_addsub0000_xor_10_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(9),
      LI => Madd_Contador_addsub0000_cy_10_rt_103,
      O => Contador_addsub0000(10)
    );
  Madd_Contador_addsub0000_cy_11_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(10),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_11_rt_105,
      O => Madd_Contador_addsub0000_cy(11)
    );
  Madd_Contador_addsub0000_xor_11_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(10),
      LI => Madd_Contador_addsub0000_cy_11_rt_105,
      O => Contador_addsub0000(11)
    );
  Madd_Contador_addsub0000_cy_12_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(11),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_12_rt_107,
      O => Madd_Contador_addsub0000_cy(12)
    );
  Madd_Contador_addsub0000_xor_12_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(11),
      LI => Madd_Contador_addsub0000_cy_12_rt_107,
      O => Contador_addsub0000(12)
    );
  Madd_Contador_addsub0000_cy_13_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(12),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_13_rt_109,
      O => Madd_Contador_addsub0000_cy(13)
    );
  Madd_Contador_addsub0000_xor_13_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(12),
      LI => Madd_Contador_addsub0000_cy_13_rt_109,
      O => Contador_addsub0000(13)
    );
  Madd_Contador_addsub0000_cy_14_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(13),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_14_rt_111,
      O => Madd_Contador_addsub0000_cy(14)
    );
  Madd_Contador_addsub0000_xor_14_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(13),
      LI => Madd_Contador_addsub0000_cy_14_rt_111,
      O => Contador_addsub0000(14)
    );
  Madd_Contador_addsub0000_cy_15_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(14),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_15_rt_113,
      O => Madd_Contador_addsub0000_cy(15)
    );
  Madd_Contador_addsub0000_xor_15_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(14),
      LI => Madd_Contador_addsub0000_cy_15_rt_113,
      O => Contador_addsub0000(15)
    );
  Madd_Contador_addsub0000_cy_16_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(15),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_16_rt_115,
      O => Madd_Contador_addsub0000_cy(16)
    );
  Madd_Contador_addsub0000_xor_16_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(15),
      LI => Madd_Contador_addsub0000_cy_16_rt_115,
      O => Contador_addsub0000(16)
    );
  Madd_Contador_addsub0000_cy_17_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(16),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_17_rt_117,
      O => Madd_Contador_addsub0000_cy(17)
    );
  Madd_Contador_addsub0000_xor_17_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(16),
      LI => Madd_Contador_addsub0000_cy_17_rt_117,
      O => Contador_addsub0000(17)
    );
  Madd_Contador_addsub0000_cy_18_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(17),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_18_rt_119,
      O => Madd_Contador_addsub0000_cy(18)
    );
  Madd_Contador_addsub0000_xor_18_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(17),
      LI => Madd_Contador_addsub0000_cy_18_rt_119,
      O => Contador_addsub0000(18)
    );
  Madd_Contador_addsub0000_cy_19_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(18),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_19_rt_121,
      O => Madd_Contador_addsub0000_cy(19)
    );
  Madd_Contador_addsub0000_xor_19_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(18),
      LI => Madd_Contador_addsub0000_cy_19_rt_121,
      O => Contador_addsub0000(19)
    );
  Madd_Contador_addsub0000_cy_20_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(19),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_20_rt_125,
      O => Madd_Contador_addsub0000_cy(20)
    );
  Madd_Contador_addsub0000_xor_20_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(19),
      LI => Madd_Contador_addsub0000_cy_20_rt_125,
      O => Contador_addsub0000(20)
    );
  Madd_Contador_addsub0000_cy_21_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(20),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_21_rt_127,
      O => Madd_Contador_addsub0000_cy(21)
    );
  Madd_Contador_addsub0000_xor_21_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(20),
      LI => Madd_Contador_addsub0000_cy_21_rt_127,
      O => Contador_addsub0000(21)
    );
  Madd_Contador_addsub0000_cy_22_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(21),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_22_rt_129,
      O => Madd_Contador_addsub0000_cy(22)
    );
  Madd_Contador_addsub0000_xor_22_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(21),
      LI => Madd_Contador_addsub0000_cy_22_rt_129,
      O => Contador_addsub0000(22)
    );
  Madd_Contador_addsub0000_cy_23_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(22),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_23_rt_131,
      O => Madd_Contador_addsub0000_cy(23)
    );
  Madd_Contador_addsub0000_xor_23_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(22),
      LI => Madd_Contador_addsub0000_cy_23_rt_131,
      O => Contador_addsub0000(23)
    );
  Madd_Contador_addsub0000_cy_24_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(23),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_24_rt_133,
      O => Madd_Contador_addsub0000_cy(24)
    );
  Madd_Contador_addsub0000_xor_24_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(23),
      LI => Madd_Contador_addsub0000_cy_24_rt_133,
      O => Contador_addsub0000(24)
    );
  Madd_Contador_addsub0000_cy_25_Q : MUXCY
    port map (
      CI => Madd_Contador_addsub0000_cy(24),
      DI => N0,
      S => Madd_Contador_addsub0000_cy_25_rt_135,
      O => Madd_Contador_addsub0000_cy(25)
    );
  Madd_Contador_addsub0000_xor_25_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(24),
      LI => Madd_Contador_addsub0000_cy_25_rt_135,
      O => Contador_addsub0000(25)
    );
  Madd_Contador_addsub0000_xor_26_Q : XORCY
    port map (
      CI => Madd_Contador_addsub0000_cy(25),
      LI => Madd_Contador_addsub0000_xor_26_rt_153,
      O => Contador_addsub0000(26)
    );
  Mcompar_verifica_cmp_lt0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N0,
      S => Mcompar_verifica_cmp_lt0000_cy_0_rt_155,
      O => Mcompar_verifica_cmp_lt0000_cy(0)
    );
  Mcompar_verifica_cmp_lt0000_lut_1_Q : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => Contador(9),
      I1 => Contador(10),
      I2 => Contador(11),
      I3 => Contador(12),
      O => Mcompar_verifica_cmp_lt0000_lut_1_Q_168
    );
  Mcompar_verifica_cmp_lt0000_cy_1_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(0),
      DI => N1,
      S => Mcompar_verifica_cmp_lt0000_lut_1_Q_168,
      O => Mcompar_verifica_cmp_lt0000_cy(1)
    );
  Mcompar_verifica_cmp_lt0000_lut_2_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Contador(13),
      I1 => Contador(14),
      I2 => Contador(15),
      I3 => Contador(16),
      O => Mcompar_verifica_cmp_lt0000_lut_2_Q_169
    );
  Mcompar_verifica_cmp_lt0000_cy_2_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(1),
      DI => N0,
      S => Mcompar_verifica_cmp_lt0000_lut_2_Q_169,
      O => Mcompar_verifica_cmp_lt0000_cy(2)
    );
  Mcompar_verifica_cmp_lt0000_cy_3_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(2),
      DI => N1,
      S => Mcompar_verifica_cmp_lt0000_lut_3_Q,
      O => Mcompar_verifica_cmp_lt0000_cy(3)
    );
  Mcompar_verifica_cmp_lt0000_cy_4_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(3),
      DI => N0,
      S => Mcompar_verifica_cmp_lt0000_cy_4_rt_160,
      O => Mcompar_verifica_cmp_lt0000_cy(4)
    );
  Mcompar_verifica_cmp_lt0000_cy_5_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(4),
      DI => N1,
      S => Mcompar_verifica_cmp_lt0000_lut_5_Q,
      O => Mcompar_verifica_cmp_lt0000_cy(5)
    );
  Mcompar_verifica_cmp_lt0000_lut_6_Q : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => Contador(20),
      I1 => Contador(21),
      I2 => Contador(22),
      I3 => Contador(23),
      O => Mcompar_verifica_cmp_lt0000_lut_6_Q_172
    );
  Mcompar_verifica_cmp_lt0000_cy_6_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(5),
      DI => N0,
      S => Mcompar_verifica_cmp_lt0000_lut_6_Q_172,
      O => Mcompar_verifica_cmp_lt0000_cy(6)
    );
  Mcompar_verifica_cmp_lt0000_cy_7_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(6),
      DI => N0,
      S => Mcompar_verifica_cmp_lt0000_cy_7_rt_164,
      O => Mcompar_verifica_cmp_lt0000_cy(7)
    );
  Mcompar_verifica_cmp_lt0000_cy_8_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(7),
      DI => N1,
      S => Mcompar_verifica_cmp_lt0000_lut_8_Q,
      O => Mcompar_verifica_cmp_lt0000_cy(8)
    );
  Mcompar_verifica_cmp_lt0000_cy_9_Q : MUXCY
    port map (
      CI => Mcompar_verifica_cmp_lt0000_cy(8),
      DI => N0,
      S => Mcompar_verifica_cmp_lt0000_cy_9_rt_167,
      O => Mcompar_verifica_cmp_lt0000_cy(9)
    );
  verifica_FSM_FFd3 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => verifica_FSM_FFd3_In_401,
      Q => verifica_FSM_FFd3_400
    );
  verifica_FSM_FFd1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => verifica_FSM_FFd1_In_397,
      Q => verifica_FSM_FFd1_396
    );
  verifica_FSM_FFd2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_cmp_eq0001,
      CLR => rst_IBUF_395,
      D => verifica_FSM_FFd2_In_399,
      Q => verifica_FSM_FFd2_398
    );
  Selecionador_Fases_FSM_FFd1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_not0001,
      CLR => rst_IBUF_395,
      D => Selecionador_Fases_FSM_FFd1_In,
      Q => Selecionador_Fases_FSM_FFd1_359
    );
  Selecionador_Fases_FSM_FFd2 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_not0001,
      CLR => rst_IBUF_395,
      D => Selecionador_Fases_FSM_FFd2_In,
      Q => Selecionador_Fases_FSM_FFd2_362
    );
  Selecionador_Fases_FSM_FFd1_In1 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd2_362,
      I1 => ButtonE_IBUF_11,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      O => Selecionador_Fases_FSM_FFd1_In
    );
  Selecionador_Fases_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"54F4"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => ButtonN_IBUF_13,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      I3 => ButtonS_IBUF_15,
      O => Selecionador_Fases_FSM_FFd2_In
    );
  ULA_Op_Code_and00011 : LUT4
    generic map(
      INIT => X"0C04"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd2_362,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => rst_IBUF_395,
      I3 => ButtonS_IBUF_15,
      O => ULA_Op_Code_and0001
    );
  B_and00001 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd2_362,
      I1 => rst_IBUF_395,
      I2 => ButtonE_IBUF_11,
      I3 => Selecionador_Fases_FSM_FFd1_359,
      O => B_and0000
    );
  A_and00001 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => ButtonN_IBUF_13,
      I1 => rst_IBUF_395,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      I3 => Selecionador_Fases_FSM_FFd2_362,
      O => A_and0000
    );
  Outesquerda_not00011 : LUT4
    generic map(
      INIT => X"8F8A"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => ButtonS_IBUF_15,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      I3 => ButtonN_IBUF_13,
      O => Outesquerda_not0001
    );
  OutDireita_0_not00011 : LUT4
    generic map(
      INIT => X"DA8A"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => ButtonS_IBUF_15,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      I3 => ButtonE_IBUF_11,
      O => OutDireita_0_not0001
    );
  Contador_mux0001_0_21 : LUT4
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => N221,
      I3 => Outesquerda_or0001,
      O => N23
    );
  Selecionador_Fases_FSM_Out21 : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_1_361,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      O => Selecionador_Fases_cmp_eq0001
    );
  Contador_mux0001_0_31 : LUT4
    generic map(
      INIT => X"7030"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => Outesquerda_and0001,
      I3 => Outesquerda_or0001,
      O => N25
    );
  N91 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      O => N9
    );
  Outesquerda_or00011 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => verifica_FSM_FFd2_398,
      I2 => verifica_FSM_FFd3_400,
      O => Outesquerda_or0001
    );
  Outesquerda_cmp_eq00001 : LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      O => Outesquerda_cmp_eq0000
    );
  ULA_Op_Code_mux0000_1_59 : LUT4
    generic map(
      INIT => X"EEEA"
    )
    port map (
      I0 => OutDireita_1_mux00002,
      I1 => ULA_Op_Code_mux0000_1_42_380,
      I2 => ULA_Op_Code_mux0000_1_29_379,
      I3 => ULA_Op_Code_mux0000_1_16_378,
      O => ULA_Op_Code_mux0000(1)
    );
  Outesquerda_mux0000_0_13 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => input_vector_0_IBUF_388,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      I2 => ButtonN_IBUF_13,
      I3 => Selecionador_Fases_FSM_FFd1_359,
      O => Outesquerda_mux0000_0_13_343
    );
  SUM_FA2_HA0_Mxor_HALF_SUM_Result1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => B(2),
      I1 => A(2),
      O => SUM_FA2_halfSum
    );
  DIFF_DIFF_FA3_HA1_Mxor_HALF_SUM_Result1 : LUT4
    generic map(
      INIT => X"D24B"
    )
    port map (
      I0 => B(2),
      I1 => A(2),
      I2 => N222,
      I3 => DIFF_DIFF_COUT_FA1,
      O => DIF(3)
    );
  Outesquerda_mux0000_3_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => input_vector_3_IBUF_391,
      I1 => ButtonN_IBUF_13,
      O => N109
    );
  OutDireita_0_mux000057 : LUT4
    generic map(
      INIT => X"40C0"
    )
    port map (
      I0 => A(0),
      I1 => B(0),
      I2 => verifica_FSM_FFd2_398,
      I3 => verifica_FSM_FFd3_400,
      O => OutDireita_0_mux000057_291
    );
  OutDireita_0_mux000062 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => A(0),
      I1 => B(0),
      I2 => verifica_FSM_FFd3_400,
      O => OutDireita_0_mux000062_292
    );
  OutDireita_0_mux0000130 : LUT4
    generic map(
      INIT => X"3230"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => OutDireita_0_mux000079_294,
      I3 => OutDireita_0_mux0000104_287,
      O => OutDireita_0_mux0000130_288
    );
  OutDireita_0_mux0000167 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => N24,
      I1 => OutDireita_0_mux000039_290,
      I2 => OutDireita_0_mux000010_286,
      I3 => OutDireita_0_mux0000130_288,
      O => OutDireita_0_mux0000
    );
  OutDireita_3_mux000082 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => verifica_FSM_FFd2_398,
      I1 => verifica_FSM_FFd3_400,
      O => OutDireita_2_mux000087
    );
  OutDireita_3_mux000099 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => OutDireita_2_mux000087,
      I1 => OutDireita_3_mux000047_328,
      I2 => OutDireita_3_mux000029_326,
      I3 => OutDireita_3_mux000068_329,
      O => OutDireita_3_mux000099_330
    );
  OutDireita_3_mux0000262 : LUT4
    generic map(
      INIT => X"A0A8"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => OutDireita_3_mux0000222_324,
      I2 => OutDireita_3_mux0000185_323,
      I3 => overflow_diff,
      O => OutDireita_3_mux0000262_325
    );
  OutDireita_3_mux0000302 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => N24,
      I1 => OutDireita_3_mux000099_330,
      I2 => OutDireita_3_mux000010_321,
      I3 => OutDireita_3_mux0000262_325,
      O => OutDireita_3_mux0000
    );
  SUM_FA2_CARRY_OUT1 : LUT3
    generic map(
      INIT => X"E8"
    )
    port map (
      I0 => A(2),
      I1 => B(2),
      I2 => N226,
      O => SUM_COUT_FA2
    );
  DIFF_DIFF_FA1_CARRY_OUT1 : LUT4
    generic map(
      INIT => X"D4DD"
    )
    port map (
      I0 => B(1),
      I1 => A(1),
      I2 => A(0),
      I3 => B(0),
      O => DIFF_DIFF_COUT_FA1
    );
  OutDireita_1_mux0000141 : LUT4
    generic map(
      INIT => X"0F28"
    )
    port map (
      I0 => B(0),
      I1 => A(0),
      I2 => ULA_Op_Code(0),
      I3 => ULA_Op_Code(1),
      O => OutDireita_1_mux0000141_298
    );
  OutDireita_1_mux0000184 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => A(1),
      I1 => verifica_FSM_FFd3_400,
      O => OutDireita_1_mux0000184_300
    );
  OutDireita_1_mux0000292 : LUT4
    generic map(
      INIT => X"1400"
    )
    port map (
      I0 => A(1),
      I1 => A(0),
      I2 => ULA_Op_Code(0),
      I3 => OutDireita_1_mux0000280_305,
      O => OutDireita_1_mux0000292_306
    );
  OutDireita_1_mux0000383 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => N24,
      I1 => OutDireita_1_mux0000220_302,
      I2 => OutDireita_1_mux000026_303,
      I3 => OutDireita_1_mux0000344_308,
      O => OutDireita_1_mux0000
    );
  OutDireita_2_mux0000254 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => N24,
      I1 => OutDireita_2_mux0000104_314,
      I2 => OutDireita_2_mux000010_313,
      I3 => OutDireita_2_mux0000215_316,
      O => OutDireita_2_mux0000
    );
  rst_IBUF : IBUF
    port map (
      I => rst,
      O => rst_IBUF_395
    );
  ButtonE_IBUF : IBUF
    port map (
      I => ButtonE,
      O => ButtonE_IBUF_11
    );
  ButtonN_IBUF : IBUF
    port map (
      I => ButtonN,
      O => ButtonN_IBUF_13
    );
  ButtonS_IBUF : IBUF
    port map (
      I => ButtonS,
      O => ButtonS_IBUF_15
    );
  input_vector_3_IBUF : IBUF
    port map (
      I => input_vector(3),
      O => input_vector_3_IBUF_391
    );
  input_vector_2_IBUF : IBUF
    port map (
      I => input_vector(2),
      O => input_vector_2_IBUF_390
    );
  input_vector_1_IBUF : IBUF
    port map (
      I => input_vector(1),
      O => input_vector_1_IBUF_389
    );
  input_vector_0_IBUF : IBUF
    port map (
      I => input_vector(0),
      O => input_vector_0_IBUF_388
    );
  Outesquerda_3_OBUF : OBUF
    port map (
      I => Outesquerda_3_338,
      O => Outesquerda(3)
    );
  Outesquerda_2_OBUF : OBUF
    port map (
      I => Outesquerda_2_337,
      O => Outesquerda(2)
    );
  Outesquerda_1_OBUF : OBUF
    port map (
      I => Outesquerda_1_336,
      O => Outesquerda(1)
    );
  Outesquerda_0_OBUF : OBUF
    port map (
      I => Outesquerda_0_335,
      O => Outesquerda(0)
    );
  OutDireita_3_OBUF : OBUF
    port map (
      I => OutDireita_3_319,
      O => OutDireita(3)
    );
  OutDireita_2_OBUF : OBUF
    port map (
      I => OutDireita_2_311,
      O => OutDireita(2)
    );
  OutDireita_1_OBUF : OBUF
    port map (
      I => OutDireita_1_296,
      O => OutDireita(1)
    );
  OutDireita_0_OBUF : OBUF
    port map (
      I => OutDireita_0_284,
      O => OutDireita(0)
    );
  Madd_Contador_addsub0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(1),
      O => Madd_Contador_addsub0000_cy_1_rt_123
    );
  Madd_Contador_addsub0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(2),
      O => Madd_Contador_addsub0000_cy_2_rt_137
    );
  Madd_Contador_addsub0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(3),
      O => Madd_Contador_addsub0000_cy_3_rt_139
    );
  Madd_Contador_addsub0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(4),
      O => Madd_Contador_addsub0000_cy_4_rt_141
    );
  Madd_Contador_addsub0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(5),
      O => Madd_Contador_addsub0000_cy_5_rt_143
    );
  Madd_Contador_addsub0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(6),
      O => Madd_Contador_addsub0000_cy_6_rt_145
    );
  Madd_Contador_addsub0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(7),
      O => Madd_Contador_addsub0000_cy_7_rt_147
    );
  Madd_Contador_addsub0000_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(8),
      O => Madd_Contador_addsub0000_cy_8_rt_149
    );
  Madd_Contador_addsub0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(9),
      O => Madd_Contador_addsub0000_cy_9_rt_151
    );
  Madd_Contador_addsub0000_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(10),
      O => Madd_Contador_addsub0000_cy_10_rt_103
    );
  Madd_Contador_addsub0000_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(11),
      O => Madd_Contador_addsub0000_cy_11_rt_105
    );
  Madd_Contador_addsub0000_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(12),
      O => Madd_Contador_addsub0000_cy_12_rt_107
    );
  Madd_Contador_addsub0000_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(13),
      O => Madd_Contador_addsub0000_cy_13_rt_109
    );
  Madd_Contador_addsub0000_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(14),
      O => Madd_Contador_addsub0000_cy_14_rt_111
    );
  Madd_Contador_addsub0000_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(15),
      O => Madd_Contador_addsub0000_cy_15_rt_113
    );
  Madd_Contador_addsub0000_cy_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(16),
      O => Madd_Contador_addsub0000_cy_16_rt_115
    );
  Madd_Contador_addsub0000_cy_17_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(17),
      O => Madd_Contador_addsub0000_cy_17_rt_117
    );
  Madd_Contador_addsub0000_cy_18_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(18),
      O => Madd_Contador_addsub0000_cy_18_rt_119
    );
  Madd_Contador_addsub0000_cy_19_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(19),
      O => Madd_Contador_addsub0000_cy_19_rt_121
    );
  Madd_Contador_addsub0000_cy_20_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(20),
      O => Madd_Contador_addsub0000_cy_20_rt_125
    );
  Madd_Contador_addsub0000_cy_21_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(21),
      O => Madd_Contador_addsub0000_cy_21_rt_127
    );
  Madd_Contador_addsub0000_cy_22_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(22),
      O => Madd_Contador_addsub0000_cy_22_rt_129
    );
  Madd_Contador_addsub0000_cy_23_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(23),
      O => Madd_Contador_addsub0000_cy_23_rt_131
    );
  Madd_Contador_addsub0000_cy_24_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(24),
      O => Madd_Contador_addsub0000_cy_24_rt_133
    );
  Madd_Contador_addsub0000_cy_25_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(25),
      O => Madd_Contador_addsub0000_cy_25_rt_135
    );
  Mcompar_verifica_cmp_lt0000_cy_0_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(8),
      O => Mcompar_verifica_cmp_lt0000_cy_0_rt_155
    );
  Mcompar_verifica_cmp_lt0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(18),
      O => Mcompar_verifica_cmp_lt0000_cy_4_rt_160
    );
  Mcompar_verifica_cmp_lt0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(24),
      O => Mcompar_verifica_cmp_lt0000_cy_7_rt_164
    );
  Mcompar_verifica_cmp_lt0000_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(26),
      O => Mcompar_verifica_cmp_lt0000_cy_9_rt_167
    );
  Madd_Contador_addsub0000_xor_26_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => Contador(26),
      O => Madd_Contador_addsub0000_xor_26_rt_153
    );
  SUM_Mxor_V_Result1 : LUT3
    generic map(
      INIT => X"35"
    )
    port map (
      I0 => N228,
      I1 => N118,
      I2 => SUM_COUT_FA1,
      O => overflow_soma
    );
  DIFF_DIFF_Mxor_V_Result1_SW0 : LUT3
    generic map(
      INIT => X"B2"
    )
    port map (
      I0 => A(2),
      I1 => B(2),
      I2 => DIFF_DIFF_COUT_FA1,
      O => N120
    );
  OutDireita_2_mux0000199 : LUT4
    generic map(
      INIT => X"8220"
    )
    port map (
      I0 => Outesquerda_cmp_eq0001,
      I1 => N120,
      I2 => DIF(3),
      I3 => borrow_diff,
      O => OutDireita_2_mux0000199_315
    );
  ULA_Op_Code_mux0000_1_16 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => ULA_Op_Code_mux0000_1_12_377,
      I1 => verifica_FSM_FFd2_398,
      I2 => verifica_FSM_FFd3_400,
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      O => ULA_Op_Code_mux0000_1_16_378
    );
  SUM_FA3_CARRY_OUT1_SW0 : LUT4
    generic map(
      INIT => X"F8F0"
    )
    port map (
      I0 => A(3),
      I1 => B(3),
      I2 => OutDireita_0_mux000057_291,
      I3 => N225,
      O => N129
    );
  OutDireita_0_mux000079 : LUT4
    generic map(
      INIT => X"FAEE"
    )
    port map (
      I0 => OutDireita_0_mux000062_292,
      I1 => N129,
      I2 => N130,
      I3 => SUM_COUT_FA2,
      O => OutDireita_0_mux000079_294
    );
  Outesquerda_mux0000_3_Q : LUT4
    generic map(
      INIT => X"1105"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd2_362,
      I1 => N133,
      I2 => N132,
      I3 => N227,
      O => Outesquerda_mux0000(3)
    );
  ULA_Op_Code_mux0000_1_11_SW1 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => ULA_Op_Code(1),
      I1 => verifica_FSM_FFd1_396,
      O => N137
    );
  ULA_Op_Code_mux0000_1_11_SW2 : LUT3
    generic map(
      INIT => X"D5"
    )
    port map (
      I0 => verifica_FSM_FFd2_398,
      I1 => ULA_Op_Code(0),
      I2 => ULA_Op_Code(1),
      O => N139
    );
  OutDireita_2_mux000010 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => N144,
      I1 => Outesquerda_and0001,
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N145,
      O => OutDireita_2_mux000010_313
    );
  OutDireita_1_mux0000245_SW0 : LUT4
    generic map(
      INIT => X"72D8"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => N120,
      I2 => overflow_soma,
      I3 => borrow_diff,
      O => N147
    );
  Outesquerda_mux0000_2_13_SW1 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => N223,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      I3 => Outesquerda_2_337,
      O => N152
    );
  Outesquerda_mux0000_2_41 : LUT4
    generic map(
      INIT => X"FAFC"
    )
    port map (
      I0 => N152,
      I1 => N151,
      I2 => Outesquerda_mux0000_2_5_351,
      I3 => N12,
      O => Outesquerda_mux0000(2)
    );
  Outesquerda_mux0000_1_23_SW1 : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => N224,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      I3 => Outesquerda_1_336,
      O => N155
    );
  Outesquerda_mux0000_1_59 : LUT4
    generic map(
      INIT => X"FCFA"
    )
    port map (
      I0 => N154,
      I1 => N155,
      I2 => Outesquerda_mux0000_1_10_347,
      I3 => N12,
      O => Outesquerda_mux0000(1)
    );
  Outesquerda_mux0000_0_41 : LUT4
    generic map(
      INIT => X"FAFC"
    )
    port map (
      I0 => N158,
      I1 => N157,
      I2 => Outesquerda_mux0000_0_2_344,
      I3 => N12,
      O => Outesquerda_mux0000(0)
    );
  OutDireita_1_mux0000314 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => OutDireita_1_mux0000268_304,
      I1 => verifica_FSM_FFd3_400,
      I2 => B(1),
      I3 => OutDireita_1_mux0000292_306,
      O => OutDireita_1_mux0000314_307
    );
  Contador_mux0001_2_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(2),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N45,
      O => Contador_mux0001(2)
    );
  Contador_mux0001_1_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(1),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N47,
      O => Contador_mux0001(1)
    );
  Contador_mux0001_0_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(0),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N49,
      O => Contador_mux0001(0)
    );
  verifica_FSM_FFd2_In : LUT4
    generic map(
      INIT => X"4888"
    )
    port map (
      I0 => verifica_FSM_FFd2_398,
      I1 => N79,
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => verifica_FSM_FFd3_400,
      O => verifica_FSM_FFd2_In_399
    );
  Contador_mux0001_3_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(3),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N51,
      O => Contador_mux0001(3)
    );
  Contador_mux0001_4_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(4),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N53,
      O => Contador_mux0001(4)
    );
  OutDireita_3_mux00002_SW0 : LUT4
    generic map(
      INIT => X"FF02"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => verifica_FSM_FFd3_400,
      I2 => verifica_FSM_FFd2_398,
      I3 => ULA_Op_Code(0),
      O => N93
    );
  OutDireita_2_mux0000168_SW0_SW0 : LUT3
    generic map(
      INIT => X"AC"
    )
    port map (
      I0 => N229,
      I1 => N117,
      I2 => SUM_COUT_FA1,
      O => N160
    );
  OutDireita_2_mux0000168_SW0 : LUT4
    generic map(
      INIT => X"9668"
    )
    port map (
      I0 => A(3),
      I1 => B(3),
      I2 => N160,
      I3 => SUM_COUT_FA2,
      O => N125
    );
  verifica_FSM_FFd3_In : LUT4
    generic map(
      INIT => X"4062"
    )
    port map (
      I0 => Mcompar_verifica_cmp_lt0000_cy(9),
      I1 => verifica_FSM_FFd3_400,
      I2 => N79,
      I3 => N78,
      O => verifica_FSM_FFd3_In_401
    );
  OutDireita_3_mux0000185_SW0 : LUT4
    generic map(
      INIT => X"BBAF"
    )
    port map (
      I0 => N165,
      I1 => N118,
      I2 => N117,
      I3 => SUM_COUT_FA1,
      O => N127
    );
  Contador_mux0001_5_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(5),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N55,
      O => Contador_mux0001(5)
    );
  Contador_mux0001_6_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(6),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N57,
      O => Contador_mux0001(6)
    );
  Contador_mux0001_7_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(7),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N59,
      O => Contador_mux0001(7)
    );
  OutDireita_1_mux000026 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => OutDireita_1_mux000016_299,
      I1 => OutDireita_1_mux00002,
      I2 => N167,
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      O => OutDireita_1_mux000026_303
    );
  Contador_mux0001_8_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(8),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N61,
      O => Contador_mux0001(8)
    );
  Contador_mux0001_9_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(9),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N63,
      O => Contador_mux0001(9)
    );
  Contador_mux0001_10_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(10),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N73,
      O => Contador_mux0001(10)
    );
  Contador_mux0001_11_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(11),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N71,
      O => Contador_mux0001(11)
    );
  Contador_mux0001_12_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(12),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N69,
      O => Contador_mux0001(12)
    );
  Contador_mux0001_13_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(13),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N67,
      O => Contador_mux0001(13)
    );
  Contador_mux0001_14_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(14),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N65,
      O => Contador_mux0001(14)
    );
  ULA_Op_Code_mux0000_1_11 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Selecionador_Fases_cmp_eq0001,
      I1 => ULA_Op_Code(3),
      I2 => ULA_Op_Code(2),
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      O => N24
    );
  OutDireita_3_mux0000185_SW1 : LUT4
    generic map(
      INIT => X"566A"
    )
    port map (
      I0 => A(3),
      I1 => A(2),
      I2 => B(2),
      I3 => SUM_COUT_FA1,
      O => N171
    );
  OutDireita_3_mux0000185 : LUT4
    generic map(
      INIT => X"0804"
    )
    port map (
      I0 => B(3),
      I1 => OutDireita_3_mux0000158_322,
      I2 => N127,
      I3 => N171,
      O => OutDireita_3_mux0000185_323
    );
  Contador_mux0001_15_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(15),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N81,
      O => Contador_mux0001(15)
    );
  OutDireita_3_mux0000215_SW0 : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => B(1),
      I1 => A(1),
      I2 => A(0),
      I3 => B(0),
      O => N173
    );
  OutDireita_3_mux0000222 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => N173,
      I3 => N175,
      O => OutDireita_3_mux0000222_324
    );
  OutDireita_0_mux000021_SW0 : MUXF5
    port map (
      I0 => N177,
      I1 => N178,
      S => Outesquerda_or0001,
      O => N114
    );
  OutDireita_0_mux000021_SW0_F : LUT4
    generic map(
      INIT => X"C0AA"
    )
    port map (
      I0 => input_vector_0_IBUF_388,
      I1 => OutDireita_0_284,
      I2 => ULA_Op_Code(1),
      I3 => Selecionador_Fases_cmp_eq0001,
      O => N177
    );
  Outesquerda_mux0000_3_SW1_SW0 : MUXF5
    port map (
      I0 => N179,
      I1 => N180,
      S => Outesquerda_or0001,
      O => N132
    );
  Outesquerda_mux0000_3_SW1_SW0_F : LUT4
    generic map(
      INIT => X"1BBB"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => N109,
      I2 => Outesquerda_3_338,
      I3 => ULA_Op_Code(1),
      O => N179
    );
  OutDireita_3_mux00002_SW2 : MUXF5
    port map (
      I0 => N181,
      I1 => N182,
      S => N93,
      O => N142
    );
  OutDireita_3_mux00002_SW2_G : LUT4
    generic map(
      INIT => X"C0AA"
    )
    port map (
      I0 => input_vector_3_IBUF_391,
      I1 => OutDireita_3_319,
      I2 => ULA_Op_Code(1),
      I3 => Selecionador_Fases_cmp_eq0001,
      O => N182
    );
  OutDireita_3_mux00002_SW4 : MUXF5
    port map (
      I0 => N183,
      I1 => N184,
      S => N93,
      O => N145
    );
  OutDireita_3_mux00002_SW4_G : LUT4
    generic map(
      INIT => X"C0AA"
    )
    port map (
      I0 => input_vector_2_IBUF_390,
      I1 => OutDireita_2_311,
      I2 => ULA_Op_Code(1),
      I3 => Selecionador_Fases_cmp_eq0001,
      O => N184
    );
  Outesquerda_mux0000_2_13_SW0 : MUXF5
    port map (
      I0 => N185,
      I1 => N186,
      S => Outesquerda_or0001,
      O => N151
    );
  Outesquerda_mux0000_2_13_SW0_F : LUT4
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => Outesquerda_mux0000_2_18_350,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      I3 => Outesquerda_2_337,
      O => N185
    );
  Outesquerda_mux0000_0_31_SW0 : MUXF5
    port map (
      I0 => Outesquerda_mux0000_0_13_343,
      I1 => N190,
      S => Outesquerda_mux0000_0_32_345,
      O => N157
    );
  Outesquerda_mux0000_0_31_SW0_G : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => ULA_Op_Code(1),
      I1 => verifica_FSM_FFd1_396,
      I2 => verifica_FSM_FFd2_398,
      I3 => Outesquerda_mux0000_0_13_343,
      O => N190
    );
  Outesquerda_mux0000_1_23_SW0 : LUT4
    generic map(
      INIT => X"5504"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd2_362,
      I1 => ULA_Op_Code(1),
      I2 => N191,
      I3 => Outesquerda_mux0000_1_32_348,
      O => N154
    );
  OutDireita_1_mux000091 : LUT4
    generic map(
      INIT => X"1F15"
    )
    port map (
      I0 => verifica_FSM_FFd3_400,
      I1 => ULA_Op_Code(0),
      I2 => ULA_Op_Code(1),
      I3 => OutDireita_1_mux000058_309,
      O => OutDireita_1_mux000091_310
    );
  OutDireita_0_mux000039 : LUT4
    generic map(
      INIT => X"E444"
    )
    port map (
      I0 => verifica_FSM_FFd3_400,
      I1 => OutDireita_0_mux000029_289,
      I2 => A(0),
      I3 => N193,
      O => OutDireita_0_mux000039_290
    );
  ULA_Op_Code_mux0000_0_45 : LUT4
    generic map(
      INIT => X"DCEC"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code_mux0000_0_2_374,
      I2 => ULA_Op_Code_mux0000_0_30_375,
      I3 => N197,
      O => ULA_Op_Code_mux0000(0)
    );
  OutDireita_0_mux000021_SW0_G : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => input_vector_0_IBUF_388,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => N178
    );
  OutDireita_3_mux00002_SW2_F : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => input_vector_3_IBUF_391,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => N181
    );
  OutDireita_3_mux00002_SW4_F : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => input_vector_2_IBUF_390,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => N183
    );
  ULA_Op_Code_mux0000_1_2 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => input_vector_1_IBUF_389,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => OutDireita_1_mux00002
    );
  OutDireita_0_mux000021_SW1 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => input_vector_0_IBUF_388,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      I3 => OutDireita_0_284,
      O => N115
    );
  OutDireita_3_mux00002_SW1 : LUT4
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => input_vector_3_IBUF_391,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      I3 => OutDireita_3_319,
      O => N141
    );
  Outesquerda_mux0000_2_13_SW0_G : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => ButtonN_IBUF_13,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      I2 => input_vector_2_IBUF_390,
      I3 => Selecionador_Fases_FSM_FFd1_359,
      O => N186
    );
  ULA_Op_Code_mux0000_0_2 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => input_vector_0_IBUF_388,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => ULA_Op_Code_mux0000_0_2_374
    );
  ULA_Op_Code_mux0000_3_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => input_vector_3_IBUF_391,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => ULA_Op_Code_mux0000(3)
    );
  ULA_Op_Code_mux0000_2_1 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => input_vector_2_IBUF_390,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => ULA_Op_Code_mux0000(2)
    );
  verifica_FSM_FFd3_In_SW1 : LUT4
    generic map(
      INIT => X"0111"
    )
    port map (
      I0 => ULA_Op_Code(2),
      I1 => ULA_Op_Code(3),
      I2 => ULA_Op_Code(0),
      I3 => ULA_Op_Code(1),
      O => N79
    );
  ULA_Op_Code_mux0000_1_42 : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      I2 => ULA_Op_Code(2),
      I3 => ULA_Op_Code(3),
      O => ULA_Op_Code_mux0000_1_42_380
    );
  Outesquerda_mux0000_0_32 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Outesquerda_0_335,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => Outesquerda_mux0000_0_32_345
    );
  OutDireita_1_mux000016 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => OutDireita_1_296,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      O => OutDireita_1_mux000016_299
    );
  Outesquerda_mux0000_0_112_SW1 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => ULA_Op_Code(3),
      I1 => ULA_Op_Code(1),
      I2 => ULA_Op_Code(0),
      I3 => ULA_Op_Code(2),
      O => N169
    );
  Outesquerda_mux0000_3_SW1_SW0_G : LUT3
    generic map(
      INIT => X"F7"
    )
    port map (
      I0 => input_vector_3_IBUF_391,
      I1 => ButtonN_IBUF_13,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      O => N180
    );
  OutDireita_3_mux000047 : LUT4
    generic map(
      INIT => X"F2F0"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => OutDireita_3_mux000045_327,
      I3 => DIF(3),
      O => OutDireita_3_mux000047_328
    );
  Outesquerda_mux0000_0_112_SW0_SW0 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => verifica_FSM_FFd2_398,
      I1 => verifica_FSM_FFd3_400,
      I2 => ULA_Op_Code(0),
      O => N199
    );
  OutDireita_3_mux000029 : LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => N201,
      O => OutDireita_3_mux000029_326
    );
  OutDireita_2_mux000029 : LUT3
    generic map(
      INIT => X"07"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => N203,
      O => OutDireita_2_mux000029_317
    );
  ULA_Op_Code_mux0000_0_30 : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => ULA_Op_Code(2),
      I1 => ULA_Op_Code(3),
      I2 => ULA_Op_Code(1),
      I3 => Selecionador_Fases_cmp_eq0001,
      O => ULA_Op_Code_mux0000_0_30_375
    );
  Outesquerda_mux0000_3_SW1_SW1 : LUT4
    generic map(
      INIT => X"15BF"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => ButtonN_IBUF_13,
      I2 => input_vector_3_IBUF_391,
      I3 => Outesquerda_3_338,
      O => N133
    );
  OutDireita_1_mux0000211_SW0 : LUT4
    generic map(
      INIT => X"FF2E"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => verifica_FSM_FFd3_400,
      I2 => A(1),
      I3 => ULA_Op_Code(0),
      O => N207
    );
  OutDireita_0_mux000039_SW0 : LUT4
    generic map(
      INIT => X"1D15"
    )
    port map (
      I0 => verifica_FSM_FFd2_398,
      I1 => ULA_Op_Code(1),
      I2 => ULA_Op_Code(0),
      I3 => B(0),
      O => N193
    );
  Outesquerda_mux0000_0_31_SW1 : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => Outesquerda_0_335,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      I3 => Outesquerda_mux0000_0_13_343,
      O => N158
    );
  Outesquerda_mux0000_0_2_SW0 : LUT4
    generic map(
      INIT => X"FDDD"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => Selecionador_Fases_FSM_FFd2_362,
      I2 => ULA_Op_Code(0),
      I3 => ULA_Op_Code(1),
      O => N209
    );
  OutDireita_2_mux0000104 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => OutDireita_2_mux000029_317,
      I1 => verifica_FSM_FFd2_398,
      I2 => verifica_FSM_FFd3_400,
      I3 => N211,
      O => OutDireita_2_mux0000104_314
    );
  Selecionador_Fases_FSM_FFd1_1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_17,
      CE => Selecionador_Fases_not0001,
      CLR => rst_IBUF_395,
      D => Selecionador_Fases_FSM_FFd1_In,
      Q => Selecionador_Fases_FSM_FFd1_1_361
    );
  Contador_mux0001_16_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(16),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N83,
      O => Contador_mux0001(16)
    );
  Contador_mux0001_17_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(17),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N85,
      O => Contador_mux0001(17)
    );
  Contador_mux0001_18_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(18),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N87,
      O => Contador_mux0001(18)
    );
  Contador_mux0001_19_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(19),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N89,
      O => Contador_mux0001(19)
    );
  Contador_mux0001_20_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(20),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N91_276,
      O => Contador_mux0001(20)
    );
  Contador_mux0001_21_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(21),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N97,
      O => Contador_mux0001(21)
    );
  Contador_mux0001_22_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(22),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N99,
      O => Contador_mux0001(22)
    );
  Contador_mux0001_23_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(23),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N101,
      O => Contador_mux0001(23)
    );
  Contador_mux0001_24_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(24),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N103,
      O => Contador_mux0001(24)
    );
  Contador_mux0001_25_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(25),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N105,
      O => Contador_mux0001(25)
    );
  Contador_mux0001_26_Q : LUT4
    generic map(
      INIT => X"FF08"
    )
    port map (
      I0 => N25,
      I1 => Contador_addsub0000(26),
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N107,
      O => Contador_mux0001(26)
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_17
    );
  Madd_Contador_addsub0000_lut_0_INV_0 : INV
    port map (
      I => Contador(0),
      O => Madd_Contador_addsub0000_lut(0)
    );
  Mcompar_verifica_cmp_lt0000_lut_3_INV_0 : INV
    port map (
      I => Contador(17),
      O => Mcompar_verifica_cmp_lt0000_lut_3_Q
    );
  Mcompar_verifica_cmp_lt0000_lut_5_INV_0 : INV
    port map (
      I => Contador(19),
      O => Mcompar_verifica_cmp_lt0000_lut_5_Q
    );
  Mcompar_verifica_cmp_lt0000_lut_8_INV_0 : INV
    port map (
      I => Contador(25),
      O => Mcompar_verifica_cmp_lt0000_lut_8_Q
    );
  DIFF_DIFF_FA3_CARRY_OUT : MUXF5
    port map (
      I0 => N213,
      I1 => N214,
      S => DIFF_DIFF_COUT_FA1,
      O => borrow_diff
    );
  DIFF_DIFF_FA3_CARRY_OUT_F : LUT4
    generic map(
      INIT => X"7310"
    )
    port map (
      I0 => B(2),
      I1 => B(3),
      I2 => A(2),
      I3 => A(3),
      O => N213
    );
  DIFF_DIFF_FA3_CARRY_OUT_G : LUT4
    generic map(
      INIT => X"8AEF"
    )
    port map (
      I0 => A(3),
      I1 => A(2),
      I2 => B(2),
      I3 => B(3),
      O => N214
    );
  verifica_FSM_FFd1_In : MUXF5
    port map (
      I0 => N215,
      I1 => N216,
      S => Mcompar_verifica_cmp_lt0000_cy(9),
      O => verifica_FSM_FFd1_In_397
    );
  verifica_FSM_FFd1_In_F : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => Outesquerda_and0001,
      I1 => verifica_FSM_FFd1_396,
      I2 => ULA_Op_Code(1),
      O => N215
    );
  verifica_FSM_FFd1_In_G : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => Outesquerda_and0001,
      I1 => verifica_FSM_FFd3_400,
      I2 => verifica_FSM_FFd2_398,
      I3 => ULA_Op_Code(1),
      O => N216
    );
  OutDireita_1_mux0000220 : MUXF5
    port map (
      I0 => N217,
      I1 => N218,
      S => verifica_FSM_FFd2_398,
      O => OutDireita_1_mux0000220_302
    );
  OutDireita_1_mux0000220_F : LUT3
    generic map(
      INIT => X"4E"
    )
    port map (
      I0 => ULA_Op_Code(1),
      I1 => OutDireita_1_mux0000184_300,
      I2 => N207,
      O => N217
    );
  OutDireita_1_mux0000220_G : LUT4
    generic map(
      INIT => X"C888"
    )
    port map (
      I0 => OutDireita_1_mux000091_310,
      I1 => B(1),
      I2 => A(1),
      I3 => OutDireita_1_mux0000141_298,
      O => N218
    );
  OutDireita_2_mux0000104_SW0 : MUXF5
    port map (
      I0 => N219,
      I1 => N220,
      S => ULA_Op_Code(0),
      O => N211
    );
  OutDireita_2_mux0000104_SW0_F : LUT4
    generic map(
      INIT => X"8986"
    )
    port map (
      I0 => A(2),
      I1 => B(2),
      I2 => ULA_Op_Code(1),
      I3 => SUM_COUT_FA1,
      O => N219
    );
  OutDireita_2_mux0000104_SW0_G : LUT3
    generic map(
      INIT => X"09"
    )
    port map (
      I0 => SUM_FA2_halfSum,
      I1 => DIFF_DIFF_COUT_FA1,
      I2 => ULA_Op_Code(1),
      O => N220
    );
  Selecionador_Fases_not00011 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => ButtonE_IBUF_11,
      I2 => ButtonS_IBUF_15,
      O => Selecionador_Fases_not00011_366
    );
  Selecionador_Fases_not00012 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => Selecionador_Fases_FSM_FFd1_359,
      I1 => ButtonN_IBUF_13,
      O => Selecionador_Fases_not00012_367
    );
  Selecionador_Fases_not0001_f5 : MUXF5
    port map (
      I0 => Selecionador_Fases_not00012_367,
      I1 => Selecionador_Fases_not00011_366,
      S => Selecionador_Fases_FSM_FFd2_362,
      O => Selecionador_Fases_not0001
    );
  Contador_mux0001_2_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(2),
      I1 => N23,
      LO => N45
    );
  Contador_mux0001_1_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(1),
      I1 => N23,
      LO => N47
    );
  Contador_mux0001_0_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(0),
      I1 => N23,
      LO => N49
    );
  verifica_FSM_FFd1_In21 : LUT2_D
    generic map(
      INIT => X"1"
    )
    port map (
      I0 => ULA_Op_Code(3),
      I1 => ULA_Op_Code(2),
      LO => N221,
      O => Outesquerda_and0001
    );
  Contador_mux0001_3_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(3),
      I1 => N23,
      LO => N51
    );
  Contador_mux0001_4_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(4),
      I1 => N23,
      LO => N53
    );
  Contador_mux0001_5_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(5),
      I1 => N23,
      LO => N55
    );
  Contador_mux0001_6_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(6),
      I1 => N23,
      LO => N57
    );
  Contador_mux0001_7_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(7),
      I1 => N23,
      LO => N59
    );
  Contador_mux0001_8_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(8),
      I1 => N23,
      LO => N61
    );
  Contador_mux0001_9_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(9),
      I1 => N23,
      LO => N63
    );
  Contador_mux0001_14_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(14),
      I1 => N23,
      LO => N65
    );
  Contador_mux0001_13_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(13),
      I1 => N23,
      LO => N67
    );
  Contador_mux0001_12_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(12),
      I1 => N23,
      LO => N69
    );
  Contador_mux0001_11_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(11),
      I1 => N23,
      LO => N71
    );
  Contador_mux0001_10_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(10),
      I1 => N23,
      LO => N73
    );
  verifica_FSM_FFd3_In_SW0 : LUT4_L
    generic map(
      INIT => X"5DFF"
    )
    port map (
      I0 => Outesquerda_and0001,
      I1 => verifica_FSM_FFd1_396,
      I2 => verifica_FSM_FFd2_398,
      I3 => N9,
      LO => N78
    );
  Contador_mux0001_15_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(15),
      I1 => N23,
      LO => N81
    );
  Contador_mux0001_16_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(16),
      I1 => N23,
      LO => N83
    );
  Contador_mux0001_17_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(17),
      I1 => N23,
      LO => N85
    );
  Contador_mux0001_18_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(18),
      I1 => N23,
      LO => N87
    );
  Contador_mux0001_19_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(19),
      I1 => N23,
      LO => N89
    );
  Contador_mux0001_20_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(20),
      I1 => N23,
      LO => N91_276
    );
  OutDireita_1_mux000013111 : LUT2_L
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => ULA_Op_Code(1),
      I1 => ULA_Op_Code(0),
      LO => Outesquerda_cmp_eq0001
    );
  Contador_mux0001_21_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(21),
      I1 => N23,
      LO => N97
    );
  Contador_mux0001_22_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(22),
      I1 => N23,
      LO => N99
    );
  Contador_mux0001_23_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(23),
      I1 => N23,
      LO => N101
    );
  Contador_mux0001_24_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(24),
      I1 => N23,
      LO => N103
    );
  Contador_mux0001_25_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(25),
      I1 => N23,
      LO => N105
    );
  Contador_mux0001_26_SW0 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => Contador(26),
      I1 => N23,
      LO => N107
    );
  ULA_Op_Code_mux0000_1_12 : LUT2_L
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      LO => ULA_Op_Code_mux0000_1_12_377
    );
  SUM_FA3_HA0_Mxor_HALF_SUM_Result1 : LUT2_D
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => B(3),
      I1 => A(3),
      LO => N222,
      O => SUM_FA3_halfSum
    );
  Outesquerda_mux0000_2_18 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ButtonN_IBUF_13,
      I1 => input_vector_2_IBUF_390,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      LO => N223,
      O => Outesquerda_mux0000_2_18_350
    );
  Outesquerda_mux0000_1_32 : LUT3_D
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => ButtonN_IBUF_13,
      I1 => input_vector_1_IBUF_389,
      I2 => Selecionador_Fases_FSM_FFd1_359,
      LO => N224,
      O => Outesquerda_mux0000_1_32_348
    );
  OutDireita_0_mux000029 : LUT3_L
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => B(0),
      I1 => verifica_FSM_FFd2_398,
      I2 => ULA_Op_Code(0),
      LO => OutDireita_0_mux000029_289
    );
  OutDireita_0_mux000073 : LUT2_D
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => ULA_Op_Code(0),
      LO => N225,
      O => OutDireita_0_mux000073_293
    );
  OutDireita_0_mux0000104 : LUT4_L
    generic map(
      INIT => X"AB01"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => verifica_FSM_FFd2_398,
      I2 => verifica_FSM_FFd3_400,
      I3 => borrow_diff,
      LO => OutDireita_0_mux0000104_287
    );
  OutDireita_3_mux000045 : LUT4_L
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => A(3),
      I1 => B(3),
      I2 => ULA_Op_Code(1),
      I3 => ULA_Op_Code(0),
      LO => OutDireita_3_mux000045_327
    );
  SUM_FA1_CARRY_OUT1 : LUT4_D
    generic map(
      INIT => X"E888"
    )
    port map (
      I0 => B(1),
      I1 => A(1),
      I2 => A(0),
      I3 => B(0),
      LO => N226,
      O => SUM_COUT_FA1
    );
  DIFF_DIFF_Mxor_V_Result1 : LUT4_L
    generic map(
      INIT => X"4DB2"
    )
    port map (
      I0 => A(2),
      I1 => B(2),
      I2 => DIFF_DIFF_COUT_FA1,
      I3 => borrow_diff,
      LO => overflow_diff
    );
  OutDireita_1_mux000058 : LUT4_L
    generic map(
      INIT => X"3113"
    )
    port map (
      I0 => B(0),
      I1 => A(1),
      I2 => A(0),
      I3 => ULA_Op_Code(0),
      LO => OutDireita_1_mux000058_309
    );
  OutDireita_1_mux0000268 : LUT4_L
    generic map(
      INIT => X"8A2A"
    )
    port map (
      I0 => A(1),
      I1 => A(0),
      I2 => B(0),
      I3 => ULA_Op_Code(0),
      LO => OutDireita_1_mux0000268_304
    );
  OutDireita_1_mux0000280 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => B(0),
      I1 => verifica_FSM_FFd2_398,
      LO => OutDireita_1_mux0000280_305
    );
  Outesquerda_mux0000_0_112 : LUT4_D
    generic map(
      INIT => X"FF8F"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => Outesquerda_and0001,
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      LO => N227,
      O => N12
    );
  SUM_Mxor_V_Result1_SW0 : LUT4_D
    generic map(
      INIT => X"E777"
    )
    port map (
      I0 => A(3),
      I1 => B(3),
      I2 => A(2),
      I3 => B(2),
      LO => N228,
      O => N117
    );
  SUM_Mxor_V_Result1_SW1 : LUT4_D
    generic map(
      INIT => X"EEE7"
    )
    port map (
      I0 => A(3),
      I1 => B(3),
      I2 => A(2),
      I3 => B(2),
      LO => N229,
      O => N118
    );
  OutDireita_2_mux0000215 : LUT4_L
    generic map(
      INIT => X"AA80"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => Outesquerda_cmp_eq0000,
      I2 => N125,
      I3 => OutDireita_2_mux0000199_315,
      LO => OutDireita_2_mux0000215_316
    );
  ULA_Op_Code_mux0000_1_29 : LUT4_L
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => ULA_Op_Code(0),
      I2 => ULA_Op_Code(1),
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      LO => ULA_Op_Code_mux0000_1_29_379
    );
  SUM_FA3_CARRY_OUT1_SW1 : LUT4_L
    generic map(
      INIT => X"FEF0"
    )
    port map (
      I0 => A(3),
      I1 => B(3),
      I2 => OutDireita_0_mux000057_291,
      I3 => OutDireita_0_mux000073_293,
      LO => N130
    );
  Outesquerda_mux0000_2_5 : LUT4_L
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => Outesquerda_and0001,
      I1 => N137,
      I2 => Selecionador_Fases_cmp_eq0001,
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      LO => Outesquerda_mux0000_2_5_351
    );
  Outesquerda_mux0000_1_10 : LUT4_L
    generic map(
      INIT => X"0040"
    )
    port map (
      I0 => N139,
      I1 => Outesquerda_and0001,
      I2 => Selecionador_Fases_cmp_eq0001,
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      LO => Outesquerda_mux0000_1_10_347
    );
  OutDireita_3_mux000010 : LUT4_L
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => N141,
      I1 => Outesquerda_and0001,
      I2 => Mcompar_verifica_cmp_lt0000_cy(9),
      I3 => N142,
      LO => OutDireita_3_mux000010_321
    );
  OutDireita_3_mux0000158 : LUT4_L
    generic map(
      INIT => X"1001"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => SUM_FA2_halfSum,
      I3 => SUM_COUT_FA1,
      LO => OutDireita_3_mux0000158_322
    );
  OutDireita_1_mux0000344 : LUT4_L
    generic map(
      INIT => X"3222"
    )
    port map (
      I0 => OutDireita_1_mux0000314_307,
      I1 => ULA_Op_Code(1),
      I2 => verifica_FSM_FFd1_396,
      I3 => N147,
      LO => OutDireita_1_mux0000344_308
    );
  OutDireita_3_mux0000185_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"9FF6"
    )
    port map (
      I0 => B(1),
      I1 => A(1),
      I2 => A(0),
      I3 => B(0),
      LO => N165
    );
  OutDireita_0_mux000010 : LUT4_L
    generic map(
      INIT => X"ABA8"
    )
    port map (
      I0 => N115,
      I1 => Mcompar_verifica_cmp_lt0000_cy(9),
      I2 => N169,
      I3 => N114,
      LO => OutDireita_0_mux000010_286
    );
  OutDireita_3_mux000068 : LUT4_L
    generic map(
      INIT => X"0110"
    )
    port map (
      I0 => ULA_Op_Code(0),
      I1 => ULA_Op_Code(1),
      I2 => SUM_FA3_halfSum,
      I3 => SUM_COUT_FA2,
      LO => OutDireita_3_mux000068_329
    );
  OutDireita_3_mux0000222_SW0 : LUT4_L
    generic map(
      INIT => X"F6BD"
    )
    port map (
      I0 => A(2),
      I1 => B(2),
      I2 => SUM_FA3_halfSum,
      I3 => DIFF_DIFF_COUT_FA1,
      LO => N175
    );
  Outesquerda_mux0000_1_23_SW0_SW0 : LUT4_L
    generic map(
      INIT => X"BFFF"
    )
    port map (
      I0 => verifica_FSM_FFd3_400,
      I1 => verifica_FSM_FFd1_396,
      I2 => Outesquerda_1_336,
      I3 => Selecionador_Fases_FSM_FFd1_359,
      LO => N191
    );
  ULA_Op_Code_mux0000_0_45_SW2 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => verifica_FSM_FFd1_396,
      I1 => Mcompar_verifica_cmp_lt0000_cy(9),
      LO => N197
    );
  OutDireita_3_mux00002_SW3 : LUT4_L
    generic map(
      INIT => X"AEA2"
    )
    port map (
      I0 => input_vector_2_IBUF_390,
      I1 => Selecionador_Fases_FSM_FFd1_359,
      I2 => Selecionador_Fases_FSM_FFd2_362,
      I3 => OutDireita_2_311,
      LO => N144
    );
  Outesquerda_mux0000_0_112_SW0 : LUT4_L
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => ULA_Op_Code(2),
      I1 => ULA_Op_Code(3),
      I2 => ULA_Op_Code(1),
      I3 => N199,
      LO => N167
    );
  OutDireita_3_mux000029_SW0 : LUT4_L
    generic map(
      INIT => X"F35F"
    )
    port map (
      I0 => B(3),
      I1 => A(3),
      I2 => verifica_FSM_FFd2_398,
      I3 => verifica_FSM_FFd3_400,
      LO => N201
    );
  OutDireita_2_mux000029_SW0 : LUT4_L
    generic map(
      INIT => X"F35F"
    )
    port map (
      I0 => B(2),
      I1 => A(2),
      I2 => verifica_FSM_FFd2_398,
      I3 => verifica_FSM_FFd3_400,
      LO => N203
    );
  Outesquerda_mux0000_0_2 : LUT4_L
    generic map(
      INIT => X"0008"
    )
    port map (
      I0 => verifica_FSM_FFd3_400,
      I1 => Outesquerda_and0001,
      I2 => N209,
      I3 => Mcompar_verifica_cmp_lt0000_cy(9),
      LO => Outesquerda_mux0000_0_2_344
    );

end Structure;

