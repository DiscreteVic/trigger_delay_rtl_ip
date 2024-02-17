library ieee ;
use ieee.std_logic_1164.all ;

entity trigger_delay is
    generic (
        DELAY_WIDTH : integer := 8
    );
    port ( 
        clk : in std_logic ;
        delay : in std_logic_vector(DELAY_WIDTH - 1 downto 0) ;
        trigger : in std_logic ;
        trigger_delayed : out std_logic 
    );
end trigger_delay ;

architecture LogicFunction of trigger_delay is
    signal internal_counter : std_logic_vector(DELAY_WIDTH - 1 downto 0);
    

begin 

    process_RS_flipflop: process (clk)
    begin
        if trigger == '1' then
        end if;

    end process process_RS_flipflop;


end LogicFunction ;