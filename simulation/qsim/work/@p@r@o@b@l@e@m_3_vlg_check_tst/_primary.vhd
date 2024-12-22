library verilog;
use verilog.vl_types.all;
entity PROBLEM_3_vlg_check_tst is
    port(
        id              : in     vl_logic_vector(6 downto 0);
        neg1            : in     vl_logic_vector(6 downto 0);
        opcode          : in     vl_logic_vector(15 downto 0);
        PARITY          : in     vl_logic;
        studentID       : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end PROBLEM_3_vlg_check_tst;
