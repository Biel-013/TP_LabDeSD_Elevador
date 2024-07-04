library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Fileira is
    generic (
        W : integer := 8; -- Largura dos dados
        Andares : integer := 4 -- Profundidade da fila
    );
    port (
        FLR_Clock : in std_logic;
        FLR_Reset : in std_logic;
        FLR_Adicionar : in std_logic; -- Sinal para enfileirar
        FLR_Retirar : in std_logic; -- Sinal para desenfileirar
        FLR_DataIN : in std_logic_vector(W - 1 downto 0); -- Dado de entrada
        FLR_DataOUT : out std_logic_vector(W - 1 downto 0); -- Dado de saída
        FLR_SigOUT : out std_logic -- Sinal de saída
    );
end Fileira;

architecture Behavioral of Fileira is
    type fileira_t is array (0 to Andares - 1) of std_logic_vector(W - 1 downto 0);
    signal fileira_v : fileira_t := (others => (others => '0'));
    signal inicio : integer := 0;
    signal fim : integer := 0;
    signal count : integer := 0;
    signal zeros_vector : std_logic_vector(W - 1 downto 0) := (others => '0');
begin
    process (FLR_Clock, FLR_Reset)
        variable is_present : boolean;
    begin
        if FLR_Reset = '1' then
            fileira_v <= (others => (others => '0'));
            inicio <= 0;
            fim <= 0;
            count <= 0;
        elsif rising_edge(FLR_Clock) then
            -- Verificar se FLR_DataIN está presente na fila
            is_present := false;
            for i in 0 to Andares - 1 loop
                if fileira_v(i) = FLR_DataIN then
                    is_present := true;
                end if;
            end loop;

            -- Enfileirar
            if FLR_Adicionar = '1' and FLR_DataIN /= zeros_vector and not is_present then
                if count < Andares then
                    fileira_v(fim) <= FLR_DataIN;
                    fim <= (fim + 1) mod Andares;
                    count <= count + 1;
                end if;
            end if;

            -- Desenfileirar
            if FLR_Retirar = '1' then
                if count > 0 then
                    inicio <= (inicio + 1) mod Andares;
                    count <= count - 1;
                end if;
            end if;
        end if;
    end process;

    FLR_DataOUT <= fileira_v(inicio);

    process (fileira_v, inicio)
    begin
        if fileira_v(inicio) /= zeros_vector then
            FLR_SigOUT <= '1';
        else
            FLR_SigOUT <= '0';
        end if;
    end process;

end Behavioral;
