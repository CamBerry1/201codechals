# !/bin/bash

# Script: Ops 201 Code Challenge 13
# Author: Cameron Berry
# Last revision: 3/27/23
# Purpose: Create a script that asks a user to type a domain, 
#          then displays information about the typed domain.
#          Operations that must be used include:
#           whois
#           dig
#           host
#           nslookup

# Define variables



# Define functions

domainlookup () {
    # My variable didn't work when it was in line 16
    outputfile="${input}_info.txt"
    whois $input > $outputfile
    dig $input | grep -A1 "ANSWER SECTION" >> $outputfile
    host $input >> $outputfile
    nslookup $input >> $outputfile
}

# Main

echo "Please enter a domain"
read input
# Line 34 reads for a valid output; writing to /dev/null prevents display.
if host $input > /dev/null; then
        domainlookup
        cat $outputfile
# If there is no output to write to /dev/null
    else
        echo "Invalid domain"
fi

# End