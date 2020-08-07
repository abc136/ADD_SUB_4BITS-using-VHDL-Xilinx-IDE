----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HALF_ADD is
    Port ( a2 : in  STD_LOGIC;
           b2 : in  STD_LOGIC;
           s2 : out  STD_LOGIC;
           cout2 : out  STD_LOGIC);
end HALF_ADD;

architecture structurel of HALF_ADD is
component portexor port(a4,b4:in std_logic;s4:out std_logic); end component;
component porteand port(a5,b5:in std_logic;s5:out std_logic); end component;
begin
L8:portexor port map(a2,b2,s2);
L9:porteand port map(a2,b2,cout2);
end structurel;

