# Lab 8: Michal Hurych

### Traffic light controller

1. Listing of VHDL code of the completed process `p_traffic_fsm`. Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

```    
    --------------------------------------------------------
    p_traffic_fsm : process(clk) is
    begin
        if (rising_edge(clk)) then
          if (rst = '1') then                    -- Synchronous reset
          sig_state <= WEST_STOP;              -- Init state
          sig_cnt   <= c_ZERO;                 -- Clear delay counter
          elsif (sig_en = '1') then
          case sig_state is

          when WEST_STOP =>
            if (sig_cnt < c_DELAY_2SEC) then
              sig_cnt <= sig_cnt + 1;
            else
              sig_state <= WEST_GO;
              sig_cnt <= c_ZERO;
            end if;

          when WEST_GO =>
            if (sig_cnt < c_DELAY_4SEC) then
              sig_cnt <= sig_cnt + 1;
            else
              sig_state <= WEST_WAIT;
              sig_cnt <= c_ZERO;
            end if;

          when WEST_WAIT =>
            if (sig_cnt < c_DELAY_1SEC) then
              sig_cnt <= sig_cnt + 1;
            else
              sig_state <= SOUTH_STOP;
              sig_cnt <= c_ZERO;
            end if;

          when SOUTH_STOP =>
            if (sig_cnt < c_DELAY_2SEC) then
              sig_cnt <= sig_cnt + 1;
            else
              sig_state <= WEST_GO;
              sig_cnt <= c_ZERO;
            end if;

          when SOUTH_GO =>
            if (sig_cnt < c_DELAY_4SEC) then
              sig_cnt <= sig_cnt + 1;
            else
              sig_state <= WEST_WAIT;
              sig_cnt <= c_ZERO;
            end if;

          when SOUTH_WAIT =>
            if (sig_cnt < c_DELAY_1SEC) then
              sig_cnt <= sig_cnt + 1;
            else
              sig_state <= WEST_STOP;
              sig_cnt <= c_ZERO;
            end if;

          when others =>
            sig_state <= WEST_STOP;
            sig_cnt   <= c_ZERO;

        end case;

      end if; -- Synchronous reset
        end if; -- Rising edge
    end process p_traffic_fsm;
```

2. Screenshot with simulated time waveforms. The full functionality of the entity must be verified. Always display all inputs and outputs (display the inputs at the top of the image, the outputs below them) at the appropriate time scale!

   ![Capture](https://user-images.githubusercontent.com/124742913/228464116-a28f6cc3-ab94-44a1-90f7-1dcea690928a.PNG)


3. Figure of Moor-based state diagram of the traffic light controller with *speed button* to ensure a synchronous transition to the `WEST_GO` state. The image can be drawn on a computer or by hand. Always name all states, transitions, and input signals!

![ssssssssss](https://user-images.githubusercontent.com/124742913/229928568-a2306d76-b154-4ff4-8d2a-7a056b658e3c.PNG)


   
