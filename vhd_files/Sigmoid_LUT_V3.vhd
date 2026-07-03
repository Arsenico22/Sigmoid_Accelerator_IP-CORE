library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

use work.Sigmoid_Values_V3.all;

entity Sigmoid_LUT_V3 is
    Port (
         clk, reset, valid_in, is_neg_in : in  STD_LOGIC;
         addr_in : in  UNSIGNED(9 downto 0);
         valid_out : out STD_LOGIC;
         data_out : out STD_LOGIC_VECTOR(15 downto 0)
         );
end Sigmoid_LUT_V3;

architecture Behavioral of Sigmoid_LUT_V3 is

    signal rom : lut_type := SIGMOID_TABLE;
    attribute rom_style : string;
    attribute rom_style of rom : signal is "block";
    
    -- Segnali Pipeline
    signal addr_reg : unsigned(9 downto 0) ;
    signal lut_data : std_logic_vector(15 downto 0);
    signal sign_r1, sign_r2, valid_r1, valid_r2 : std_logic := '0';

    constant ONE : unsigned(15 downto 0) := to_unsigned(32767,16);

begin

    -- I stadio pipeline: registro d'ingresso
    process(clk)
    begin
        if rising_edge(clk) then
            addr_reg <= addr_in;
            sign_r1 <= is_neg_in;
            valid_r1 <= valid_in;
        end if;
    end process;

    -- II stadio pipeline: lettura BRAM
    process(clk)
    begin
        if rising_edge(clk) then
            lut_data <= rom(to_integer(addr_reg));
            sign_r2 <= sign_r1;
            valid_r2 <= valid_r1;
        end if;
    end process;

    -- III stadio pipeline: simmetria + output
    process(clk)
        variable val, outv : unsigned(15 downto 0);
        
    begin
        if rising_edge(clk) then
            if reset = '1' then
                data_out <= (others => '0');
                valid_out <= '0';
            else
                val := unsigned(lut_data);
                if sign_r2 = '1' then
                    outv := ONE - val;
                else
                    outv := val;
                end if;

                data_out <= std_logic_vector(outv);
                valid_out <= valid_r2;

            end if;
        end if;
    end process;

end Behavioral;