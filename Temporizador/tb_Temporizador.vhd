library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity tb_Temporizador is
end tb_Temporizador;

architecture arch of tb_Temporizador is
    signal TEMP_Clock   : std_logic := '0';
    signal TEMP_Start   : std_logic := '0';
    signal TEMP_Reset   : std_logic := '0';
    signal TEMP_SigOUT  : std_logic;

    constant CLK_PERIOD : time := 2 ns; -- Ajuste para corresponder ao período do clock do hardware alvo

    -- Declaração do componente Temporizador
    component Temporizador
        port (
            TEMP_Clock   : in  std_logic;
            TEMP_Start   : in  std_logic;
            TEMP_Reset   : in  std_logic;
            TEMP_SigOUT  : out std_logic
        );
    end component;

begin

    -- Instanciação do componente Temporizador
    instancia_Temporizador: Temporizador
        port map (
            TEMP_Clock   => TEMP_Clock,
            TEMP_Start   => TEMP_Start,
            TEMP_Reset   => TEMP_Reset,
            TEMP_SigOUT  => TEMP_SigOUT
        );

    -- Processo de geração do clock
    clk_process : process
    begin
        while true loop
            TEMP_Clock <= '0';
            wait for CLK_PERIOD / 2;
            TEMP_Clock <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;

    -- Processo de estímulo
    stim_proc: process
    begin
        -- Inicializa as entradas
        TEMP_Reset <= '1';
        TEMP_Start <= '0';
        wait for 10 ns;
        
        TEMP_Reset <= '0';
        wait for 10 ns;

        -- Inicia o temporizador
        TEMP_Start <= '1';
        wait for 250 ns; -- Ajuste para permitir tempo suficiente para o temporizador completar

        -- Interrompe o temporizador
        TEMP_Start <= '0';
        TEMP_Reset <= '1';
        wait for 10 ns;

        TEMP_Reset <= '0';
        wait for 10 ns;

        -- Reinicia o temporizador
        TEMP_Start <= '1';
        wait for 100 ns; -- Ajuste para permitir tempo suficiente para o temporizador completar

        -- Interrompe o temporizador novamente
        TEMP_Start <= '0';
        wait for 50 ns; -- Ajuste para permitir tempo suficiente para o temporizador completar

        -- Reinicia o temporizador mais uma vez
        TEMP_Start <= '1';
        wait for 200 ns; -- Ajuste para permitir tempo suficiente para o temporizador completar

        -- Finaliza a simulação
        wait;
    end process;

end arch;
