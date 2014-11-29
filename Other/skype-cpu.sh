#!/bin/sh
git clone https://github.com/ValdikSS/skype-poll-fix.git
cd skype-poll-fix
make -f Makefile.macos
DYLD_INSERT_LIBRARIES=./skype-poll-fix.dylib /Applications/Skype.app/Contents/MacOS/Skype
