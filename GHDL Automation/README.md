## This is a ghdl automation script for vhdl code simulation and testing. 

## Dependencies Required:
### 1. GHDL
### 2. GtkWave

## Usage
Just run the script with the code file names as the arguements without the .vhd extension. 
Ensure that the last arguement is the testbench file name as well as the order of definition of code files is bottom to top.
Example Commands: ' ./vhdl.sh half_adder half_adder_tb.sh' , './vhdl.sh half_adder full_adder full_adder_tb' (half_adder is the bottommost module and full_adder_tb is the topmost module).
