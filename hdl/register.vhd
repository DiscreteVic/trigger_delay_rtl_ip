library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

entity delay_register is
    generic (
        DATA_WIDTH : integer
    );
    port ( 
        clk : in std_logic ;
        set : in std_logic ; 
        value_in : in std_logic_vector(DATA_WIDTH - 1 downto 0) ;
        value_out : out std_logic_vector(DATA_WIDTH - 1 downto 0) 
    );
end delay_register ;

architecture LogicFunction of delay_register is
    signal int_value : unsigned(DATA_WIDTH - 1 downto 0);
    
begin 

    process_delay_register: process (clk)
    begin
        if rising_edge(clk) then
            if set = '1' then
                int_value <= unsigned(value_in);
            end if;
        end if;
    end process process_delay_register;

    value_out <= std_logic_vector(int_value);

end LogicFunction ;