#! /bin/bash
# Search past 4 hours
journalctl -S -4h
# Below are similar
journalctl -S 06:00:00
journalctl -S 2020-01-14
journalctl -S '2020-01-14 14:40:00'

# Filtering by unit
journalctl -u cron.service
# List all units in the journal
journalctl -F _SYSTEMD_UNIT

# Which field to search
journalctl -N

# Filtering by Text
journalctl -g 'Kernel.*memory'

# boot
journalctl -b
# add offset, -1 : previous boot
journalctl -b -1

# check whether machine shut down cleanly on the last cycle
journalctl -r -b -1
# view boots by IDs
journalctl --list-boots

# filtering by Severty / Priority : 0 most important , 7 least important
# 0 - emerg , 1 - alert , 2 - crit , 3 - err , 4 - warning , 5 - notice , 6 - info , 7 - debug
journalctl -p 3
journalctl -p 2..3

# see messages as they arrive from the system logger
journalctl -f
