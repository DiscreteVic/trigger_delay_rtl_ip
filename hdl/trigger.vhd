library ieee ;
use ieee.std_logic_1164.all ;

entity trigger is
    port ( 
        clk : in std_logic ; 
        level : in std_logic ;
        trigger : out std_logic 
    );
end trigger ;

architecture LogicFunction of trigger is
    signal int_status : std_logic;
    signal int_trigger : std_logic;
    
begin 

    process_trigger: process (clk)
    begin
        if int_status = '1' then
            if rising_edge(clk) then
                int_trigger <= '1';
            elsif falling_edge(clk) then
                int_trigger <= '0';
            end if;
        elsif int_status = '0' then 
            if rising_edge(clk) and level = '1' then
                int_status <= '1';
            end if;
        end if;
    end process process_trigger;

    trigger <= int_trigger;

end LogicFunction ;