----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:12:23 09/24/2024 
-- Design Name: 
-- Module Name:    NOT_Vector_4_Bits - Behavioral 
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

entity NOT_Vector_4_Bits is
    Port ( input_vector : in  STD_LOGIC_VECTOR (3 downto 0);
           output_vector : out  STD_LOGIC_VECTOR (3 downto 0));
end NOT_Vector_4_Bits;

architecture Behavioral of NOT_Vector_4_Bits is

begin
	output_vector <= NOT input_vector;

end Behavioral;

