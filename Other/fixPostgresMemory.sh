#!/bin/sh
sudo sysctl -w kern.sysv.shmmax=33554432
sudo sysctl -w kern.sysv.shmmin=1
sudo sysctl -w kern.sysv.shmmni=256
sudo sysctl -w kern.sysv.shmseg=64
sudo sysctl -w kern.sysv.shmall=8192
