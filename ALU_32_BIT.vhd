----------------------------------------------------------------------------------
-- Company: NA
-- Student Details:
-- Name       : AMAN MISHRA
-- Roll No.   : 90211502825
-- Department : ELECTRONICS & COMMUNICATION ENGINEERING  
-- Create Date: 31.01.2026 12:54:56
-- Design Name: 
-- Module Name: ALU_32_BIT - Behavioral
-- Project Name: 32-BIT ARITHMATIC LOGICal unit
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

entity ALU_32_BIT is
port (
       A           : IN std_logic_vector(31 downto 0)  ; -- 32-BIT INPUT 
       B           : IN std_logic_vector(31 downto 0)  ; -- 32-BIT INPUT
       SEL         : IN std_logic_vector(3 downto 0)   ; -- 4-BIT SELECT LINES
       RESULT      : OUT std_logic_vector(31 downto 0) ; -- 32-BIT RESULT
       MUL         : OUT std_logic_vector(31 downto 0) ; -- 32-BIT REGISTER TO STORE HIGHER ORDER 32 BITS OF MULTIPLICATION OPERATION 
       CARRY       : OUT std_logic                       -- 1-BIT CARRY OUT
       );
end ALU_32_BIT;

architecture Behavioral of ALU_32_BIT is
     
begin 
         
    process(A , B, SEL)
       
       variable temp     : unsigned(32 downto 0); -- 33-BITS TEMP0RARY REGISTER 
       variable temp_mu1 : unsigned(63 downto 0); -- 64-BITS TEMPORARY REGISTER ( TO STORE 64-BIT RESULT OF MMULTIPLICATION)
       
    begin
       
       RESULT <= (others => '0');
    CARRY  <= '0';
        case SEL IS 
             when "0000" => -- ADDITION
             
                    temp   := ('0' & unsigned(A)) + unsigned(B) ;
                    RESULT <= std_logic_vector(temp(31 downto 0)) ;
                    CARRY  <= temp(32) ;
                    
             when "0001" => -- SUBTRACTION
             
                    RESULT <= std_logic_vector(unsigned(A) - unsigned(B));
                    if unsigned(B) > unsigned(A) then
                        CARRY <= '1' ; -- BORROW OUT
                    else 
                         CARRY <= '0' ; -- NO BORROW
                    end if;              
         
             when "0010" => -- MULTIPLICATION
             
                    temp_mu1 := unsigned(A)*unsigned(B);
                    RESULT   <= std_logic_vector(temp_mu1(31 downto 0)) ;
                    MUL      <= std_logic_vector(temp_mu1(63 downto 32)) ;
                    
                    if temp_mu1(63 downto 32)/=0 then
                        CARRY <= '1' ;  -- OVERFLOW
                    else
                         CARRY <= '0' ; -- NO OVERFLOW
                    end if ;
                           
             when "0011" => --NOT OPERATION 
                    RESULT <= not A ;
                    CARRY  <= '0' ;
               
             when "0100" => -- AND OPERATION 
                    RESULT <= A and B ;
                    CARRY  <= '0' ;
                    
             when "0101" => -- OR OPERATION 
                    RESULT <= A or B ;
                    CARRY  <= '0' ;
             
              when "0110" => -- XOR OPERATION 
                    RESULT <= A xor B ;
                    CARRY  <= '0' ;
                    
              when "0111" => -- XNOR OPERATION 
                    RESULT <= A xnor B ;
                    CARRY  <= '0' ;
                    
              when "1000" => -- INCREMENT  
              
                    temp   := ('0' & unsigned(A)) + 1 ;
                    RESULT <= std_logic_vector(temp(31 downto 0));
                    CARRY  <= temp(32) ;
                    
              when "1001" => -- DECREMENT
              
                    RESULT <= std_logic_vector(unsigned(A) - 1);
                    if A = x"00000000" then
                       CARRY  <= '1' ; -- BORROW
                    else 
                       CARRY  <='0' ;
                    end if ;    
                    
              when "1010" => -- LOGICAL SHIFT RIGHT
                    RESULT <= std_logic_vector(unsigned(A) srl 1);
                    CARRY  <= A(0) ;                          
                                        
              when "1011" => -- LOGICAL SHIFT LEFT 
                    RESULT <= std_logic_vector(unsigned(A) sll 1);
                    CARRY  <= A(31) ;  
                          
                          
              when others => -- FOR OTHER VALUES OF SEL 
                    RESULT <= x"00000000" ;
                    CARRY  <= '0' ;
            
            end case ;
         end process ;
                         
end Behavioral;
