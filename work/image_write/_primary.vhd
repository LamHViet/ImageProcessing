library verilog;
use verilog.vl_types.all;
entity image_write is
    generic(
        WIDTH           : integer := 768;
        HEIGHT          : integer := 512;
        INFILE          : string  := "output.bmp";
        BMP_HEADER_NUM  : integer := 54
    );
    port(
        HCLK            : in     vl_logic;
        HRESETn         : in     vl_logic;
        hsync           : in     vl_logic;
        DATA_WRITE_R0   : in     vl_logic_vector(7 downto 0);
        DATA_WRITE_G0   : in     vl_logic_vector(7 downto 0);
        DATA_WRITE_B0   : in     vl_logic_vector(7 downto 0);
        DATA_WRITE_R1   : in     vl_logic_vector(7 downto 0);
        DATA_WRITE_G1   : in     vl_logic_vector(7 downto 0);
        DATA_WRITE_B1   : in     vl_logic_vector(7 downto 0);
        Write_Done      : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of HEIGHT : constant is 1;
    attribute mti_svvh_generic_type of INFILE : constant is 1;
    attribute mti_svvh_generic_type of BMP_HEADER_NUM : constant is 1;
end image_write;
