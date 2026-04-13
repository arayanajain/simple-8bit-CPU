# Simple 8-Bit CPU

A lightweight Single-Cycle 8-bit CPU core written in Verilog. This project implements a basic fetch-execute cycle with an ALU, accumulator, and register file.

### Features
* **8-bit Data Path:** Processes data in 8-bit chunks.
* **4 Registers:** Internal storage for handling operations.
* **Simple Instruction Set:** Supports Load, Store, Add, and Logic (AND) operations.

### Instruction Format
Instructions are 8 bits wide:
* **Bits [7:6]:** Opcode (The command)
* **Bits [5:4]:** Register Selection (Which register to use)
* **Bits [3:0]:** Immediate Value (Direct data)

### Operations
| Opcode | Instruction | Action |
|---|---|---|
| 00 | LOADI | Load 4-bit value into Accumulator |
| 01 | ADD | Add Register value to Accumulator |
| 10 | STORE | Save Accumulator to Register |
| 11 | AND | Logical AND with Accumulator |

### How to run
You can simulate this using Icarus Verilog or any standard Verilog simulator. 
