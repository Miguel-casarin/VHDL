library ieee;
use ieee.std_logic_1164.all;

entity r_and is 
port(
	a, b : in std_logic;
	saida : out std_logic
);

end r_and;

architecture c_and of r_and is
begin
	saida <= a and b;
	
end c_and;
