library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Controladora is
    port (
        FSM_Clock : in std_logic;
        FSM_Reset : in std_logic;
        FSM_Emergencia : in std_logic;
        FSM_Obstrucao : in std_logic;
        FSM_Sobrepeso_SigIN : in std_logic;
        FSM_PortaAberta : in std_logic;
        FSM_PortaFechada : in std_logic;
        FSM_FilaAndar_SigIN : in std_logic;
        FSM_CompAndar_Maior : in std_logic;
        FSM_CompAndar_Menor : in std_logic;
        FSM_CompAndar_Igual : in std_logic;
        FSM_Temp_SigIN : in std_logic;
        FSM_Emerg_SigIN : in std_logic;
        FSM_RegAndar_Load : out std_logic;
        FSM_FilaAndar_Add : out std_logic;
        FSM_FilaAndar_Remove : out std_logic;
        FSM_Temp_Start : out std_logic;
        FSM_Temp_Reset : out std_logic;
        FSM_Emerg_Start : out std_logic := '0';
        FSM_Emerg_SigOUT : out std_logic := '0';
        FSM_Motor_Subir : out std_logic := '0';
        FSM_Motor_Descer : out std_logic := '0';
        FSM_Motor_Porta : out std_logic := '0'
    );
end Controladora;

architecture arch of Controladora is
    -- Declaração dos estados
    type state_type is (S0, S1, S2, S3, S4, S5, S6, S7, S8);
    signal STATE, Next_STATE : state_type := S0;
    signal SIG_IN_emerg : std_logic;

begin
    -- Processo de transição de estados
    process (FSM_Clock, FSM_Reset)
    begin
        if FSM_Reset = '1' then
            STATE <= S0; -- Estado inicial após reset
        elsif rising_edge(FSM_Clock) then
            STATE <= Next_STATE;
        end if;
    end process;

    -- Processo combinacional das saídas e estados
    process (STATE, FSM_Obstrucao, FSM_Temp_SigIN, FSM_PortaFechada, FSM_PortaAberta, FSM_Emerg_SigIN, FSM_Emergencia, FSM_Sobrepeso_SigIN, FSM_FilaAndar_SigIN, FSM_CompAndar_Igual, FSM_CompAndar_Maior, FSM_CompAndar_Menor)
    begin
        FSM_Emerg_Start <= '0';
        case STATE is
            when S0 =>
                FSM_RegAndar_Load <= '1';
                FSM_FilaAndar_Add <= '1';
                FSM_FilaAndar_Remove <= '0';
                FSM_Temp_Start <= '0';
                FSM_Temp_Reset <= '1';
                FSM_Emerg_SigOUT <= '0';
                FSM_Motor_Subir <= '0';
                FSM_Motor_Descer <= '0';
                FSM_Motor_Porta <= '0';
                Next_STATE <= S1;

            when S1 =>
                if FSM_Emergencia = '0' then
                    Next_STATE <= S1;
                    FSM_FilaAndar_Add <= '1';
                    FSM_FilaAndar_Remove <= '0';
                    FSM_Temp_Reset <= '1';
                    if ((FSM_PortaFechada = '0') or ((FSM_FilaAndar_SigIN = '1') and (FSM_CompAndar_Igual = '1'))) then
                        Next_STATE <= S2;
                    elsif ((FSM_PortaFechada = '1') and (FSM_CompAndar_Igual = '0')) then
                        Next_STATE <= S4;
                    end if;
                else
                    Next_STATE <= S8;
                    FSM_Emerg_Start <= '1';
                end if;

            when S2 =>
                if FSM_Emergencia = '0' then
                    Next_STATE <= S2;
                    FSM_Motor_Porta <= '1';
                    FSM_Temp_Reset <= '1';
                    if FSM_CompAndar_Igual = '1' then
                        FSM_FilaAndar_Add <= '0';
                        FSM_FilaAndar_Remove <= '1';
                    else 
                        FSM_FilaAndar_Add <= '1';
                        FSM_FilaAndar_Remove <= '0';
                    end if;
                    if FSM_PortaAberta = '1' then
                        Next_STATE <= S3;
                        FSM_Temp_Reset <= '0';
                    end if;
                else
                    Next_STATE <= S8;
                    FSM_Emerg_Start <= '1';
                end if;

            when S3 =>
                if FSM_Emergencia = '0' then
                    Next_STATE <= S3;
                    FSM_Temp_Reset <= '0';
                    FSM_Temp_Start <= '1';
                    FSM_Motor_Porta <= '1';
                    if FSM_Temp_SigIN = '1' then
                        Next_STATE <= S4;
                    elsif FSM_Obstrucao = '1' then
                        FSM_Temp_Start <= '0';
                    end if;
                else
                    Next_STATE <= S8;
                    FSM_Emerg_Start <= '1';
                end if;

            when S4 =>
                if FSM_Emergencia = '0' then
                    Next_STATE <= S4;
                    FSM_Motor_Porta <= '0';
                    if FSM_PortaFechada = '1' then
                        Next_STATE <= S5;
                    elsif (FSM_Obstrucao = '1') or (FSM_Sobrepeso_SigIN = '1') then
                        Next_STATE <= S2;
                    end if;
                else
                    Next_STATE <= S8;
                    FSM_Emerg_Start <= '1';
                end if;

            when S5 =>
                if FSM_Emergencia = '0' then
                    Next_STATE <= S5;
                    if FSM_CompAndar_Maior = '1' then
                        Next_STATE <= S7;
                    elsif FSM_CompAndar_Igual = '1' then
                        Next_STATE <= S1;
                        FSM_FilaAndar_Add <= '0';
                        FSM_FilaAndar_Remove <= '1';
                    elsif FSM_CompAndar_Menor = '1' then
                        Next_STATE <= S6;
                    end if;
                else
                    Next_STATE <= S8;
                    FSM_Emerg_Start <= '1';
                end if;

            when S6 =>
                if FSM_Emergencia = '0' then
                    Next_STATE <= S6;
                    FSM_Motor_Descer <= '1';
                    FSM_Motor_Subir <= '0';
                    if FSM_CompAndar_Igual = '1' then
                        Next_STATE <= S1;
                    end if;
                else
                    Next_STATE <= S8;
                    FSM_Emerg_Start <= '1';
                end if;

            when S7 =>
                if FSM_Emergencia = '0' then
                    Next_STATE <= S7;
                    FSM_Motor_Subir <= '1';
                    FSM_Motor_Descer <= '0';
                    if FSM_CompAndar_Igual = '1' then
                        Next_STATE <= S1;
                    end if;
                else
                    Next_STATE <= S8;
                    FSM_Emerg_Start <= '1';
                end if;

            when others => -- S8
                Next_STATE <= S8;
                SIG_IN_emerg <= FSM_Emerg_SigIN;
                if SIG_IN_emerg = '0' then
                    Next_STATE <= S0;
                end if;
                FSM_Emerg_SigOUT <= '1';
                FSM_Motor_Subir <= '1';
                FSM_Motor_Descer <= '1';
                FSM_Motor_Porta <= '1';
                FSM_Emerg_Start <= '1';
        end case;
    end process;
end arch;