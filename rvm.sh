#!/bin/sh

curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer -o /tmp/rvm-installer
chmod +x /tmp/rvm-installer

/tmp/rvm-installer

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile

echo "Do you want to use ri & rdoc (on server recomended not to) [Y/N]?"
read ri

if [[ $ri =~ [Yy]  ]]; then
echo "ok"
else
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
fi
