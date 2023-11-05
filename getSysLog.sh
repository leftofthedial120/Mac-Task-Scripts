#!/bin/bash

## A simple little script that will copy and zip the system log files for deep dive troubleshooting.
## Tested and working on macOS 14.1

## Get logged in user for use as a variable
loggedInUser=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')

## Copy the system log file to the user's Desktop
cp /private/var/log/system.log /users/$loggedInUser/Desktop

## Compress the log file
compress /Users/$loggedInUser/Desktop/system.log

exit 0