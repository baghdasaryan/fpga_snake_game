----------------------------------------------------------------------------------
-- Engineer: Georgi Baghdasaryan, UID: 603 875 284
-- 
-- Create Date:    05/24/2013 
-- Project Name:   Lab 6: Final Project (Snake Game)
-- Target Devices: Spartan 3 Board
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity random is
port (clk1 : in std_logic;
      clk2 : in std_logic;
      random_x : out integer range 0 to 630;
		random_y : out integer range 0 to 470);
end random;

architecture Behavioral of random is

--y > 10 and y < 470 or x < 630 or x > 10 then

begin process(clk1, clk2)
	variable rnd1 : integer range 0 to 630;
	variable rand_temp1 : std_logic_vector(9 downto 0):=(9 => '1',others => '0');
	variable temp1 : std_logic := '0';
	variable rnd2 : integer range 0 to 470;
	variable rand_temp2 : std_logic_vector(8 downto 0):=(8 => '1',others => '0');
	variable temp2 : std_logic := '0';
	
	begin 
	
	if(rising_edge(clk1)) then
		temp1 := rand_temp1(9) xor rand_temp1(8);
		rand_temp1(9 downto 1) := rand_temp1(8 downto 0);
		rand_temp1(0) := temp1;
	end if;
	if(rising_edge(clk2)) then
		temp2 := rand_temp2(8) xor rand_temp2(7);
		rand_temp2(8 downto 1) := rand_temp2(7 downto 0);
		rand_temp2(0) := temp2;
	end if;
	
	rnd1 := to_integer(unsigned(rand_temp1));
	rnd2 := to_integer(unsigned(rand_temp2));
	
	if rnd1 <= 30 then
		random_x <= rnd1 + 40;
	elsif rnd1 >= 400 then
		random_x <= 450;--rnd1 - (rnd1 - 600);
	else
		random_x <= rnd1;
	end if;
	
	if rnd2 <= 30 then
		random_y <= rnd2 + 40;
	elsif rnd2 >= 400 then
		random_y <= 374;--rnd2 - (rnd2 - 430);
	else
		random_y <= rnd2;
	end if;

end process;

end Behavioral;