
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity portenot is
    Port ( a6 : in  STD_LOGIC_vector (3 downto 0);
           s6 : out  STD_LOGIC_vector (3 downto 0));
end portenot;

architecture struturel of portenot is
begin
s6<=not(a6);
end struturel;