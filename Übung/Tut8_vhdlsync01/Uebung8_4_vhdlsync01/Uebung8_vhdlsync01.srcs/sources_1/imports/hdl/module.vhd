library ieee; 
use ieee.std_logic_1164.all; 
--use ieee.numeric_std.all;     
use ieee.std_logic_unsigned.all;   

entity module is 
  port( CLK, RESET: in std_logic; 
    MODE: in  std_logic_vector(1 downto 0); 
    Q: out std_logic_vector(3 downto 0)); 
end; 
 
architecture arch of module is 
--##INSERT YOUR CODE HERE 
  signal Q_INT : std_logic_vector(3 downto 0); --local signal 
begin 
    
    CLKP:process(CLK)
    --RESET not needded - synchron
        begin
            if CLK = '1' and CLK'event then
                if RESET = '1' then --hier Reset also innerhalb von CLK damit Synchron
                    Q_INT <= "0000";
                else
                    case MODE is
                        when "00" => Q_INT <= Q_INT + 1;
                        when "01" => Q_INT <= Q_INT + 2;
                        when "10" => Q_INT <= Q_INT + 3;
                        when "11" => Q_INT <= Q_INT + 4;
                        when others => Q_INT <= "0000";
                    end case;
                    
                end if;
            end if;
        end process CLKP;
    
    Q <= Q_INT;    
--    COUNTER:process(MODE)
  --      begin
    --        case MODE is
      --          when "00" => Q <= Q_INT + 1;
        --        when "01" => Q<= Q_INT + 2;
          --      when "10" => Q <= Q_INT + 3;
            --    when "11" => Q <= Q_INT + 4;
              --  when others => Q <= "0000";
     --       end case;
  --  end process COUNTER;
            
                
    
--##INSERT YOUR CODE HERE 
end; 
