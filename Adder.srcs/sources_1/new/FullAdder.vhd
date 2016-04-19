----------------------------------------------------------------------------------
-- Company: University Of Stuttgart
-- Engineer: Kashif Wajid
-- 
-- Create Date: 04/18/2016 05:20:36 PM
-- Design Name: 
-- Module Name: FullAdder - Behavioral
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

entity FullAdder is
    Port ( c_in : in STD_LOGIC;
           a_in : in STD_LOGIC;
           b_in : in STD_LOGIC;
           c_out : out STD_LOGIC;
           s_out : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

begin
c_out <= (a_in and b_in) or (a_in and c_in) or (b_in and c_in);
s_out <= a_in xor b_in xor c_in;

end Behavioral;
