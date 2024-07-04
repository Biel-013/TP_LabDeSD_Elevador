library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Declaração da entidade Comparador
entity Comparador is
    generic (
        W : natural := 4  -- Largura dos vetores de entrada
    );
    port (
        COMP_A      : in std_logic_vector((W-1) downto 0);  -- Primeiro valor a ser comparado
        COMP_B      : in std_logic_vector((W-1) downto 0);  -- Segundo valor a ser comparado
        COMP_Maior  : out std_logic;  -- Sinal que indica se A > B
        COMP_Menor  : out std_logic;  -- Sinal que indica se A < B
        COMP_Igual  : out std_logic;  -- Sinal que indica se A = B
        COMP_SigOUT : out std_logic   -- Sinal adicional de saída
    );
end entity;

-- Arquitetura da entidade Comparador
architecture arch of Comparador is
begin
    -- Processo de comparação
    process(COMP_A, COMP_B)
    begin
        if UNSIGNED(COMP_A) > UNSIGNED(COMP_B) then
            COMP_Maior <= '1';
            COMP_Menor <= '0';
            COMP_Igual <= '0';
            COMP_SigOUT <= '1';
        elsif UNSIGNED(COMP_A) < UNSIGNED(COMP_B) then
            COMP_Maior <= '0';
            COMP_Menor <= '1';
            COMP_Igual <= '0';
            COMP_SigOUT <= '0';
        else
            COMP_Maior <= '0';
            COMP_Menor <= '0';
            COMP_Igual <= '1';
            COMP_SigOUT <= '0';
        end if;
    end process;
end architecture arch;