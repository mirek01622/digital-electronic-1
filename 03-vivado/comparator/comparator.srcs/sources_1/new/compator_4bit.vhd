----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2023 01:22:05 PM
-- Design Name: 
-- Module Name: compator_4bit - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compator_4bit is
    Port ( b_i : in STD_LOGIC_VECTOR (0 downto 0);
           a_i : in STD_LOGIC_VECTOR (0 downto 0);
           b_less : out STD_LOGIC);
end compator_4bit;

architecture Behavioral of compator_4bit is

begin


end Behavioral;
