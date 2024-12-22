LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY sseg_reg IS
    PORT (
        BCD     : IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		  NEG : out STD_LOGIC_VECTOR(6 DOWNTO 0);
        SevenSeg : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)
		  
    );
END sseg_reg;

ARCHITECTURE Behavior OF sseg_reg IS
signal temp : std_logic_vector ( 3 downto 0 );

BEGIN

    PROCESS(BCD,temp)
	
    BEGIN
		temp<=BCD;
	   IF BCD(3) = '1' THEN
                        NEG <= NOT "1000000";
								temp(3) <= '0';
                    ELSE
                       NEG <= NOT "0000000";
                END IF;
        case temp is               -- gfedcba
            when "0000" => SevenSeg <= NOT "0111111"; -- 0
            when "0001" => SevenSeg <= NOT "0000110"; -- 1
            when "0010" => SevenSeg <= NOT "1011011"; -- 2
            when "0011" => SevenSeg <= NOT "1001111"; -- 3
            when "0100" => SevenSeg <= NOT "1100110"; -- 4
            when "0101" => SevenSeg <= NOT "1101101"; -- 5
            when "0110" => SevenSeg <= NOT "1111101"; -- 6
            when "0111" => SevenSeg <= NOT "0000111"; -- 7
            when "1000" => SevenSeg <= NOT "1111111"; -- 8
            when "1001" => SevenSeg <= NOT "1100111"; -- 9
                WHEN OTHERS => SevenSeg <= NOT "0000000"; -- error case
        END CASE;
		 
    END PROCESS;
END Behavior;