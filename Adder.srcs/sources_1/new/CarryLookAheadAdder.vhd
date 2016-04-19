----------------------------------------------------------------------------------
-- Company: University Of Stuttgart
-- Engineer: Kashif Wajid
-- 
-- Create Date: 04/19/2016 02:04:51 PM
-- Design Name: 
-- Module Name: CarryLookAheadAdder - Behavioral
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

-- g[i] <= x[i] and y[i]
-- p[i] <= x[i] or y[i]
-- c[i+1] <= g[i] or (p[i] and c[i])

entity CarryLookAheadAdder is
    Generic (N : Natural := 8);
    Port ( c_in : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (N-1 downto 0);
           b : in STD_LOGIC_VECTOR (N-1 downto 0);
           c_out : out STD_LOGIC;
           s_out : out STD_LOGIC_VECTOR (N-1 downto 0));
end CarryLookAheadAdder;

architecture Behavioral of CarryLookAheadAdder is

signal temp_c : std_logic_Vector(N downto 0) := (others => '0');
signal p, g : std_logic_vector(N-1 downto 0);

begin
    p <= a or b;
    g <= a and b;
    
    process(p, g, temp_c)
    begin
        temp_c(0) <= c_in;
        for i in 1 to N loop
            temp_c(i) <= g(i-1) or (p(i-1) and temp_c(i-1));
        end loop;  
    end process;
    
    s_out <= a xor b xor temp_c(N-1 downto 0);
    c_out <= temp_c(N);

end Behavioral;
