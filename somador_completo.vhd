entity somador_completo is
    port(
        A, B,   : in bit; --entradas
        TE      : in bit; -- transporte de entrada 
        S       : out bit; -- soma
        TS      : out bit; -- saída
    );
end entity somador_completo;

architecture main of somador_completo is
begin
    S <= A Xor B Xor TE;
    TS <= (A and B) or (A and TE) or (B and TE);
end architecture;