library ieee ;
use ieee.std_logic_1164.all ;

entity comparator is
    generic (
        DELAY_WIDTH : integer := 8
    );
    port ( 
        clk : in std_logic ; 
        level : in std_logic ;
        trigger : out std_logic 
    );
end comparator ;

architecture LogicFunction of comparator is
    signal int_status : std_logic;
    signal int_trigger : std_logic;
    
begin 

    process_comparator: process (clk)
    begin
        if int_status == '1' then
            if rising_edge(clk) then
                int_trigger <= '1';
            elsif falling_edge(clk) then
                int_trigger <= '0';
            end if;
        elsif int_status == '0' then 
            if rising_edge(clk) and level == '1' then
                int_status <= '1';
            end if;
        end if;
    end process process_comparator;

    trigger <= int_trigger;

end LogicFunction ;