#!/bin/bash

# Script:                Ops 201 Ops Challenge 04 Solution
# Author:                Cameron Berry
# Date of last revision: 2/23/23
# Purpose:               Write a scripts that:
#                        Creates 4 directories: dir1, dir2, dir3, dir4
#                        Put the names of the four directories in an array
#                        References the array variable to create a new .txt file in each directory

# Main

dir_array=(dir1 dir2 dir3 dir4)

mkdir ${dir_array[*]}

# touch ${dir_array[0]}/new.txt
# touch ${dir_array[1]}/new.txt
# touch ${dir_array[2]}/new.txt
# touch ${dir_array[3]}/new.txt

# ^ these are the same v

touch ${dir_array[0]}/new.txt ${dir_array[1]}/new.txt ${dir_array[2]}/new.txt ${dir_array[3]}/new.txt

# I don't like having 4 mkdirs and 4 touches.
# I feel like there's a cleaner way to write this but I'm too brain dead right now.

# End