LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY decod IS
    PORT (
        w : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        En : IN STD_LOGIC;
        opcode : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
END decod;
ARCHITECTURE Behavior OF decod IS
    SIGNAL Enw : STD_LOGIC_VECTOR(4 DOWNTO 0);
BEGIN
    Enw <= En & w;

    PROCESS(Enw)
    BEGIN
        CASE Enw IS
            WHEN "10000" => opcode <= "0000000000000001";
            WHEN "10001" => opcode <= "0000000000000010";
            WHEN "10010" => opcode <= "0000000000000100";
            WHEN "10011" => opcode <= "0000000000001000";
            WHEN "10100" => opcode <= "0000000000010000";
            WHEN "10101" => opcode <= "0000000000100000";
            WHEN "10110" => opcode <= "0000000001000000";
            WHEN "10111" => opcode <= "0000000010000000";
				WHEN "11000" => opcode <= "0000000100000000";
				WHEN "11001" => opcode <= "0000001000000000";
				WHEN "11010" => opcode <= "0000010000000000";
				WHEN "11011" => opcode <= "0000100000000000";
				WHEN "11100" => opcode <= "0001000000000000";
				WHEN "11101" => opcode <= "0010000000000000";
				WHEN "11110" => opcode <= "0100000000000000";
				WHEN "11111" => opcode <= "1000000000000000";

            WHEN OTHERS => opcode <= "0000000000000000";
        END CASE;
    END PROCESS;
END Behavior;
