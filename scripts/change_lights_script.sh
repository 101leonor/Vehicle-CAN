#! /bin/bash
# Change the interior lights on a loop (Ford Mustang Mach-E case) 
ip link set up can0 type can bitrate 500000
while : 
do
	cansend can0 321#1212121212121212
	sleep .326
	cansend can0 321#5656565656565656
	sleep .326
done
