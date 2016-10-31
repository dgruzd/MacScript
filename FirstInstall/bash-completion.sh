#!/bin/bash
brew install bash-completion

cat <<EOT >> ~/.bash_profile
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi
EOT
