#! /bin/bash

# iptables of chain (INPUT, FORWARD, OUTPUT)
iptables -L

# change default behavior
iptables -P FORWARD DROP

# To prevent 192.168.34.63 annoy you, run below command:
iptables -A INPUT -s 192.168.34.63 -j DROP

# drop TCP port 25
iptables -A INPUT -s 192.168.34.0/24 -p tcp --destination-port 25 -j DROP

# To allow certain host to access 
iptables -D INPUT 3 # delete third rule
iptables -I INPUT -s 192.168.34.37 -j ACCEPT # insert at the top
iptables -I INPUT 4 ... # insert at fourth

# Let all TCP packets throught that aren't SYN packets (connection request)
iptables -A INPUT -p tcp '!' --syn -j ACCEPT

# using remote UDP-based DNS, must sccept traffic from name server so that machine can 
# loop up names with DNS 
# Do this for all DNS servers in /etc/resolv.conf

iptables -A INPUT -p udp --source-port 53 -s ns_addr -j ACCEPT

# allow ssh connections from anywhere
iptables -A INPUT -p tcp --destination-port 22 -j ACCEPT

