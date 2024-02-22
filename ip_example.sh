#! /bin/bash
# at least 1 ipv4 per host
ip address show
ip route show

# at least 2 ipv6 per host - global unicast , link-local
ip -6 address show
ip -6 route show

# DNS 
host www.example.com

# Physical Layer == Ethernet Layer : send data by 'frames', router repackages it, send to 
# 		other network.


# Network Interface Configuration
# Bind an interface to the internet layer
ip address add [address/subnet] dev [interface]
# With the interface up, manually add routes
ip route add default via [gw-address] dev [interface]
# remove the default gateway
ip route del default
# override default gateway
ip route add [address/subnet] via [new_address]
# delete router
ip route del [addresss/subnet]

# network manager interaction
nmcli

# hostname lookups DNS
cat /etc/hosts

# Current DNS settings
resolvectl # /etc/systemd/resolved.conf
