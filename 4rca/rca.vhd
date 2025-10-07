library ieee;
use ieee.std_logic_1164.all;

entity rca is
    port(
        a, b : in std_logic_vector(3 downto 0);
        cin  : in std_logic;
        s    : out std_logic_vector(3 downto 0);
        cout : out std_logic
    );
end rca;

architecture fa_4 of rca is

    component fa
        port(
            a, b, cin : in std_logic;
            s, cout   : out std_logic
        );
    end component;

    signal c : std_logic_vector(3 downto 0);

begin

    c(0) <= cin;

    full_adder_1 : fa port map(
        a => a(0),
        b => b(0),
        cin => c(0),
        s => s(0),
        cout => c(1)
    );

    full_adder_2 : fa port map(
        a => a(1),
        b => b(1),
        cin => c(1),
        s => s(1),
        cout => c(2)
    );

    full_adder_3 : fa port map(
        a => a(2),
        b => b(2),
        cin => c(2),
        s => s(2),
        cout => c(3)
    );

    full_adder_4 : fa port map(
        a => a(3),
        b => b(3),
        cin => c(3),
        s => s(3),
        cout => cout
    );

end fa_4;
