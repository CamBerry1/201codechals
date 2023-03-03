# !/bin/bash

# Script:                201 Ops Challenge 06 Solution
# Author:                Cameron Berry
# Date of last revision: 3/1/23
# Purpose:               Create a script that detects if a file or directory exists,
#                        then creates it if it does not exist.
#                        Must contain at least 1:
#                           Array
#                           Loop
#                           Conditional

# Define array

dir_array=("mydir" "newdir" "dirdir")

# Main

# For loop

for dir in ${dir_array[*]}
do
    if [ -d $dir ]; then
        echo "Directories already exist"
        break
    else
        mkdir "$dir"
    fi
done

# End