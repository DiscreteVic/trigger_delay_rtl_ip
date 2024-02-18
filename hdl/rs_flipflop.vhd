library ieee ;
use ieee.std_logic_1164.all ;

entity rs_flipflop is
    port ( 
        clk : in std_logic ;
        set : in std_logic ;
        reset : in std_logic ;
        q : out std_logic ;
        nq : out std_logic 
    );
end rs_flipflop ;

architecture LogicFunction of rs_flipflop is
begin 

    process_RS_flipflop: process (clk)
    begin
        if rising_edge(clk) then
            if set = '1' and reset = '0' then
                q <= '1';
                nq <= '0';
            elsif reset = '1' then
                q <= '0';
                nq <= '1';
            end if;
        end if;
    end process process_RS_flipflop;


end LogicFunction ;