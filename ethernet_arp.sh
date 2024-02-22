#! /bin/bash

# how does the host know which MAC address corresponds to the destination IP address?
# answer : ARP cache table between IP address and MAC address. (inside kernel in linux)
ip -4 neigh
ip -6 neigh

# View and change kernel space device and network configuration with a utility called iw
iw dev wlp1s0 scan
iw dev wlp1s0 link
iw wlp1s0 connect [network_name]
