library IEEE;
use IEEE.STD_LOGIC_1164.all;

-- DeclaraÃ§Ã£o da entidade Emergencia
entity Emergencia is
    port (
        EMG_Start : in std_logic; -- Sinal de inÃ­cio de emergÃªncia
        EMG_Reset : in std_logic; -- Sinal de reset
        EMG_SigOUT : out std_logic := '0' -- SaÃ­da do sinal de emergÃªncia
    );
end Emergencia;

-- Arquitetura da entidade Emergencia
architecture arch of Emergencia is
    signal ESTADO : std_logic := '0'; -- Estado interno para controlar a saÃ­da
begin
    -- Processo para controlar o estado baseado nos sinais de entrada
    process (EMG_Start, EMG_Reset)
    begin
        if EMG_Reset = '1' then
            ESTADO <= '0'; -- Reset assÃ­ncrono: zera o estado
        elsif rising_edge(EMG_Start) then
                ESTADO <= '1'; -- Aciona a saÃ­da quando EMG_Start estÃ¡ em HIGH
				end if;
            -- A saÃ­da reflete o estado interno
        end process;
		  
		  EMG_SigOUT <= ESTADO;
    end arch;