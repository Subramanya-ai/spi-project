# SPI Master Design (Verilog)

## Objective

To design and verify a basic SPI master using Verilog and demonstrate the complete digital design flow.

## Tools Used

* ModelSim (Simulation)
* Xilinx ISE (Synthesis & Implementation)
* OpenLane (RTL-to-GDS flow demonstration)

## Project Structure

* rtl/ → Verilog design files
* tb/ → Testbench
* sim/ → Simulation outputs
* ise/ → Synthesis and implementation reports
* screenshots/ → Simulation and RTL-to-GDS flow snapshots
* openlane/ → Outputs and reports from RTL-to-GDS flow

## Flow

1. Designed SPI master in Verilog RTL
2. Simulated functionality using ModelSim
3. Verified waveform outputs
4. Synthesized and implemented using Xilinx ISE
5. Generated programming file (.bit)
6. Demonstrated RTL-to-GDS flow using OpenLane

## Results

* Successful SPI data transmission verified
* Correct waveform behavior observed
* Synthesis and implementation completed
* RTL-to-GDS flow successfully demonstrated

## Note

RTL-to-GDS flow is demonstrated using an OpenLane reference design. The same flow is applicable to the SPI master design.
