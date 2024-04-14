#!/bin/bash
n_arguements=$#
testbench_code=${!#}
testbench_name=$(echo "$testbench_code.vhd" | cut -d "." -f 1)
testbench_entity=$(grep "entity" < "$testbench_code.vhd" | cut -d " " -f 2 )

if [ "$n_arguements" -lt 2 ]; then
    echo "Missing code file names."
else
    for((i=1;i<=n_arguements-1;i++));do
        ghdl -s "${!i}.vhd"
    done
    ghdl -s "$testbench_code.vhd"
    for((i=1;i<=n_arguements-1;i++));do
            ghdl -a "${!i}.vhd"
        done
    ghdl -a "$testbench_code.vhd"
    ghdl -e "$testbench_entity"
    ghdl -r "$testbench_entity"
    ghdl -r "$testbench_entity" --vcd="$testbench_name".vcd
    gtkwave "$testbench_name".vcd
fi
