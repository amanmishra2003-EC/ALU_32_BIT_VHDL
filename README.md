# ALU_32_BIT_VHDL
A complete 32-bit Arithmetic Logic Unit (ALU) designed in VHDL, supporting arithmetic, logical, and shift operations, along with a comprehensive testbench covering edge cases and operational scenarios.

32-Bit Arithmetic Logic Unit (ALU) in VHDL

📌 Project Overview

-->This project presents the design and verification of a 32-bit Arithmetic Logic Unit (ALU) using VHDL.

-->The ALU performs a variety of arithmetic, logical, and shift operations and includes a comprehensive testbench that verifies functionality across multiple edge and representative scenarios.

-->This project is intended for digital design learning, VHDL practice, and EDA tool simulation.

✨ Features

--> 32-bit arithmetic operations

--> Logical operations

--> Shift operations with carry detection

--> Multiplication with full 64-bit result handling

--> Borrow and overflow detection

--> Well-structured and readable VHDL code

--> Practical and exhaustive-style testbench for verification

⚙️ ALU Operations

| SEL Code | Operation           | Description           |
| -------- | ------------------- | --------------------- |
| 0000     | Addition            | A + B with carry      |
| 0001     | Subtraction         | A − B with borrow     |
| 0010     | Multiplication      | 32×32 → 64-bit result |
| 0011     | NOT                 | Bitwise NOT of A      |
| 0100     | AND                 | Bitwise AND           |
| 0101     | OR                  | Bitwise OR            |
| 0110     | XOR                 | Bitwise XOR           |
| 0111     | XNOR                | Bitwise XNOR          |
| 1000     | Increment           | A + 1                 |
| 1001     | Decrement           | A − 1                 |
| 1010     | Logical Shift Right | A >> 1                |
| 1011     | Logical Shift Left  | A << 1                |


📥 Inputs and Outputs
Inputs

--> A : 32-bit input operand

--> B : 32-bit input operand

--> SEL : 4-bit select line to choose operation

Outputs

--> RESULT : Lower 32 bits of result

--> MUL : Upper 32 bits of multiplication result

--> CARRY : Carry / Borrow / Overflow flag

🧪 Testbench Details

The testbench:

--> Iterates through all ALU operations

--> Tests edge cases and representative values, including:

--> All zeros

--> All ones

--> MSB-only values

--> Boundary conditions

--> Random and patterned data

--> Uses timed stimulus for accurate waveform observation

--> Designed for fast and practical simulation

🛠 Tools & Technologies

--> Language: VHDL

--> Libraries: IEEE STD_LOGIC_1164, NUMERIC_STD

Simulation Tools:

--> Xilinx Vivado Simulator

🎯 Learning Outcomes

🎯 Learning Outcomes

--> Understanding of ALU architecture

--> Proper use of unsigned arithmetic in VHDL

--> Handling overflow, carry, and borrow

--> Writing scalable and readable testbenches

--> Practical verification strategies for large-bit designs 

👨‍🎓 Author

Aman Mishra

Department of Electronics & Communication Engineering
