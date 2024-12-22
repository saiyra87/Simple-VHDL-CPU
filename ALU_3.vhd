library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY ALU_unit3 IS
    PORT (
        clk    : IN  std_logic;
        res    : IN  std_logic;
        Reg1   : IN  std_logic_vector(7 DOWNTO 0);
        Reg2   : IN  std_logic_vector(7 DOWNTO 0);
        opcode : IN  std_logic_vector(15 DOWNTO 0);
        id     : IN  std_logic_vector(3 DOWNTO 0);
        R1     : OUT std_logic
    );
END ALU_unit3;

ARCHITECTURE calculation OF ALU_unit3 IS
    SIGNAL Result : std_logic_vector(7 DOWNTO 0) := (others => '0');
    SIGNAL x : std_logic;
BEGIN
    -- Calculate x (XOR of id(3), id(2), id(1), id(0))
    x <= (id(3) XOR id(2) XOR id(1) XOR id(0));
    
    PROCESS (clk, res)
    BEGIN
        IF res = '1' THEN
            Result <= (others => '0');  -- Reset the result on reset signal
        ELSIF (clk'EVENT AND clk = '1') THEN
            CASE opcode IS
                -- Use a single logic block for all these cases
                WHEN "0000000000000001" | "0000000000000010" | "0000000000000100" |
                     "0000000000001000" | "0000000000010000" | "0000000000100000" |
                     "0000000001000000" | "0000000010000000" | "0000000100000000" =>
                    IF x = '1' THEN
                        R1 <= '1';  -- Set to zero if x is 1
                    ELSE
                        R1 <= '0';  -- Set to one if x is 0
                    END IF;
                    
                WHEN OTHERS => 
                    Result <= (others => '0');  -- Default case to reset result
            END CASE;
        END IF;
    END PROCESS;

    -- Assign the lower 4 bits of Result to R1
   

END calculation;