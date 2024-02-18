library ieee ;
use ieee.std_logic_1164.all ;

entity comparator is
    generic (
        DATA_WIDTH : integer
    );
    port ( 
        clk : in std_logic ; 
        a : in std_logic_vector(DATA_WIDTH - 1 downto 0) ;
        b : in std_logic_vector(DATA_WIDTH - 1 downto 0) ;
        result : out std_logic 
    );
end comparator ;

architecture LogicFunction of comparator is
    signal int_result : std_logic;
    
begin 

    process_comparator: process (clk)
    begin
        if rising_edge(clk) then
            if a = b then
                result <= '1';
            else
                result <= '0';
            end if;
        end if;
    end process process_comparator;

    result <= std_logic(int_result);

end LogicFunction ;