library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Datapath is
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
end entity;

architecture arch of Datapath is

    signal SIG_A_Destino, SIG_A_Atual : std_logic_vector(6 downto 0);
    signal SIG_Ref_Peso, SIG_Peso : std_logic_vector(8 downto 0);

    component Temporizador is
        generic (
            frequencia : integer := 7;
            tempo : integer := 3 -- Valor da temporização em segundos
        );
        port (
            TEMP_Clock : in std_logic;
            TEMP_Start : in std_logic;
            TEMP_Reset : in std_logic;
            TEMP_SigOUT : out std_logic
        );
    end component;

    component SingleROM is
        generic (
            w : integer := 9; -- Largura da saÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­da
            value : integer := 0 -- Valor armazenado
        );
        port (
            SROM_DataOUT : out std_logic_vector(w - 1 downto 0) -- Dados de saÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­da
        );
    end component;

    component Registrador is
        generic (
            W : integer := 8 -- largura do registrador (nÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Âºmero de bits)
        );
        port (
            REG_Clock : in std_logic; -- clock
            REG_Reset : in std_logic; -- reset
            REG_Enable : in std_logic; -- enable
            REG_DataIN : in std_logic_vector(W - 1 downto 0); -- dado de entrada
            REG_DataOUT : out std_logic_vector(W - 1 downto 0) -- dado de saÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­da
        );
    end component;

    component Fileira is
        generic (
            W : integer := 8; -- Largura dos dados
            Andares : integer := 10 -- Profundidade da fila
        );
        port (
            FLR_Clock : in std_logic;
            FLR_Reset : in std_logic;
            FLR_Adicionar : in std_logic; -- Sinal para enfileirar
            FLR_Retirar : in std_logic; -- Sinal para desenfileirar
            FLR_DataIN : in std_logic_vector(W - 1 downto 0); -- Dado de entrada
            FLR_DataOUT : out std_logic_vector(W - 1 downto 0); -- Dado de saÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­da
            FLR_SigOUT : out std_logic -- Sinal de saÃ­da
        );
    end component;

    component Emergencia is
        port (
            EMG_Start : in std_logic; -- Sinal de inÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­cio de emergÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Âªncia
            EMG_Reset : in std_logic; -- Sinal de reset
            EMG_SigOUT : out std_logic -- SaÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­da do sinal de emergÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Âªncia
        );
    end component;

    component Comparador is
        generic (
            W : natural := 4 -- Largura dos vetores de entrada
        );
        port (
            COMP_A : in std_logic_vector((W - 1) downto 0); -- Primeiro valor a ser comparado
            COMP_B : in std_logic_vector((W - 1) downto 0); -- Segundo valor a ser comparado
            COMP_Maior : out std_logic; -- Sinal que indica se A > B
            COMP_Menor : out std_logic; -- Sinal que indica se A < B
            COMP_Igual : out std_logic; -- Sinal que indica se A = B
            COMP_SigOUT : out std_logic -- Sinal adicional de saÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­da
        );
    end component;

    component Bcd_7sWd is
        generic (
            W : integer := 7; -- Para valores atÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â© 255, precisamos de atÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â© 3 dÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­gitos
            digitos : integer := 3 -- Para valores até 255, precisamos de até 3 dígitos
        );
        port (
            BCD_Entrada : in std_logic_vector(W - 1 downto 0); -- Entrada em BCD
            BCD_Saida : out std_logic_vector((digitos * 7) - 1 downto 0) -- SaÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â­da para displays de 7 segmentos
        );
    end component;
begin

    --====================================================================

    -- Instanciando o componente Temporizador:
    INST_Temporizador : Temporizador -- Temporizador
    generic map(
        frequencia => 1000,
        tempo => 10)
    port map(
        TEMP_Clock => DP_Clock,
        TEMP_Start => DP_Temp_Start,
        TEMP_Reset => DP_Temp_Reset,
        TEMP_SigOUT => DP_Temp_SigOUT
    );
    -- End instancia componente Temporizador;

    --====================================================================

    -- Instanciando o componente RefPeso:
    INST_ROM_RefPeso : SingleROM -- RefPeso
    generic map(
        w => 9,
        value => 25)
    port map(
        SROM_DataOUT => SIG_Ref_Peso
    );
    -- End instancia componente RefPeso;

    --====================================================================

    -- Instanciando o componente Reg_A_Atual:
    INST_Reg_A_Atual : Registrador -- Reg_A_Atual
    generic map(W => 7)
    port map(
        REG_Clock => DP_Clock,
        REG_Reset => DP_Reset,
        REG_Enable => DP_RegAndar_Load,
        REG_DataIN => DP_SensorAndar,
        REG_DataOUT => SIG_A_Atual
    );
    -- End instancia componente Reg_A_Atual;

    --====================================================================

    -- Instanciando o componente Reg_Peso:
    INST_Reg_Peso : Registrador -- Reg_Peso
    generic map(W => 9)
    port map(
        REG_Clock => DP_Clock,
        REG_Reset => DP_Reset,
        REG_Enable => '1',
        REG_DataIN => DP_SensorPeso,
        REG_DataOUT => SIG_Peso
    );
    -- End instancia componente Reg_Peso;

    --====================================================================

    -- Instanciando o componente Fila_Andar:
    INST_Fila_Andar : Fileira -- Fila_Andar
    generic map(
        W => 7,
        Andares => 10)
    port map(
        FLR_Clock => DP_Clock,
        FLR_Reset => DP_Reset,
        FLR_Adicionar => DP_FilaAndar_Add,
        FLR_Retirar => DP_FilaAndar_Remove,
        FLR_DataIN => DP_TecladoAndar,
        FLR_DataOUT => SIG_A_Destino,
        FLR_SigOUT => DP_FilaAndar_SigOUT
    );
    -- End instancia componente Fila_Andar;

    --====================================================================

    -- Instanciando o componente Emergencia:
    INST_Emergencia : Emergencia -- Emergencia
    port map(
        EMG_Start => DP_Emerg_Start,
        EMG_Reset => DP_Reset_Emerg,
        EMG_SigOUT => DP_Emerg_SigOUT
    );
    -- End instancia componente Emergencia;

    --====================================================================

    -- Instanciando o componente Comp_Andar:
    INST_Comp_Andar : Comparador -- Comp_Andar
    generic map(w => 7)
    port map(
        COMP_A => SIG_A_Destino,
        COMP_B => SIG_A_Atual,
        COMP_Maior => DP_CompA_Maior,
        COMP_Menor => DP_CompA_Menor,
        COMP_Igual => DP_CompA_Igual
    );
    -- End instancia componente Comp_Andar;

    --====================================================================

    -- Instanciando o componente Comp_Peso:
    INST_Comp_Peso : Comparador -- Comp_Peso
    generic map(w => 9)
    port map(
        COMP_A => SIG_Peso,
        COMP_B => SIG_Ref_Peso,
        COMP_SigOUT => DP_Sobrepeso_SigOUT -- DP_Sobrepeso
    );
    -- End instancia componente Comp_Peso;

    --====================================================================

    -- Instanciando o componente Display_Peso:
    INST_Display_Peso : Bcd_7sWd -- Display_Peso
    generic map(
        w => 9,
        digitos => 4)
    port map(
        BCD_Entrada => SIG_Peso,
        BCD_Saida => DP_DisplayPeso
    );
    -- End instancia componente Display_Peso;

    --====================================================================

    -- Instanciando o componente Display_I:
    INST_Display_I : Bcd_7sWd -- Display_I
    generic map(
        w => 7,
        digitos => 2)
    port map(
        BCD_Entrada => SIG_A_Destino,
        BCD_Saida => DP_DisplayInterno
    );
    -- End instancia componente Display_I;

    --====================================================================

    -- Instanciando o componente Display_E:
    INST_Display_E : Bcd_7sWd -- Display_E
    generic map(
        w => 7,
        digitos => 2)
    port map(
        BCD_Entrada => SIG_A_Atual,
        BCD_Saida => DP_DisplayExterno
    );
    -- End instancia componente Display_E;

    --====================================================================
end architecture arch;