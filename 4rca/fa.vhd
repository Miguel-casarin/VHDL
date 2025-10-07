library ieee;
use ieee.std_logic_1164.all;

entity fa is
    port(
        a, b, cin : in std_logic; 
        s, cout : out std_logic 
    );
end fa;

architecture full_adder of fa is 
-- xor
component rca_xor 
    port(a, b : in std_logic;
         y : out std_logic);
end component;

--and
component rca_and
    port(a, b : in std_logic;
         y : out std_logic);
end component; 

-- or
component rca_or
    port(a, b : in std_logic;
         y : out std_logic);
end component;

signal s1, c1, c2 : std_logic;

begin

	xor1 : rca_xor port map(
		a => a, 
		b => b, 
		y => s1
	);

	xor2 : rca_xor port map(
		a => s1, 
		b => cin, 
		y => s
	);

	and1 : rca_and port map(
		a => a, 
		b => b, 
		y => c1
	);

	and2 : rca_and port map(
		a => s1, 
		b => cin, 
		y => c2
	);

	or1 : rca_or port map(
		a => c1, 
		b => c2, 
		y => cout
	);

end full_adder;