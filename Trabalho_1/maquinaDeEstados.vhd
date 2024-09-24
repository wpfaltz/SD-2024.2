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

		--> Componentes da máquina de estados
		signal verifica: integer range 0 to 5 := 0;
		signal Selecionador_Fases : integer range 0 to 3 := 0;-----
		signal Contador : integer range 0 to 100000000 :=0; ------ contar 2 segundos
		-- signal continuar : integer range 0 to 9 := 9;
		signal A : std_logic_vector (3 downto 0); ----- valor do primeiro numero
		signal B : std_logic_vector (3 downto 0); ----- valor do segundo numero
		signal C : std_logic_vector (3 downto 0); ----- valor correspondente ao código da operação inicial da ULA

		-- Somador
		signal SOMA : std_logic_vector (3 downto 0); -------- resultado da soma
		signal cout_Soma : std_logic;
		signal overflow_soma : std_logic;


		-- AND dos 2 vetores
		signal ANDE : std_logic_vector (3 downto 0);------resultado and de A e B

		begin
		AND_2 : AND_2_Vectors_4_Bits port map(A,B,ANDE);
		SUM : SUM_2_Vectors_4_Bits port map(A, B,’0’,SOMA, cout_Soma, overflow_soma);


		process(Clk,rst)
		begin
				if (rst = ’1’) then
						-- Resetar todos os sinais
						Selecionador_Fases <= 0;
						OutEsquerda<="1111";
						OutDireita<="1111";
						-- continuar <= 0;
						Contador <= 0;
						verifica <= 0;
				elsif rising_edge(CLK) then
						-- Lidar com o recebimento dos inputs
						if (buttonN = '1' and Selecionador_Fases = 0) then
								A <= input_vector;
								Selecionador_Fases <= 1;
						elsif (buttonE = ’1’ and Selecionador_Fases = 1) then
								B <= input_vector;
								Selecionador_Fases <= 2;
						elsif (buttonS = ’1’ and Selecionador_Fases = 2) then
								c<= input_vector;
								Selecionador_Fases <= 3;
						end if;

						if Selecionador_Fases = 3 then
								case c is
										when "0000" => -- ULA realiza operação de soma
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case;
										when "0001" =>
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case; 
										when "0010" =>
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case; 
										when "0011" =>
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case; 
										when "0100" =>
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case;  
										when "0101" =>
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case;  
										when "0110" =>
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case; 
										when "0111" =>
												case verifica is 
														when 0 => -- Máquina de estados da operação de soma no estado 0
																-- Mostrar código da operação da ULA
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 1 => -- Máquina de estados da operação de soma no estado 1
																-- Mostrar input A
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 2 => -- Máquina de estados da operação de soma no estado 2 
																-- Mostrar input B
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when 3 => -- Máquina de estados da operação de soma no estado 3
																-- Mostrar resultado da operação
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if; 
														when 4 => -- Máquina de estados da operação de soma no estado 4
																-- Mostrar flags
																if Contador < 100000000 then
																		Contador <= ;
																		OutEsquerda <= ;
																		OutDireita <= ;
																else
																		-- Ajustar pra transitar a máquina de estados da operação
																		verifica <= ;
																		Contador <= ;
																end if;
														when others => 
																verifica <= 0; -- Default case para prevenir estados indefinidos
												end case; 
								end case;
						end if;
				end if;
		end process;
end Behavioral;
