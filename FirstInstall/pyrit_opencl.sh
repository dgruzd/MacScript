#!/bin/sh
# Scapy 2.3.2
brew install https://raw.githubusercontent.com/Homebrew/homebrew-python/cddd216c719ea0c21cdf3d9ab9722ece6acbec3e/scapy.rb
brew pin scapy

cd /tmp/
git clone https://github.com/0x90/pyrit.git
cd pyrit/pyrit
python setup.py build
sudo python setup.py install
cd ../cpyrit_opencl/
python setup.py build
sudo python setup.py install
