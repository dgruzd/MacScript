#!/bin/sh
#https://github.com/mxcl/homebrew/issues/7827#issuecomment-2641840
#Uninstall Xcode
sudo /Library/Developer/4.2.1/uninstall-devtools --mode=all

#https://github.com/kennethreitz/osx-gcc-installer
curl http://cloud.github.com/downloads/kennethreitz/osx-gcc-installer/GCC-10.7-v2.pkg -o ~/Desktop/GCC-10.7-v2.pkg
