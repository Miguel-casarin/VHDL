library ieee;
use ieee.std_logic_1164.all;

entity rca is 
port(
	a, b : in std_logic;
	saida : out std_logic
);

end rca;

architecture g_xor of rca is
begin
	saida <= a xor b;
	
end g_xor;
