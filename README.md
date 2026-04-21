# SPI Master Design (Verilog)

## Objective
To design and implement a basic SPI Master and verify it through simulation and FPGA implementation.

## Tools Used
- ModelSim SE 5.5a (Simulation)
- Xilinx ISE 7.1i (Synthesis, Place & Route)

## Project Structure
- rtl/ → Verilog design (spi_master.v)
- tb/ → Testbench (spi_master_tb.v)
- sim/ → Simulation logs and waveform
- ise/ → FPGA outputs and reports
- screenshots/ → Waveform images
- docs/ → Results summary

## Flow
1. Designed SPI Master in Verilog RTL
2. Simulated using ModelSim
3. Verified waveform (MOSI, SCLK, CS, DONE)
4. Synthesized using Xilinx ISE
5. Completed Place and Route (PnR)
6. Generated programming file (.bit)

## Results
- Successful 8-bit SPI transmission
- No synthesis or implementation errors
- Timing achieved ~157 MHz
- Programming file generated successfully

