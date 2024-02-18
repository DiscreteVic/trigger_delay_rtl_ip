library ieee ;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Top_Entity is
    port ( 
        ADC_CLK_10 : in STD_LOGIC ;
        MAX10_CLK1_50 : in STD_LOGIC ;
        ARDUinO_IO : inout STD_LOGIC_VECTOR(15 downto 0) ;
        VGA_R : out STD_LOGIC_VECTOR(3 downto 0) ;
        VGA_G : out STD_LOGIC_VECTOR(3 downto 0) ;
        VGA_B : out STD_LOGIC_VECTOR(3 downto 0) ;
        VGA_HS : out STD_LOGIC ;
        VGA_VS : out STD_LOGIC ;
        KEY : in STD_LOGIC_VECTOR(1 downto 0) ;
        LEDR : out STD_LOGIC_VECTOR(9 downto 0);
        HEX0 : out STD_LOGIC_VECTOR(7 downto 0);
        HEX2 : out STD_LOGIC_VECTOR(7 downto 0);
        HEX1 : out STD_LOGIC_VECTOR(7 downto 0)) ;
end Top_Entity ;

architecture LogicFunction of Top_Entity is

 
    component trigger_delay is
        generic (
            DELAY_WIDTH : integer
        );
        port ( 
            clk : in std_logic ;
            delay : in std_logic_vector(DELAY_WIDTH - 1 downto 0) ;
            trigger : in std_logic ;
            trigger_delayed : out std_logic 
        );
    end component;



begin
 
end LogicFunction ;