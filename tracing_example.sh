#! /bin/bash
# strace - system call (user-space process asks the kernel to perform) trace
strace cat /dev/null
# By default, sends output to stderr, to save output in a file use -o save_file or 2> save_file
# fork() - execve() - brk() memory initialization
# strace begins on the new process just after the fork()

# ltrace - shared library calls
ltrace

# Threads
ps m
# Show pid, tid, and command
ps m -o pid,tid,command

# Measuring CPU time for more than one processes
top -p pid1 [-p pid2...]
time ls 
# real - user + sys + waiting for network 
# user - user space
# sys - kernel space

# Adjusting Process Priorities
top
ps -l # current priority of a process
renice pid 20 # sets NI (nice value) which kernel adds to the current priority 

# load_averages
uptime # time1, time2, time3  each for 1 min, 5 min, 15 min
# an average of time* processes have been running across all processors.
