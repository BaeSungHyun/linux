#! /bin/bash

echo $PATH
which [executable]
whoami

# add path temporarily
export PATH="/Directory1:$PATH"
echo $PATH

# add path permanently
# Open .bashrc file using text editor, go to end of the file , paste below command
export PATH="/Directory1:$PATH"

# To add directory to the PATH for all users, not only to current user, edit the .profile file


# Remove directory from PATH in Linux
# 1. Exit the Terminal
# 2. Edit configuration file : .bashrc .profile

