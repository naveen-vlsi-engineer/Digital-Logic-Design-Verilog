# My VLSI & RTL Design journey 

Welcome!  I am a Electronics student (2026 Batch) aspiring to become a VLSI Engineer. This repository tracks my progress from basic gates to complex System-on-Chip (SoC) design.

## Tools I Use:
-**HDL:**verilog
_**Simulation:**Icarus Verilog
_**Waveform Viewer / WSL (Ubunutu)

## Project 1:Half-Adder Design
-**Description:** Implemented a basic Half-Adder using Gate-Level Modeling.
-**Status:** verified with Testbench & GTKWave.

---
## Project 2: 8-bit Arithmetic Logic Unit (ALU)
- **Description: ** DEsigned an 8-bit ALU that performs Addition, Subtraction, AND, and OR operations based on a 2 bit selection line.
- **Verification:** Simulated using `iverilog` and verified results on `GTKWave`.

### Simulation Waveform:
![ALU Waveform] (alu_waveform.png)

---
## Project 3: D-Flip-Flop with Asynchronous Reset
- **Description:** Implemented a D-FF to understand sequential logic and memory elements.
- **Key Learning:** Learned how 'Clock' and 'Reset' signals control data flow.
- ![DFF Waveform] (dff_waveform.png)

---
## Project 4: 4-bit SISO Shift Register

- **Description:** Implemented a 4-bit Serial-In Serial-Out (SISO) Shift Register using a chain of D-Flip Flops.
- **Key Learning:** Learned how data "jumps" from one flip-flop to another on each clock pulse (Propagation Delay & Latency).
- **Verification:** Simulated using `iverilog` and verified timing on `GTKwave`.

#### Simulation Waveform:
![Shift Register Waveform](shift_reg_waveform.png)

