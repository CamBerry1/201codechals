# !/bin/bash

# Script:                Ops 201 Code Challenge 05 Solution
# Author:                Cameron Berry
# Date of last revision: 2/27/23
# Purpose:               Write a script that displays running processes,
#                        asks the user for a PID,
#                        then kills the process with that PID.
#                        Use a loop in your script.

# Main

echo "Type PROCESS to display running processes"
read input

while [[ $input != "PROCESS" ]]; do
    echo "Not a valid input"
    echo "Press Enter to display running processes"
    read input
done

echo "Running.."
sleep 2
ps aux

echo "Enter PID to kill specified process"
read pid

if [[ ps -p $pid >/dev/null ]]
then   
    echo "$pid is running"
    echo " Are you sure you want to kill? Type 'y' to continue"
    read y
    if $y == "y"
        then
        kill $pid
        echo "$pid has been terminated"
        else
        echo "$pid is still running"
    fi
else
    echo "$pid is not running"
fi
# End