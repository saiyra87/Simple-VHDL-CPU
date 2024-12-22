library verilog;
use verilog.vl_types.all;
entity PROBLEM_2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        data            : in     vl_logic;
        enable          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end PROBLEM_2_vlg_sample_tst;
