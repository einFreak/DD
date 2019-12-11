library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity MODULE is
  port( CLK, RESET: in std_logic;
        LED: out std_logic);
end MODULE;

architecture arch of MODULE is
--##INSERT YOUR CODE HERE 
signal ticksek: std_logic;

signal counter: std_logic_vector(3 downto 0);



begin



CLKPROC: process(CLK, RESET)

  begin 
    
    if RESET = '1' then
      ticksek <= '1';
      counter <= "0000";
    
    elsif CLK = '1' and CLK'event then
    
        counter <= counter+1;
        -- 100MHz = 100.000.000 Hz (*10⁶)
        -- da damit lange Sim: Laut Aufgabe nur 3 Takte
        
        if counter = "0100" then
            ticksek <= '0';
        
        elsif counter ="1000" then
            ticksek <= '1';
            counter <= "0001";
        end if;
    end if;      

end process CLKPROC;       

      

LED <= ticksek;
--##INSERT YOUR CODE HERE END
end;
