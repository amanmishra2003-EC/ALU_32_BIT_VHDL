----------------------------------------------------------------------------------
-- Company: NA
-- NAME       : AMAN MISHRA 
-- ROLL NO.   : 90211502825
-- DEPARTMENT : ELECTRONICS & COMMUNICATION ENGINEERING
-- Create Date: 31.01.2026 15:09:47
-- Design Name: 32-BIT ALU TESTBENCH 
-- Module Name: ALU_32_BIT_tb - Behavioral
-- Project Name: ALU_32_BIT
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
use IEEE.NUMERIC_STD.ALL ;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU_32_BIT_tb is
--  Port ( );
end ALU_32_BIT_tb;

architecture Behavioral of ALU_32_BIT_tb is 

             --DUT Component Declaration
             component ALU_32_BIT
                  port (
       A           : IN std_logic_vector(31 downto 0)  ; -- 32-BIT INPUT 
       B           : IN std_logic_vector(31 downto 0)  ; -- 32-BIT INPUT
       SEL         : IN std_logic_vector(3 downto 0)   ; -- 4-BIT SELECT LINES
       RESULT      : OUT std_logic_vector(31 downto 0) ; -- 32-BIT RESULT
       MUL         : OUT std_logic_vector(31 downto 0) ; -- 32-BIT REGISTER TO STORE HIGHER ORDER 32 BITS OF MULTIPLICATION OPERATION 
       CARRY       : OUT std_logic                       -- 1-BIT CARRY OUT
       );
     end component ;
     
     -- Testbench Signals
     signal A_tb   : std_logic_vector(31 downto 0) := X"00000000" ;
     signal B_tb   : std_logic_vector(31 downto 0) := X"00000000" ;
     signal SEL_tb : std_logic_vector(3 downto 0)  := "0000" ;
     signal RESULT_tb : std_logic_vector(31 downto 0) ;
     signal MUL_tb    : std_logic_vector(31 downto 0) ;
     signal CARRY_tb  : std_logic ;     
     
begin

    -- Instantiate the ALU
    DUT : ALU_32_BIT
    port map (
         A      => A_tb,
         B      => B_tb,
         SEL    => SEL_tb,
         RESULT => RESULT_tb,
         MUL    => MUL_tb,
         CARRY  => CARRY_tb
         );
         
       -- Stimulus process
       stimulus : process 
       begin   
          
          -- Loop through all ALU operations
              for sel_val in 0 to 15 loop 
                SEL_tb <=std_logic_vector(TO_UNSIGNED(sel_val , 4));
                wait for 10 ns ;
                 
                 
                -- Tests edge and selective values of A and B
                for i in 0 to 6 loop
                    case i is
                      when 0 => A_tb <= x"00000000"; B_tb <= x"00000000";
                      when 1 => A_tb <= x"FFFFFFFF"; B_tb <= x"00000001";
                      when 2 => A_tb <= x"80000000"; B_tb <= x"7FFFFFFF";
                      when 3 => A_tb <= x"7FFFFFFF"; B_tb <= x"00000001";
                      when 4 => A_tb <= x"12345678"; B_tb <= x"87654321";
                      when 5 => A_tb <= x"00000001"; B_tb <= x"FFFFFFFF";
                      when 6 => A_tb <= x"AAAAAAAA"; B_tb <= x"55555555";
                   end case ;
                   wait for 10 ns ;
               end loop ;
             end loop ;
       
          wait ;
      end process ;
                 
end Behavioral;
