#!/bin/sh
echo "From:"
echo $1
echo "To:"
echo $2
hdiutil convert -format UDRW -o $2 $1


echo "N=10;diskutil unmountDisk /dev/disk$N; sudo dd if=$2.dmg of=/dev/rdisk$N bs=1m; diskutil eject /dev/disk$N"
