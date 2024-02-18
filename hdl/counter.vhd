library ieee ;
use ieee.std_logic_1164.all ;
use ieee.numeric_std.all;

entity counter is
    generic (
        DATA_WIDTH : integer
    );
    port ( 
        clk : in std_logic ;
        reset : in std_logic ; 
        add : in std_logic ;
        count : out std_logic_vector(DATA_WIDTH - 1 downto 0) 
    );
end counter ;

architecture LogicFunction of counter is
    signal int_count : unsigned(DATA_WIDTH - 1 downto 0);
    
begin 

    process_counter: process (clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                int_count <= (others => '0');
            elsif add = '1' then
                int_count <= int_count + 1;
            end if;
        end if;
    end process process_counter;

    count <= std_logic_vector(int_count);

end LogicFunction ;