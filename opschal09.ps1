# Script Name: 

# Author: Cameron Berry

# Date of last revision: 3/12/23

# Purpose: Output all events from the System event log that occurred in the last 24 hours to a file on your desktop named last_24.txt.
#          Output all “error” type events from the System event log to a file on your desktop named errors.txt.
#          Print to the screen all events with ID of 16 from the System event log.
#          Print to the screen the most recent 20 entries from the System event log.
#          Print to the screen all sources of the 500 most recent entries in the System event log. 
#                Ensure that the full lines are displayed (get rid of the … and show the entire text).


# Declare Variables

# Declare Functions

function system24 {
            $system24var = Get-EventLog -LogName System -After (Get-Date).AddDays(-1)
# Just to practice with variables
            $system24var > C:\Users\admin\Desktop\last_24.txt
            }

function systemerrors {
            Get-EventLog -LogName System -EntryType Error > C:\Users\admin\Desktop\errors.txt
            }

function printID16 {
            Get-EventLog -LogName System -InstanceId 16 | Format-Table -AutoSize -Wrap
            }

function recent20 {
            Get-EventLog -LogName System -Newest 20 | Format-Table -AutoSize -Wrap
            }

function recent500sources {
            $events = Get-EventLog -LogName System -Newest 500
            $events | Group-Object -Property Source -NoElement | Sort-Object -Property Count -Descending | Format-Table -AutoSize -Wrap
            }

# Main

system24
systemerrors
echo "Listed Below Are All Instance ID 16 System Events"
Pause
printID16
echo "Listed Below Are The 20 Most Recent System Events"
Pause
recent20
echo "Listed Below Are The Soures Of The 500 Most Recent System Events"
Pause
recent500sources

# End
