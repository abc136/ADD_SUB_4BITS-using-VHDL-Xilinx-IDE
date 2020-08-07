library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ADD_SUB_4BITS is
    Port ( A,B : in  STD_LOGIC_VECTOR (3 downto 0);
           CIN,m : in  STD_LOGIC;
			  OUT_FINAL : out  STD_LOGIC_VECTOR (3 downto 0);
			  COUT_FINAL : out  STD_LOGIC);
end ADD_SUB_4BITS;

architecture struturel of ADD_SUB_4BITS is
component FULL_ADD_1BIT port(a1,b1,cin1:in std_logic;s1,cout1:out std_logic); end component;
component portenot port(a6:in std_logic_vector(3 downto 0);s6:out std_logic_vector(3 downto 0)); end component;
component multiplexeur1 port(sel1:in std_logic;
                             a7,b7:in std_logic_vector(3 downto 0);
                             s7:out std_logic_vector(3 downto 0)); end component;								  
component multiplexeur2 port(sel2:in std_logic;
									  a8,b8:in std_logic;
                             s8:out std_logic); end component;		
									  
signal si,sii:std_logic_vector(2 downto 0);
signal snot,sig1,sig2:std_logic_vector (3 downto 0);
signal rien,sig3,sig4:std_logic;

begin
--FULL_ADD_4BITS
T1:FULL_ADD_1BIT port map(A(0),B(0),CIN,sig1(0),sii(0));
T2:FULL_ADD_1BIT port map(A(1),B(1),sii(0),sig1(1),sii(1));
T3:FULL_ADD_1BIT port map(A(2),B(2),sii(1),sig1(2),sii(2));
T4:FULL_ADD_1BIT port map(A(3),B(3),sii(2),sig1(3),sig3);
--FULL_SUB_4BITS
A1:portenot port map(A,snot);
B1:FULL_ADD_1BIT port map(A(0),B(0),CIN,sig2(0),rien);
B2:FULL_ADD_1BIT port map(snot(0),B(0),CIN,rien,si(0));
B3:FULL_ADD_1BIT port map(A(1),B(1),si(0),sig2(1),rien);
B4:FULL_ADD_1BIT port map(snot(1),B(1),si(0),rien,si(1));
B5:FULL_ADD_1BIT port map(A(2),B(2),si(1),sig2(2),rien);
B6:FULL_ADD_1BIT port map(snot(2),B(2),si(1),rien,si(2));
B7:FULL_ADD_1BIT port map(A(3),B(3),si(2),sig2(3),rien);
B8:FULL_ADD_1BIT port map(snot(3),B(3),si(2),rien,sig4);

-- Le multiplexeur1 pour fiare sortir la somme ou le différence de A et B
C1:multiplexeur1 port map(m,sig1,sig2,OUT_FINAL);
-- Le multiplexeur2 pour fiare sortir le Retenue de la somme ou le différence de A et B
C2:multiplexeur2 port map(m,sig3,sig4,COUT_FINAL);
end struturel;