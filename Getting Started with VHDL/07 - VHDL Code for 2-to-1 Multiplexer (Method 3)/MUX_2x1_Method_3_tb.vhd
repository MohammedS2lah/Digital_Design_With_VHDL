library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2x1_Method_3_tb is
-- Testbench entity has no ports
end MUX_2x1_Method_3_tb;

architecture Behavioral of MUX_2x1_Method_3_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component MUX_2x1_Method_3
        Port(
            a: in STD_LOGIC;
            b: in STD_LOGIC;
            s: in STD_LOGIC;
            y: out STD_LOGIC
        );
    end component;

    -- Signals to connect to UUT
    signal a: STD_LOGIC := '0';
    signal b: STD_LOGIC := '0';
    signal s: STD_LOGIC := '0';
    signal y: STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: MUX_2x1_Method_3
        Port map(
            a => a,
            b => b,
            s => s,
            y => y
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: s = 0, a = 0, b = 0
        a <= '0'; b <= '0'; s <= '0';
        wait for 10 ns;
        
        -- Test Case 2: s = 0, a = 1, b = 0
        a <= '1'; b <= '0'; s <= '0';
        wait for 10 ns;
        
        -- Test Case 3: s = 1, a = 0, b = 1
        a <= '0'; b <= '1'; s <= '1';
        wait for 10 ns;

        -- Test Case 4: s = 1, a = 1, b = 0
        a <= '1'; b <= '0'; s <= '1';
        wait for 10 ns;

        -- Test Case 5: s = 0, a = 1, b = 1
        a <= '1'; b <= '1'; s <= '0';
        wait for 10 ns;

        -- Test Case 6: s = 1, a = 0, b = 0
        a <= '0'; b <= '0'; s <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;
