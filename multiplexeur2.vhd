
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity multiplexeur2 is
    Port (sel2 : in  STD_LOGIC;
	        a8 : in  STD_LOGIC;
           b8 : in  STD_LOGIC;
           s8 : out  STD_LOGIC);
end multiplexeur2;

architecture struturel of multiplexeur2 is
begin
s8<=(a8 and not(sel2))or(b8 and sel2);	
end struturel;

