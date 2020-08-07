----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity portexor is
    Port ( a4 : in  STD_LOGIC;
           b4 : in  STD_LOGIC;
           s4 : out  STD_LOGIC);
end portexor;

architecture struturel of portexor is
begin
s4<=a4 xor b4;
end struturel;

