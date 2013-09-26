----------------------------------------------------------------------------------
-- Engineer: Georgi Baghdasaryan, UID: 603 875 284
-- 
-- Create Date:    05/29/2013 
-- Project Name:   Lab 6: Final Project (Snake Game)
-- Target Devices: Spartan 3 Board
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity keyboard is
  port(keyboardClock : in STD_LOGIC;
       keyboardData  : in STD_LOGIC;
       left          : out STD_LOGIC;
       right         : out STD_LOGIC;
		 up            : out STD_LOGIC;
		 down          : out STD_LOGIC);
end keyboard;

architecture Behavioral of keyboard is

	signal bitCount      : integer range 0 to 10        := 0;
	signal scancodeReady : std_logic                    := '0';
	signal scancode      : std_logic_vector(7 downto 0) := (others => '0');
	signal breakReceived : std_logic                    := '0';
	signal KDirection    : unsigned(3 downto 0)         := (others => '0');

	-- Keyboard keys
	constant keyA  : STD_LOGIC_VECTOR(7 downto 0) := X"1C";
	constant keyD  : STD_LOGIC_VECTOR(7 downto 0) := X"23";
	constant keyS  : STD_LOGIC_VECTOR(7 downto 0) := X"1B";
	constant keyW  : STD_LOGIC_VECTOR(7 downto 0) := X"1D";

begin

  left 	<= KDirection(0);
  right 	<= KDirection(1);
  up 		<= KDirection(2);
  down 	<= KDirection(3);
	 
  scankeyboard : process(KeyboardClock)
  begin
    if falling_edge(KeyboardClock) then
      if bitCount = 0 and KeyboardData = '0' then
        scancodeReady <= '0';
        bitCount      <= bitCount + 1;
      elsif bitCount > 0 and bitCount < 9 then
        scancode <= KeyboardData & scancode(7 downto 1);
        bitCount <= bitCount + 1;
      elsif bitCount = 9 then
        bitCount <= bitCount + 1;
      elsif bitCount = 10 then
        scancodeReady <= '1';
        bitCount      <= 0;
      end if;
    end if;
  end process scankeyboard;

  processkeyboard : process(scancodeReady, scancode)
  begin
    if scancodeReady'event and scancodeReady = '1' then
      -- Break the scancode
      if breakReceived = '1' then
        breakReceived <= '0';

      elsif breakReceived = '0' then
        -- Process scancode
        if scancode = "11110000" then
          breakReceived <= '1';
        end if;

        if scancode = keyW then
          KDirection <= "1000";
        elsif scancode = keyD then
          KDirection <= "0010";
        elsif scancode = keyS then
          KDirection <= "0100";
        elsif scancode = keyA then
          KDirection <= "0001";
        else
          KDirection <= "0000";
        end if;
      end if;
    end if;
  end process processkeyboard;

end Behavioral;




