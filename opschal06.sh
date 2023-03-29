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

# the array creates strings of text that will name the array
dir_array=("mydir" "newdir" "dirdir")

# Main

# For loop

# begins a for loop that will iterate through the "dir_array" array
for dir in ${dir_array[*]}
# syntax to establish the required action for loop (beginning do/done bookends)
do
# if the directory (-d) already exists ([] indicates true), perform an action
    if [ -d $dir ]; then
        echo "Directories already exist"
# stops the loop IF the condition on line 25 is true
        break
# if we haven't broken out the loop, cont to line 32
    else
        mkdir "$dir"
    fi
done

# End