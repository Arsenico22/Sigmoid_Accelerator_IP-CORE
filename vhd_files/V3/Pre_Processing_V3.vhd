library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Pre_Processing_V3 is
    Port (
         clk, reset, valid_in : in  STD_LOGIC;
         data_in : in  STD_LOGIC_VECTOR(15 downto 0);
         valid_out, is_neg_out : out STD_LOGIC;
         addr_out : out UNSIGNED(9 downto 0)
         );
end Pre_Processing_V3;

architecture Behavioral of Pre_Processing_V3 is

    constant CLIP_VAL : signed(16 downto 0) := to_signed(16384,17);
    
    -- Segnali Pipeline
    signal abs_val : signed(16 downto 0);
    signal neg_reg, valid_reg : std_logic;

begin

    process(clk)
        variable clipped : unsigned(15 downto 0);
    begin
        if rising_edge(clk) then

            if reset = '1' then
                abs_val <= (others => '0');
                neg_reg <= '0';
                valid_reg <= '0';
                addr_out <= (others => '0');
                valid_out <= '0';
                is_neg_out <= '0';

            else

                -- I stadio pipeline: valore assoluto + segno
                if signed(data_in) < 0 then
                    abs_val <= -resize(signed(data_in),17);
                    neg_reg <= '1';
                else
                    abs_val <= resize(signed(data_in),17);
                    neg_reg <= '0';
                end if;
                
                valid_reg <= valid_in;


                -- II stadio pipeline: clipping e slicing
                if abs_val >= CLIP_VAL then
                    clipped := to_unsigned(16383,16);
                else
                    clipped := unsigned(abs_val(15 downto 0));
                end if;
                addr_out <= clipped(13 downto 4);
                is_neg_out <= neg_reg;
                valid_out <= valid_reg;

            end if;
        end if;
    end process;

end Behavioral;