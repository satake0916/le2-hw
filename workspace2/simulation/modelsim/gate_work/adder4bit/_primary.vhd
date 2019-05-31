library verilog;
use verilog.vl_types.all;
entity adder4bit is
    port(
        Carry           : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0);
        B               : in     vl_logic_vector(3 downto 0);
        Sum             : out    vl_logic_vector(3 downto 0)
    );
end adder4bit;
