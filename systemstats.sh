#!/bin/bash
if [ "$1" == "off" ]; then
  echo "turning off"
  sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.systemstatsd.plist
  sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.systemstats.daily.plist
  sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.systemstats.analysis.plist
  mkdir -p $HOME/oldsysstats
  sudo mv /private/var/db/systemstats/* $HOME/oldsysstats/
elif [ "$1" == "on" ]; then
  echo "turning on"
  sudo launchctl load -F /System/Library/LaunchDaemons/com.apple.systemstatsd.plist
  sudo launchctl load -F /System/Library/LaunchDaemons/com.apple.systemstats.daily.plist
  sudo launchctl load -F /System/Library/LaunchDaemons/com.apple.systemstats.analysis.plist
elif [ "$1" == "vacuum" ]; then
  echo "run vacuum on squlite db"
  sudo sqlite3 /private/var/db/systemstats/snapshots.db vacuum
else
  echo "Please run with on/off/vacuum param"
fi
