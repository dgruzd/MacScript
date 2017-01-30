#!/bin/bash
CONFIG1=/etc/sshd_config
CONFIG2=/etc/ssh/sshd_config

if [ -f $CONFIG1 ]; then
  CONFIG=$CONFIG1
else
  CONFIG=$CONFIG2
fi

echo "Add config lines to $CONFIG"
echo "# Nyaa config tool lines, add options to disable password authentication" | sudo tee -a $CONFIG
echo "RSAAuthentication yes" | sudo tee -a $CONFIG
echo "PubkeyAuthentication yes" | sudo tee -a $CONFIG
echo "PasswordAuthentication no" | sudo tee -a $CONFIG
echo "ChallengeResponseAuthentication no" | sudo tee -a $CONFIG
echo "UsePAM no" | sudo tee -a $CONFIG
echo "Done"

sudo launchctl stop com.openssh.sshd
