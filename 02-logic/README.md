<<<<<<< HEAD
# Lab 2: INSERT_YOUR_FIRSTNAME INSERT_YOUR_LASTNAMEE
=======
# Lab 2: MICHAL HURYCH
>>>>>>> 7b605f3342e5fb52e44a9c2c064c8df6208c8b75

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

<<<<<<< HEAD
   ![K-maps](images/kmap_empty.png)

   Less than:

   ![K-maps](images/kmap_empty.png)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](images/comparator_min.png)
=======
   ![greaterthanREALONE](https://user-images.githubusercontent.com/124742913/220467617-44a99d4c-b79a-497c-bfce-ccc927f7210b.jpg)


   Less than:

   ![gretaerthan](https://user-images.githubusercontent.com/124742913/220467707-62b7fd1b-8691-487b-ba7a-42bccc8c32d5.jpg)


2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![rovnice](https://user-images.githubusercontent.com/124742913/220467749-a4a6d779-0164-4555-8b75-9ca4f96d1dd4.jpg)

>>>>>>> 7b605f3342e5fb52e44a9c2c064c8df6208c8b75

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

<<<<<<< HEAD
   Last two digits of my student ID: **xxxx??**
=======
   Last two digits of my student ID: ****26
>>>>>>> 7b605f3342e5fb52e44a9c2c064c8df6208c8b75

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
<<<<<<< HEAD
        report "Stimulus process started" severity note;

        -- First test case
        s_b <= "BCD_OF_YOUR_SECOND_LAST_ID_DIGIT"; -- Such as "0101" if ID = xxxx56
        s_a <= "BCD_OF_YOUR_LAST_ID_DIGIT";        -- Such as "0110" if ID = xxxx56
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_equals_A  = 'WRITE_CORRECT_VALUE_HERE') and
                (s_B_less_A    = 'WRITE_CORRECT_VALUE_HERE'))
        -- If false, then report an error
        report "Input combination COMPLETE_THIS_TEXT FAILED" severity error;

        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;
    end process p_stimulus;
=======
        report "Stimulus process started";

        -- First test case ...
        s_b <= "0010"; -- xxxx2x
        s_a <= "0110"; -- xxxxx6 
        wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0110, 0010 FAILED" severity error;
        
        -- Second test case ...
        s_b <= "1111"; s_a <= "1110"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 1111, 1110 FAILED" severity error;
        
        -- Third test case ...
        s_b <= "0011"; s_a <= "0100"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0011, 0100 FAILED" severity error;
        
        -- Fourth test case ...
        s_b <= "0001"; s_a <= "0001"; wait for 100 ns;
        -- ... and its expected outputs
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        -- If true, then do not report anything
        report "Input combination 0001, 0001 FAILED" severity error;


        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end architecture testbench;
>>>>>>> 7b605f3342e5fb52e44a9c2c064c8df6208c8b75
```

2. Link to your public EDA Playground example:

<<<<<<< HEAD
   [https://www.edaplayground.com/...](https://www.edaplayground.com/...)
=======
   https://www.edaplayground.com/x/77Zq
>>>>>>> 7b605f3342e5fb52e44a9c2c064c8df6208c8b75
