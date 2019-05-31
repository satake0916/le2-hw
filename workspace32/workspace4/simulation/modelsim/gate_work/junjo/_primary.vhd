library verilog;
use verilog.vl_types.all;
entity junjo is
    port(
        out1            : out    vl_logic_vector(15 downto 0);
        reset           : in     vl_logic;
        data            : in     vl_logic_vector(15 downto 0);
        clock           : in     vl_logic;
        ena1            : in     vl_logic;
        opcode          : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        ena2            : in     vl_logic;
        out2            : out    vl_logic_vector(15 downto 0);
        out3            : out    vl_logic_vector(15 downto 0);
        out4            : out    vl_logic_vector(15 downto 0)
    );
end junjo;
