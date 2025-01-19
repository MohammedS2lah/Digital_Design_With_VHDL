library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gates_2_Top is
    Port( 
        sw : in STD_LOGIC_VECTOR(1 downto 0);
        ld : out STD_LOGIC_VECTOR(5 downto 0)
         );
end Gates_2_Top;

architecture Behavioral of Gates_2_Top is
--- Component Declaration ---
component Gates_2_input is 
  Port ( 
      a: in STD_LOGIC;
      b: in STD_LOGIC;
      z: out STD_LOGIC_VECTOR(5 downto 0)
      );
end component;
begin
--- Component Instantiation ---
component1 : Gates_2_input
    port map(
    a => sw(0),
    b => sw(1),
    z => ld
    );
end Behavioral;
