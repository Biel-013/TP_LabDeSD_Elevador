library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity Temporizador is
    generic (
        frequencia : integer := 100;
        tempo : integer := 3 -- Valor da temporizaÃ§Ã£o em segundos
    );
    port (
        TEMP_Clock  : in  std_logic;
        TEMP_Start  : in  std_logic;
        TEMP_Reset  : in  std_logic;
        TEMP_SigOUT : out std_logic
    );
end Temporizador;

architecture arch of Temporizador is
    constant MAX_COUNT : integer := frequencia * tempo;  -- Para 1 segundo, pegar a frequÃªncia do clock e dividir por dois
    signal Contador    : integer range 0 to MAX_COUNT := 0;
begin

    -- Processo responsÃ¡vel pelo temporizador
    process(TEMP_Clock, TEMP_Reset)
    begin
        if TEMP_Reset = '1' then
            -- Reseta o contador quando TEMP_Reset Ã© alto
            Contador <= 0;
            TEMP_SigOUT <= '0';
        elsif rising_edge(TEMP_Clock) then
            -- Aumenta o contador se TEMP_Start estÃ¡ alto e o clock estÃ¡ na borda de subida
            if TEMP_Start = '1' then
                if Contador = MAX_COUNT then
                    -- Define TEMP_SigOUT como alto quando o contador atinge MAX_COUNT
                    TEMP_SigOUT <= '1';
                else
                    -- Incrementa o contador
                    Contador <= Contador + 1;
                end if;
            else
                -- Reseta o contador se TEMP_Start estÃ¡ baixo
                Contador <= 0;
            end if;
        end if;
    end process;

end arch;