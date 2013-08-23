#!/bin/sh
MB=4048
let SHMMAX=MB*1024*1024
echo $SHMMAX

sudo sysctl -w kern.sysv.shmmax=$SHMMAX
echo "kern.sysv.shmmax=$SHMMAX" | sudo tee -a /etc/sysctl.conf
sudo sysctl -w kern.sysv.shmall=$SHMMAX
echo "kern.sysv.shmall=$SHMMAX" | sudo tee -a /etc/sysctl.conf
sudo sysctl -w kern.sysv.shmmin=1
#sudo sysctl -w kern.sysv.shmmni=256
#sudo sysctl -w kern.sysv.shmseg=64

echo "cat /etc/sysctl.conf"
cat /etc/sysctl.conf

#echo "sysctl -a"
#sysctl -a | grep kern.sysv.shm
