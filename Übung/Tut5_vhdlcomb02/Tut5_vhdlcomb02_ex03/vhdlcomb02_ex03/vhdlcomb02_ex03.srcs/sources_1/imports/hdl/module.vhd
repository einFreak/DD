library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity module is
  port(a: in STD_LOGIC_VECTOR(3 downto 0);
       shamt: in STD_LOGIC_VECTOR(1 downto 0); --rotamt
       right_rotated: out STD_LOGIC_VECTOR(3 downto 0); 
       left_rotated: out STD_LOGIC_VECTOR(3 downto 0)       
  );
end;

architecture arch of module is
begin
--##INSERT YOUR CODE HERE 
  
  with shamt select
  right_rotated <= a when "00",
                   a(0) & a(3 downto 1) when "01",
                   a(1 downto 0) & a(3 downto 2) when "10",
                   a(2 downto 0) & a(3) when "11",
                   "0000" when others;
  with shamt select
  left_rotated <=  a when "00",
                   a(2 downto 0) & a(3) when "01",
                   a(1 downto 0) & a(3 downto 2) when "10",
                   a(0) & a(3 downto 1) when "11",
                   "0000" when others;

--##INSERT YOUR CODE HERE END
end;