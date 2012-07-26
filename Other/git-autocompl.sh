#!/bin/sh
brew install bash-completion

echo "if [ -f `brew --prefix`/etc/bash_completion ]; then" | tee -a $HOME/.bash_profile
echo "    . `brew --prefix`/etc/bash_completion" | tee -a $HOME/.bash_profile
echo "fi" | tee -a $HOME/.bash_profile

vim $HOME/.bash_profile
