library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_Fileira is
end tb_Fileira;

architecture Behavioral of tb_Fileira is
    -- Parâmetros genéricos
    constant WIDTH : integer := 8;
    constant DEPTH : integer := 4;

    -- Sinais para conectar ao DUT (Device Under Test)
    signal clk         : STD_LOGIC := '0';
    signal reset       : STD_LOGIC := '0';
    signal enqueue     : STD_LOGIC := '0';
    signal dequeue     : STD_LOGIC := '0';
    signal data_in     : STD_LOGIC_VECTOR(WIDTH-1 downto 0) := (others => '0');
    signal data_out    : STD_LOGIC_VECTOR(WIDTH-1 downto 0);
    signal sig_out     : STD_LOGIC;

    -- Componente instanciado (DUT)
    component Fileira
        generic (
            W : integer := 8;
            Andares : integer := 4
        );
        port (
            FLR_Clock      : in  STD_LOGIC;
            FLR_Reset      : in  STD_LOGIC;
            FLR_Adicionar  : in  STD_LOGIC;
            FLR_Retirar    : in  STD_LOGIC;
            FLR_DataIN     : in  STD_LOGIC_VECTOR(W-1 downto 0);
            FLR_DataOUT    : out STD_LOGIC_VECTOR(W-1 downto 0);
            FLR_SigOUT     : out STD_LOGIC
        );
    end component;

begin
    -- Instância do DUT
    uut: Fileira
        generic map (
            W => WIDTH,
            Andares => DEPTH
        )
        port map (
            FLR_Clock => clk,
            FLR_Reset => reset,
            FLR_Adicionar => enqueue,
            FLR_Retirar => dequeue,
            FLR_DataIN => data_in,
            FLR_DataOUT => data_out,
            FLR_SigOUT => sig_out
        );

    -- Geração de clock
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for 10 ns;
            clk <= '1';
            wait for 10 ns;
        end loop;
    end process;

    -- Estímulos de teste
    stimulus : process
    begin
        -- Reset inicial
        reset <= '1';
        wait for 20 ns;
        reset <= '0';
        wait for 20 ns;

        -- Teste de enfileiramento
        data_in <= "00000001";
        enqueue <= '1';
        wait for 20 ns;
        enqueue <= '0';
        wait for 20 ns;

        data_in <= "00000010";
        enqueue <= '1';
        wait for 20 ns;
        enqueue <= '0';
        wait for 20 ns;

        data_in <= "00000000";
        enqueue <= '1';
        wait for 20 ns;
        enqueue <= '0';
        wait for 20 ns;

        data_in <= "00000100";
        enqueue <= '1';
        wait for 20 ns;
        enqueue <= '0';
        wait for 20 ns;

        -- Tentativa de enfileirar um valor já presente (deve ser ignorado)
        data_in <= "00000010";
        enqueue <= '1';
        wait for 20 ns;
        enqueue <= '0';
        wait for 20 ns;

        -- Teste de desenfileiramento
        dequeue <= '1';
        wait for 20 ns;
        dequeue <= '0';
        wait for 20 ns;

        dequeue <= '1';
        wait for 20 ns;
        dequeue <= '0';
        wait for 20 ns;

        dequeue <= '1';
        wait for 20 ns;
        dequeue <= '0';
        wait for 20 ns;

        dequeue <= '1';
        wait for 20 ns;
        dequeue <= '0';
        wait for 20 ns;

        -- Fim do teste
        wait;
    end process;
end Behavioral;
