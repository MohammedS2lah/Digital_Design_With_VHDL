library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Majority_Circuit_4_Top is
    Port( 
    sw : in STD_LOGIC_VECTOR(3 downto 0);
    ld : out STD_LOGIC_VECTOR(0 downto 0) 
    -- Because we need a single LED and 
    -- and ld is defined as a STD_LOGIC_VECTOR
    -- in the ucf file
     );
end Majority_Circuit_4_Top;

architecture Behavioral of Majority_Circuit_4_Top is
--- Component Declaration ---
component Majority_Circuit_4_Input is 
  Port ( 
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        c: in STD_LOGIC;
        d: in STD_LOGIC;
        f: out STD_LOGIC
        );
end component;
begin
--- Component Instantiation ---
component1 : Majority_Circuit_4_Input
    port map(
    a => sw(3), 
    b => sw(2),
    c => sw(1),
    d => sw(0), 
    f => ld(0)
    );
end Behavioral;
