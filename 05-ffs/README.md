# Lab 5: MICHAL HURYCH

### D & T Flip-flops

1. Screenshot with simulated time waveforms. Try to simulate both D- and T-type flip-flops in a single testbench with a maximum duration of 200 ns, including reset. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![mojelmao](https://user-images.githubusercontent.com/124742913/224539197-6f1bc0bc-7146-4d26-a55c-8f7f55874c05.PNG)


### JK Flip-flop

1. Listing of VHDL architecture for JK-type flip-flop. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
architecture Behavioral of jk_ff_rst is
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
    q     <= sig_q;
    q_bar <= not sig_q;
end architecture Behavioral;
```

### Shift register

1. Image of `top` level schematic of the 4-bit shift register. Use four D-type flip-flops and connect them properly. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![ClOck](https://user-images.githubusercontent.com/124742913/225036836-36d8ce52-59ba-465a-9556-8dc07d9d5636.jpg)

