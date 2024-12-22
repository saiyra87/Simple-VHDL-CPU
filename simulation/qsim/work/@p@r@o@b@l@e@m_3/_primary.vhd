library verilog;
use verilog.vl_types.all;
entity PROBLEM_3 is
    port(
        PARITY          : out    vl_logic;
        clk             : in     vl_logic;
        data            : in     vl_logic;
        enable          : in     vl_logic;
        id              : out    vl_logic_vector(6 downto 0);
        neg1            : out    vl_logic_vector(6 downto 0);
        opcode          : out    vl_logic_vector(15 downto 0);
        studentID       : out    vl_logic_vector(3 downto 0)
    );
end PROBLEM_3;
