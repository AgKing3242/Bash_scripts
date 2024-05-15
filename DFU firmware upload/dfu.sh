key1=$1
key2=$2
key3=$3
int_value=$(sudo dfu-util -l | grep "Internal" | cut -d " " -f 7 | tr -d "intf=,")
alt_value=$(sudo dfu-util -l | grep "Internal" | cut -d " " -f 9 | tr -d "alt=,")
if [ "$key1" == "" ]; then
	echo "Please specify a key."
elif [ "$key1" == "list" ]; then
	sudo dfu-util -l
elif [ "$key1" == "upload" ]; then
	if [ "$key2" == "" ]; then
		echo "Please specify the name of the file."
	elif [ "$key2" == "-p" ]; then
		if [ "$key3" == "" ]; then
			echo "Please specify the path to the file."
		else
			sudo dfu-util -a "$alt_value" -i "$int_value" -s 0x08000000:leave -D $key3
   			echo "Firmware flashed succesfully!"
		fi
	else
		sudo dfu-util -a "$alt_value" -i "$int_value" -s 0x08000000:leave -D ~/Arduino/"$key2"/build/"STMicroelectronics.stm32.GenF4"/"$key2".ino.bin
		echo "Firmware flashed succesfully!"
	fi
else
	echo "Invalid command."
fi
