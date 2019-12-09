library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity module is
  port(btn: in std_logic_vector(1 downto 0);
       segments: out std_logic_vector(6 downto 0)     
  );
end;

architecture arch of module is
--##INSERT YOUR CODE HERE 
signal btn4: std_logic_vector(3 downto 0);

component sevenseg
    port(   bin: in  STD_LOGIC_VECTOR(3 downto 0);
            segments: out STD_LOGIC_VECTOR(6 downto 0)
  );
end component;

begin


HEX1: sevenseg port map(bin  => btn4, segments => segments);

with btn select
btn4 <=     x"0" when "00",
            x"1" when "01",
            x"2" when "10",
            x"3" when "11",
            x"F" when others;


--##INSERT YOUR CODE HERE END
end;
