library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Declaração da entidade Registrador
entity Registrador is
    generic (
        W : integer := 8  -- largura do registrador (número de bits)
    );
    port (
        REG_Clock   : in  std_logic;               -- clock
        REG_Reset   : in  std_logic;               -- reset
        REG_Enable  : in  std_logic;               -- enable
        REG_DataIN  : in  std_logic_vector(W-1 downto 0);  -- dado de entrada
        REG_DataOUT : out std_logic_vector(W-1 downto 0)   -- dado de saída
    );
end Registrador;

-- Arquitetura do Registrador
architecture arch of Registrador is
    -- Sinal interno para armazenar o valor do registrador
    signal reg : std_logic_vector(W-1 downto 0);
begin
    -- Processo sensível à borda de subida do clock ou ao sinal de reset
    process (REG_Clock, REG_Reset)
    begin
        if REG_Reset = '1' then
            -- Em caso de reset, zera o registrador
            reg <= (others => '0');
        elsif rising_edge(REG_Clock) then
            -- Se habilitado e em borda de subida do clock, carrega o dado de entrada
            if REG_Enable = '1' then
                reg <= REG_DataIN;
            end if;
        end if;
    end process;
    
    -- Saída do registrador
    REG_DataOUT <= reg;
end arch;