library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity TB_Real is
end TB_Real;

architecture Behavioral of TB_Real is

    constant NUM_CORES : integer := 32; 
    constant DATA_WIDTH : integer := 16;
    constant CLK_PERIOD : time := 5 ns;

    signal clk : std_logic := '0';
    signal reset : std_logic := '0';
    signal valid_in : std_logic_vector(NUM_CORES-1 downto 0) := (others => '0');
    signal input_data : std_logic_vector(NUM_CORES*DATA_WIDTH-1 downto 0) := (others => '0');
    signal valid_out : std_logic_vector(NUM_CORES-1 downto 0);
    signal output_data : std_logic_vector(NUM_CORES*DATA_WIDTH-1 downto 0);

    signal stop_sim : boolean := false;

begin

    uut : entity work.Sigmoid_MultiCore_Top
    port map( clk => clk, reset => reset, valid_in => valid_in,
              input_data => input_data, valid_out => valid_out, output_data => output_data);

    -- Processo di generazione del clock
    clk_process : process
    begin
        while not stop_sim loop
            clk <= '0';
            wait for CLK_PERIOD/2;
            clk <= '1';
            wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;


    -- Processo di lettura:
    stim_read : process
        file file_input : text open read_mode is "stimoli_real.mem";
        variable v_line : line;
        variable v_data : std_logic_vector(DATA_WIDTH-1 downto 0);
        
    begin
    
        reset <= '1';
        valid_in <= (others => '0');
        input_data <= (others => '0');

        wait for CLK_PERIOD*20;
        wait until falling_edge(clk);
        reset <= '0';
        wait for CLK_PERIOD*10;
        
        while not endfile(file_input) loop
            wait until falling_edge(clk);
            valid_in <= (others => '0');
            input_data <= (others => '0');
            
            for i in 0 to NUM_CORES-1 loop
                if not endfile(file_input) then
                    readline(file_input, v_line);
                    hread(v_line, v_data);
                    input_data((i+1)*DATA_WIDTH-1 downto i*DATA_WIDTH) <= v_data;
                    valid_in(i) <= '1';
                else
                    valid_in(i) <= '0';
                end if;

            end loop;
        end loop;

        wait until falling_edge(clk);
        valid_in <= (others => '0');
        input_data <= (others => '0');
        wait for CLK_PERIOD * 100;
        stop_sim <= true;
        wait;

    end process;


    -- Processo di scrittura su file:
    results_writer : process

        file file_output : text open write_mode is "risultati_real.hex";
        variable v_line : line;

    begin

        wait until reset = '0';
        while not stop_sim loop
            wait until falling_edge(clk);
            for i in 0 to NUM_CORES-1 loop
                if valid_out(i) = '1' then
                    hwrite(v_line, output_data((i+1)*DATA_WIDTH-1 downto i*DATA_WIDTH));
                    writeline(file_output, v_line);
                    
                end if;
            end loop;
        end loop;
        wait;
    end process;

end Behavioral;