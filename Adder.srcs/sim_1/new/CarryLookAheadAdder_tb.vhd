----------------------------------------------------------------------------------
-- Company: University Of Stuttgart
-- Engineer: Kashif Wajid
-- 
-- Create Date: 04/19/2016 02:46:42 PM
-- Design Name: 
-- Module Name: CarryLookAheadAdder_tb - Behavioral
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

entity CarryLookAheadAdder_tb is
--  Port ( );
end CarryLookAheadAdder_tb;

architecture Behavioral of CarryLookAheadAdder_tb is
  -- Component Declaration for the Unit Under Test (UUT)
  COMPONENT CarryLookAheadAdder  --'test' is the name of the module needed to be tested.
  Generic (N : Natural := 8);
--just copy and paste the input and output ports of your module as such. 
  PORT( 
       c_in : in STD_LOGIC;                     
       a : in STD_LOGIC_VECTOR (N-1 downto 0);    
       b : in STD_LOGIC_VECTOR (N-1 downto 0);    
       c_out : out STD_LOGIC;                   
       s_out : out STD_LOGIC_VECTOR (N-1 downto 0)
      );
  END COMPONENT;
 --declare inputs and initialize them
 signal c_in : std_logic := '0';
 signal a, b : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
 --declare outputs and initialize them
 signal s_out : STD_LOGIC_VECTOR (7 downto 0);
 signal c_out : std_logic;
BEGIN
  -- Instantiate the Unit Under Test (UUT)
 uut: CarryLookAheadAdder PORT MAP (
       c_in => c_in,
        a => a,
        b => b,
        c_out => c_out,
        s_out => s_out
      );       

 -- Stimulus process
stim_proc: process
 begin         
    wait for 10 ns;
    a <= x"00";
    b <= x"00";
    c_in <= '0';
    
    wait for 10 ns;
    a <= x"04";
    b <= x"04";
    c_in <= '0';

    wait for 10 ns;
    a <= x"aa";
    b <= x"11";
    c_in <= '0';
    
    wait for 10 ns;
    a <= x"00";
    b <= x"00";
    c_in <= '1'; 
    
    wait for 10 ns;
    a <= x"05";
    b <= x"05";
    c_in <= '1';
    
    wait for 10 ns;
    a <= x"22";
    b <= x"11";
    c_in <= '0';

    wait for 10 ns;
    a <= x"09";
    b <= x"00";
    c_in <= '1';
    
    wait for 10 ns;
    a <= x"00";
    b <= x"00";
    c_in <= '0'; 
    
    wait for 10 ns;
    a <= x"f5";
    b <= x"f5";
    c_in <= '0';
    
    wait for 10 ns;
    a <= x"f2";
    b <= x"f1";
    c_in <= '1';

    wait for 10 ns;
    a <= x"f9";
    b <= x"10";
    c_in <= '1';
    
    wait for 10 ns;
    a <= x"00";
    b <= x"00";
    c_in <= '1';     
      
    wait;
end process;

END Behavioral;
