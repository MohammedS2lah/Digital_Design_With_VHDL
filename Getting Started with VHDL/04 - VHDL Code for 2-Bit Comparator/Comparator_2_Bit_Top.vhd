library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator_2_Bit_Top is
    Port( 
    sw : in STD_LOGIC_VECTOR(3 downto 0);
    ld : out STD_LOGIC_VECTOR(2 downto 0)
     );
end Comparator_2_Bit_Top;

architecture Behavioral of Comparator_2_Bit_Top is
--- Component Declaration ---
component Comparator_2_Bit is 
  Port ( 
        a: in STD_LOGIC_VECTOR(1 downto 0);
        b: in STD_LOGIC_VECTOR(1 downto 0);
        a_eq_b: out STD_LOGIC;
        a_gt_b: out STD_LOGIC;
        a_lt_b: out STD_LOGIC
        );
end component;
begin
--- Component Instantiation ---
component1 : Comparator_2_Bit
    port map(
    a => sw(3 downto 2), 
    b => sw(1 downto 0),
    a_eq_b => ld(1),
    a_gt_b => ld(0), 
    a_lt_b => ld(2)
    );
end Behavioral;
