#! /bin/bash

# view the listening ports
netstat -lntu

# check for port :4000 
netstat -na | grep :4000

sudo iptables -A INPUT -p tcp --dport 4000 -j ACCEPT
# or --destination-port

# test newly opened port for tcp connections
ls | nc -l -p 4000 # send ls output to client connected

# test the port by specifying its number
nmap localhost -p 8080
