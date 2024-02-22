#! /bin/bash
netstat -nt
netstat -6 -nt
netstat -ntl

# ssh : 22/tcp
# smtp : 25/tcp
# domain : 53/udp
# In linux, 1 ~ 1023 port number is well-known, priviledged ports.

# Linux DHCP Clients
dhclient [network_interface_name:enp]

# Enable IP forwarding in the router's kernel
sysctl -w net.ipv4.ip_forward=1

# Set up a Linux machine to perform as a NAT router
# Make the router platform NAT for its private subnet
sysctl -w net.ipv4.ip_forward=1
iptables -P FORWARD_DROP
iptables -t nat -A POSTROUTING -o enp -j MASQUERADE
iptables -A FORWARD -i enp -o enp -m state --state ESTABLISHED,RELATED -j ACCEPT
iptables -A FORWARD -i enp -o enp -j ACCEPT
