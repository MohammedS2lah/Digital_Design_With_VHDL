### VHDL Code for 2-Bit Comparator

This VHDL code implements a 2-bit comparator. The `Comparator_2_Bit` entity compares two 2-bit binary inputs (`a` and `b`) 
and outputs the result of the comparison in terms of equality, greater-than, or less-than conditions.

#### Code Explanation:

##### Library and Package Inclusion:
- The `IEEE.STD_LOGIC_1164` package is used to define and handle the `STD_LOGIC` and `STD_LOGIC_VECTOR` types, which represent the binary signals.

##### Entity Declaration:
- **Entity Name**: `Comparator_2_Bit`
- **Ports**:
  - `a`: 2-bit input vector.
  - `b`: 2-bit input vector.
  - `a_eq_b`: Single-bit output that is HIGH (`'1'`) when `a` equals `b`.
  - `a_gt_b`: Single-bit output that is HIGH (`'1'`) when `a` is greater than `b`.
  - `a_lt_b`: Single-bit output that is HIGH (`'1'`) when `a` is less than `b`.

##### Architecture:
- The `Behavioral` architecture describes the logic for the comparator.

###### Equality Logic:
- `a_eq_b` is HIGH when both inputs are identical.
- Logic uses combinations of `AND` and `NOT` gates to compare the individual bits of `a` and `b`.

###### Greater-Than Logic:
- `a_gt_b` is HIGH when the binary value of `a` is greater than `b`.
- Conditions:
  1. The most significant bit (`a(1)`) of `a` is HIGH while the corresponding bit of `b` (`b(1)`) is LOW.
  2. If the most significant bits are equal, the least significant bit (`a(0)`) determines the result.

###### Less-Than Logic:
- `a_lt_b` is HIGH when the binary value of `a` is less than `b`.
- Conditions:
  1. The most significant bit (`a(1)`) of `a` is LOW while the corresponding bit of `b` (`b(1)`) is HIGH.
  2. If the most significant bits are equal, the least significant bit (`b(0)`) determines the result.

#### Example Truth Table:
| `a`  | `b`  | `a_eq_b` | `a_gt_b` | `a_lt_b` |
|-------|-------|----------|----------|----------|
| "00"  | "00"  |    1     |    0     |    0     |
| "01"  | "00"  |    0     |    1     |    0     |
| "10"  | "11"  |    0     |    0     |    1     |
| "11"  | "10"  |    0     |    1     |    0     |
| "11"  | "11"  |    1     |    0     |    0     |

#### Design Schematic

![image](https://github.com/user-attachments/assets/8e0907ec-0519-443e-be92-bedc8acca66b)

#### Simulation Results

![image](https://github.com/user-attachments/assets/4bd9ff31-86c3-4a4d-9c8c-ee01c35bd1d2)
