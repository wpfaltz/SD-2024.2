library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity maquinaDeEstados is
	Port ( input_vector : in STD_LOGIC_VECTOR (3 downto 0);
		CLK : in STD_LOGIC;
		ButtonN : in STD_LOGIC; -- Armazena o A
		ButtonE : in STD_LOGIC; -- Armazena o B
		ButtonS : in STD_LOGIC; -- Armazena a primeira operacao
		rst : in STD_LOGIC;
		Outesquerda : out STD_LOGIC_VECTOR (3 downto 0);
		OutDireita : out STD_LOGIC_VECTOR (3 downto 0));
end maquinaDeEstados;

architecture Behavioral of maquinaDeEstados is

		component AND_2_Vectors_4_Bits
			Port ( A : in STD_LOGIC_VECTOR (3 downto 0);
				B : in STD_LOGIC_VECTOR (3 downto 0);
				C : out STD_LOGIC_VECTOR (3 downto 0));
		end component;

		component SUM_2_Vectors_4_Bits
			Port (VECTOR_A, VECTOR_B: in std_logic_vector(3 downto 0);
				Cin : in std_logic;
				SUM_RESULT: out std_logic_vector (3 downto 0);
				Cout, V: out std_logic);
		end component;
		
		component DIFF_2_Vectors_4_Bits
			Port (VECTOR_A, VECTOR_B: in std_logic_vector(3 downto 0);
				Cin_2 : in std_logic;
				DIFF_RESULT: out std_logic_vector (3 downto 0);
				Borrow, V: out std_logic);
		end component;
		
		

		--> Componentes da máquina de estados
		signal verifica: integer range 0 to 5 := 0;
		signal Selecionador_Fases : integer range 0 to 3 := 0;-----
		signal Contador : integer range 0 to 100000000 :=0; ------ contar 2 segundos
		-- signal continuar : integer range 0 to 9 := 9;
		signal A : std_logic_vector (3 downto 0); ----- valor do primeiro numero
		signal B : std_logic_vector (3 downto 0); ----- valor do segundo numero
		signal ULA_Op_Code : std_logic_vector (3 downto 0); ----- valor correspondente ao código da operação inicial da ULA

		-- Somador
		signal SOMA : std_logic_vector (3 downto 0); -------- resultado da soma
		signal cout_Soma : std_logic;
		signal overflow_soma : std_logic;
		
		-- Subtrator
		signal DIF : std_logic_vector (3 downto 0); -------- resultado da soma
		signal borrow_diff : std_logic;
		signal overflow_diff : std_logic;
		
		-- AND dos 2 vetores
		signal ANDE : std_logic_vector (3 downto 0);------resultado and de A e B

		begin
		AND_2 : AND_2_Vectors_4_Bits port map(A,B,ANDE);
		SUM : SUM_2_Vectors_4_Bits port map(A, B,'0',SOMA, cout_Soma, overflow_soma);
		DIFF : DIFF_2_Vectors_4_Bits port map(A, B, '1', DIF, borrow_diff, overflow_diff);

		process(Clk,rst)
		begin
				if (rst = '1') then
						-- Resetar todos os sinais
						Selecionador_Fases <= 0;
						OutEsquerda<="0000";
						OutDireita<="0000";
						-- continuar <= 0;
						Contador <= 0;
						verifica <= 0;
				elsif rising_edge(CLK) then
						-- Lidar com o recebimento dos inputs
						if (buttonN = '1' and Selecionador_Fases = 0) then
								A <= input_vector;
								OutEsquerda<=input_vector;
								Selecionador_Fases <= 1;
						elsif (buttonE = '1' and Selecionador_Fases = 1) then
								B <= input_vector;
								OutDireita<=input_vector;
								Selecionador_Fases <= 2;
						elsif (buttonS = '1' and Selecionador_Fases = 2) then
								ULA_Op_Code<= input_vector;
								OutEsquerda<= "0000";
								OutDireita<=input_vector;
								Selecionador_Fases <= 3;
						end if;

						if Selecionador_Fases = 3 then
								case ULA_Op_Code is
										when "0000" => -- ULA realiza operação de soma
												if (verifica = 0) then -- Máquina de estados da operação de soma no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de soma no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de soma no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then -- Máquina de estados da operação de soma no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= SOMA;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 4;
																Contador <= 0;
														end if; 
												elsif (verifica = 4) then -- Máquina de estados da operação de soma no estado 4
														-- Mostrar flags
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0100";
																OutDireita(3)<= not (overflow_soma or SOMA(3) or SOMA(2) or SOMA(1) or SOMA(0)); -- flag zero
																OutDireita(2)<= (SOMA(3) and (not overflow_soma)) or ((not SOMA(3)) and cout_Soma and overflow_soma); -- flag negativo
																OutDireita(1)<= overflow_soma; -- flag overflow
																OutDireita(0)<= cout_Soma; -- flag carry
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0001";
																Contador <= 0;
														end if;
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when "0001" => -- ULA realiza operação de subtração
												if (verifica = 0) then -- Máquina de estados da operação de subtração no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de subtração no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de subtração no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then -- Máquina de estados da operação de subtração no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= DIF;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 4;
																Contador <= 0;
														end if; 
												elsif (verifica = 4) then -- Máquina de estados da operação de subtração no estado 4
														-- Mostrar flags
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0100";
																OutDireita(3)<= not (overflow_diff or DIF(3) or DIF(2) or DIF(1) or DIF(0)); -- flag zero
																OutDireita(2)<= (DIF(3) and (not overflow_diff)) or ((not DIF(3)) and borrow_diff and overflow_diff); -- flag negativo
																OutDireita(1)<= overflow_diff; -- flag overflow
																OutDireita(0)<= borrow_diff; -- flag carry
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0010";
																Contador <= 0;
														end if;
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when "0010" => -- ULA realiza operação de AND dos 2 vetores 
												if (verifica = 0) then -- Máquina de estados da operação de soma no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de soma no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de soma no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then-- Máquina de estados da operação de soma no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= ANDE;
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0000";
																Contador <= 0;
														end if; 
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when "0011" => -- ULA realiza operação de OR dos 2 vetores 
												if (verifica = 0) then -- Máquina de estados da operação de soma no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de soma no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de soma no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then-- Máquina de estados da operação de soma no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= ANDE;
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0000";
																Contador <= 0;
														end if; 
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when "0100" => -- ULA realiza operação de NOR dos 2 vetores 
												if (verifica = 0) then -- Máquina de estados da operação de soma no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de soma no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de soma no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then-- Máquina de estados da operação de soma no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= ANDE;
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0000";
																Contador <= 0;
														end if; 
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when "0101" => -- ULA realiza operação de NAND dos 2 vetores 
												if (verifica = 0) then -- Máquina de estados da operação de soma no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de soma no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de soma no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then-- Máquina de estados da operação de soma no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= ANDE;
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0000";
																Contador <= 0;
														end if; 
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when "0110" => -- ULA realiza operação de XOR dos 2 vetores 
												if (verifica = 0) then -- Máquina de estados da operação de soma no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de soma no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de soma no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then-- Máquina de estados da operação de soma no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= ANDE;
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0000";
																Contador <= 0;
														end if; 
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when "0111" => -- ULA realiza operação de NOT do segundo vetor
												if (verifica = 0) then -- Máquina de estados da operação de soma no estado 0
														-- Mostrar código da operação da ULA
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0000";
																OutDireita <= ULA_Op_Code;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 1;
																Contador <= 0;
														end if;
												elsif (verifica = 1) then -- Máquina de estados da operação de soma no estado 1
														-- Mostrar input A
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0001";
																OutDireita <= A;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 2;
																Contador <= 0;
														end if; 
												elsif (verifica = 2) then -- Máquina de estados da operação de soma no estado 2 
														-- Mostrar input B
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0010";
																OutDireita <= B;
														else
																-- Ajustar pra transitar a máquina de estados da operação
																verifica <= 3;
																Contador <= 0;
														end if;
												elsif (verifica = 3) then-- Máquina de estados da operação de soma no estado 3
														-- Mostrar resultado da operação
														if Contador < 100000000 then
																Contador <= Contador + 1;
																OutEsquerda <= "0011";
																OutDireita <= ANDE;
														else
																-- Ajustar pra transitar a máquina de estados da ULA
																verifica <= 0;
																ULA_Op_Code <= "0000";
																Contador <= 0;
														end if; 
												else
														verifica <= 0; -- Default case para prevenir estados indefinidos
												end if;
										when others => 
												verifica <= 0;
												ULA_Op_Code <= "0000";
												Contador <= 0;
								end case;
						end if;
				end if;
		end process;
end Behavioral;
