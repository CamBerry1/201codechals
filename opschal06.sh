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

dir_array=("mydir" "newdir" "dirdir")

file_array=(my.txt new.sh)

for dir in ${dir_array[*]}
do
    if [ -d $dir ]; then
        echo "Directories already exist"
        break
    else
        mkdir "$dir"
        touch ${dir_array[0]}/${file_array[0]}
        touch ${dir_array[1]}/${file_array[1]}
    fi
done