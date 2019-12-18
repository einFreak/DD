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
signal toggle: std_logic:= '1';
--signal counter: std_logic_vector(3 downto 0);
signal counter: std_logic_vector(27 downto 0); --27, da 26 nicht durch 4 teilbar -> notwendig für HEX Werte



begin



CLKPROC: process(CLK, RESET)

  begin 
    
    if RESET = '1' then
      ticksek <= '0';
      --counter <= "0000";
      counter <= x"0000000";
    
    elsif CLK = '1' and CLK'event then
    
        counter <= counter+1;
        -- 100MHz = 100.000.000 Hz (*10⁶)
        -- da damit lange Sim: Laut Aufgabe nur 3 Takte
        
        --if counter = "0011" then
        if counter = x"5F5E100" then
            ticksek <= '1';
        
        --elsif counter ="0100" then
        elsif counter = x"5F5E101" then
            ticksek <= '0';
            --counter <= "0001";
            counter <= x"0000001";
            
        end if;
        
         
    end if;             

end process CLKPROC;  
    
--TGLPROC: process(ticksek, toggle)
--    begin    
--        if ticksek = '1' then
--            toggle <= not toggle;
--        end if;
--end process TGLPROC;

TGLPROC: process(CLK)
    begin 
    if CLK = '1' and CLK'event then   
        if ticksek = '1' then
            toggle <= not toggle;
        end if;
    end if;
end process TGLPROC;   

      

LED <= toggle;
--##INSERT YOUR CODE HERE END
end;
