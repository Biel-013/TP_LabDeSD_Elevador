library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Elevador is
    port (
        ELV_Clock : in std_logic;
        ELV_Reset : in std_logic;
        ELV_Reset_Emerg : in std_logic;
        ELV_Emergencia : in std_logic;
        ELV_Obstrucao : in std_logic;
        ELV_PortaAberta : in std_logic;
        ELV_PortaFechada : in std_logic;
        ELV_TecladoAndar : in std_logic_vector(4 downto 0);
        ELV_SensorAndar : in std_logic_vector(4 downto 0);
        ELV_SensorPeso : in std_logic_vector(4 downto 0); -- Corrigido tamanho do vetor
        ELV_Emerg_SigOUT : out std_logic;
        ELV_Motor_Porta : out std_logic;
        ELV_Motor_Subir : out std_logic;
        ELV_Motor_Descer : out std_logic;
        ELV_Sobrepeso : out std_logic;
        ELV_DisplayPeso : out std_logic_vector(27 downto 0);
        ELV_DisplayInterno : out std_logic_vector(13 downto 0);
        ELV_DisplayExterno : out std_logic_vector(13 downto 0)
    );
end entity;

architecture arch of Elevador is

    signal SIG_Clock : std_logic;
    signal SIG_FilaAndar_Add : std_logic;
    signal SIG_RegAndar_Load : std_logic;
    signal SIG_Temp_Start : std_logic;
    signal SIG_Temp_Reset : std_logic;
    signal SIG_Emerg_Start : std_logic;
    signal SIG_FilaAndar_Remove : std_logic;
    signal SIG_FilaAndar : std_logic;
    signal SIG_CompA_Maior : std_logic;
    signal SIG_CompA_Igual : std_logic;
    signal SIG_CompA_Menor : std_logic;
    signal SIG_Temporizador : std_logic;
    signal SIG_Emergencia : std_logic;
    signal SIG_Sobrepeso : std_logic;

    component DivClock is
        generic (Divisao : integer := 50000);
        port (
            CLK_ClockIN : in std_logic; -- Clock input
            CLK_Reset : in std_logic; -- Reset input
            CLK_ClockOUT : out std_logic -- Clock output (divided clock)
        );
    end component;

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
            DP_DisplayPeso : out std_logic_vector(27 downto 0);
            DP_DisplayInterno : out std_logic_vector(13 downto 0);
            DP_DisplayExterno : out std_logic_vector(13 downto 0)
        );
    end component;

begin

    -- Instanciando o componente DivClock:
    INST_DivClock : DivClock
    generic map(Divisao => 50000)
    port map(
        CLK_ClockIN => ELV_Clock,
        CLK_Reset => not ELV_Reset,
        CLK_ClockOUT => SIG_Clock
    );

    -- Instanciando o componente Controladora:
    INST_Controladora : Controladora
    port map(
        FSM_Clock => SIG_Clock,
        FSM_Reset => not ELV_Reset,
        FSM_Emergencia => not ELV_Emergencia,
        FSM_Obstrucao => not ELV_Obstrucao,
        FSM_Sobrepeso_SigIN => SIG_Sobrepeso,
        FSM_PortaAberta => ELV_PortaAberta,
        FSM_PortaFechada => ELV_PortaFechada,
        FSM_FilaAndar_SigIN => SIG_FilaAndar,
        FSM_CompAndar_Maior => SIG_CompA_Maior,
        FSM_CompAndar_Menor => SIG_CompA_Menor,
        FSM_CompAndar_Igual => SIG_CompA_Igual,
        FSM_Temp_SigIN => SIG_Temporizador,
        FSM_Emerg_SigIN => SIG_Emergencia,
        FSM_RegAndar_Load => SIG_RegAndar_Load,
        FSM_FilaAndar_Add => SIG_FilaAndar_Add,
        FSM_FilaAndar_Remove => SIG_FilaAndar_Remove,
        FSM_Temp_Reset => SIG_Temp_Reset,
        FSM_Temp_Start => SIG_Temp_Start,
        FSM_Emerg_Start => SIG_Emerg_Start,
        FSM_Emerg_SigOUT     => ELV_Emerg_SigOUT,
        FSM_Motor_Subir => ELV_Motor_Subir,
        FSM_Motor_Descer => ELV_Motor_Descer,
        FSM_Motor_Porta => ELV_Motor_Porta
    );

    -- Instanciando o componente Datapath:
    INST_Datapath : Datapath
    port map(
        DP_Clock => SIG_Clock,
        DP_Reset => not ELV_Reset,
        DP_Reset_Emerg => not ELV_Reset_Emerg,
        DP_SensorPeso => "0000" & ELV_SensorPeso,
        DP_SensorAndar => "00" & ELV_SensorAndar,
        DP_TecladoAndar => "00" & ELV_TecladoAndar,
        DP_FilaAndar_Add => SIG_FilaAndar_Add,
        DP_RegAndar_Load => '1',
        DP_Temp_Start => SIG_Temp_Start,
        DP_Temp_Reset => SIG_Temp_Reset,
        DP_Emerg_Start => SIG_Emerg_Start,
        DP_FilaAndar_Remove => SIG_FilaAndar_Remove,
        DP_FilaAndar_SigOUT => SIG_FilaAndar,
        DP_CompA_Maior => SIG_CompA_Maior,
        DP_CompA_Igual => SIG_CompA_Igual,
        DP_CompA_Menor => SIG_CompA_Menor,
        DP_Temp_SigOUT => SIG_Temporizador,
        DP_Emerg_SigOUT => SIG_Emergencia,
        DP_Sobrepeso_SigOUT => SIG_Sobrepeso,
        DP_DisplayPeso => ELV_DisplayPeso,
        DP_DisplayInterno => ELV_DisplayInterno,
        DP_DisplayExterno => ELV_DisplayExterno
    );

    process (SIG_Sobrepeso, SIG_Emergencia, SIG_Emerg_Start, SIG_Clock, SIG_Temp_Start, SIG_Temp_Reset, SIG_FilaAndar_Add, SIG_RegAndar_Load, SIG_FilaAndar_Remove, SIG_FilaAndar, SIG_CompA_Maior, SIG_CompA_Igual, SIG_CompA_Menor, SIG_Temporizador)
    begin
        ELV_Sobrepeso <= SIG_Sobrepeso;
        SIG_Clock <= SIG_Clock;
        SIG_FilaAndar_Add <= SIG_FilaAndar_Add;
        SIG_RegAndar_Load <= SIG_RegAndar_Load;
        SIG_Temp_Start <= SIG_Temp_Start;
        SIG_Temp_Reset <= SIG_Temp_Reset;
        SIG_Emerg_Start <= SIG_Emerg_Start;
        SIG_FilaAndar_Remove <= SIG_FilaAndar_Remove;
        SIG_FilaAndar <= SIG_FilaAndar;
        SIG_CompA_Maior <= SIG_CompA_Maior;
        SIG_CompA_Igual <= SIG_CompA_Igual;
        SIG_CompA_Menor <= SIG_CompA_Menor;
        SIG_Temporizador <= SIG_Temporizador;
        SIG_Emergencia <= SIG_Emergencia;
        SIG_Sobrepeso <= SIG_Sobrepeso;
        --ELV_Emerg_SigOUT <= SIG_Temporizador;
    end process;
end arch;