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
curl -L https://raw.githubusercontent.com/nickmoline/remote-sync-hook/master/post-checkout > .git/hooks/post-checkout
chmod 755 .git/hooks/post-checkout
echo "Installed!"
echo "Please, edit your PREFIX and USER using your favorite editor on .git/hooks/post-checkout"
