--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:05:07 02/06/2014
-- Design Name:   
-- Module Name:   C:/Users/C16Jacob.Lawson/Documents/Academics/Sophomore Year/Spring/4 ECE 281/Xilinx/CE2/CE2_behavioral_testbench.vhd
-- Project Name:  CE2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CE2_behavioral
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY CE2_behavioral_testbench IS
END CE2_behavioral_testbench;
 
ARCHITECTURE behavior OF CE2_behavioral_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CE2_behavioral
    PORT(
         I0 : IN  std_logic;
         I1 : IN  std_logic;
         EN : IN  std_logic;
         Y0 : OUT  std_logic;
         Y1 : OUT  std_logic;
         Y2 : OUT  std_logic;
         Y3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I0 : std_logic := '0';
   signal I1 : std_logic := '0';
   signal EN : std_logic := '0';

 	--Outputs
   signal Y0 : std_logic;
   signal Y1 : std_logic;
   signal Y2 : std_logic;
   signal Y3 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CE2_behavioral PORT MAP (
          I0 => I0,
          I1 => I1,
          EN => EN,
          Y0 => Y0,
          Y1 => Y1,
          Y2 => Y2,
          Y3 => Y3
        );

   -- Stimulus process
   stim_proc: process
   begin	

-- 1st line of truth table
       EN <= '0';
       I1 <= '0';
       I0 <= '0';
       wait for 100 ns;

-- 2nd line of truth table
       EN <= '0';
       I1 <= '0';
       I0 <= '1';
       wait for 100 ns;

-- 3rd line of truth table
       EN <= '0';
       I1 <= '1';
       I0 <= '0';
       wait for 100 ns;

-- 4th line of truth table
       EN <= '0';
       I1 <= '1';
       I0 <= '1';
       wait for 100 ns;

-- 5th line of truth table
       EN <= '1';
       I1 <= '0';
       I0 <= '0';
       wait for 100 ns;

-- 6th line of truth table
       EN <= '1';
       I1 <= '0';
       I0 <= '1';
       wait for 100 ns;

-- 7th line of truth table
       EN <= '1';
       I1 <= '1';
       I0 <= '0';
       wait for 100 ns;

-- 8th line of truth table
       EN <= '1';
       I1 <= '1';
       I0 <= '1';
       wait for 100 ns;
	


      -- insert stimulus here 

      wait;
   end process;

END;