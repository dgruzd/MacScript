#!/bin/sh
tempfile="/tmp/rvm-installer"

curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer -o $tempfile 
chmod +x $tempfile 
/tmp/rvm-installer
rm $tempfile 

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM function' >> ~/.bash_profile
. ~/.bash_profile

/usr/bin/ruby -e "$(curl -fsSL https://raw.github.com/gist/323731)"
brew install libksba

echo "Do you want to use ri & rdoc (on server recomended not to) [Y/N]?"
read ri

if [[ $ri =~ [Yy]  ]]; then
echo "ok"
else
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
fi
