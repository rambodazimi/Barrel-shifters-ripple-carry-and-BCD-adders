
--Implementing 2-1 MUX using logic gates (And, Or, Not) -> Structural
-- Rambod Azimi 260911967
-- Zuhair Mesam Salwati 261018266


--Package
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;


--Entity (declaring inputs and outputs of the circuit)
entity rambod_azimi_MUX_structural is
	PORT( A: in std_logic;
			B: in std_logic;
			S: in std_logic;
			Y: out std_logic);
end rambod_azimi_MUX_structural;


--Architecture (Structural)
architecture mux of rambod_azimi_MUX_structural is
begin

Y <= ((not S) and A) or (S and B);	-- Y = (S'A + SB)

end mux;




