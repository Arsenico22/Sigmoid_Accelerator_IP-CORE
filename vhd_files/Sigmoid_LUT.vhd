library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.Sigmoid_Values.all;

entity Sigmoid_LUT is
    Port ( 
         clk, reset, valid_in : in  STD_LOGIC;
         addr_in : in  UNSIGNED (7 downto 0);           
         valid_out : out STD_LOGIC;                      
         data_out : out STD_LOGIC_VECTOR (15 downto 0) 
         );
end Sigmoid_LUT;

architecture Behavioral of Sigmoid_LUT is

    signal ROM_CONTENT : lut_type := SIGMOID_TABLE;
    attribute rom_style : string;
    attribute rom_style of ROM_CONTENT : signal is "distributed";
    
    -- Segnali Pipeline
    signal addr_reg : std_logic_vector(7 downto 0);
    signal v_pipe : std_logic; 

begin
   
    process(clk)
    begin
        if rising_edge(clk) then
        
            -- I stadio pipeline: registro d'ingresso
            addr_reg <= std_logic_vector(addr_in);
            
            -- II stadio pipeline: registro d'uscita
            data_out <= ROM_CONTENT(to_integer(unsigned(addr_reg)));

            if reset = '1' then
                v_pipe <= '0';
                valid_out <= '0';
            else
            
                -- Pipeline bit di validità (profondità 2)
                v_pipe <= valid_in; 
                valid_out <= v_pipe; 
            end if;
        end if;
    end process;

end Behavioral;
