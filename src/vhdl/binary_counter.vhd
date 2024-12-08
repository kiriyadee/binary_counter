library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity binary_counter is
    Port ( 
        clk    : in  STD_LOGIC;     -- นาฬิกา
        reset  : in  STD_LOGIC;     -- รีเซ็ตแบบ Asynchronous
        count  : out STD_LOGIC_VECTOR(3 downto 0)  -- เอาต์พุตขนาด 4 บิต
    );
end binary_counter;

architecture Behavioral of binary_counter is
    -- สัญญาณภายในสำหรับเก็บค่าตัวนับ
    signal count_int : STD_LOGIC_VECTOR(3 downto 0);
    
begin
    -- กระบวนการนับ
    process(clk, reset)
    begin
        if reset = '1' then
            -- รีเซ็ตแบบ Asynchronous
            count_int <= "0000";
        elsif rising_edge(clk) then
            -- นับขึ้นทุกขอบขาขึ้นของสัญญาณนาฬิกา
            count_int <= count_int + "0001";
        end if;
    end process;
    
    -- กำหนดค่าเอาต์พุต
    count <= count_int;
    
end Behavioral;
