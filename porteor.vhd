----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity porteor is
    Port ( a3 : in  STD_LOGIC;
           b3 : in  STD_LOGIC;
           s3 : out  STD_LOGIC);
end porteor;

architecture struturel of porteor is
begin
s3<=a3 or b3;
end struturel;

