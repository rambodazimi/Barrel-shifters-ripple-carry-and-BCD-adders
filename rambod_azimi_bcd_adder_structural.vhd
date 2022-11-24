library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rambod_azimi_bcd_adder_structural is
    port(
        A: in std_logic_vector(3 downto 0);
		  B: in std_logic_vector(3 downto 0);
        S: out std_logic_vector(3 downto 0); 
        C: out std_logic  
    );
end rambod_azimi_bcd_adder_structural;

architecture bcd of rambod_azimi_bcd_adder_structural is

-- Importing the RCA to use it
component rambod_azimi_rca_structural is
port ( A: in std_logic_vector (3 downto 0);
		 B: in std_logic_vector (3 downto 0);
		 S: out std_logic_vector (4 downto 0));
end component;


signal sum: std_logic_vector(4 downto 0);
signal sum2: std_logic_vector(4 downto 0);
signal f: std_logic_vector(4 downto 0);
signal e: std_logic_vector(3 downto 0);
signal carry : std_logic; 
signal r : std_logic_vector (4 downto 0);

begin

RCA1: rambod_azimi_rca_structural port map(A, B, f);

carry <= (f(0) AND f(1)) OR (f(2) AND f(3)) OR f(4);
C <= carry;
e <= '0' & carry & carry & '0';

RCA2: rambod_azimi_rca_structural port map(A => f(3 downto 0), B=> e, S=> r );

S <= r (3 downto 0);


end bcd;
