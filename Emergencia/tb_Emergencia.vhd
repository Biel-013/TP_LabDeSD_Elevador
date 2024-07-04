library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Declaração da entidade do testbench
entity tb_Emergencia is
end tb_Emergencia;

-- Arquitetura do testbench
architecture behavior of tb_Emergencia is

    -- Declaração do componente
    component Emergencia
        Port (
            EMG_Start : in  STD_LOGIC;
            EMG_Reset : in  STD_LOGIC;
            EMG_SigOUT : out  STD_LOGIC
        );
    end component;

    -- Sinais de entrada
    signal EMG_Start : STD_LOGIC := '0';
    signal EMG_Reset : STD_LOGIC := '0';

    -- Sinal de saída
    signal EMG_SigOUT : STD_LOGIC;

    -- Definições do período do clock
    constant clk_period : time := 10 ns;

begin

    -- Instanciação do componete
    Instancia_Emergencia: Emergencia Port map (
        EMG_Start => EMG_Start,
        EMG_Reset => EMG_Reset,
        EMG_SigOUT => EMG_SigOUT
    );

    -- Processo de estímulo
    stim_proc: process
    begin    
        -- Manter estado de reset por 20 ns
        EMG_Reset <= '1';
        wait for 20 ns;
        EMG_Reset <= '0';
        wait for 20 ns;
        
        -- Sequência de testes
        EMG_Start <= '1'; -- Define start para alto
        wait for 30 ns;
        
        EMG_Start <= '0'; -- Define start para baixo
        wait for 30 ns;

        EMG_Reset <= '1'; -- Define reset para alto para resetar a saída
        wait for 10 ns;
        EMG_Reset <= '0';
        wait for 20 ns;

        EMG_Start <= '1'; -- Define start para alto novamente
        wait for 30 ns;

        -- Adicionar mais casos de teste conforme necessário
        wait;
    end process;

end behavior;
