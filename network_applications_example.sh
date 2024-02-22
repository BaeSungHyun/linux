#! /bin/bash

telnet example.org 80
GET / HTTP/1.1
Host: example.org

curl --trace-ascii trace_file http://www.example.org/
# https : 443 http: 80
# above command outputs trace_file test file.


# Most network servers are like server daemons except they interact with network ports
# UDP - port 514 by syslogd -r
# Web Servers : httpd , apache , apache2 , nginx
# Secure Shell Daemon : sshd
# Mail Servers : postfix , qmail , sendmail
# Print Server : cupsd
# Network filesystem (file-sharing) daemons : nfsd , mountd
# Windows file-sharing daemons : smbd , nmbd
# Remote Procedure Call (RPC) portmap service daemon : rpcbind


# Creating Host keys
ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key
ssh-keygen -t dsa -N '' -f /etc/ssh/ssh_host_dsa_key


# Starting SSH server daemon
systemctl enable sshd
systemctl start sshd

systemctl disable sshd

# To log in to a remote host:
ssh remote_username@remote_host

lsof # open files
sudo lsof -i # network ports used by all programs
lsof -i # only user-space programs

# disable name resolution to optimize the output speed
lsof -n -i

# Filtering by protocol and port
lsof -i:[port]
lsof -iprotocol@host:port # full syntax for above
# @host and :port are all oprional
lsof -iTCP:443

# Filtering by connection Status
lsof -iTCP -sTCP:LISTEN

# To see exactly what's crossing the network
tcpdump # including ARP request and web connection

# tell tcmpdump to output only TCP packets
tcpdump tcp
tcpdump udp or port 80 or port 443


# More flexiblity in connecting to a remote host than a command like telnet
netcat host [port] # can connect to remote TCP/UDP ports, specify a local port, listen on ports
# scan ports, redirect standard I/O to and from network connections
netcat host [port] # open a TCP connection on port
netcat -l [port_number] # listen on a particular port


# Port scanning
nmap [host]


# To see what RPC services computer has:
rpcinfo -p localhost


