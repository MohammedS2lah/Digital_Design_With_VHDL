library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator_2_Bit is
    Port( 
        a: in STD_LOGIC_VECTOR(1 downto 0);
        b: in STD_LOGIC_VECTOR(1 downto 0);
        a_eq_b: out STD_LOGIC;
        a_gt_b: out STD_LOGIC;
        a_lt_b: out STD_LOGIC
         );
end Comparator_2_Bit;

architecture Behavioral of Comparator_2_Bit is
begin
    a_eq_b <=  ((not b(1)) and (not b(0)) and (not a(1)) and (not a(0))) 
            or ((not b(1)) and      b(0)  and (not a(1)) and      a(0) )
            or (     b(1)  and      b(0)  and      a(1)  and      a(0) )
            or (     b(1)  and (not b(0)) and      a(1)  and (not a(0)));
    
    a_gt_b <=  (not b(1) and a(1)) 
            or (not b(1) and not b(0) and a(0))
            or (not b(0) and a(1) and a(0));
            
    a_lt_b <=  (b(1) and not a(1)) 
            or (b(0) and not a(1) and not a(0)) 
            or (b(1) and b(0) and not a(0));    
end Behavioral;
