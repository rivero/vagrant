#!javascript
#!/bin/bash

set -e

echo "Instaling for rof"

# Installing vagrant keys
mkdir ~/.ssh
chmod 700 ~/.ssh
cd ~/.ssh
wget --no-check-certificate 'http://10.42.121.184:8000/keys/jrivero.pub' -O authorized_keys
chmod 600 ~/.ssh/authorized_keys
chown -R jrivero ~/.ssh
