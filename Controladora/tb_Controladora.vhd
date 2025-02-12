library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_Controladora is
end tb_Controladora;

architecture test of tb_Controladora is

    -- Component declaration
    component Controladora is
        port (
            FSM_Clock : in std_logic;
            FSM_Reset : in std_logic;
            FSM_Emergencia : in std_logic;
            FSM_Obstrucao : in std_logic;
            FSM_Sobrepeso_SigIN : in std_logic;
            FSM_PortaAberta : in std_logic;
            FSM_PortaFechada : in std_logic;
            FSM_FilaAndar_SigIN : in std_logic;
            FSM_CompAndar_Maior : in std_logic;
            FSM_CompAndar_Menor : in std_logic;
            FSM_CompAndar_Igual : in std_logic;
            FSM_Temp_SigIN : in std_logic;
            FSM_Emerg_SigIN : in std_logic;
            FSM_RegAndar_Load : out std_logic;
            FSM_FilaAndar_Add : out std_logic;
            FSM_FilaAndar_Remove : out std_logic;
            FSM_Temp_Start : out std_logic;
            FSM_Temp_Reset : out std_logic;
            FSM_Emerg_Start : out std_logic;
            FSM_Emerg_SigOUT : out std_logic;
            FSM_Motor_Subir : out std_logic;
            FSM_Motor_Descer : out std_logic;
            FSM_Motor_Porta : out std_logic
        );
    end component;

    -- Signal declarations
    signal FSM_Clock : std_logic := '0';
    signal FSM_Reset : std_logic := '0';
    signal FSM_Emergencia : std_logic := '0';
    signal FSM_Obstrucao : std_logic := '0';
    signal FSM_Sobrepeso_SigIN : std_logic := '0';
    signal FSM_PortaAberta : std_logic := '0';
    signal FSM_PortaFechada : std_logic := '1';
    signal FSM_FilaAndar_SigIN : std_logic := '0';
    signal FSM_CompAndar_Maior : std_logic := '0';
    signal FSM_CompAndar_Menor : std_logic := '0';
    signal FSM_CompAndar_Igual : std_logic := '1';
    signal FSM_Temp_SigIN : std_logic := '0';
    signal FSM_Emerg_SigIN : std_logic := '0';
    signal FSM_RegAndar_Load : std_logic;
    signal FSM_FilaAndar_Add : std_logic;
    signal FSM_FilaAndar_Remove : std_logic;
    signal FSM_Temp_Start : std_logic;
    signal FSM_Temp_Reset : std_logic;
    signal FSM_Emerg_Start : std_logic;
    signal FSM_Emerg_SigOUT : std_logic;
    signal FSM_Motor_Subir : std_logic;
    signal FSM_Motor_Descer : std_logic;
    signal FSM_Motor_Porta : std_logic;

    -- Clock generation
    constant clk_period : time := 10 ns;

begin

    -- Instantiate the Controladora
    uut : Controladora
    port map(
        FSM_Clock => FSM_Clock,
        FSM_Reset => FSM_Reset,
        FSM_Emergencia => FSM_Emergencia,
        FSM_Obstrucao => FSM_Obstrucao,
        FSM_Sobrepeso_SigIN => FSM_Sobrepeso_SigIN,
        FSM_PortaAberta => FSM_PortaAberta,
        FSM_PortaFechada => FSM_PortaFechada,
        FSM_FilaAndar_SigIN => FSM_FilaAndar_SigIN,
        FSM_CompAndar_Maior => FSM_CompAndar_Maior,
        FSM_CompAndar_Menor => FSM_CompAndar_Menor,
        FSM_CompAndar_Igual => FSM_CompAndar_Igual,
        FSM_Temp_SigIN => FSM_Temp_SigIN,
        FSM_Emerg_SigIN => FSM_Emerg_SigIN,
        FSM_RegAndar_Load => FSM_RegAndar_Load,
        FSM_FilaAndar_Add => FSM_FilaAndar_Add,
        FSM_FilaAndar_Remove => FSM_FilaAndar_Remove,
        FSM_Temp_Start => FSM_Temp_Start,
        FSM_Temp_Reset => FSM_Temp_Reset,
        FSM_Emerg_Start => FSM_Emerg_Start,
        FSM_Emerg_SigOUT => FSM_Emerg_SigOUT,
        FSM_Motor_Subir => FSM_Motor_Subir,
        FSM_Motor_Descer => FSM_Motor_Descer,
        FSM_Motor_Porta => FSM_Motor_Porta
    );

    -- Clock process
    clk_process : process
    begin
        while true loop
            FSM_Clock <= '0';
            wait for clk_period/2;
            FSM_Clock <= '1';
            wait for clk_period/2;
        end loop;
    end process;

    -- Stimulus process
    stim_proc : process
    begin
        -- Initialize inputs
        FSM_Reset <= '1';
        wait for 20 ns;
        FSM_Reset <= '0';
        wait for 20 ns;

        -- Stimulate inputs to test each state
        FSM_PortaFechada <= '1';
        FSM_FilaAndar_SigIN <= '0';
        FSM_CompAndar_Igual <= '1';
        wait for 20 ns;

        FSM_FilaAndar_SigIN <= '1';
        FSM_CompAndar_Maior <= '0';
        FSM_CompAndar_Igual <= '1';
        wait for 20 ns;

        FSM_PortaAberta <= '1';
        FSM_PortaFechada <= '0';
        wait for 20 ns;

        FSM_Obstrucao <= '1';
        wait for 20 ns;

        FSM_Obstrucao <= '0';
        wait for 20 ns;
        
        FSM_Temp_SigIN <= '1';
        wait for 20 ns;
        
        FSM_PortaAberta <= '0';
        FSM_PortaFechada <= '1';
        wait for 20 ns;

        FSM_CompAndar_Maior <= '0';
        FSM_CompAndar_Igual <= '1';
        wait for 5 ns;

        FSM_FilaAndar_SigIN <= '0';
        wait;
    end process;

end test;