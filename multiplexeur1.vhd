
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity multiplexeur1 is
                       port(sel1:in std_logic;
                             a7,b7:in std_logic_vector(3 downto 0);
                             s7:out std_logic_vector(3 downto 0));
end multiplexeur1;

architecture struturel of multiplexeur1 is
begin
s7(0)<=(a7(0) and not(sel1))or(b7(0) and sel1);	
s7(1)<=(a7(1) and not(sel1))or(b7(1) and sel1);	 
s7(2)<=(a7(2) and not(sel1))or(b7(2) and sel1);	 
s7(3)<=(a7(3) and not(sel1))or(b7(3) and sel1);	  
end struturel;
 
