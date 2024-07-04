library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Declaração da entidade do testbench
entity tb_SingleROM is
end tb_SingleROM;

-- Arquitetura do testbench
architecture behavior of tb_SingleROM is

    -- Declaração do componente para a Unidade Sob Teste (UUT)
    component SingleROM
        generic (
            w : integer := 9;  -- Largura da saída
            value : integer := 0  -- Valor armazenado
        );
        port (
            SROM_DataOUT : out std_logic_vector(w-1 downto 0)  -- Dados de saída
        );
    end component;

    -- Sinais
    signal SROM_DataOUT : std_logic_vector(8 downto 0);  -- Largura de 9 bits

begin

    -- Instanciação da Unidade Sob Teste (UUT)
    Instancia_SingleROM: SingleROM
        generic map (
            w => 9,
            value => 341  -- Valor de exemplo (341 em decimal é "101010101" em binário)
        )
        port map (
            SROM_DataOUT => SROM_DataOUT
        );

    -- Processo de estímulo
    stim_proc: process
    begin	
        -- Aguarda por um tempo e observa a saída
        wait for 100 ns;

        -- Termina a simulação
        wait;
    end process;

end behavior;
