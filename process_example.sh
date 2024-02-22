#! /bin/bash
# interactive interface
top
# spacebar - update the display immediately
# M - sorts by current resident memory usage
# T - sorts by total (cumulative) CPU usage
# P - sorts by current CPU usage (default)
# u - diplays only one user's processes
# f - selects different statistics to display

# check for open files
lsof
# display open files under subdirectory
lsof +D /usr
# list the open files for a particular pid
lsof -p pid

# summary of lsof
lsof -h
