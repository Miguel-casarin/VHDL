library ieee;
use ieee.std_logic_1164.all;

entity rca_or is
    port(
        a, b : in std_logic;
        y : out std_logic);
end rca_or;

architecture gate_or of rca_or is

begin
    y <= a or b;
end gate_or; 