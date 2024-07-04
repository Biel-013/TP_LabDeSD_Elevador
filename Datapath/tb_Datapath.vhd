library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_Datapath is
    -- Testbenches don't have ports
end entity;

architecture behavior of tb_Datapath is
    -- Component declaration for the unit under test (UUT)
    component Datapath is
        port (
            DP_Clock : in std_logic;
            DP_Reset : in std_logic;
            DP_Reset_Emerg : in std_logic;
            DP_SensorPeso : in std_logic_vector(8 downto 0);
            DP_SensorAndar : in std_logic_vector(6 downto 0);
            DP_TecladoAndar : in std_logic_vector(6 downto 0);
            DP_FilaAndar_Add : in std_logic;
            DP_RegAndar_Load : in std_logic;
            DP_Temp_Start : in std_logic;
            DP_Temp_Reset : in std_logic;
            DP_Emerg_Start : in std_logic;
            DP_FilaAndar_Remove : in std_logic;
            DP_FilaAndar_SigOUT : out std_logic;
            DP_CompA_Maior : out std_logic;
            DP_CompA_Igual : out std_logic;
            DP_CompA_Menor : out std_logic;
            DP_Temp_SigOUT : out std_logic;
            DP_Emerg_SigOUT : out std_logic;
            DP_Sobrepeso_SigOUT : out std_logic;
            DP_DisplayPeso : out std_logic_vector(20 downto 0);
            DP_DisplayInterno : out std_logic_vector(13 downto 0);
            DP_DisplayExterno : out std_logic_vector(13 downto 0)
        );
    end component;

    -- Signals to connect to UUT
    signal SIG_Clock : std_logic := '0';
    signal SIG_Reset : std_logic := '0';
    signal SIG_Reset_Emerg : std_logic := '0';
    signal SIG_SensorPeso : std_logic_vector(8 downto 0) := (others => '0');
    signal SIG_SensorAndar : std_logic_vector(6 downto 0) := (others => '0');
    signal SIG_TecladoAndar : std_logic_vector(6 downto 0) := (others => '0');
    signal SIG_FilaAndar_Add : std_logic := '0';
    signal SIG_RegAndar_Load : std_logic := '0';
    signal SIG_Temp_Start : std_logic := '0';
    signal SIG_Temp_Reset : std_logic := '0';
    signal SIG_Emerg_Start : std_logic := '0';
    signal SIG_FilaAndar_Remove : std_logic := '0';
    signal SIG_FilaAndar_SigOUT : std_logic;
    signal SIG_CompA_Maior : std_logic;
    signal SIG_CompA_Igual : std_logic;
    signal SIG_CompA_Menor : std_logic;
    signal SIG_Temp_SigOUT : std_logic;
    signal SIG_Emerg_SigOUT : std_logic;
    signal SIG_Sobrepeso_SigOUT : std_logic;
    signal SIG_DisplayPeso : std_logic_vector(20 downto 0);
    signal SIG_DisplayInterno : std_logic_vector(13 downto 0);
    signal SIG_DisplayExterno : std_logic_vector(13 downto 0);

    -- Clock period definition
    constant clk_period : time := 10 ns;

begin
    -- instancia do componente Datapath
    instancia_Datapath : Datapath
    port map(
        DP_Clock => SIG_Clock,
        DP_Reset => SIG_Reset,
        DP_Reset_Emerg => SIG_Reset_Emerg,
        DP_SensorPeso => SIG_SensorPeso,
        DP_SensorAndar => SIG_SensorAndar,
        DP_TecladoAndar => SIG_TecladoAndar,
        DP_FilaAndar_Add => SIG_FilaAndar_Add,
        DP_RegAndar_Load => SIG_RegAndar_Load,
        DP_Temp_Start => SIG_Temp_Start,
        DP_Temp_Reset => SIG_Temp_Reset,
        DP_Emerg_Start => SIG_Emerg_Start,
        DP_FilaAndar_Remove => SIG_FilaAndar_Remove,
        DP_FilaAndar_SigOUT => SIG_FilaAndar_SigOUT,
        DP_CompA_Maior => SIG_CompA_Maior,
        DP_CompA_Igual => SIG_CompA_Igual,
        DP_CompA_Menor => SIG_CompA_Menor,
        DP_Temp_SigOUT => SIG_Temp_SigOUT,
        DP_Emerg_SigOUT => SIG_Emerg_SigOUT,
        DP_Sobrepeso_SigOUT => SIG_Sobrepeso_SigOUT,
        DP_DisplayPeso => SIG_DisplayPeso,
        DP_DisplayInterno => SIG_DisplayInterno,
        DP_DisplayExterno => SIG_DisplayExterno
    );

    -- Clock process definitions
    clk_process : process
    begin
        SIG_Clock <= '0';
        wait for clk_period/2;
        SIG_Clock <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc : process
    begin
        -- reset the system
        SIG_Reset <= '1';
        SIG_Temp_Reset <= '1';
        wait for 20 ns;
        SIG_Reset <= '0';
        SIG_Temp_Reset <= '0';
        wait for 20 ns;

        -- Test case 1: Initialize and load some values
        SIG_SensorAndar <= "0000010"; -- Andar 2
        SIG_TecladoAndar <= "0000011"; -- Andar 3
        SIG_SensorPeso <= "000010000"; -- Peso 32
        SIG_RegA_At_Load <= '1';
        wait for 20 ns;
        SIG_RegA_At_Load <= '0';
        wait for 20 ns;

        -- Test case 2: Add to the queue
        SIG_FilaAndar_Add <= '1';
        wait for 20 ns;
        SIG_FilaAndar_Add <= '0';
        wait for 20 ns;

        -- Test case 3: Start temporizador
        SIG_Temp_Start <= '1';
        wait for 20 ns;
        SIG_Temp_Start <= '0';
        wait for 20 ns;
        SIG_Temp_Start <= '1';
        wait for 100 ns; -- Wait for some time

        -- Test case 4: Emergency start
        SIG_Emerg_Start <= '1';
        wait for 20 ns;
        SIG_Emerg_Start <= '0';
        wait for 20 ns;

        -- Test case 4: Sobrepeso
        SIG_Reset <= '1';
        SIG_Temp_Reset <= '1';
        wait for 20 ns;
        SIG_Reset <= '0';
        SIG_Temp_Reset <= '0';
        wait for 20 ns;
        SIG_SensorPeso <= "100111000"; -- Peso 312
        wait for 20 ns;
        SIG_SensorPeso <= "100101100"; -- Peso 300
        wait for 20 ns;
        SIG_SensorPeso <= "010010110"; -- Peso 150
        wait for 20 ns;

        -- Add more test cases as needed to thoroughly test your design

        -- End simulation
        wait;
    end process;

end architecture;