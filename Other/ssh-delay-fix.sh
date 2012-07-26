#!/bin/sh
echo "Host *" >> ~/.ssh/config
echo "GSSAPIAuthentication no" >> ~/.ssh/config
echo "GSSAPIKeyExchange no" >> ~/.ssh/config
