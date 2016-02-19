Sftp-Config Git Hook
===
Hook for Git that updates remote path field when changing branches. Useful when you're working with differents branches in the same repo and using sftp plugin for Sublime Text 2/3.

Pre-requisites
===
You need to have jq installed in your system.

For Mac: `$ brew install jq`

For Debian/Ubuntu: `$ sudo apt-get install jq`

More info: https://stedolan.github.io/jq/download/

How to install
===
Download and execute `install.sh` or use this command:
```
curl -L https://raw.githubusercontent.com/Yelrado/sftp-config-hook/master/install.sh  | bash
```

Configuration
===
After installing the script please set your set PREFIX and USER variables in `.git/hooks/post-checkout`.

Known Issues
===
It doesn't work with GUI's such as __GitHub Desktop__. You need to use `git checkout` to make this hook work.
