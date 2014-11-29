#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
scselect 'localhost'
sudo pdnsd -c $DIR/pdnsd.conf && scselect 'Automatic'
