library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Pre_Processing_V2 is
    Port ( 
         clk, reset, valid_in : in  STD_LOGIC;
         data_in : in  STD_LOGIC_VECTOR (15 downto 0);   
         valid_out : out STD_LOGIC;                      
         addr_out : out UNSIGNED (9 downto 0)
         );
end Pre_Processing_V2;

architecture Behavioral of Pre_Processing_V2 is
  
    constant OFFSET_VAL : signed(15 downto 0) := to_signed(8192, 16);

    -- Segnali Pipeline
    signal sum_reg : signed(16 downto 0);
    signal valid_pipe : std_logic;

begin

    process(clk)
    begin
        if rising_edge(clk) then

            if reset = '1' then
                sum_reg <= (others => '0');
                addr_out <= (others => '0');
                valid_pipe <= '0';
                valid_out <= '0';
            else

                -- I stadio pipeline: offset
                sum_reg <= resize(signed(data_in), 17) + resize(OFFSET_VAL, 17);
                valid_pipe <= valid_in;

                -- II stadio pipeline: clipping e slicing
                valid_out <= valid_pipe;

                if sum_reg < 0 then
                    addr_out <= (others => '0');
                elsif sum_reg >= to_signed(16384, 17) or (sum_reg(16) = '0' and sum_reg(15) = '1') then
                    addr_out <= to_unsigned(1023, 10);
                else
                    addr_out <= unsigned(sum_reg(13 downto 4));
                end if;
            end if;
        end if;
    end process;

end Behavioral;