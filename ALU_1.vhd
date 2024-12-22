library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY ALU_unit IS
    PORT (
        clk    : IN  std_logic;
        res    : IN  std_logic;
        Reg1   : IN  std_logic_vector(7 DOWNTO 0);
        Reg2   : IN  std_logic_vector(7 DOWNTO 0);
        opcode : IN  std_logic_vector(15 DOWNTO 0);
        R1 : OUT std_logic_vector(3 DOWNTO 0);
		  R2 : OUT std_logic_vector(3 DOWNTO 0)
    );
END ALU_unit;

ARCHITECTURE calculation OF ALU_unit IS
signal Result : std_logic_vector ( 7 downto 0 ):= (others => '0');
BEGIN
    PROCESS (clk, res)
    BEGIN
        IF res = '1' THEN
            Result <= "00000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE opcode IS
                WHEN "0000000000000001" => Result <= std_logic_vector(unsigned(Reg1) + unsigned(Reg2)); -- Addition
                WHEN "0000000000000010" => Result <= std_logic_vector(unsigned(Reg1) - unsigned(Reg2)); -- Subtraction
                WHEN "0000000000000100" => Result <= NOT(Reg1); -- Inverse
                WHEN "0000000000001000" => Result <= NOT(Reg1 AND Reg2); -- NAND
                WHEN "0000000000010000" => Result <= NOT(Reg1 OR Reg2); -- NOR
                WHEN "0000000000100000" => Result <= Reg1 AND Reg2; -- AND
                WHEN "0000000001000000" => Result <= Reg1 XOR Reg2; -- XOR
                WHEN "0000000010000000" => Result <= Reg1 OR Reg2; -- OR
                WHEN OTHERS => Result <= (OTHERS => '0'); -- Default case
            END CASE;
        END IF;
    END PROCESS;
	 R1<= Result ( 3 downto 0);
	 R2<= Result ( 7 downto 4);
	 
END calculation;
