----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:07:30 09/24/2024 
-- Design Name: 
-- Module Name:    DIFF_2_Vectors_4_Bits - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity DIFF_2_Vectors_4_Bits is
    Port ( VECTOR_A : in  STD_LOGIC_VECTOR (3 downto 0);
           VECTOR_B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin_2 : in  STD_LOGIC;
           DIFF_RESULT : out  STD_LOGIC_VECTOR (3 downto 0);
           Borrow : out  STD_LOGIC;
           V : out  STD_LOGIC);
end DIFF_2_Vectors_4_Bits;

architecture Behavioral of DIFF_2_Vectors_4_Bits is
	signal NOT_VECTOR_B : std_logic_vector (3 downto 0);
	component NOT_Vector_4_Bits
			Port (input_vector : in  STD_LOGIC_VECTOR (3 downto 0);
					output_vector : out  STD_LOGIC_VECTOR (3 downto 0)
					);
	end component;

	component SUM_2_Vectors_4_Bits
			Port (VECTOR_A, VECTOR_B: in std_logic_vector(3 downto 0);
				Cin : in std_logic;
				SUM_RESULT: out std_logic_vector (3 downto 0);
				Cout, V: out std_logic);
	end component;


	begin
		NOT_B: NOT_Vector_4_Bits port map (VECTOR_B, NOT_VECTOR_B);
		DIFF : SUM_2_Vectors_4_Bits port map(VECTOR_A, NOT_VECTOR_B, Cin_2, DIFF_RESULT, Borrow, V);


end Behavioral;

