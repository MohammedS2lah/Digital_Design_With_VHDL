### VHDL Code for 2-to-1 Multiplexer (Method 3)

This VHDL code implements a 2-to-1 multiplexer using a `when-else` construct. 
The multiplexer selects one of two single-bit inputs (`a` or `b`) based on the value of a single control signal (`s`).

#### Code Explanation:

##### Library and Package Inclusion:
- The `IEEE.STD_LOGIC_1164` package is included to define and manage the `STD_LOGIC` type, which is widely used for digital logic design.

##### Entity Declaration:
- **Entity Name**: `MUX_2x1_Method_3`
- **Ports**:
  - `a`: Single-bit input.
  - `b`: Single-bit input.
  - `s`: Single-bit control signal.
  - `y`: Single-bit output.

##### Architecture:
- **Architecture Name**: `Behavioral`
- **Implementation**:
  - The `when-else` statement is used to define the behavior of the multiplexer:
    ```vhdl
    y <= a when s = '0' else b;
    ```
  - When the control signal `s` is `'0'`, the output `y` is assigned the value of input `a`.
  - When `s` is `'1'`, the output `y` is assigned the value of input `b`.

#### Example Truth Table:
| `s`  | `a`  | `b`  | `y`  |
|------|------|------|------|
|  0   |  0   |  0   |  0   |
|  0   |  1   |  0   |  1   |
|  1   |  0   |  1   |  1   |
|  1   |  1   |  0   |  0   |

#### Notes:
- This method is concise and efficient for implementing simple multiplexers.
- The `when-else` construct is well-suited for compact logic descriptions.

#### Design Schematic

![image](https://github.com/user-attachments/assets/f2622238-e917-4a07-8fc3-227294ba8317)

#### Simulation Results

![image](https://github.com/user-attachments/assets/f6fabf5d-b235-4859-be68-94d0250b2749)
