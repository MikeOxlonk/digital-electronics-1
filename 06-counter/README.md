# Lab 6: Michal Hurych

### Bidirectional counter

1. Listing of VHDL code of the completed process `p_cnt_up_down`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```vhdl
    --------------------------------------------------------
    -- p_cnt_up_down:
    -- Clocked process with synchronous reset which implements
    -- n-bit up/down counter.
    --------------------------------------------------------
    p_cnt_up_down : process (clk) is
    begin
      if rising_edge(clk) then
        if (rst = '1') then           -- Synchronous reset
          sig_cnt <= (others => '0'); -- Clear all bits
        elsif (en = '1') then         -- Test if counter is enabled

          -- TEST COUNTER DIRECTION HERE

            sig_cnt <= sig_cnt + 1;
        end if;
      end if;
    end process p_cnt_up_down;
```

2. Screenshot with simulated time waveforms. Test: (a) reset, (b) counter direction, (c) enable. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![asadsdas](https://user-images.githubusercontent.com/124742913/225399225-df2bc2a5-6d90-476e-938c-b176b3a1d3c1.PNG)


### Two counters

1. Image of the top layer structure including both counters, ie a 4-bit bidirectional counter from *Part 4* and a 12-bit counter with a 10 ms time base from *Experiments on your own*. The image can be drawn on a computer or by hand. Always name all inputs, outputs, components and internal signals!

   ![333549598_552692760039778_87782884265686988_n](https://user-images.githubusercontent.com/124742913/226652739-4f67377e-1f1e-4214-a108-b0cc3dca4252.jpg)

