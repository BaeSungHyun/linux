#! /bin/bash
free 
free -h
cat /proc/meminfo

getconf PAGE_SIZE

# Page Faults
# If a memory page isn't ready when a process wants to use it, the process triggers
# a 'page fault'. The kernel takes control of the CPU from the process in order to get page ready.

# Minor Page faults
# Desired page is actually in main memory, but the MMU doesn't know where it is. 
# This can happen when the process requests more memory or when the MMU doesn't have enough
# space to store all of the page locations.

# Major Page faults
# 1. Desired memory page isn't in main memory at all, load it from disk or other storage. 
# 2. Start running out of memory -> kernel starts swapping of working memory out to disk.
/usr/bin/time cal > /dev/null

# to view page faults
top f
ps -o pid,min_flt,maj_flt [pid]


# Monitor system performance
vmstat 2
