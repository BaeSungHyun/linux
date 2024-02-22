#! /bin/bash


# Many kinds of partition tables
# 	1. MBR Master Boot Record : traditional, many limitations
# 	2. GPT Globally Unique Identifier Partition Table : most newer systems

# Many kinds of partition tools
#	1. parted : text-based tool that supports both MBR and GPT
# 	2. gparted : graphical version of parted
# 	3. fdisk : traditional text-based Linux disk partitioning tool. Recent versions of fdisk
#			support the MBR, GPT. But older versions suport limited to MBR.

fdisk -l
parted -l

# find own device location
lsblk

# Disk device at /dev/sdd
fdisk /dev/sdd # interactive command execution
p
# delete existing one
d
# fdisk doesn't make changes until explicitly write the partition table
# if mistakes are made, use 'q' command to quit fdisk without writing the changes.
n # create 
p # primary or extended
2048 # first sector
+200M # last sector offset
p # review (print)
w # write the changes

