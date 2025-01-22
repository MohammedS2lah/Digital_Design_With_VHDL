### VHDL Code for 4-Input Majority Circuit

This VHDL code implements a 4-input majority circuit. The `Majority_Circuit_4_Input` entity determines 
if the majority (three or more) of its four single-bit inputs are HIGH (`'1'`) and outputs a corresponding result.

#### Code Explanation:

##### Library and Package Inclusion:
- The `IEEE.STD_LOGIC_1164` package is used for defining and working with logic types like `STD_LOGIC`.

##### Entity Declaration:
- **Entity Name**: `Majority_Circuit_4_Input`
- **Ports**:
  - `a`: Single-bit input.
  - `b`: Single-bit input.
  - `c`: Single-bit input.
  - `d`: Single-bit input.
  - `f`: Single-bit output. Represents the result of the majority logic.

##### Architecture:
- The `Behavioral` architecture defines the logic for the majority circuit.
- Formula:
  - `f <= ((a and b and c) or (a and b and d) or (b and c and d) or (a and c and d));`
- Logic Explanation:
  - The output `f` will be HIGH (`'1'`) if any three or more of the inputs (`a`, `b`, `c`, `d`) are HIGH.
  - The expression uses logical AND (`and`) to check combinations of three inputs and logical OR (`or`) to combine all such possibilities.

#### Example Test Cases:
| `a` | `b` | `c` | `d` | `f` |
|-----|-----|-----|-----|-----|
|  0  |  0  |  0  |  0  |  0  |
|  1  |  1  |  0  |  1  |  1  |
|  1  |  1  |  1  |  0  |  1  |
|  1  |  0  |  1  |  0  |  0  |
|  1  |  1  |  1  |  1  |  1  |

##### Design Schematic:

![image](https://github.com/user-attachments/assets/fc5f5c0f-b6ab-4016-99bb-6841fd0a00c2)


##### Simulation Results:

![image](https://github.com/user-attachments/assets/cdd14af8-c407-409b-93d6-2b1a8ea90a20)
