library IEEE; 
use IEEE.STD_LOGIC_1164.all; 
use ieee.std_logic_unsigned.all; 

entity module is  
  port(a, b: in STD_LOGIC_VECTOR(31 downto 0); 
    ALUControl: in STD_LOGIC_VECTOR(1 downto 0); --00 -> A+B, 01->A-B, 10-> AND, 11->OR
    Result:  out STD_LOGIC_VECTOR(31 downto 0); --(neg zero carry) 
    ALUFlags: out STD_LOGIC_VECTOR(2 downto 0)
  ); 
end; 

architecture behave of module is 
  signal lResult: STD_LOGIC_VECTOR(31 downto 0);
  signal BMUX: STD_LOGIC_VECTOR(31 downto 0);
  signal localSUM: STD_LOGIC_VECTOR(32 downto 0);
  signal COUT, NEG, ZERO, CARRY: STD_LOGIC;
--##INSERT YOUR CODE HERE     
  begin
       

    
    BMUX <= (not b) when (ALUControl(0) = '1') else b;
    
    
    localSUM <= ('0' & a) + ('0' & BMUX) + ALUControl(0);
    COUT <= localSUM(32);
    
    
    
    with ALUControl select
    lResult <= localSUM(31 downto 0) when "00",
               localSUM(31 downto 0) when "01",
               a and b when "10",
               a or b when "11",
               x"00000000" when others;
           

                -- Negative Zero Carry
   
   ZERO <= '1' when (lResult = 0) else '0';
   NEG <= lResult(31);
   CARRY <= (not AluControl(1)) and COUT;
   
   ALUFlags <= NEG & ZERO & CARRY;
   
   
   Result <= lResult;
 
--##INSERT YOUR CODE HERE END 
end behave;
