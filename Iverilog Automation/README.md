## BASH Script for automating iverilog and gtkwave based verilog simulation and testing 
## Dependencies Required:

### 1. Icarus Verilog
### 2. GtkWave

## Usage
Run the script with the verilog testbench file name as the only arguement. Be sure to include the other main code files in the testbench code 
using the `include command. The .vcd file generated will have the same name as defined in the testbench code.

Example commands: './verilog.sh half_adder_testbench.v'
