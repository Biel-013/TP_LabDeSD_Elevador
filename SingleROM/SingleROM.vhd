library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;  -- Inclua esta linha para usar to_unsigned

-- Declaração da entidade SingleROM
entity SingleROM is
    generic (
        w : integer := 9;  -- Largura da saída
        value : integer := 0  -- Valor armazenado
    );
    port (
        SROM_DataOUT : out std_logic_vector(w-1 downto 0)  -- Dados de saída
    );
end SingleROM;

-- Arquitetura da entidade SingleROM
architecture arch of SingleROM is
begin
    -- Atribui o valor genérico diretamente à saída
    SROM_DataOUT <= std_logic_vector(to_unsigned(value, w));  -- Trunca ou expande o valor para o tamanho w
end arch;
