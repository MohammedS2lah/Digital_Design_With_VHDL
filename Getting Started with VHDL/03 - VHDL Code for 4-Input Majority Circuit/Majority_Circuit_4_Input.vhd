library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Majority_Circuit_4_Input is
    Port( 
        a: in STD_LOGIC;
        b: in STD_LOGIC;
        c: in STD_LOGIC;
        d: in STD_LOGIC;
        f: out STD_LOGIC
         );
end Majority_Circuit_4_Input;

architecture Behavioral of Majority_Circuit_4_Input is
begin
    f <= ((a and b and c) or (a and b and d) or 
          (b and c and d) or (a and c and d));
end Behavioral;
