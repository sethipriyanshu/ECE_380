LIBRARY ieee;
USE ieee.std_logic_1164.all;
ENTITY part2_lab1 IS
	PORT ( x1, x2, x3 : IN  STD_LOGIC;
          f         : OUT STD_LOGIC);
END part2_lab1;

ARCHITECTURE Behavior OF part2_lab1 IS
BEGIN
	f <= (x1 AND x2) OR (NOT x2 and X3);
END Behavior;