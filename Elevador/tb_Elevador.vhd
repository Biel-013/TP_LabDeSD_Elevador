library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity tb_Elevador is
end tb_Elevador;

architecture arch of tb_Elevador is
    component Elevador is
	 port (
        ELV_Clock : in std_logic;
        ELV_Reset : in std_logic;
        ELV_Reset_Emerg : in std_logic;
        ELV_Emergencia : in std_logic;
        ELV_Obstrucao : in std_logic;
        ELV_PortaAberta : in std_logic;
        ELV_PortaFechada : in std_logic;
        ELV_TecladoAndar : in std_logic_vector(6 downto 0);
        ELV_SensorAndar : in std_logic_vector(6 downto 0);
        ELV_SensorPeso : in std_logic_vector(8 downto 0);
        ELV_Emerg_SigOUT : out std_logic;
        ELV_Motor_Porta : out std_logic;
        ELV_Motor_Subir : out std_logic;
        ELV_Motor_Descer : out std_logic;
        ELV_Sobrepeso : out std_logic;
        ELV_DisplayPeso : out std_logic_vector(20 downto 0);
        ELV_DisplayInterno : out std_logic_vector(13 downto 0);
        ELV_DisplayExterno : out std_logic_vector(13 downto 0)
        );
    end component;

    signal SIG_Clock : std_logic;
    signal SIG_Reset : std_logic;
    signal SIG_Reset_Emerg : std_logic;
    signal SIG_Emergencia : std_logic;
    signal SIG_Obstrucao : std_logic;
    signal SIG_PortaAberta : std_logic;
    signal SIG_PortaFechada : std_logic;
    signal SIG_TecladoAndar : std_logic_vector(6 downto 0);
    signal SIG_SensorAndar : std_logic_vector(6 downto 0);
    signal SIG_SensorPeso : std_logic_vector(8 downto 0);
    signal SIG_Emerg_SigOUT : std_logic;
    signal SIG_Motor_Porta : std_logic;
    signal SIG_Motor_Subir : std_logic;
    signal SIG_Motor_Descer : std_logic;
    signal SIG_Sobrepeso : std_logic;
    signal SIG_DisplayPeso : std_logic_vector(20 downto 0);
    signal SIG_DisplayInterno : std_logic_vector(13 downto 0);
    signal SIG_DisplayExterno : std_logic_vector(13 downto 0);
	 
begin

    instancia_Elevador : Elevador
    port map(
        ELV_Clock => SIG_Clock,
        ELV_Reset => SIG_Reset,
        ELV_Reset_Emerg => SIG_Reset_Emerg,
        ELV_Emergencia => SIG_Emergencia,
        ELV_Obstrucao => SIG_Obstrucao,
        ELV_PortaAberta => SIG_PortaAberta,
        ELV_PortaFechada => SIG_PortaFechada,
        ELV_TecladoAndar => SIG_TecladoAndar,
        ELV_SensorAndar => SIG_SensorAndar,
        ELV_SensorPeso => SIG_SensorPeso,
        ELV_Emerg_SigOUT => SIG_Emerg_SigOUT,
        ELV_Motor_Porta => SIG_Motor_Porta,
        ELV_Motor_Subir => SIG_Motor_Subir,
        ELV_Motor_Descer => SIG_Motor_Descer,
        ELV_Sobrepeso => SIG_Sobrepeso,
        ELV_DisplayPeso => SIG_DisplayPeso,
        ELV_DisplayInterno => SIG_DisplayInterno,
        ELV_DisplayExterno => SIG_DisplayExterno
    );

    clk_process : process
    begin
        while true loop
            SIG_Clock <= '0';
            wait for 5 ns;
            SIG_Clock <= '1';
            wait for 5 ns;
        end loop;
    end process;

    stim_proc: process
    begin
        SIG_Reset <= '1';
        SIG_Reset_Emerg <= '1';
        wait for 10 ns;
        SIG_Reset <= '0';
        SIG_Reset_Emerg <= '0';
        SIG_SensorAndar <= "0000111";
        SIG_TecladoAndar <= "0000111";
        SIG_PortaFechada <= '1';
        SIG_PortaAberta <= '0';
        SIG_Obstrucao <= '0';
        SIG_Emergencia <= '0';
        SIG_SensorPeso <= "001000110";
        wait for 10 ns;
        
        -- Chamada no  mesmo andar

        SIG_TecladoAndar <= "0000111";
        wait for 50 ns;

        SIG_PortaFechada <= '0';
        SIG_PortaAberta <= '1';
        wait for 110 ns;

        SIG_PortaFechada <= '0';
        SIG_PortaAberta <= '1';
        wait;
    end process;
end arch;