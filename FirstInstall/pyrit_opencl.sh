#!/bin/sh
cd /tmp/
git clone https://github.com/0x90/pyrit.git
cd pyrit/pyrit
python setup.py build
sudo python setup.py install
cd ../cpyrit_opencl/
python setup.py build
sudo python setup.py install
