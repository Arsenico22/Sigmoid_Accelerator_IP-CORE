library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sigmoid_MultiCore_Top is
    generic (
        NUM_CORES : integer := 32 --SELEZIONARE QUI NUMERO DI CORES 
    );
    Port (
        clk, reset : in  STD_LOGIC;
        valid_in : in  STD_LOGIC_VECTOR(NUM_CORES-1 downto 0);
        input_data : in  STD_LOGIC_VECTOR((NUM_CORES * 16) - 1 downto 0);
        valid_out : out STD_LOGIC_VECTOR(NUM_CORES-1 downto 0);
        output_data : out STD_LOGIC_VECTOR((NUM_CORES * 16) - 1 downto 0)
    );
end Sigmoid_MultiCore_Top;

architecture Structural of Sigmoid_MultiCore_Top is

    -- Costante interna per il formato fisso a 16 bit (Q5.11 in / Q1.15 out)
    constant DATA_WIDTH : integer := 16;

    component Sigmoid_Accelerator_TOP_V3
        Port (
            clk, reset, valid_in : in  STD_LOGIC;
            input_data : in  STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0);
            valid_out : out STD_LOGIC;
            output_data : out STD_LOGIC_VECTOR(DATA_WIDTH-1 downto 0)
        );
    end component;

begin

    Core_Gen: for i in 0 to NUM_CORES-1 generate
        CORE : Sigmoid_Accelerator_TOP_V3
            port map ( clk => clk, reset => reset, valid_in => valid_in(i),
                     -- selezione segmento da 16 bit per ogni core
                     input_data => input_data(((i+1)*DATA_WIDTH)-1 downto i*DATA_WIDTH),
                     valid_out => valid_out(i),
                     output_data => output_data(((i+1)*DATA_WIDTH)-1 downto i*DATA_WIDTH)
                     );
    end generate Core_Gen;

end Structural;