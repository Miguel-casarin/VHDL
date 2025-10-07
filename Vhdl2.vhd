-- Criando uma porta nand com condicionais

-- Comportamento de uma nand 
--	a1 a2 x1
--	0  0  1
--	0  1  1
--	1  0  1
--	1  1  0

library ieee;
use ieee.std_logic_1164.all;

entity circuito is

port (
	a, b, c, d, e : in std_logic;
	vo1, vo2 : out std_logic);
	
end circuito;

architecture comportamento of circuito is

component toplevel is

port (
	a1, a2 : in std_logic;
	x1 : out std_logic);
	
end component;
  
signal s_n1, s_n2, s_n3, s_n4 : std_logic;  

begin

-- Estanciando um componente

 N1 : toplevel port map(
	a1 => a,
	a2 => c,
	x1 => s_n1);
 
end comportamento; 