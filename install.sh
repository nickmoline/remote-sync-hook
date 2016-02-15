#!/bin/bash
# Installer for sftp-config-hook 

if ! foobar_loc="$(type -p "jq")" || [ -z "$foobar_loc" ]; then
  echo "You need to install jq"
  echo "\tFor Mac: $ brew install jq"
  echo "\tFor Debian/Ubuntu: $ sudo apt-get install jq"
  echo "More info: https://stedolan.github.io/jq/download/"
  exit;
fi

if [ ! -d ".git" ]; then
  echo "Not a git repository."
  exit;
fi

echo "Downloading script"
curl -L https://raw.githubusercontent.com/Yelrado/sftp-config-hook/master/post-checkout > .git/hooks/post-checkout
chmod 755 .git/hooks/post-checkout
"${EDITOR:-vi}" .git/hooks/post-checkout < /dev/tty
echo "Installed!"