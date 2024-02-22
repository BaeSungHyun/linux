#! /bin/bash

# To limit processes can consume 
cat /proc/self/cgroup
cd /sys/fs/cgroup/user.slice/user-1000.slice/session-2.scope/
ls
cat cgroup.controllers
cat pids.current # number of threads running in the cgroup
cat memory.max

# Making changes to cgroup
sudo echo [pid] > cgroup.procs
echo 3000 > pids.max

# cgroup must have hierarchy of /my-cgroup/my-subgroup
# parent cgroup must specify cgroup.subtree_control file which controller to use in subgroup

# Viewing Resource utilization
cat cpu.stat
