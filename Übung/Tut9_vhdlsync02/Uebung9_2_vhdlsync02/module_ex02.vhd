library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;



entity MODULE is

  port( CLK, RESET: in std_logic;

        LED0: out std_logic;

        LED1: out std_logic;

        LED2: out std_logic;

        LED3: out std_logic);

end MODULE;



architecture arch of MODULE is

--##INSERT YOUR CODE HERE 

type statetype is (L0, L1, L2, L3);

  signal state, nstate: statetype;

  signal counter: std_logic_vector(3 downto 0);

begin

    MEM: process(clk, reset)

        begin

            if reset = '1' then

                counter <= "0000";

                state <= L0;

            elsif clk = '1' and clk'event then

                state <= nstate;

                counter <= counter+1;

            end if;

        end process MEM;

        

    FSM: process(state, counter)

    begin  

        case state is

            when L0 => 

                if counter = "0000" then 

                LED0 <= '1';

                LED1 <= '0';

                LED2 <= '0';

                LED3 <= '0';     

                nstate <= L1;

                else

                LED0 <= '1';

                LED1 <= '0';

                nstate <= L0;

                counter <= "0000";

                end if;

            when L1 => 

                if counter = "0011" then

                LED0 <= '0';

                LED1 <= '1';

                LED2 <= '0';

                LED3 <= '0';

                nstate <= L2;

                else

                LED1 <= '1';

                LED2 <= '0';

                nstate <= L0;

                end if;

            when L2 => 

                if counter = "0101" then

                LED0 <= '0';

                LED1 <= '0';

                LED2 <= '1';

                LED3 <= '0';

                nstate <= L3;

                else

                LED2 <= '1';

                LED3 <= '0';

                nstate <= L1;

                end if;

            when L3 => 

                if counter = "0111" then

                LED0 <= '0';

                LED1 <= '0';

                LED2 <= '0';

                LED3 <= '1';

                nstate <= L2;

                end if;

            when others => NULL;

        end case;

    end process FSM;

    

--##INSERT YOUR CODE HERE END

end;

