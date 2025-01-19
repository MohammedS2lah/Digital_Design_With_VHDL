library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gates_2_input is
  Port ( 
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        z: out STD_LOGIC_VECTOR(5 downto 0)
        );
end Gates_2_input;

architecture Behavioral of Gates_2_input is
begin
    z(5) <= a and b;
    z(4) <= a nand b;
    z(3) <= a or b;
    z(2) <= a nor b;
    z(1) <= a xor b;
    z(0) <= a xnor b;
end Behavioral;
