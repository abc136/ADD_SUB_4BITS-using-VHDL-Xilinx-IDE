----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FULL_ADD_4BITS is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           CIN : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           COUT : out  STD_LOGIC);
end FULL_ADD_4BITS;

architecture structurel of FULL_ADD_4BITS is
SIGNAL sig1,sig2,sig3:std_logic;
component FULL_ADD_1BIT port(a1,b1,cin1:in std_logic;s1,cout1:out std_logic); end component;
begin
L1:FULL_ADD_1BIT port map(A(0),B(0),CIN,S(0),sig1);
L2:FULL_ADD_1BIT port map(A(1),B(1),sig1,S(1),sig2);
L3:FULL_ADD_1BIT port map(A(2),B(2),sig2,S(2),sig3);
L4:FULL_ADD_1BIT port map(A(3),B(3),sig3,S(3),COUT);
end structurel;

