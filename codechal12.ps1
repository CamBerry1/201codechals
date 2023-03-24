# Script: Ops201 Code Challenge 12
# Author: Cameron Berry
# Date of last revision: 3/23/23
# Purpose: Create a local file called network_report.txt that holds the contents of an ipconfig /all command.
#          Use Select-String to search network_report.txt and return only the IP version 4 address.
#          Remove the network_report.txt when you are finished searching it.
#          For this challenge, you must use at least one variable and one function.

# Declare variables

$netrep = "C:\Users\admin\Documents\network_report.txt"

# Declare functions

Function findip {
    ipconfig -all > $netrep
    $ipv4 = Select-String -Path $netrep -Pattern 'IPv4 Address' | Select-Object -ExpandProperty Line 
    # https://stackoverflow.com/questions/31232589/remove-path-from-output
    echo $ipv4
    }

# Main

findip
rm $netrep

# End
