#Mod-5 Counter (Clock Divider by 5)

##Overview
This project implements a **Mod-5 Synchronous Counter** in Verilog. It counts from '0' to '4' (total 5 states) and then  wraps around to '0'.

##Why Mod-5?
Standard counter (like 3-bit ) go from 0 to 7. A Mod-5 counter is essential when we need to:
- Divide a clock frequency by 5.
- Create custom timing cycles in digital systems.

## Logic Implementation
-**Bits used:** 3 bits (can store up to 7, but we reset at 4).
-**Reset Logic:**
  - If `rst = 1`, count =`0`.
  - If `count == 4`, the next state becomes `0`.
  - Else, `count = count + 1`.

##  Simulation Results
The design was verified using **Icarus Verilog** and the following waveform was generated in **GTKWave**.

![Mod-5 Waveform] (mod5_waveform.png)
