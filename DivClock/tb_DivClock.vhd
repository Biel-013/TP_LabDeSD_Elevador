library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_DivClock is
end tb_DivClock;

architecture Behavioral of tb_DivClock is
component DivClock is
generic(Divisao : integer := 50000);
    Port (
        CLK_ClockIN  : in  STD_LOGIC;  -- Clock input
        CLK_Reset   : in  STD_LOGIC;  -- Reset input
        CLK_ClockOUT : out STD_LOGIC   -- Clock output (divided clock)
    );
end component;

    signal SIG_ClockIN  : STD_LOGIC := '0';
    signal SIG_Reset   : STD_LOGIC := '0';
    signal SIG_ClockOUT : STD_LOGIC;

    -- Clock period definition
    constant CLK_PERIOD : time := 10 ns;

begin
    -- Instantiate the Unit Under Test (UUT)
    uut: DivClock
        port map (
            CLK_ClockIN  => SIG_ClockIN,
            CLK_Reset   => SIG_Reset,
            CLK_ClockOUT => SIG_ClockOUT
        );

    -- Clock generation process
    clk_process :process
    begin
        SIG_ClockIN <= '0';
        wait for CLK_PERIOD/2;
        SIG_ClockIN <= '1';
        wait for CLK_PERIOD/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin
        -- Hold reset state for 20 ns
        SIG_Reset <= '1';
        wait for 20 ns;
        SIG_Reset <= '0';
        
        -- Insert more stimulus here if necessary
        wait for 200 ns;

        -- Stop the simulation
        wait;
    end process;

end Behavioral;
