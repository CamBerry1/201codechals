#!/bin/bash

# Script:                   Ops Challenge 03 Solution
# Author:                   Cameron Berry
# Date of last revision:    2/19/23
# Purpose:                  Write a script with a function and a veriable to print the login history of users on this computer
#                           Stretch: Include a function that accepts an argument and uses it

# Main

explain="Here is a list of all past user logins"

username (){
    echo "Please type your name"
    read username
    echo "Hello" $username
}

loghist (){
    echo $explain
    sleep 2
    lastlog
}

filename (){
    echo "'The code challenge filename is $0'"
}

username
loghist
filename

# End