### VHDL Code for 2-to-1 Multiplexer (Method 2)

This VHDL code demonstrates an alternative implementation of a 2-to-1 multiplexer using a process block. 
The multiplexer selects one of two single-bit inputs (`a` or `b`) based on the value of a single control signal (`s`).

#### Code Explanation:

##### Library and Package Inclusion:
- The `IEEE.STD_LOGIC_1164` package is included to define and handle the `STD_LOGIC` type, which is commonly used for digital logic design.

##### Entity Declaration:
- **Entity Name**: `MUX_2x1_Method_2`
- **Ports**:
  - `a`: Single-bit input.
  - `b`: Single-bit input.
  - `s`: Single-bit control signal.
  - `y`: Single-bit output.

##### Architecture:
- **Architecture Name**: `Behavioral`
- **Process Block**:
  - The behavior of the multiplexer is defined inside a process block named `P1`.
  - The process is sensitive to changes in the inputs (`a`, `b`, and `s`).
  - The multiplexer logic is implemented using an `if-else` statement:
    ```vhdl
    if s = '0' then
        y <= a;
    else
        y <= b;
    end if;
    ```
  - When `s = '0'`, the output `y` is assigned the value of input `a`.
  - When `s = '1'`, the output `y` is assigned the value of input `b`.

#### Example Truth Table:
| `s`  | `a`  | `b`  | `y`  |
|------|------|------|------|
|  0   |  0   |  0   |  0   |
|  0   |  1   |  0   |  1   |
|  1   |  0   |  1   |  1   |
|  1   |  1   |  0   |  0   |

#### Notes:
- This implementation uses a process block, which makes it suitable for more complex combinational logic.
- Ensure that the control signal (`s`) is stable to avoid glitches in the output (`y`).

#### Design Schematic

![image](https://github.com/user-attachments/assets/eac02d25-0bac-4854-b765-95d5984cff6d)

#### Simulation Results

![image](https://github.com/user-attachments/assets/498b6739-f0d5-4765-8a77-392bbd7ada14)
