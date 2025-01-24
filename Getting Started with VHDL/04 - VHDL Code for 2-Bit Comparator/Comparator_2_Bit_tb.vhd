library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator_2_Bit_tb is
-- Testbench entity has no ports
end Comparator_2_Bit_tb;

architecture Behavioral of Comparator_2_Bit_tb is

    -- Component Declaration for the Unit Under Test (UUT)
    component Comparator_2_Bit
        Port(
            a: in STD_LOGIC_VECTOR(1 downto 0);
            b: in STD_LOGIC_VECTOR(1 downto 0);
            a_eq_b: out STD_LOGIC;
            a_gt_b: out STD_LOGIC;
            a_lt_b: out STD_LOGIC
        );
    end component;

    -- Signals to connect to UUT
    signal a: STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal b: STD_LOGIC_VECTOR(1 downto 0) := "00";
    signal a_eq_b: STD_LOGIC;
    signal a_gt_b: STD_LOGIC;
    signal a_lt_b: STD_LOGIC;

begin

    -- Instantiate the Unit Under Test (UUT)
    uut: Comparator_2_Bit
        Port map(
            a => a,
            b => b,
            a_eq_b => a_eq_b,
            a_gt_b => a_gt_b,
            a_lt_b => a_lt_b
        );

    -- Stimulus Process
    stim_proc: process
    begin
        -- Test Case 1: a = 00, b = 00
        a <= "00"; b <= "00";
        wait for 10 ns;

        -- Test Case 2: a = 01, b = 00
        a <= "01"; b <= "00";
        wait for 10 ns;

        -- Test Case 3: a = 10, b = 11
        a <= "10"; b <= "11";
        wait for 10 ns;

        -- Test Case 4: a = 11, b = 10
        a <= "11"; b <= "10";
        wait for 10 ns;

        -- Test Case 5: a = 11, b = 11
        a <= "11"; b <= "11";
        wait for 10 ns;

        -- End simulation
        wait;
    end process;

end Behavioral;
