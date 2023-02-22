----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/22/2023 02:14:42 PM
-- Design Name: 
-- Module Name: mux_3bit_4to1 - Behavioral
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

entity mux_3bit_4to1 is
  port (
    d_i          : in    std_logic_vector(2 downto 0);
    c_i           : in    std_logic_vector(2 downto 0);
    b_i          : in    std_logic_vector(2 downto 0);
    a_i         : in    std_logic_vector(2 downto 0);
    sel         : in    std_logic_vector(1 downto 0);
    g_o           : out   std_logic_vector(2 downto 0)
  );

end mux_3bit_4to1;

architecture Behavioral of mux_3bit_4to1 is

begin
with sel select
    g_o <= a_i when "00",
           b_i when "01",
           c_i when "10",
           d_i when others; -- All other combinations

end Behavioral;
