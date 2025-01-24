### VHDL Code for 2-to-1 Multiplexer (Method 1)

This VHDL code implements a simple 2-to-1 multiplexer using behavioral modeling. 
The multiplexer selects one of two single-bit inputs (`a` or `b`) based on a single control signal (`s`).

#### Code Explanation:

##### Library and Package Inclusion:
- The `IEEE.STD_LOGIC_1164` package is used to define and handle the `STD_LOGIC` type, which represents binary signals.

##### Entity Declaration:
- **Entity Name**: `MUX_2x1_Method_1`
- **Ports**:
  - `a`: Single-bit input.
  - `b`: Single-bit input.
  - `s`: Single-bit control signal.
  - `y`: Single-bit output.

##### Architecture:
- The `Behavioral` architecture describes the logic for the multiplexer.
- The output `y` is assigned using the following expression:
  ```vhdl
  y <= ((not s and a) or (s and b));
  ```
  - When `s = '0'`, the output `y` is assigned the value of `a`.
  - When `s = '1'`, the output `y` is assigned the value of `b`.

#### Example Truth Table:
| `s`  | `a`  | `b`  | `y`  |
|------|------|------|------|
|  0   |  0   |  0   |  0   |
|  0   |  1   |  0   |  1   |
|  1   |  0   |  1   |  1   |
|  1   |  1   |  0   |  0   |

#### Notes:
- This implementation uses a simple logical expression for the multiplexer functionality.
- Ensure the control signal (`s`) is stable during operation to avoid glitches in the output (`y`).

#### Design Schematic

![image](https://github.com/user-attachments/assets/5d236203-bac4-4ee4-ac5c-4ff54ba3bb09)

#### Simulation Results

![image](https://github.com/user-attachments/assets/bde83ea3-e75f-438f-a746-cb94387be79f)
