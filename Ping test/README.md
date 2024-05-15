## Ping Test script for identifying the alive networks in a network.
The script sends a ping to all possible host IPs and returns the IPs that reply back to the ping.

## Dependencies required:
### net-tools

## Usage
First, run the ifconfig command and note down the interface name for which you want to check the alive networks. 
Then, run the script and enter the interface name when asked.

For Example: './ping.sh' -> 'Please enter your interface: wlan0'.
