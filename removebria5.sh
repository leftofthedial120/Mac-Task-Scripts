#!/bin/bash

## Get logged in user for use as a variable
loggedInUser=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')

## Remove app
rm -rf /Applications/Bria 5.app

## Remove components
rm -rf /Users/$loggedInUser/Library/Application\ Support/com.CounterPath_Corporation.Bria-5
rm -rf /Users/$loggedInUser/Library/Application\ Support/CounterPath\ Corporation
rm -rf /Users/$loggedInUser/Library/Caches/com.CounterPath_Corporation.Bria-5
rm -rf /Users/$loggedInUser/Library/HTTPStorages/com.CounterPath_Corporation.Bria-5
rm -rf /Users/$loggedInUser/Library/Preferences/com.CounterPath_Corporation.Bria-5.plist
rm -rf /Users/$loggedInUser/Library/WebKit/com.CounterPath_Corporation.Bria-5

exit 0