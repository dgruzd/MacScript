#!/bin/bash
#sudo curl -L http://goo.gl/xIOJQ -o /usr/bin/wifi && sudo chmod +x /usr/bin/wifi
device="$(networksetup -listallhardwareports |
grep -E '(Wi-Fi|AirPort)' -A 1 | grep -o "en.")"
[[ "$(networksetup -getairportpower $device)" == *On ]] && val=off || val=on
networksetup -setairportpower $device $val
