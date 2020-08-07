----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FULL_ADD_1BIT is
    Port ( a1 : in  STD_LOGIC;
           b1 : in  STD_LOGIC;
           cin1 : in  STD_LOGIC;
           s1 : out  STD_LOGIC;
           cout1 : out  STD_LOGIC);
end FULL_ADD_1BIT;

architecture structurel of FULL_ADD_1BIT is
SIGNAL sig4,sig5,sig6:std_logic;
component HALF_ADD port(a2,b2:in std_logic;s2,cout2:out std_logic); end component;
component porteor port(a3,b3:in std_logic;s3:out std_logic); end component;
begin
L5:HALF_ADD port map(a1,b1,sig4,sig5);
L6:HALF_ADD port map(sig4,cin1,s1,sig6);
L7:porteor port map(sig5,sig6,cout1);
end structurel;