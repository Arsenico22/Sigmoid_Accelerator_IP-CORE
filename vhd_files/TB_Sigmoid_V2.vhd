library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use STD.TEXTIO.ALL;
use IEEE.STD_LOGIC_TEXTIO.ALL;

entity TB_Sigmoid_V2 is
end TB_Sigmoid_V2;

architecture Behavioral of TB_Sigmoid_V2 is

    component Sigmoid_Accelerator_TOP_V2
        Port ( 
             clk, reset, valid_in: in  STD_LOGIC;
             input_data : in  STD_LOGIC_VECTOR (15 downto 0);
             valid_out : out STD_LOGIC;
             output_data : out STD_LOGIC_VECTOR (15 downto 0)
             );
    end component;

    signal clk, reset, valid_in : STD_LOGIC := '0';
    signal input_data : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
    signal valid_out : STD_LOGIC;
    signal output_data : STD_LOGIC_VECTOR(15 downto 0);

    constant CLK_PERIOD : time := 4 ns;
    signal stop_sim : boolean := false; 

begin

    uut: Sigmoid_Accelerator_TOP_V2
      port map (clk=> clk, reset => reset, valid_in => valid_in, input_data => input_data, valid_out => valid_out, output_data => output_data);
        
    -- Processo di generazione clock
    clk_process : process
    begin
        while not stop_sim loop
            clk <= '0'; wait for CLK_PERIOD/2;
            clk <= '1'; wait for CLK_PERIOD/2;
        end loop;
        wait;
    end process;

    -- Processo di stimolo
    stim_read: process
        file file_input : text open read_mode is "stimoli_input_baseline.mem";
        variable v_line : line;
        variable v_data : std_logic_vector(15 downto 0);
    begin

        reset <= '1';
        valid_in <= '0';
        input_data <= (others => '0');
        wait for CLK_PERIOD * 20;
        
        -- Rilascio reset sincronizzato sul fronte di discesa
        wait until falling_edge(clk);
        reset <= '0';
        
        wait for CLK_PERIOD * 10; 

        while not endfile(file_input) loop
            readline(file_input, v_line);
            hread(v_line, v_data);
           
            wait until falling_edge(clk);
            input_data <= v_data;
            valid_in <= '1';
        end loop;

        wait until falling_edge(clk);
        valid_in <= '0';
        input_data <= (others => '0');
        
        -- Attesa svuotamento pipeline
        wait for CLK_PERIOD * 50; 
        stop_sim <= true;
        wait;
    end process;

    -- Processo di scrittura risultati
    results_writer: process
        file file_output : text open write_mode is "risultati_HW_256.hex";
        variable v_line : line;
    begin
       
        wait until reset = '0';
        while not stop_sim loop
    
            -- Sincronizzazione sul fronte di salita
            wait until rising_edge(clk);
            if valid_out = '1' then
                hwrite(v_line, output_data);
                writeline(file_output, v_line);
            end if;
        end loop;
        wait;
    end process;

end Behavioral;