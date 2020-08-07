----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity porteand is
    Port ( a5 : in  STD_LOGIC;
           b5 : in  STD_LOGIC;
           s5 : out  STD_LOGIC);
end porteand;

architecture struturel of porteand is
begin
s5<=a5 and b5;
end struturel;
