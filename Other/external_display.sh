#!/bin/sh
#http://osxdaily.com/2011/09/14/disable-the-internal-screen-on-a-macbook-pro-or-air-in-mac-os-x-10-7-lion/
sudo nvram boot-args="iog=0x0"

#undo
sudo nvram -d boot-args


