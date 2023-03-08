
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity t_ff_rst is
    Port ( q : out STD_LOGIC;
           q_bar : out STD_LOGIC;
           t : in STD_LOGIC;
           clk : in STD_LOGIC;
           rst : in STD_LOGIC);
end t_ff_rst;

architecture behavioral of t_ff_rst is
    -- It must use this local signal instead of output ports
    -- because "out" ports cannot be read within the architecture
    signal s_q : std_logic;
begin
    --------------------------------------------------------
    -- p_t_ff_rst:
    -- T type flip-flop with a high-active synchro reset and
    -- rising-edge clk.
    -- sig_q = t./sig_q + /t.sig_q
    -- sig_q =  sig_q if t = 0 (no change)
    -- sig_q = /sig_q if t = 1 (inversion)
    --------------------------------------------------------
    p_t_ff_rst : process (clk)
    begin
        if rising_edge(clk) then
             if (rst = '1') then
                 s_q <= '0';
             else
                if (t = '0') then
                  s_q <= s_q;
                else 
                   s_q <= not (s_q);
                end if;
        end if;
end process t_ff_rst;
    -- Output ports are permanently connected to local signal
    q     <= s_q;
    q_bar <= not s_q;
end architecture behavioral;