library ieee;
use ieee.std_logic_1164.all;

entity rca_xor is
    port(
        a, b : in std_logic;
        y : out std_logic);
end rca_xor;

architecture gate_xor of rca_xor is

begin
    y <= a xor b;
end gate_xor; 