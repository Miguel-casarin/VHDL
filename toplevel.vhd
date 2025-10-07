-- Criando uma porta nand com condicionais

-- Comportamento de uma nand 
--	a1 a2 x1
--	0  0  1
--	0  1  1
--	1  0  1
--	1  1  0

library ieee;
use ieee.std_logic_1164.all;

entity toplevel is

port (
	a1, a2 : in std_logic;
	x1 : out std_logic);
	
end toplevel;

architecture comportamento of toplevel is

signal s : std_logic_vector(1 downto 0);      

begin

 s <= a1 & a2;
 
 
with s select
x1 <= '1' when "00" | "01" | "10",
		'0' when "11";

 
 
end comportamento; 