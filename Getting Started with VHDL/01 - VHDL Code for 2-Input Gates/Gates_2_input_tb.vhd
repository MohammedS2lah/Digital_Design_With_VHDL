library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gates_2_input_tb is
-- Testbench has no ports
end Gates_2_input_tb;

architecture Behavioral of Gates_2_input_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component Gates_2_input
        Port (
            a : in STD_LOGIC;
            b : in STD_LOGIC;
            z : out STD_LOGIC_VECTOR(5 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal a : STD_LOGIC := '0';
    signal b : STD_LOGIC := '0';
    signal z : STD_LOGIC_VECTOR(5 downto 0);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Gates_2_input
        Port map (
            a => a,
            b => b,
            z => z
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: a = '0', b = '0'
        a <= '0'; b <= '0';
        wait for 10 ns;

        -- Test Case 2: a = '0', b = '1'
        a <= '0'; b <= '1';
        wait for 10 ns;

        -- Test Case 3: a = '1', b = '0'
        a <= '1'; b <= '0';
        wait for 10 ns;

        -- Test Case 4: a = '1', b = '1'
        a <= '1'; b <= '1';
        wait for 10 ns;

        -- End of simulation
        wait;
    end process;

end Behavioral;
