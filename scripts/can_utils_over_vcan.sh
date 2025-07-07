#! /bin/bash

ip link ls

sudo modprobe vcan

sudo ip link add dev vcan0 type vcan

ip link ls

sudo ip link set up vcan0

ip link ls


# terminal #1
# keep it running for raffic transmission
cangen vcan0


# terminal #2
# random traffic display
candump vcan0


# terminal #1
cansend vcan0 123#1122334125667767
cansend vcan0 123#1122334125667710
cansend vcan0 123#1100334125667712


# terminal #2
# keep it running to receive the can messages from the first terminal
candump vcan0


# terminal #2
candump vcan0 -l


# terminal #1
cangen vcan0


# check logs
