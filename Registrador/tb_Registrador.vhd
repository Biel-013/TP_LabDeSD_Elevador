library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaração da entidade do testbench
entity tb_Registrador is
end tb_Registrador;

-- Arquitetura do testbench
architecture behavioral of tb_Registrador is
    -- Instância do Registrador
    component Registrador is
        generic (
            W : integer := 8
        );
        port (
            REG_Clock   : in  std_logic;
            REG_Reset   : in  std_logic;
            REG_Enable  : in  std_logic;
            REG_DataIN : in  std_logic_vector(W-1 downto 0);
            REG_DataOUT: out std_logic_vector(W-1 downto 0)
        );
    end component;

    -- Sinais de entrada do testbench
    signal REG_Clock   : std_logic := '0';
    signal REG_Reset   : std_logic := '0';
    signal REG_Enable  : std_logic := '0';
    signal REG_DataIN : std_logic_vector(7 downto 0) := (others => '0');
    signal REG_DataOUT: std_logic_vector(7 downto 0);

begin
    -- Instanciando o componente Registrador
    uut: Registrador
        generic map (W => 8)
        port map (
            REG_Clock   => REG_Clock,
            REG_Reset   => REG_Reset,
            REG_Enable  => REG_Enable,
            REG_DataIN => REG_DataIN,
            REG_DataOUT=> REG_DataOUT
        );

    -- Processo de geração do clock
    clk_process: process
    begin
        while true loop
            REG_Clock <= '0';
            wait for 10 ns;
            REG_Clock <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Processo de estímulo
    stim_proc: process
    begin
        -- Resetando o registrador
        REG_Reset <= '1';
        wait for 20 ns;
        REG_Reset <= '0';

        -- Habilitando e escrevendo dados
        REG_Enable <= '1';
        REG_DataIN <= "10101010";
        wait for 20 ns;

        -- Alterando entrada de dados, mas sem habilitar
        REG_Enable <= '0';
        REG_DataIN <= "01010101";
        wait for 20 ns;

        -- Habilitando e escrevendo novos dados
        REG_Enable <= '1';
        REG_DataIN <= "11110000";
        wait for 20 ns;

        -- Desabilitando e alterando entrada de dados
        REG_Enable <= '0';
        REG_DataIN <= "00001111";
        wait for 20 ns;

        -- Fim do teste
        wait;
    end process;

end behavioral;
