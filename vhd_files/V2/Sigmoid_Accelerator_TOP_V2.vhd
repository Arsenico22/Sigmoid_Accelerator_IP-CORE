library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Sigmoid_Accelerator_TOP_V2 is
    Port ( 
         clk, reset, valid_in : in  STD_LOGIC;
         input_data : in  STD_LOGIC_VECTOR (15 downto 0);
         valid_out : out STD_LOGIC;
         output_data : out STD_LOGIC_VECTOR (15 downto 0)
         );
end Sigmoid_Accelerator_TOP_V2;

architecture Structural of Sigmoid_Accelerator_TOP_V2 is

    component Pre_Processing_V2
        Port ( 
             clk, reset, valid_in : in  STD_LOGIC;
             data_in : in  STD_LOGIC_VECTOR (15 downto 0);
             valid_out : out STD_LOGIC;
             addr_out : out UNSIGNED (9 downto 0)
             );
    end component;

    component Sigmoid_LUT_V2
        Port ( 
             clk, reset, valid_in : in  STD_LOGIC;
             addr_in : in  UNSIGNED (9 downto 0);
             valid_out : out STD_LOGIC;
             data_out : out STD_LOGIC_VECTOR (15 downto 0)
             );
    end component;
    
    -- Segnali Pipeline
    signal internal_addr : UNSIGNED (9 downto 0);
    signal reg_valid_in, internal_valid, reg_valid_out : STD_LOGIC;
    signal reg_input_data, reg_output_data : STD_LOGIC_VECTOR(15 downto 0);

begin

    -- I stadio pipeline: input buffering
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                reg_input_data <= (others => '0');
                reg_valid_in <= '0';
            else
                reg_input_data <= input_data;
                reg_valid_in <= valid_in;
            end if;
        end if;
    end process;

    -- II, III stadio pipeline: logica di pre-processing
    PP: Pre_Processing_V2
        port map (clk => clk, reset => reset, valid_in => reg_valid_in, data_in => reg_input_data, valid_out => internal_valid, addr_out => internal_addr);

    -- IV, V stadio pipeline: accesso alla memoria e uscita
    MEM: Sigmoid_LUT_V2
        port map (clk => clk, reset => reset, valid_in => internal_valid, addr_in => internal_addr, valid_out => reg_valid_out, data_out => reg_output_data);

    -- VI stadio pipeline: output buffering
    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                output_data <= (others => '0');
                valid_out <= '0';
            else
                output_data <= reg_output_data;
                valid_out <= reg_valid_out;
            end if;
        end if;
    end process;

end Structural;