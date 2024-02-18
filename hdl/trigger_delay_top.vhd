library ieee ;
use ieee.std_logic_1164.all ;

entity trigger_delay is
    generic (
        DELAY_WIDTH : integer
    );
    port ( 
        clk : in std_logic ;
        delay : in std_logic_vector(DELAY_WIDTH - 1 downto 0) ;
        trigger_in : in std_logic ;
        trigger_delayed : out std_logic 
    );
end trigger_delay ;

architecture LogicFunction of trigger_delay is
    
    component rs_flipflop is
        port ( 
            clk : in std_logic ;
            set : in std_logic ;
            reset : in std_logic ;
            q : out std_logic ;
            nq : out std_logic 
        );
    end component;

    component counter is
        generic (
            DATA_WIDTH : integer
        );
        port ( 
            clk : in std_logic ;
            reset : in std_logic ; 
            add : in std_logic ;
            count : out std_logic_vector(DATA_WIDTH - 1 downto 0) 
        );
    end component;

    component delay_register is
        generic (
            DELAY_WIDTH : integer
        );
        port ( 
            clk : in std_logic ;
            set : in std_logic ; 
            value_in : in std_logic_vector(DELAY_WIDTH - 1 downto 0) ;
            value_out : out std_logic_vector(DELAY_WIDTH - 1 downto 0) 
        );
    end component;

    component comparator is
        generic (
            DATA_WIDTH : integer
        );
        port ( 
            clk : in std_logic ; 
            a : in std_logic_vector(DATA_WIDTH - 1 downto 0) ;
            b : in std_logic_vector(DATA_WIDTH - 1 downto 0) ;
            result : out std_logic 
        );
    end component;

    component trigger is
        port ( 
            clk : in std_logic ; 
            level : in std_logic ;
            trigger : out std_logic 
        );
    end component;

    component ledTest is
		port ( 
			testKey : IN STD_LOGIC ;
			testLed : OUT STD_LOGIC );
    end component;

begin 



end LogicFunction ;