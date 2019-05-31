library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        \out\           : out    vl_logic_vector(15 downto 0);
        dataA           : in     vl_logic_vector(15 downto 0);
        dataB           : in     vl_logic_vector(15 downto 0);
        opcode          : in     vl_logic_vector(3 downto 0)
    );
end alu;
