library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gates_4_Top is
    Port( 
    sw : in STD_LOGIC_VECTOR(3 downto 0);
    ld : out STD_LOGIC_VECTOR(5 downto 0)
     );
end Gates_4_Top;

architecture Behavioral of Gates_4_Top is
--- Component Declaration ---
component Gates_4_input is 
  Port ( 
      x: in STD_LOGIC_VECTOR(4 downto 1);
      z: out STD_LOGIC_VECTOR(6 downto 1)
      );
end component;
begin
--- Component Instantiation ---
component1 : Gates_4_input
    port map(
    x => sw, -- x4 to sw3, x3 to sw2, ... 
    z => ld -- z6 to ld5, z5 to ld4, ...
    );
end Behavioral;
