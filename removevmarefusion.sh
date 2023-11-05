#!/bin/bash

## Get logged in user for use as a variable
loggedInUser=$(/bin/ls -l /dev/console | /usr/bin/awk '{ print $3 }')

## Remove the app
rm -rf /Applications/VMware\ Fusion.app 

## Remove Preference Folder
rm -rf /Library/Preferences/VMware\ Fusion

## Remove service log file
rm -rf /Library/Logs/VMware\ Fusion\ Services.log

## Remove system log folder
rm -rf /Library/Logs/VMware

## Remove user application support folder
rm -rf /Users/$loggedInUser/Library/Application\ Support/VMware Fusion

## Remove recent documents com file
rm -rf /Users/$loggedInUser/Library/Application\ Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.vmware.fusion.sfl3

## Remove user log folder
rm -rf /Users/$loggedInUser/Library/Logs/VMware\ Fusion

## Remove user preferences folder
rm -rf /Users/$loggedInUser/Library/Preferences/VMware\ Fusion

## Remove user plist file
rm -rf /Users/$loggedInUser/Library/Preferences/com.vmware.fusion.plist

## Remove start menu plist file
rm -rf /Users/$loggedInUser/Library/Preferences/com.vmware.fusionStartMenu.plist

exit 0