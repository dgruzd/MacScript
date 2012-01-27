#!/bin/sh
DIR="$( cd "$( dirname "$0" )" && pwd )"
mkdir -pv $HOME/.mplayer && ln -vi -s $DIR/mplayer.conf $HOME/.mplayer/config
