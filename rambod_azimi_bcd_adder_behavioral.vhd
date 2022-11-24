library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rambod_azimi_bcd_adder_behavioral is
    port(
        A: in unsigned(3 downto 0);
		  B: in unsigned(3 downto 0);
        S: out unsigned(3 downto 0); 
        C: out std_logic  
    );
end rambod_azimi_bcd_adder_behavioral;

architecture bcd of rambod_azimi_bcd_adder_behavioral is


begin

process(A,B)
variable sum : unsigned(4 downto 0);
begin
    sum:= ('0' & A) + ('0' & B);
    if(sum > 9) then
        C <= '1';
        S <= resize((sum + "00110"),4);	--resize the size of sum from 5 bit to 4 bit
    else
        C <= '0';
        S <= sum(3 downto 0);
    end if; 
end process;   

end bcd;