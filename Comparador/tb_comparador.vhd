library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Declaração da entidade do testbench
entity tb_comparador is
end tb_comparador;

-- Arquitetura do testbench
architecture teste of tb_comparador is

    -- Declaração do componente Comparador
    component Comparador is 
        generic (
            W : natural := 16
        );
        port (
            COMP_A      : in std_logic_vector((W-1) downto 0);
            COMP_B      : in std_logic_vector((W-1) downto 0);
            COMP_Maior  : out std_logic;
            COMP_Menor  : out std_logic;
            COMP_Igual  : out std_logic;
            COMP_SigOUT : out std_logic
        );
    end component;

    -- Sinais de entrada e saída do testbench
    signal fio_A, fio_B : std_logic_vector(3 downto 0);
    signal fio_maior, fio_menor, fio_igual, fio_SigOUT : std_logic;

begin
    -- Instanciação do componente Comparador
    instancia_comparador: Comparador 
        generic map (W => 4) 
        port map (
            COMP_A      => fio_A,
            COMP_B      => fio_B,
            COMP_Maior  => fio_maior, 
            COMP_Menor  => fio_menor,
            COMP_Igual  => fio_igual,
            COMP_SigOUT => fio_SigOUT
        );

    -- Dados de entrada de 4 bits são expressos em "hexadecimal" usando "x":
    fio_A <= x"0", x"8" after 20 ns, x"7" after 40 ns, x"4" after 60 ns;
    fio_B <= x"0", x"7" after 10 ns, x"8" after 30 ns, x"1" after 50 ns;

end teste;