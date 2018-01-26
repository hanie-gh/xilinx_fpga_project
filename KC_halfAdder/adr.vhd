library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity adr is
    port(
        in1     :    in std_logic;
        in2     :    in std_logic;
        sum     :    out std_logic;
        carry   :    out std_logic
    );
end adr;

architecture Behavioral of adr is
begin

    sum   <=  (in1 xor in2);
    carry <=  (in1 and in2);
    
end Behavioral;
