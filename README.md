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

Simulation Result :

--> Output Waveform

<img width="1920" height="1200" alt="Screenshot (243)" src="https://github.com/user-attachments/assets/d52907e2-32a8-416c-a98d-d085d9e20a1e" />

<img width="1920" height="1200" alt="Screenshot (244)" src="https://github.com/user-attachments/assets/5b587adb-9b71-4d90-a062-ac6032233fcc" />

<img width="1920" height="1200" alt="Screenshot (245)" src="https://github.com/user-attachments/assets/b84c299c-0dd1-4713-836d-03c7a610122f" />

<img width="1920" height="1200" alt="Screenshot (241)" src="https://github.com/user-attachments/assets/14b7cf13-fa4d-4616-8ee5-7a36437e3845" />


--> RTL Schematic 

<img width="1920" height="1200" alt="Screenshot (246)" src="https://github.com/user-attachments/assets/82321c07-4e20-40b5-98ce-dcce98d64413" />

--> Synthesized Design

<img width="1920" height="1200" alt="Screenshot (247)" src="https://github.com/user-attachments/assets/1e58d6dd-4cc5-4fe1-a1bb-c1a244865119" />



🎯 Learning Outcomes

--> Understanding of ALU architecture

--> Proper use of unsigned arithmetic in VHDL

--> Handling overflow, carry, and borrow

--> Writing scalable and readable testbenches

--> Practical verification strategies for large-bit designs 

👨‍🎓 Author

Aman Mishra

Department of Electronics & Communication Engineering
