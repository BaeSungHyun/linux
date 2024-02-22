#! /bin/bash

# Create a filesystem
mkfs -t ext4 /dev/sdf2


# Mounting a filesystem
# During system boot, the kernel reads some configuration data and mounts root (/) based on
# the configuration data : 
# 	1. filesystem's device, location, or identifier (such as disk partition--where the 
# 		actual filesystem data resides). Some special-purpose filesystems, such as 
# 		proc and sysfs don't have locations.
#	2. filesystem type
#	3. mount point -- the place in the current directory's hierarchy where the filesystem 
# 		will be attached. Usually a normal directory.


# Learn the current filesystem status
mount

# Mount a filesystem manually
mount -t [filesystem type] [device] [mountpoint]
# Example
mount -t ext4 /dev/sdf2 /home/extra
# Detach a filesystem
umount mountpoint

# View a list of devices and the corresponding filesystems and UUIDs on system
blkid

# Disk buffering, Caching, Filesystems
# buffers write to disk, umount -> kernel automatically synchronozies with the disk
# To do it manually:
sync

# Filesystem Table - /etc/fstab
# Filesystem Table Configuration File - /etc/fstab.d
mount -a # mount all entries in /etc/fstab


# File system capacity
df

# Check device
fsck /dev/sdb1 # but not on mounted filesystem


