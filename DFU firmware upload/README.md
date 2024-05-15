# DFU firmware upload script
 I have tried to automate the process of uploading a binary firmware file to various ARM controllers like STM32 using the dfu-util utility.

### Note: This script has been written assuming that the binary file resulted from an Arduino IDE environment for a generic STM32F4 board, so it assumes the default path to be accordingly. If you want to specify a path of your own use the "-p" key after "upload" or feel free to edit the default path in the script itself.

## Dependencies required
 1. dfu-util

## Usage 
 1. List the DFU boards available: "dfu list"
 2. Upload the firmware file : "dfu upload [Arduino sketch name]" / "dfu upload -p [Path to binary file]".
