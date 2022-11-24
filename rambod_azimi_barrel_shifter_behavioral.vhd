library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity rambod_azimi_barrel_shifter_behavioral is
Port (X : in std_logic_vector (3 downto 0) ;
sel : in std_logic_vector (1 downto 0) ;
Y : out std_logic_vector (3 downto 0) );
end rambod_azimi_barrel_shifter_behavioral ;



--Architecture (Structural)
architecture barrel_shifter of rambod_azimi_barrel_shifter_behavioral is

signal y_output: std_logic_vector(3 downto 0);

--Component
component rambod_azimi_MUX_behavioral is
	PORT( A: in std_logic;
			B: in std_logic;
			S: in std_logic;
			Y: out std_logic);
end component;

begin

MUX_1: rambod_azimi_MUX_behavioral port map (x(0), x(2), Sel(1), y_output(0));
MUX_2: rambod_azimi_MUX_behavioral port map (x(1), x(3), Sel(1), y_output(1));
MUX_3: rambod_azimi_MUX_behavioral port map (x(2), x(0), Sel(1), y_output(2));
MUX_4: rambod_azimi_MUX_behavioral port map (x(3), x(1), Sel(1), y_output(3));

MUX_5: rambod_azimi_MUX_behavioral port map (y_output(0), y_output(3), Sel(0), Y(0));
MUX_6: rambod_azimi_MUX_behavioral port map (y_output(1), y_output(0), Sel(0), Y(1));
MUX_7: rambod_azimi_MUX_behavioral port map (y_output(2), y_output(1), Sel(0), Y(2));
MUX_8: rambod_azimi_MUX_behavioral port map (y_output(3), y_output(2), Sel(0), Y(3));


end barrel_shifter;