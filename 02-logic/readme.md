# Lab 2: Miroslav Trchalík

### 2-bit comparator

1. Karnaugh maps for other two functions of 2-bit comparator:

   Greater than:

   ![K-maps](https://github.com/mirek01622/digital-electronic-1/blob/main/02-logic/k-maps1.jpg)

   Less than:

   ![K-maps](https://github.com/mirek01622/digital-electronic-1/blob/main/02-logic/k-maps2.jpg)

2. Mark the largest possible implicants in the K-map and according to them, write the equations of simplified SoP (Sum of the Products) form of the "greater than" function and simplified PoS (Product of the Sums) form of the "less than" function.

   ![Logic functions](https://github.com/mirek01622/digital-electronic-1/blob/main/02-logic/rovnice.PNG)

### 4-bit comparator

1. Listing of VHDL stimulus process from testbench file (`testbench.vhd`) with at least one assert (use BCD codes of your student ID digits as input combinations). Always use syntax highlighting, meaningful comments, and follow VHDL guidelines:

   Last two digits of my student ID: **xxxx??**

```vhdl
    p_stimulus : process
    begin
        -- Report a note at the beginning of stimulus process
        report "Stimulus process started" severity note;

        -- First test case
        -- ID = 243101
        s_b <= "0000";
        s_a <= "0001";        
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '1'))
        -- If false, then report an error
        report "Input combination A = 1, B = 0" severity error;
                
        -- Second test case
        s_b <= "0001";
        s_a <= "0001";        
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '0') and
                (s_B_equals_A  = '1') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination A = 1, B = 1" severity error;
        
        -- Third test case
        s_b <= "0011";
        s_a <= "0011";        
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination A = 3, B = 3 FAILED"  severity error;
        
        -- Fourth test case
        s_b <= "0111";
        s_a <= "0011";        
        wait for 100 ns;
        -- Expected output
        assert ((s_B_greater_A = '1') and
                (s_B_equals_A  = '0') and
                (s_B_less_A    = '0'))
        -- If false, then report an error
        report "Input combination A = 3, B = 7"  severity error;
        



        -- Report a note at the end of stimulus process
        report "Stimulus process finished" severity note;
        wait;

       
        -- Report a note at the end of stimulus process
        report "Stimulus process finished";
        wait; -- Data generation process is suspended forever
    end process p_stimulus;

end architecture testbench;
```

2. Link to your public EDA Playground example:

   [https://www.edaplayground.com/...](https://www.edaplayground.com/x/wfVd)
