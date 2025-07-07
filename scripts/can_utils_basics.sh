#! /bin/bash
sudo apt-get update
sudo apt-get install can-utils

# this will invoke the IP command, bring up the interface can0, use the CAN protocol and set the bit rate at 500000
# bit rate = how fast the data is being sent across the bus (there are 3 types of bit rates: 500000, 250000, 125000) 
sudo ip link set up can0 type can bitrate 500000

# in case you want to bring it down
sudo ip link set down can0

# bring it up again
sudo ip link set up can0 type can bitrate 500000

# now that the interface is up we can check it with the ip a command
ip link ls

# now you are ready to use can utils and visualize the traffic using the following command
candump

# if you don't see traffic make sure your connection is good between your OBD-II port and your computer 
# make sure your interface is connected to your virtual machine
# and double check your bit rate just for good measure

# Note: in case you only see a few packets coming through or if you're confident your setup's correct and you don't see anything, then your vehicle may be equipped with a security Gateway. A lot of the newer vehicles have a security gateway filtering the traffic between the can network and the OBD-II port
