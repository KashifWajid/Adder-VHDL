----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/18/2016 05:50:55 PM
-- Design Name: 
-- Module Name: RippleCarryAdder - Behavioral
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

entity RippleCarryAdder is
    Port ( c_in : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (7 downto 0);
           b : in STD_LOGIC_VECTOR (7 downto 0);
           c_out : out STD_LOGIC;
           s_out : out STD_LOGIC_VECTOR (7 downto 0));
end RippleCarryAdder;

architecture Behavioral of RippleCarryAdder is
    component FullAdder is
    port (
        c_in : in STD_LOGIC; 
        a_in : in STD_LOGIC; 
        b_in : in STD_LOGIC; 
        c_out : out STD_LOGIC;
        s_out : out STD_LOGIC
    );
    end component FullAdder;
    
    signal temp_c : std_logic_vector(8 downto 0) :=(others => '0');
    signal temp_sum : std_logic_vector(7 downto 0):=(others => '0');
begin
    
    temp_c(0) <= c_in;
    
    Adder_Gen:
    for i in 0 to 7 generate
        Adder_Unit : FullAdder
            port map (
                c_in => temp_c(i), 
                a_in => a(i),
                b_in => b(i), 
                c_out => temp_c(i+1),
                s_out => temp_sum(i)
            );
    end generate adder_Gen;
    
    s_out <= temp_sum;
    c_out <= temp_c(8);

end Behavioral;
