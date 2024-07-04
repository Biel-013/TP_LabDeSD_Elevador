library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Declaração da entidade do testbench
entity tb_Bcd_7sWd is
end entity tb_Bcd_7sWd;

-- Arquitetura do testbench
architecture testbench of tb_Bcd_7sWd is
    -- Declaração do componente a ser testado
    component Bcd_7sWd
        generic (
            W : integer := 3
        );
        port (
            BCD_Entrada : in  std_logic_vector(7 downto 0);
            BCD_Saida   : out std_logic_vector((W * 7) - 1 downto 0)
        );
    end component;

    -- Sinais para uso no testbench
    signal tb_entrada : std_logic_vector(7 downto 0);
    signal tb_saida   : std_logic_vector((3 * 7) - 1 downto 0);

begin
    -- Instanciação do componente
    Instancia_Bcd_7sWd: Bcd_7sWd
        generic map (
            W => 3
        )
        port map (
            BCD_Entrada => tb_entrada,
            BCD_Saida   => tb_saida
        );

    -- Processo de estímulo
    stim_proc: process
    begin
        -- Test case 1: entrada = 0
        tb_entrada <= "00000000";  -- 0 em binário
        wait for 10 ns;
        
        -- Test case 2: entrada = 1
        tb_entrada <= "00000001";  -- 1 em binário
        wait for 10 ns;

        -- Test case 3: entrada = 12
        tb_entrada <= "00001100";  -- 12 em binário
        wait for 10 ns;

        -- Test case 4: entrada = 45
        tb_entrada <= "00101101";  -- 45 em binário
        wait for 10 ns;

        -- Test case 5: entrada = 123
        tb_entrada <= "01111011";  -- 123 em binário
        wait for 10 ns;

        -- Test case 6: entrada = 255
        tb_entrada <= "11111111";  -- 255 em binário
        wait for 10 ns;

        -- Test case 7: entrada = 200
        tb_entrada <= "11001000";  -- 200 em binário
        wait for 10 ns;

        -- Test case 8: entrada = 89
        tb_entrada <= "01011001";  -- 89 em binário
        wait for 10 ns;

        wait; -- Espera indefinidamente
    end process;

end architecture testbench;
