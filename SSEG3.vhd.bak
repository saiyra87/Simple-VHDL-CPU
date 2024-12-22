LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY sseg3 IS
    PORT (
        X     : IN  STD_LOGIC;
        SevenSeg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
    );
END sseg3;

ARCHITECTURE Behavior OF sseg3 IS


BEGIN

    PROCESS(X)
    BEGIN
        case X is               -- gfedcba
            when '1' => SevenSeg <= "0011001"; -- y
            when '0' => SevenSeg <= "0101011"; -- n
                WHEN OTHERS => SevenSeg <= NOT "0000000"; -- error case
        END CASE;
    END PROCESS;
END Behavior;
