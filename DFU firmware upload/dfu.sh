key=$1
file_name=$2
if [ "$key" == "" ]; then
	echo "Please specify a key."
elif [ "$key" == "list" ]; then
	sudo dfu-util -l
elif [ "$key" == "upload" ]; then
	if [ "$2" == "" ]; then
		echo "Please specify the name of the file."
	else
		int_value=$(sudo dfu-util -l | grep "Internal" | cut -d " " -f 7 | tr -d "intf=,")
		alt_value=$(sudo dfu-util -l | grep "Internal" | cut -d " " -f 9 | tr -d "alt=,")
		sudo dfu-util -a "$alt_value" -i "$int_value" -s 0x08000000:leave -D ~/Arduino/"$file_name"/build/"STMicroelectronics.stm32.GenF4"/"$file_name".ino.bin
		echo "Firmware flashed succesfully"
	fi
fi
