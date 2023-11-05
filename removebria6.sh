#!/bin/bash

## Get logged in user for use as a variable
loggedInUser=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')

## Remove the app
rm -rf /Applications/Bria.app

## Remove components
rm -rf /Users/$loggedInUser/Library/Application\ Support/com.CounterPath_Corporation.Bria
rm -rf /Users/$loggedInUser/Library/Application\ Support/CounterPath Corporation
rm -rf /Users/$loggedInUser/Library/Caches/com.CounterPath_Corporation.Bria
rm -rf /Users/$loggedInUser/Library/HTTPStorages/com.CounterPath_Corporation.Bria
rm -rf /Users/$loggedInUser/Library/Preferences/com.CounterPath_Corporation.Bria.plist
rm -rf /Users/$loggedInUser/Library/WebKit/com.CounterPath_Corporation.Bria

exit 0