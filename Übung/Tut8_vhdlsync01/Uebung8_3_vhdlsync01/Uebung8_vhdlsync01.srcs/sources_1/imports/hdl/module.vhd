library IEEE; 
use IEEE.STD_LOGIC_1164.all;


entity module is
  port(clk, reset, a, b: in  STD_LOGIC;
    q: out STD_LOGIC);
end;

architecture arch of module is
--##INSERT YOUR CODE HERE 
  type statetype is (S0, S1, S2);
  signal state, nstate: statetype;
begin
    MEM: process(clk, reset)
        begin
            if reset = '1' then
                state <= S0;
            
            elsif clk = '1' and clk'event then
                state <= nstate;
            end if;
        end process MEM;
    
    FSM: process(state, a, b)
        begin
            nstate <= S0;
            q <= '0';
            case state is
                when S0 => 
                    if a = '1' then 
                    nstate <= S1;
                    q <= '0';
                    end if;
                
                when S1 => if b = '1' then
                    nstate <= S2;
                    q <= '0';
                    end if;
                    
                when S2 => if (a and b) = '1' then
                    nstate <= S2;
                    q <= '1';
                    end if;
                when others => NULL;
            end case;
        end process FSM;


  
--##INSERT YOUR CODE HERE END
end;
