library verilog;
use verilog.vl_types.all;
entity image_read is
    generic(
        WIDTH           : integer := 768;
        HEIGHT          : integer := 512;
        INFILE          : string  := "dog.hex";
        START_UP_DELAY  : integer := 100;
        HSYNC_DELAY     : integer := 160;
        VALUE           : integer := 50;
        THRESHOLD       : integer := 100;
        SIGN            : integer := 0
    );
    port(
        HCLK            : in     vl_logic;
        HRESETn         : in     vl_logic;
        VSYNC           : out    vl_logic;
        HSYNC           : out    vl_logic;
        DATA_R0         : out    vl_logic_vector(7 downto 0);
        DATA_G0         : out    vl_logic_vector(7 downto 0);
        DATA_B0         : out    vl_logic_vector(7 downto 0);
        DATA_R1         : out    vl_logic_vector(7 downto 0);
        DATA_G1         : out    vl_logic_vector(7 downto 0);
        DATA_B1         : out    vl_logic_vector(7 downto 0);
        ctrl_done       : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of INFILE : constant is 1;
    attribute mti_svvh_generic_type of START_UP_DELAY : constant is 1;
    attribute mti_svvh_generic_type of HSYNC_DELAY : constant is 1;
    attribute mti_svvh_generic_type of VALUE : constant is 1;
    attribute mti_svvh_generic_type of THRESHOLD : constant is 1;
    attribute mti_svvh_generic_type of SIGN : constant is 1;
end image_read;
