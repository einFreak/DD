library IEEE; 
use IEEE.STD_LOGIC_1164.all;
entity module is
  port(clk, a, b, c, d: in  STD_LOGIC;
     x, y: out STD_LOGIC);
end;

architecture arch of module is
--##INSERT YOUR CODE HERE 
	signal n1, x1, y1: STD_LOGIC;
	begin
	n1 <= a and b;
	x1 <= n1 or c;
	y1 <= not (x1 or d);
	
	x <= x1;
	y <= y1;
	
--##INSERT YOUR CODE HERE END
end;
