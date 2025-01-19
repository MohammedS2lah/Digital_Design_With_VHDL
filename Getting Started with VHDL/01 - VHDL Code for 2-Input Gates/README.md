### VHDL Code for 2-Input Gates

This example demonstrates the implementation of basic 2-input logic gates in VHDL. The `Gates_2_input` entity takes two single-bit inputs (`a` and `b`) and produces a 6-bit output vector (`z`) representing the results of various logical operations.

#### Code Explanation:

1. **Library and Package Inclusion**:
   - The `IEEE.STD_LOGIC_1164` package is used for defining and working with logic types like `STD_LOGIC`.

2. **Entity Declaration**:
   - **Entity Name**: `Gates_2_input`
   - **Ports**:
     - `a`: Single-bit input.
     - `b`: Single-bit input.
     - `z`: 6-bit output vector, where each bit corresponds to a specific logic operation.

3. **Architecture**:
   - The `Behavioral` architecture defines the operations for each bit in the `z` vector:
     - `z(5)`: Logical AND of `a` and `b`.
     - `z(4)`: Logical NAND of `a` and `b`.
     - `z(3)`: Logical OR of `a` and `b`.
     - `z(2)`: Logical NOR of `a` and `b`.
     - `z(1)`: Logical XOR of `a` and `b`.
     - `z(0)`: Logical XNOR of `a` and `b`.

4. **Design Schematic**:
   
![image](https://github.com/user-attachments/assets/49a9084d-bb43-4f1a-98f0-956fc3bc3d9b)

5. **Simulation Results**:
   
![image](https://github.com/user-attachments/assets/35f1447a-bd29-40f9-a442-9adccb25176a)
