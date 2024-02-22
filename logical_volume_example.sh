#! /bin/bash

# Upgrading disk without lvm
# 1. install the new disk, partition, add filesystems
# 2. do some boot loader changes 
# 3. switch over to the new disk

# LVM
# physical volumes (block devices) <--- volume group (generic data pool) --- > logical volumes

# show volume groups currently configured on system

# Volume Group
vgs
vgdisplay

# Logical Volume
lvs
lvsdisplay [device name] # lvdisplay /dev/ubuntu-vg/root


# Physical Volume
pvs
pvdisplay



# Tutorial 
# 1. Creating single partition on disks
parted /dev/sdb print
parted /dev/sdc print

# 2. Creating Physical volumes and a Volume Group
vgcreate myvg /dev/sdb1 # initiallize volume group
# add PV at /dev/sdc1 to the volume group
vgextend myvg /dev/sdc1 # extend volume group
vgs

# 3. Creating Logical Volumes
lvcreate --size 10g --type linear -n mylv1 myvg
lvcreate --size 10g --type linear -n mylv2 myvg

vgdisplay myvg



# With the logical volumes created above, you can now make use of them by putting filesystems
# on the devices and mounting them just like any normal disk partition.
# There will be symbolic links to the devices in /dev/mapper and a /dev/myvg directory for the 
# volume group.
mkfs -t ext4 /dev/mapper/myvg-mylv1 # create a filesystem
mount /dev/mapper/mvg-mylv1 /mnt # mount it temporarily
df /mnt # see how much actual space you have on a logical volume


# Removing logical volumes
lvremove myvg/mylv2


# Resizing Logical Volumes and Filesystems
# To use larger logical volumes, need to resize both it and the filesystem inside it
# Most straight forward method is to add all of the free PEs to the logical volume
lvresize -l +2602 myvg/mylv1
# change the filesystem inside it
fsadm -v resize /dev/mapper/myvg-mylv1 # -v : verbose mode

# Or above command can be simplified by:
lvresize -r -l +100%FREE myvg/mylv1


# LVM communicates with the kernel's device mapper driver in order to initialize the block 
# devices for the logical volumes and load their mapping tables.
dmsetup info # logical volumes
dmsetup table 
