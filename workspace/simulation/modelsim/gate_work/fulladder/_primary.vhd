library verilog;
use verilog.vl_types.all;
entity fulladder is
    port(
        pin_name4       : out    vl_logic;
        pin_name1       : in     vl_logic;
        pin_name5       : out    vl_logic;
        pin_name2       : in     vl_logic;
        pin_name3       : in     vl_logic
    );
end fulladder;
