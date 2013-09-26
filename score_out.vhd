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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity score_out is port(
		x0, x1, x2, x3 : in STD_LOGIC;        -- Data inputs
		disp1, disp2   : in STD_LOGIC;        -- Display inputs
		a, b, c, d, e, f, g : out STD_LOGIC;  -- Segment outputs
		d1, d2, d3, d4: out STD_LOGIC);       -- Display outputs
end score_out;

architecture Behavioral of score_out is

begin

	-- Set segments
	a <= ((not x3) and (not x2) and (not x1) and x0) or (x2 and (not x1) and (not x0));
	b <= (x2 and x1 and (not x0)) or (x2 and (not x1) and x0);
	c <= (not x2) and x1 and (not x0);
	d <= ((not x3) and (not x2) and (not x1) and x0) or (x2 and (not x1) and (not x0)) or (x2 and x1 and x0);
	e <= (x2 and (not x1)) or x0;
	f <= ((not x3) and (not x2) and x0) or ((not x2) and x1) or (x1 and x0);
	g <= ((not x3) and (not x2) and (not x1)) or (x2 and x1 and x0);
	
	-- Set displays
	d1 <= NOT disp1;
	d2 <= NOT disp2;
	d3 <= '1';
	d4 <= '1';

end Behavioral;
