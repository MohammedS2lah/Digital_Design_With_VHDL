library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2x1_Method_3 is
    Port( 
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        s: in STD_LOGIC;
        y: out STD_LOGIC
     );
end MUX_2x1_Method_3;

architecture Behavioral of MUX_2x1_Method_3 is
begin
    y <= a when s = '0' else b;
end Behavioral;
