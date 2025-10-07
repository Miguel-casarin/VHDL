library ieee;
use ieee.std_logic_1164.all;

entity rca_and is
    port(
        a, b : in std_logic;
        y : out std_logic);
end rca_and;

architecture gate_and of rca_and is

begin
    y <= a and b;
end gate_and; 