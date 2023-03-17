# Script : Ops 201 Code Challenge 10

# Author : Cameron Berry

# Date of last revision : 3/16/23

# Purpose : (1) Print to the terminal screen all active processes ordered by highest CPU time consumption at the top.
#           (2) Print to the terminal screen all active processes ordered by highest Process Identification Number at the top.
#           (3) Print to the terminal screen the top five active processes ordered by highest Working Set (WS(K)) at the top.
#           (4) Start the process Internet Explorer (iexplore.exe) and have it open https://owasp.org/www-project-top-ten/.
#           (5) Start the process Internet Explorer (iexplore.exe) ten times using a for loop. Have each instance open https://owasp.org/www-project-top-ten/.
#           (6) Close all Internet Explorer windows.
#           (7) Kill a process by its Process Identification Number. Choose a process whose termination won’t destabilize the system, such as Internet Explorer or MS Edge.

# Declare variables

# Declare functions

# Main

# (1)

Get-Process | Sort-Object CPU -Descending

# (2)

Get-Process | Sort-Object Id -Descending

# (3)

Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5

# (4)

Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/"

# (5)

for ($x = 1 ; $x -le 10 ; $x++) {
    Start-Process "iexplore.exe" "https://owasp.org/www-project-top-ten/"
    }

# (6)

Stop-Process -Name iexplore
# note : win 10 defaults internet explorer to ms edge. The correct syntax for present day use is 'Stop-Process -Name msedge'

# (7)

Stop-Process -Id 6808
# note: at the time of writing '6808', notepad.exe was process ID 6808. Killing 6808 and reopening notepad reassigned the process ID.
# note, cont: similarly, when all 10 intances of msedge were running, each was assigned a different process ID

# End