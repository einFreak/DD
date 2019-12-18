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

type LEDstate is (L0, L1, L2, L3, L4, L5);

signal state, nstate: LEDstate;

signal ticksek: std_logic;

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



        --if counter = "0100" then

        if counter = x"5F5E100" then

            ticksek <= '1';



        --elsif counter ="1000" then

        elsif counter = x"5F5E101" then

            ticksek <= '0';

            --counter <= "0001";

            counter <= x"0000001";

        end if;

    end if;             

end process CLKPROC;  



    



LEDPROC: process(CLK)

    begin

    LED0 <= '0';

	LED1 <= '0';

	LED2 <= '0';

	LED3 <= '0';

	

		if RESET = '1' then

		LED0 <= '1';

		nstate <= L1;

		state <= L0;

		

		elsif CLK = '1' and CLK'event then   

		

			if ticksek = '1' then

				case state is

					when L0 =>

						LED0 <= '1';

						nstate <= L1;

					when L1 =>

						LED1 <= '1';

						nstate <= L2;

					when L2 =>

						LED2 <= '1';

						nstate <= L3;

					when L3 =>

						LED3 <= '1';

						nstate <= L4;

					when L4 =>

						LED2 <= '1';

						nstate <= L5;

					when L5 =>

						LED1 <= '1';

						nstate <= L0;

					when others =>

						LED0 <= '1';

						LED1 <= '1';

						LED2 <= '1';

						LED3 <= '1';

						nstate <= L0;

				end case;

            

			end if;

		end if;

end process LEDPROC;



--##INSERT YOUR CODE HERE END

end;



