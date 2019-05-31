library verilog;
use verilog.vl_types.all;
entity adder16bit is
    port(
        sum             : out    vl_logic_vector(15 downto 0);
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        op              : in     vl_logic
    );
end adder16bit;
