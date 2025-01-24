library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2x1_Method_2 is
    Port( 
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        s: in STD_LOGIC;
        y: out STD_LOGIC
     );
end MUX_2x1_Method_2;

architecture Behavioral of MUX_2x1_Method_2 is
begin
    P1: process (a, b, s) 
        begin
        if s = '0' then 
            y <= a;
        else 
            y <= b;
        end if;
    end process P1;
end Behavioral;
