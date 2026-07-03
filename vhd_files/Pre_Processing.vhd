library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Pre_Processing is
    Port ( 
         clk, reset, valid_in : in  STD_LOGIC;
         data_in : in  STD_LOGIC_VECTOR (15 downto 0);   
         valid_out : out STD_LOGIC;                      
         addr_out : out UNSIGNED (7 downto 0)
         );
end Pre_Processing;

architecture Behavioral of Pre_Processing is
    constant OFFSET_VAL : signed(15 downto 0) := to_signed(8192, 16);
begin
    process(clk)
        variable temp_sum : signed(15 downto 0);
    begin
        if rising_edge(clk) then
            if reset = '1' then 
                addr_out <= (others => '0');
                valid_out <= '0';
            else
            
                -- Stadio pipeline: calcolo indirizzo e registrazione
                valid_out <= valid_in;
                temp_sum := signed(data_in) + OFFSET_VAL;
                addr_out <= unsigned(temp_sum(13 downto 6));
                
            end if;
        end if;
    end process;
    
end Behavioral;