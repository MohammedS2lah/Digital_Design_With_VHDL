library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gates_4_input is
  Port ( 
      x: in STD_LOGIC_VECTOR(4 downto 1);
      z: out STD_LOGIC_VECTOR(6 downto 1)
      );
end Gates_4_input;

architecture Behavioral of Gates_4_input is
begin
    z(6) <= x(1) and x(2) and x(3) and x(4);
    z(5) <= not(x(1) and x(2) and x(3) and x(4));
    z(4) <= x(1) or x(2) or x(3) or x(4);
    z(3) <= not(x(1) or x(2) or x(3) or x(4));
    z(2) <= x(1) xor x(2) xor x(3) xor x(4);
    z(1) <= x(1) xnor x(2) xnor x(3) xnor x(4);
end Behavioral;
