library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Majority_Circuit_4_Input_tb is
-- Testbench does not have any ports.
end Majority_Circuit_4_Input_tb;

architecture Behavioral of Majority_Circuit_4_Input_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component Majority_Circuit_4_Input
        Port (
            a : in STD_LOGIC;
            b : in STD_LOGIC;
            c : in STD_LOGIC;
            d : in STD_LOGIC;
            f : out STD_LOGIC
        );
    end component;

    -- Signals to connect to UUT
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal c : STD_LOGIC := '0';
    signal d : STD_LOGIC := '0';
    signal f : STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Majority_Circuit_4_Input
        Port map (
            a => a,
            b => b,
            c => c,
            d => d,
            f => f
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: All inputs are 0
        a <= '0'; b <= '0'; c <= '0'; d <= '0';
        wait for 10 ns;

        -- Test Case 2: One input is 1
        a <= '1'; b <= '0'; c <= '0'; d <= '0';
        wait for 10 ns;

        -- Test Case 3: Two inputs are 1
        a <= '1'; b <= '1'; c <= '0'; d <= '0';
        wait for 10 ns;

        -- Test Case 4: Three inputs are 1 (majority)
        a <= '1'; b <= '1'; c <= '1'; d <= '0';
        wait for 10 ns;

        -- Test Case 5: All inputs are 1
        a <= '1'; b <= '1'; c <= '1'; d <= '1';
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;
