----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2016 05:30:14 PM
-- Design Name: 
-- Module Name: FullAdder_tb - Behavioral
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

entity FullAdder_tb is
--  Port ( );
end FullAdder_tb;

ARCHITECTURE behavior OF FullAdder_tb IS
   -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT FullAdder  --'test' is the name of the module needed to be tested.
--just copy and paste the input and output ports of your module as such. 
    PORT( 
         c_in : IN  std_logic;
         a_in : IN  std_logic;
         b_in : IN  std_logic;
         c_out : OUT  std_logic;
         s_out : OUT  std_logic
        );
    END COMPONENT;
   --declare inputs and initialize them
   signal c_in : std_logic := '0';
   signal a_in, b_in : std_logic := '0';
   --declare outputs and initialize them
   signal s_out, c_out : std_logic;
BEGIN
    -- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
         c_in => c_in,
          a_in => a_in,
          b_in => b_in,
          c_out => c_out,
          s_out => s_out
        );       

   -- Stimulus process
  stim_proc: process
   begin         
        wait for 10 ns;
        a_in <= '0';
        b_in <= '0';
        c_in <= '1';
        
        wait for 10 ns;
        a_in <= '0';
        b_in <= '1';
        c_in <= '0';
        
        wait for 10 ns;
        a_in <= '0';
        b_in <= '1';
        c_in <= '1';
        
        wait for 10 ns;
        a_in <= '1';
        b_in <= '0';
        c_in <= '0';
        
        wait for 10 ns;
        a_in <= '1';
        b_in <= '0';
        c_in <= '1';
        
        wait for 10 ns;
        a_in <= '1';
        b_in <= '1';
        c_in <= '0';
        
        wait for 10 ns;
        a_in <= '1';
        b_in <= '1';
        c_in <= '1';
        
        wait for 10 ns;
        a_in <= '0';
        b_in <= '0';
        c_in <= '0';
        wait;
  end process;

END;