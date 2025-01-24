library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2x1_Top is
    Port( 
    sw : in STD_LOGIC_VECTOR(1 downto 0);
    btn : in STD_LOGIC_VECTOR(0 downto 0);
    ld : out STD_LOGIC_VECTOR(0 downto 0)
    -- btn and ld are (0 downto 0) Because 
    -- we need a single LED and btn
    -- while ld and btn are defined as 
    -- STD_LOGIC_VECTOR in the ucf file
     );
end MUX_2x1_Top;

architecture Behavioral of MUX_2x1_Top is
--- Component Declaration ---
component MUX_2x1_Method_2 is 
  Port ( 
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        s: in STD_LOGIC;
        y: out STD_LOGIC
        );
end component;
begin
--- Component Instantiation ---
component1 : MUX_2x1_Method_2
    port map(
    a => sw(0), 
    b => sw(1),
    s => btn(0), 
    y => ld(0)
    );
end Behavioral;
