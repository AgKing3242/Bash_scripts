#!/bin/bash

dumpfile_name=$(grep "dumpfile" < "$1" | cut -d '"' -f 2)

iverilog -o testwav "$1"
vvp testwav
gtkwave "$dumpfile_name"
