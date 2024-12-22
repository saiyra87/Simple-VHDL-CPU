library verilog;
use verilog.vl_types.all;
entity PROBLEM_2 is
    port(
        id              : out    vl_logic_vector(6 downto 0);
        data            : in     vl_logic;
        clk             : in     vl_logic;
        opcode          : out    vl_logic_vector(15 downto 0);
        enable          : in     vl_logic;
        R1              : out    vl_logic_vector(3 downto 0);
        R2              : out    vl_logic_vector(3 downto 0)
    );
end PROBLEM_2;
