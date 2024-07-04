-- Biblioteca IEEE necessária para o uso de tipos de dados padrão
library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all;

entity Bcd_7sWd is
    generic (
        W : integer := 7;
        digitos : integer := 3 -- Para valores até 255, precisamos de até 3 dígitos
    );
    port (
        BCD_Entrada : in std_logic_vector(w - 1 downto 0); -- Entrada em BCD
        BCD_Saida : out std_logic_vector((digitos * 7) - 1 downto 0) -- Saída para displays de 7 segmentos
    );
end entity Bcd_7sWd;

architecture arch of Bcd_7sWd is
    signal parse_saida : std_logic_vector((digitos * 7) - 1 downto 0); -- Sinal intermediário para conversão
begin
    process (BCD_Entrada)
        variable valor_inteiro : integer; -- Variável para armazenar o valor inteiro
        variable i : integer; -- Índice para iteração
        variable digito : integer; -- Variável para armazenar dígito atual
        variable decimal_value : integer; -- Valor decimal calculado
    begin
        -- Inicializa a saída como zeros
        parse_saida <= (others => '0');

        -- Converte o binário para inteiro
        valor_inteiro := to_integer(unsigned(BCD_Entrada));
        decimal_value := valor_inteiro;
        i := 0;

        -- Caso especial quando o valor de entrada é 0
        if valor_inteiro = 0 then
            for j in 0 to digitos - 1 loop
                parse_saida((j * 7) + 6 downto (j * 7)) <= "0111111"; -- Representação do dígito 0
            end loop;
            BCD_Saida <= parse_saida;
        else
            -- Loop enquanto houver valor decimal e número de dígitos processados for menor que digitos
            while (i < digitos) loop
                digito := decimal_value mod 10; -- Extrai o dígito menos significativo

                -- Converte o dígito para o display de 7 segmentos
                case digito is
                    when 0 => parse_saida((i * 7) + 6 downto (i * 7)) <= "1000000"; -- 0
                    when 1 => parse_saida((i * 7) + 6 downto (i * 7)) <= "1111001"; -- 1
                    when 2 => parse_saida((i * 7) + 6 downto (i * 7)) <= "0100100"; -- 2
                    when 3 => parse_saida((i * 7) + 6 downto (i * 7)) <= "0110000"; -- 3
                    when 4 => parse_saida((i * 7) + 6 downto (i * 7)) <= "0011001"; -- 4
                    when 5 => parse_saida((i * 7) + 6 downto (i * 7)) <= "0010010"; -- 5
                    when 6 => parse_saida((i * 7) + 6 downto (i * 7)) <= "0000010"; -- 6
                    when 7 => parse_saida((i * 7) + 6 downto (i * 7)) <= "1111000"; -- 7
                    when 8 => parse_saida((i * 7) + 6 downto (i * 7)) <= "0000000"; -- 8
                    when 9 => parse_saida((i * 7) + 6 downto (i * 7)) <= "0010000"; -- 9
                    when others => parse_saida((i * 7) + 6 downto (i * 7)) <= "1111111"; -- Caso default
                end case;

                -- Atualiza o valor decimal removendo o dígito menos significativo
                decimal_value := decimal_value / 10;
                i := i + 1;
            end loop;
        end if;

        -- Atribui a saída final
        BCD_Saida <= parse_saida;
    end process;
end architecture arch;