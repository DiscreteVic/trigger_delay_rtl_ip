library ieee ;
use ieee.std_logic_1164.all ;

entity register is
    generic (
        DELAY_WIDTH : integer := 8
    );
    port ( 
        clk : in std_logic ;
        set : in std_logic ; 
        value_in : in std_logic_vector(DELAY_WIDTH - 1 downto 0) ;
        value_out : out std_logic_vector(DELAY_WIDTH - 1 downto 0) 
    );
end register ;

architecture LogicFunction of register is
    signal int_value : unsigned(DELAY_WIDTH - 1 downto 0);
    
begin 

    process_register: process (clk, set)
    begin
        if rising_edge(clk) then
            if set == '1' then
                int_value <= to_unsigned(value_in);
            end if;
        end if;
    end process process_register;

    value_out <= std_logic_vector(int_value);

end LogicFunction ;