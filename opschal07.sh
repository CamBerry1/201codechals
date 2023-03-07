# !/bin/bash

# Script:                201 Ops Challenge 07
# Author:                Cameron Berry
# Date of last revision: 3/4/23
# Purpose:               Create a script that uses lshw and grep to 
#                        display specific system information and removes 
#                        irrelevant information
#                        Add clear text to the output to indicate which
#                        component the script is referring to

# Main

echo "Computer Name"
lshw | grep -B1 "description: Computer"

echo "*****CPU*****"
lshw | grep -A6 "*-cpu"

echo "*****RAM*****"
lshw | grep -A3 "*-memory"

echo "*****Display Adapter*****"
lshw | grep -A12 "*-display"

echo "*****Network Adapter*****"
lshw | grep -A15 "*-network"

# End

