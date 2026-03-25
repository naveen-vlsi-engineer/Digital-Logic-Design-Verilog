# 100MHz to 1Hz Clock Divider (LED Blinker) ⏳

## Overview
This project implements a **Clock Divider** in Verilog. It takes a high-speed **100MHz** input clock (standard for many FPGA boards) and converts it into a slow **1Hz** output clock. This is the core logic used to blink an LED once every second.

## Why 27-bit Counter?
- To count 1 second (100,000,000 pulses), we need a counter that can store this large value.
- $2^{26} \approx 67$ Million (Not enough)
- $2^{27} \approx 134$ Million (Perfect!)
- Therefore, a **27-bit register** is used.

## Logic Implementation
- The counter increments on every `posedge clk`.
- When it reaches **49,999,999** (half of 100M), the output clock **toggles**.
- This ensures the LED stays ON for 0.5s and OFF for 0.5s (50% Duty Cycle).

## Simulation Results
Below is the waveform from **GTKWave**. For simulation purposes, the counter limit was reduced to `4` to visualize the frequency division clearly.

![Clock Divider Waveform](clk_div_waveform.png)
