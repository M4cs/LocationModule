#!/bin/sh

launchctl unload /System/Library/LaunchDaemons/com.apple.locationd.plist

defaults write /System/Library/LaunchDaemons/com.apple.locationd Disabled -bool true

launchctl load /System/Library/LaunchDaemons/com.apple.locationd.plist

 

exit 0