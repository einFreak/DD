library ieee;
use ieee.std_logic_1164.all;

entity MODULE is
    port(x: in  STD_LOGIC_VECTOR(3 downto 0);
         y: in  STD_LOGIC_VECTOR(3 downto 0);         
         sum: out STD_LOGIC_VECTOR(3 downto 0);
         cout: out STD_LOGIC
    );
end MODULE;

architecture STRUCT of MODULE is
--##INSERT YOUR CODE HERE 

signal COUT0, COUT1, COUT2, COUT3: std_logic;
signal sum_save: STD_LOGIC_VECTOR(3 downto 0);

component FULLADD
  port( E0, E1, CIN: in std_logic;
        SUM, COUT: out std_logic);
end component;

begin

	V1: FULLADD port map(x(0), y(0), "0", sum_save(0), COUT0);
	V2: FULLADD port map(x(1), y(1), COUT0, sum_save(1), COUT1);
	V3: FULLADD port map(x(2), y(2), COUT1, sum_save(2), COUT2);
	V4: FULLADD port map(x(3), y(3), COUT2, sum_save(3), COUT3);
	
cout <= COUT3;
sum <= sum_save;

--##INSERT YOUR CODE HERE END
end STRUCT;
