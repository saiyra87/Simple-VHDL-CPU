LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity reg_unit2 is
    port (
        clk    : in  std_logic;
        reset  : in  std_logic;
        --data_in : in std_logic_vector(7 downto 0);
        data_out : out std_logic_vector(7 downto 0)
    );
end entity reg_unit2;

architecture Behavioral of reg_unit2 is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            data_out <= (others => '0');
        elsif rising_edge(clk) then
            data_out <= "01100100";
        end if;
    end process;
end Behavioral;
