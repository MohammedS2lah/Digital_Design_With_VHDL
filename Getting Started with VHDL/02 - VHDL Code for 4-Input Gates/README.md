### VHDL Code for 4-Input Gates

This example demonstrates the implementation of basic 4-input logic gates in VHDL. The `Gates_4_input` entity takes a 4-bit input vector (`x`) 
and produces a 6-bit output vector (`z`) representing the results of various logical operations.

#### Code Explanation:

##### Library and Package Inclusion:
- The `IEEE.STD_LOGIC_1164` package is used for defining and working with logic types like `STD_LOGIC` and `STD_LOGIC_VECTOR`.

##### Entity Declaration:
- **Entity Name**: `Gates_4_input`
- **Ports**:
  - `x`: A 4-bit input vector (`STD_LOGIC_VECTOR(4 downto 1)`).
  - `z`: A 6-bit output vector (`STD_LOGIC_VECTOR(6 downto 1)`), where each bit corresponds to the result of a specific logical operation.

##### Architecture:
- The `Behavioral` architecture defines the operations for each bit in the `z` vector:
  - **z(6)**: Logical AND of all bits in `x`.
    - Formula: `z(6) <= x(1) and x(2) and x(3) and x(4);`
  - **z(5)**: Logical NAND (NOT AND) of all bits in `x`.
    - Formula: `z(5) <= not(x(1) and x(2) and x(3) and x(4));`
  - **z(4)**: Logical OR of all bits in `x`.
    - Formula: `z(4) <= x(1) or x(2) or x(3) or x(4);`
  - **z(3)**: Logical NOR (NOT OR) of all bits in `x`.
    - Formula: `z(3) <= not(x(1) or x(2) or x(3) or x(4));`
  - **z(2)**: Logical XOR of all bits in `x`.
    - Formula: `z(2) <= x(1) xor x(2) xor x(3) xor x(4);`
  - **z(1)**: Logical XNOR (NOT XOR) of all bits in `x`.
    - Formula: `z(1) <= x(1) xnor x(2) xnor x(3) xnor x(4);`

##### Design Schematic:

![image](https://github.com/user-attachments/assets/c41d121f-a9eb-4130-8034-63bfb3e5eaa5)


##### Simulation Results:

![image](https://github.com/user-attachments/assets/054a6d2c-c237-4929-930b-ab92383cd360)
