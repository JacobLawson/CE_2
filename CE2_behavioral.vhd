----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:01:07 02/06/2014 
-- Design Name: 
-- Module Name:    CE2_behavioral - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity CE2_behavioral is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           EN : in  STD_LOGIC;
           Y0 : out  STD_LOGIC;
           Y1 : out  STD_LOGIC;
           Y2 : out  STD_LOGIC;
           Y3 : out  STD_LOGIC);
end CE2_behavioral;

architecture Behavioral of CE2_behavioral is

Signal I0_not, I1_not : std_logic;

begin

I0_Not <= not I0;
I1_Not <= not I1;
Y0 <=I0_Not and I1_Not and EN;
Y1 <=I0 and I1_Not and EN;
Y2 <=I0_Not and I1 and EN;
Y3 <=I0 and I1 and EN;

end Behavioral;

