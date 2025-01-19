library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Gates_4_input_tb is
-- Testbench has no ports
end Gates_4_input_tb;

architecture Behavioral of Gates_4_input_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component Gates_4_input
        Port (
            x : in STD_LOGIC_VECTOR(4 downto 1);
            z : out STD_LOGIC_VECTOR(6 downto 1)
        );
    end component;

    -- Signals to connect to UUT
    signal x : STD_LOGIC_VECTOR(4 downto 1) := (others => '0');
    signal z : STD_LOGIC_VECTOR(6 downto 1);

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Gates_4_input
        Port map (
            x => x,
            z => z
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: x = "0000"
        x <= "0000";
        wait for 10 ns;

        -- Test Case 2: x = "0001"
        x <= "0001";
        wait for 10 ns;

        -- Test Case 3: x = "0010"
        x <= "0010";
        wait for 10 ns;

        -- Test Case 4: x = "0100"
        x <= "0100";
        wait for 10 ns;

        -- Test Case 5: x = "1000"
        x <= "1000";
        wait for 10 ns;

        -- Test Case 6: x = "1111"
        x <= "1111";
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;
