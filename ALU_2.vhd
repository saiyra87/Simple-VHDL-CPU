library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY ALU_unit2 IS
    PORT (
        clk    : IN  std_logic;
        res    : IN  std_logic;
        Reg1   : IN  std_logic_vector(7 DOWNTO 0);
        Reg2   : IN  std_logic_vector(7 DOWNTO 0);
        opcode : IN  std_logic_vector(15 DOWNTO 0);
        R1 : OUT std_logic_vector(3 DOWNTO 0);
		  R2 : OUT std_logic_vector(3 DOWNTO 0)
    );
END ALU_unit2;

ARCHITECTURE calculation OF ALU_unit2 IS
signal Result : std_logic_vector ( 7 downto 0 ):= (others => '0');

BEGIN
    PROCESS (clk, res)
    BEGIN
        IF res = '1' THEN
            Result <= "00000000";
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE opcode IS
                WHEN "0000000000000001" => Result <= Reg1(3 DOWNTO 0) & Reg1(7 DOWNTO 4); -- Swap the lower and upper 4 bits of A
                WHEN "0000000000000010" => Result <= Reg1 OR Reg2; -- Produce the result of ORing A and B 
                WHEN "0000000000000100" => Result <= std_logic_vector(unsigned(Reg2) - 5); -- Decrement B by 5
                WHEN "0000000000001000" => Result <= NOT Reg1; -- Invert all bits of A
                WHEN "0000000000010000" => Result <= Reg1(0) & Reg1(1) & Reg1(2) & Reg1(3) & Reg1(4) & Reg1(5) & Reg1(6) & Reg1(7); -- Invert the bit-significance order of A
                WHEN "0000000000100000" => 
						IF unsigned(Reg1) > unsigned(Reg2) THEN
							Result <= Reg1;
                  ELSE
                     Result <= Reg2;
						END IF; -- Find the greater value of A and B and produce the results ( Max(A,B) ) 

                WHEN "0000000001000000" => Result <= std_logic_vector(unsigned(Reg1) - unsigned(Reg2)); -- Produce the difference between A and B 
                WHEN "0000000010000000" => Result <= NOT (Reg1 XOR Reg2); --Produce the result of XNORing A and B 
                WHEN OTHERS => Result <= (OTHERS => '0'); -- Default case
            END CASE;
        END IF;
    END PROCESS;
	 R1<= Result ( 3 downto 0);
	 R2<= Result ( 7 downto 4);
END calculation;
